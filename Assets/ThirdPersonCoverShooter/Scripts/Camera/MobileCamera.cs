﻿using UnityEngine;

namespace CoverShooter
{
    [RequireComponent(typeof(Camera))]
    public class MobileCamera : MonoBehaviour
    {
        /// <summary>
        /// Forward/up direction for the character.
        /// </summary>
        public Vector3 Forward { get { return new Vector3(-_offset.x, 0, -_offset.z).normalized; } }

        /// <summary>
        /// Right direction for the character.
        /// </summary>
        public Vector3 Right { get { return Vector3.Cross(Vector3.up, Forward); } }

        /// <summary>
        /// Target character motor.
        /// </summary>
        [Tooltip("Target character motor.")]
        public CharacterMotor Target;

        /// <summary>
        /// Camera offset from the target character when there are no enemies around.
        /// </summary>
        [Tooltip("Camera offset from the target character when there are no enemies around.")]
        public Vector3 CalmOffset = new Vector3(-3, 9, -3);

        /// <summary>
        /// Camera offset from the target character when there are enemies around.
        /// </summary>
        [Tooltip("Camera offset from the target character when there are enemies around.")]
        public Vector3 DangerOffset = new Vector3(-4, 14, -4);

        /// <summary>
        /// Speed to move between different offsets.
        /// </summary>
        [Tooltip("Speed to move between different offsets.")]
        public float OffsetSpeed = 2f;

        /// <summary>
        /// Time in seconds to go back to the calm offset after there are no more enemies around.
        /// </summary>
        [Tooltip("Time in seconds to go back to the calm offset after there are no more enemies around.")]
        public float ZoomDelay = 0.5f;

        /// <summary>
        /// Field of view.
        /// </summary>
        [Tooltip("Field of view.")]
        public float FOV = 45;

        /// <summary>
        /// Min and max enemy distance. Enemies outside of the range are not considered when zooming.
        /// </summary>
        [Tooltip("Min and max enemy distance. Enemies outside of the range are not considered when zooming.")]
        public EnemyDistanceRange EnemyDistances = new EnemyDistanceRange(5, 10);

        /// <summary>
        /// Target offsets for each character direction. Targets are relative to the character's position.
        /// </summary>
        [Tooltip("Target offsets for each character direction. Targets are relative to the character's position.")]
        public MobileCameraTargetOffsets TargetOffsets = new MobileCameraTargetOffsets(new Vector3(1, 0, 1),
                                                                                       new Vector3(-1, 0, -1),
                                                                                       new Vector3(-1, 0, 1),
                                                                                       new Vector3(1, 0, -1));

        private Vector3 _motorPosition;
        private float _motorPivotSpeed = 1;
        private bool _wasInCover;
        private Vector3 _lookVector = new Vector3(0, 0, 1);

        private Vector3 _offset;
        private Vector3 _targetOffset;
        private float _offsetScale = 0;

        private float _zoom;

        private Camera _camera;

        private void Awake()
        {
            _camera = GetComponent<Camera>();
        }

        private void LateUpdate()
        {
            if (Target == null)
                return;

            var controller = Target.GetComponent<MobileController>();

            if (Target.IsInCover && !Target.IsAiming)
                _lookVector = Target.Cover.Forward;
            else
                _lookVector = Target.transform.forward;

            _offset = Vector3.Lerp(_offset, perfectOffset, Time.deltaTime * OffsetSpeed);
            _targetOffset = Vector3.Lerp(_targetOffset, perfectTargetOffset, Time.deltaTime * OffsetSpeed);

            if (controller != null)
                controller.Forward = Forward;

            var shouldGoUp = false;

            foreach (var character in Characters.All)
                if (character.Object != Target.gameObject)
                {
                    var dist = (character.Object.transform.position - Target.transform.position).magnitude;

                    if (dist > EnemyDistances.Min && dist < EnemyDistances.Max)
                        shouldGoUp = true;
                }

            if (shouldGoUp)
                _zoom = 1;
            else
                _zoom = Mathf.Clamp(_zoom - Time.deltaTime / ZoomDelay, 0, 1);

            if (_zoom > float.Epsilon)
                _offsetScale = Mathf.Clamp(_offsetScale + Time.deltaTime * OffsetSpeed, 0, 1);
            else
                _offsetScale = Mathf.Clamp(_offsetScale - Time.deltaTime * OffsetSpeed, 0, 1);

            var newPosition = Target.GetPivotPosition();

            _motorPivotSpeed = Mathf.Lerp(_motorPivotSpeed, 1, Time.deltaTime * 5);

            if (Target.IsInCover != _wasInCover)
                _motorPivotSpeed = 0;

            _motorPosition = Vector3.Lerp(_motorPosition, newPosition, Mathf.Lerp(Time.deltaTime * 5, 1, _motorPivotSpeed));

            var cameraPosition = _motorPosition + _offset;
            var cameraTarget = _motorPosition + _targetOffset;

            transform.position = cameraPosition;
            transform.LookAt(cameraTarget);
            SendMessage("OnFadeTarget", new FadeTarget(Target.gameObject, cameraTarget), SendMessageOptions.DontRequireReceiver);

            _camera.fieldOfView = Mathf.Lerp(_camera.fieldOfView, FOV, Time.deltaTime * 6);

            _wasInCover = Target.IsInCover;
        }

        private Vector3 perfectOffset
        {
            get
            {
                return Vector3.Lerp(CalmOffset, DangerOffset, _offsetScale);
            }
        }

        private Vector3 perfectTargetOffset
        {
            get
            {
                return TargetOffsets.Up * Mathf.Clamp01(Vector3.Dot(Forward, _lookVector)) +
                       TargetOffsets.Down * Mathf.Clamp01(Vector3.Dot(-Forward, _lookVector)) +
                       TargetOffsets.Right * Mathf.Clamp01(Vector3.Dot(Right, _lookVector)) +
                       TargetOffsets.Left * Mathf.Clamp01(Vector3.Dot(-Right, _lookVector));
            }
        }
    }
}
