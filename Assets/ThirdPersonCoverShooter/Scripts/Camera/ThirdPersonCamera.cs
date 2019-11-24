using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Manages the camera object by setting an appropriate orientation depending on the target object's state.
    /// </summary>
    [RequireComponent(typeof(Camera))]
    public class ThirdPersonCamera : MonoBehaviour
    {
        /// <summary>
        /// Target character motor.
        /// </summary>
        [Tooltip("Target character motor.")]
        public CharacterMotor Target;

        /// <summary>
        /// Target controller. If set to none, will be taken from the same object as Target.
        /// </summary>
        [Tooltip("Target controller. If set to none, will be taken from the same object as Target.")]
        public ThirdPersonController Controller;

        /// <summary>
        /// Is the camera adjusting itself so there are no colliders between it and the target.
        /// </summary>
        [Tooltip("Is the camera adjusting itself so there are no colliders between it and the target.")]
        public bool AvoidObstacles = true;

        /// <summary>
        /// Multiplier for horizontal camera rotation.
        /// </summary>
        [Tooltip("Multiplier for horizontal camera rotation.")]
        [Range(0, 10)]
        public float HorizontalRotateSpeed = 0.9f;

        /// <summary>
        /// Multiplier for vertical camera rotation.
        /// </summary>
        [Tooltip("Multiplier for vertical camera rotation.")]
        [Range(0, 10)]
        public float VerticalRotateSpeed = 1.0f;

        /// <summary>
        /// Handle visiblity of crosshair.
        /// </summary>
        [Tooltip("Handle visiblity of crosshair.")]
        public bool IsCrosshairEnabled = true;

        /// <summary>
        /// Crosshair texture to be displayed in the middle of screen.
        /// </summary>
        [Tooltip("Crosshair texture to be displayed in the middle of screen.")]
        public Texture Crosshair;

        /// <summary>
        /// Size of the crosshair as a fraction of screen height.
        /// </summary>
        [Tooltip("Size of the crosshair as a fraction of screen height.")]
        [Range(0, 1)]
        public float CrosshairSize = 0.05f;

        /// <summary>
        /// Is camera responding to mouse movement when the mouse cursor is unlocked.
        /// </summary>
        [Tooltip("Is camera responding to mouse movement when the mouse cursor is unlocked.")]
        public bool RotateWhenUnlocked = false;

        /// <summary>
        /// Camera settings for all gameplay situations.
        /// </summary>
        [Tooltip("Camera settings for all gameplay situations.")]
        public CameraStates States = CameraStates.GetDefault();

        /// <summary>
        /// Horizontal orientation of the camera in degrees.
        /// </summary>
        [HideInInspector]
        public float Horizontal;

        /// <summary>
        /// Vertical orientation of the camera in degrees.
        /// </summary>
        [HideInInspector]
        public float Vertical;

        private Vector3 _pivot;
        private Vector3 _offset;
        private Vector3 _orientation;
        private float _crosshairAlpha;

        private Vector3 _motorPosition;
        private Quaternion _motorRotation;
        private float _motorPivotSpeed = 1;
        private bool _wasInCover;

        private Vector3 _obstacleFix;

        private float _lastTargetDistance;

        private Camera _camera;

        private ThirdPersonController _controller;
        private CharacterMotor _cachedMotor;

        // Raycast cache.
        private RaycastHit[] _hits = new RaycastHit[64];

        private void Awake()
        {
            _camera = GetComponent<Camera>();
            _offset = States.Default.Offset;

            // Required for the explosion preview.
            _camera.depthTextureMode = DepthTextureMode.Depth;
        }

        /// <summary>
        /// Convenient way to get the controller.
        /// </summary>
        private ThirdPersonController getCurrentController()
        {
            if (Controller != null)
                return Controller;
            else
            {
                if (_cachedMotor != Target)
                {
                    _cachedMotor = Target;

                    if (_cachedMotor == null)
                        _controller = null;
                    else
                        _controller = _cachedMotor.GetComponent<ThirdPersonController>();
                }

                return _controller;
            }
        }

        /// <summary>
        /// Draws the crosshair.
        /// </summary>
        private void OnGUI()
        {
            if (Crosshair == null || !IsCrosshairEnabled)
                return;

            var size = Screen.height * CrosshairSize;
            var point = new Vector3(Screen.width * 0.5f, Screen.height * 0.5f, 0);
            var controller = getCurrentController();

            if (Target != null && (controller == null || controller.IsActivelyFacing))
            {
                var target = Target.GunOrigin + Target.GunTargetDirection * _lastTargetDistance;
                var current = Target.GunOrigin + Target.GunDirection * _lastTargetDistance;

                var p1 = _camera.WorldToScreenPoint(target);
                var p2 = _camera.WorldToScreenPoint(current);

                point.x += (p2.x - p1.x) * Target.RecoilIntensity;
                point.y -= (p2.y - p1.y) * Target.RecoilIntensity;
            }

            var previous = GUI.color;
            GUI.color = new Color(1, 1, 1, _crosshairAlpha);
            GUI.DrawTexture(new Rect(point.x - size * 0.5f, point.y - size * 0.5f, size, size), Crosshair);
            GUI.color = previous;
        }

        private void Update()
        {
            if (Target == null)
                return;

            var controller = getCurrentController();

            if (Cursor.lockState == CursorLockMode.Locked || RotateWhenUnlocked)
            {
                Horizontal = Mathf.LerpAngle(Horizontal, Horizontal + Input.GetAxis("Mouse X") * HorizontalRotateSpeed * Time.timeScale, 1.0f);
                Vertical = Mathf.LerpAngle(Vertical, Vertical - Input.GetAxis("Mouse Y") * VerticalRotateSpeed * Time.timeScale, 1.0f);
            }

            Vertical = Mathf.Clamp(Vertical, -45, 70);

            var newPosition = Target.GetPivotPosition();
            var newRotation = Target.GetPivotRotation();

            if (Target.IsInCornerAimState)
                _motorPivotSpeed = 0;
            else
                _motorPivotSpeed = Mathf.Lerp(_motorPivotSpeed, 1, Time.deltaTime * 5);

            if (Target.IsInCover != _wasInCover)
                _motorPivotSpeed = 0;

            _motorPosition = Vector3.Lerp(_motorPosition, newPosition, Mathf.Lerp(Time.deltaTime * 5, 1, _motorPivotSpeed));
            _motorRotation = Quaternion.Slerp(_motorRotation, newRotation, Mathf.Lerp(Time.deltaTime * 3, 1, _motorPivotSpeed));

            var rotation = Quaternion.Euler(Vertical, Horizontal, 0);
            var transformPivot = _motorRotation * _pivot + _motorPosition;
            var cameraPosition = transformPivot + rotation * _offset;
            var cameraTarget = _motorPosition + _pivot + rotation * Vector3.forward * 100;

            var forward = (cameraTarget - cameraPosition).normalized;

            var colliderFixTarget = Vector3.zero;

            if (AvoidObstacles)
                colliderFixTarget = checkObstacles(cameraPosition, _motorPosition + Target.StandingHeight * Vector3.up, 0.1f);

            _obstacleFix = Vector3.Lerp(_obstacleFix, colliderFixTarget, Time.deltaTime * 30);
            cameraPosition += _obstacleFix;

            transform.position = cameraPosition;
            transform.LookAt(cameraTarget);

            {
                var plane = new Plane(_motorPosition, _motorPosition + transform.up, _motorPosition + transform.right);
                var ray = new Ray(cameraPosition, (cameraTarget - cameraPosition).normalized);

                float enter;
                Vector3 hit;

                if (plane.Raycast(ray, out enter))
                    hit = cameraPosition + ray.direction * enter;
                else
                {
                    hit = getClosestHit(cameraPosition, cameraTarget, 0.1f);
                    hit -= transform.forward * 0.2f;
                }

                SendMessage("OnFadeTarget", new FadeTarget(Target.gameObject, hit), SendMessageOptions.DontRequireReceiver);
            }

            var lookPosition = transform.position + transform.forward * 1000;

            if (controller != null)
            {
                controller.LookTargetInput = lookPosition;
                controller.HorizontalAngleInput = Util.AngleOfVector(transform.forward);
                controller.VerticalAngleInput = Mathf.Asin(transform.forward.y) * 180f / Mathf.PI;
            }
            else
                Target.SetLookTarget(lookPosition);

            var closestHit = getClosestHit(transform.position, lookPosition, Vector3.Distance(transform.position, Target.Top));

            if (Target.TurnSettings.IsAimingPrecisely)
                closestHit += transform.forward;
                             
            _lastTargetDistance = Vector3.Distance(transform.position, closestHit);

            if (controller != null)
                controller.FireTargetInput = closestHit;
            else
                Target.SetFireTarget(closestHit);

            if (Target.IsFiringFromCamera)
                Target.FireFrom(transform.position);
            else
                Target.SetDefaultFireOrigin();

            float alphaTarget = 1;
            CameraState state;

            if (Target.HasGrenadeInHand)
                alphaTarget = 0;

            if (!Target.IsAlive)
            {
                state = States.Dead;
                alphaTarget = 0;
            }
            else if (controller != null && controller.IsZooming)
            {
                if (Target.IsCornerAiming)
                {
                    if (Target.IsInTallCover)
                        state = Target.IsStandingLeftInCover ? States.LeftTallCornerZoom : States.RightTallCornerZoom;
                    else
                        state = Target.IsStandingLeftInCover ? States.LeftLowCornerZoom : States.RightLowCornerZoom;
                }
                else if (Target.IsInCover)
                {
                    if (!Target.IsInTallCover && Target.IsAimingBackFromCover)
                        state = States.LowCoverBackZoom;
                    else
                        state = States.LowCoverZoom;
                }
                else if (Target.IsCrouching)
                    state = States.CrouchZoom;
                else
                    state = States.Zoom;
            }
            else if (Target.IsClimbing)
                state = States.Climb;
            else if (Target.CanPeekLeftCorner && Target.IsStandingLeftInCover)
                state = States.LeftCorner;
            else if (Target.CanPeekRightCorner && !Target.IsStandingLeftInCover)
                state = States.RightCorner;
            else if (Target.IsInCover)
            {
                if (Target.IsInTallCover)
                {
                    if (Target.IsAimingBackFromCover)
                        state = States.TallCoverBack;
                    else
                    {
                        if (!Target.CanPeekLeftCorner &&
                            !Target.CanPeekRightCorner &&
                            !Target.CanWallAim)
                            alphaTarget = 0;

                        if (Target.IsStandingLeftInCover)
                            state = States.TallCoverLeft;
                        else
                            state = States.TallCoverRight;
                    }
                }
                else if (Target.HasGrenadeInHand)
                    state = States.LowCoverGrenade;
                else
                    state = States.LowCover;
            }
            else if (Target.IsCrouching)
                state = States.Crouch;
            else if (Target.WouldAim)
                state = States.Aim;
            else
            {
                alphaTarget = 0;
                state = States.Default;
            }

            _camera.fieldOfView = Mathf.Lerp(_camera.fieldOfView, state.FOV, Time.deltaTime * 6);

            _crosshairAlpha = Mathf.Lerp(_crosshairAlpha, alphaTarget, Time.deltaTime * 6);

            _pivot = Vector3.Lerp(_pivot, state.Pivot, Time.deltaTime * 6);
            _offset = Vector3.Lerp(_offset, state.Offset, Time.deltaTime * 6);
            _orientation = Vector3.Lerp(_orientation, state.Orientation, Time.deltaTime * 6);

            _wasInCover = Target.IsInCover;
        }

        private Vector3 checkObstacles(Vector3 camera, Vector3 target, float radius)
        {
            var startOffset = 0;

            var centerDistance = Vector3.Distance(camera, target);
            var forward = (target - camera).normalized;

            var maxFix = 0f;

            if (startOffset < centerDistance)
            {
                var origin = target - forward * startOffset;
                var max = Vector3.Distance(camera, target);
                var ray = new Ray(origin, -forward);

                for (int i = 0; i < Physics.SphereCastNonAlloc(ray, radius, _hits, max); i++)
                {
                    var hit = _hits[i];

                    if (!hit.collider.isTrigger && !Util.InHiearchyOf(hit.collider.gameObject, Target.gameObject))
                    {
                        var fix = Mathf.Clamp(max - hit.distance, 0, max);

                        if (fix > maxFix)
                            maxFix = fix;
                    }
                }
            }

            return maxFix * forward;
        }

        private Vector3 getClosestHit(Vector3 origin, Vector3 target, float minDistance)
        {
            var vector = (target - origin).normalized;
            var maxDistance = Vector3.Distance(origin, target);
            var closestHit = target;

            for (int i = 0; i < Physics.RaycastNonAlloc(origin, vector, _hits); i++)
            {
                var hit = _hits[i];

                if (hit.collider.gameObject != Target.gameObject && !hit.collider.isTrigger)
                    if (hit.distance > minDistance && hit.distance < maxDistance)
                    {
                        maxDistance = hit.distance;
                        closestHit = hit.point;
                    }
            }

            return closestHit;
        }
    }
}