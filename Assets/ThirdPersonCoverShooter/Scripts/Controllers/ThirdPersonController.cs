using UnityEngine;
using UnityEngine.UI;

namespace CoverShooter
{
    /// <summary>
    /// Takes player input and translates that to commands to CharacterMotor.
    /// </summary>
    [RequireComponent(typeof(CharacterMotor))]
    [RequireComponent(typeof(Actor))]
    public class ThirdPersonController : MonoBehaviour
    {
        /// <summary>
        /// Is the character actively reacting to camera direction changes.
        /// </summary>
        public bool IsActivelyFacing
        {
            get { return _isActivelyFacing; }
        }

        /// <summary>
        /// Is the character using zoom.
        /// </summary>
        public bool IsZooming
        {
            get { return _isZooming && _motor.IsAiming; }
        }

        /// <summary>
        /// Determines if the character takes cover automatically instead of waiting for player input.
        /// </summary>
        [Tooltip("Determines if the character takes cover automatically instead of waiting for player input.")]
        public bool AutoTakeCover = true;

        /// <summary>
        /// Is the character always aiming in camera direction when not in cover.
        /// </summary>
        [Tooltip("Is the character always aiming in camera direction when not in cover.")]
        public bool AlwaysAim = false;

        /// <summary>
        /// How long to continue aiming after no longer needed.
        /// </summary>
        [Tooltip("How long to continue aiming after no longer needed.")]
        public float AimSustain = 0.4f;

        /// <summary>
        /// Can the player roll into a cover.
        /// </summary>
        [Tooltip("Can the player roll into a cover.")]
        public bool TakeCoverWhenRolling = true;

        /// <summary>
        /// Degrees to add when aiming a grenade vertically.
        /// </summary>
        [Tooltip("Degrees to add when aiming a grenade vertically.")]
        public float ThrowAngleOffset = 30;

        /// <summary>
        /// How high can the player throw the grenade.
        /// </summary>
        [Tooltip("How high can the player throw the grenade.")]
        public float MaxThrowAngle = 45;

        /// <summary>
        /// Prefab to instantiate to display grenade explosion preview.
        /// </summary>
        [Tooltip("Prefab to instantiate to display grenade explosion preview.")]
        public GameObject ExplosionPreview;

        /// <summary>
        /// Prefab to instantiate to display grenade path preview.
        /// </summary>
        [Tooltip("Prefab to instantiate to display grenade path preview.")]
        public GameObject PathPreview;

        /// <summary>
        /// Maximum time in seconds to wait for a second tap to active rolling.
        /// </summary>
        [Tooltip("Maximum time in seconds to wait for a second tap to active rolling.")]
        public float DoubleTapDelay = 0.3f;

        [HideInInspector]
        public Vector3 LookTargetInput;

        [HideInInspector]
        public Vector3 FireTargetInput;

        [HideInInspector]
        public float HorizontalAngleInput;

        [HideInInspector]
        public float VerticalAngleInput;

        private Vector3 _lastDirection;

        private bool _wasInCover;
        private float _coverTimer;

        private CharacterMotor _motor;

        private GameObject _explosionPreview;
        private GameObject _pathPreview;

        private bool _isFiring;
        private bool _isZooming;
        private bool _isSprinting;
        private bool _isAiming;
        private bool _isActivelyFacing;

        private float _noAimSustain;
        private float _aimSustain;
        private float _postSprintNoAutoAim;

        private Vector3[] _grenadePath = new Vector3[128];
        private int _grenadePathLength;
        private bool _hasGrenadePath;

        private float _timeW;
        private float _timeA;
        private float _timeS;
        private float _timeD;

		public Text CoinCountText;
		private int CoinCount;

        private bool _startedRollingInCover;

        private bool _wasZooming;

        private void Awake()
        {
            _motor = GetComponent<CharacterMotor>();

			var cp = GameObject.Find ("CheckpointObject");
			if (cp != null) {
				transform.position = cp.transform.position;
			}
        }

		private void Start()
		{
			CoinCount = 0;
			SetCountText ();
		}

        private void Update()
        {
            _isActivelyFacing = AlwaysAim && !_isSprinting;

            updateGrenadeAimAndPreview();
            updateMovement();

            if (_timeW > 0) _timeW -= Time.deltaTime;
            if (_timeA > 0) _timeA -= Time.deltaTime;
            if (_timeS > 0) _timeS -= Time.deltaTime;
            if (_timeD > 0) _timeD -= Time.deltaTime;

            if (Input.GetKeyDown(KeyCode.W))
            {
                if (_timeW > float.Epsilon)
                {
                    if (_motor.IsInCover && _motor.CanClimb)
                        _motor.InputClimbOrVault();
                    else
                    {
                        _startedRollingInCover = _motor.IsInCover;
                        //_motor.InputRoll();
                    }
                }
                else
                    _timeW = DoubleTapDelay;
            }

            if (Input.GetKeyDown(KeyCode.A))
            {
                if (_timeA > float.Epsilon)
                {
                    _startedRollingInCover = _motor.IsInCover;
                    //_motor.InputRoll();
                }
                else
                    _timeA = DoubleTapDelay;
            }

            if (Input.GetKeyDown(KeyCode.S))
            {
                if (_timeS > float.Epsilon)
                {
                    _startedRollingInCover = _motor.IsInCover;
                    //_motor.InputRoll();
                }
                else
                    _timeS = DoubleTapDelay;
            }

            if (Input.GetKeyDown(KeyCode.D))
            {
                if (_timeD > float.Epsilon)
                {
                    _startedRollingInCover = _motor.IsInCover;
                    //motor.InputRoll();
                }
                else
                    _timeD = DoubleTapDelay;
            }

            if ((AutoTakeCover || ((_startedRollingInCover || TakeCoverWhenRolling) && _motor.IsRolling)) && _motor.PotentialCover != null)
                _motor.InputTakeCover();

            if (Input.GetKeyDown(KeyCode.Space))
            {
                // It's ok to set multiple inputs because the motor can figure out the best course of action.

                if (Input.GetKey(KeyCode.W))
                {
                    if (_motor.IsInCover && _motor.CanClimb)
                        _motor.InputClimbOrVault();
                    else
                        _motor.InputJump();
                }

                if (!AutoTakeCover && !_motor.IsInCover && _motor.PotentialCover != null)
                    _motor.InputTakeCover();

                _motor.InputJump();
            }

            if (!_isSprinting && Input.GetKeyDown(KeyCode.LeftControl))
                _motor.InputCrouch();

            if (_motor.HasGrenadeInHand)
            {
                if (_hasGrenadePath && Input.GetMouseButtonDown(0))
                {
                    _isActivelyFacing = true;
                    _motor.SetLookTarget(LookTargetInput);
                    _motor.SetFireTarget(FireTargetInput);
                    _motor.InputThrowGrenade(_grenadePath, _grenadePathLength, _motor.Grenade.Step);
                }

                if (Input.GetMouseButtonDown(1)) _motor.InputCancelGrenade();

                _isFiring = false;
                _isZooming = false;

                if (!_motor.IsReadyToThrowGrenade)
                    if (Input.GetKey(KeyCode.G))
                        _motor.InputTakeGrenade();
            }
            else
            {
                if (Input.GetKey(KeyCode.G)) _motor.InputTakeGrenade();

                if (Input.GetKey(KeyCode.Alpha1)) _motor.InputWeapon(0);
                if (Input.GetKey(KeyCode.Alpha2)) _motor.InputWeapon(1);
                if (Input.GetKey(KeyCode.Alpha3)) _motor.InputWeapon(2);

                if (Input.mouseScrollDelta.y < 0)
                {
                    if (_motor.CurrentWeapon == 0)
                        _motor.InputWeapon(_motor.Weapons.Length);
                    else
                        _motor.InputWeapon(_motor.CurrentWeapon - 1);
                }
                else if (Input.mouseScrollDelta.y > 0)
                {
                    if (_motor.CurrentWeapon == _motor.Weapons.Length)
                        _motor.InputWeapon(0);
                    else
                        _motor.InputWeapon(_motor.CurrentWeapon + 1);
                }

                if (Input.GetKey(KeyCode.R)) _motor.InputReload();

                if (Input.GetMouseButtonDown(0)) _isFiring = true;
                if (Input.GetMouseButtonDown(1)) _isZooming = true;
                if (Input.GetMouseButtonUp(0)) _isFiring = false;
                if (Input.GetMouseButtonUp(1)) _isZooming = false;

                if (_motor.Gun != null && !_isSprinting && (!_motor.IsInTallCover || _motor.CanPeekLeftCorner || _motor.CanPeekRightCorner || _motor.IsAimingBackFromCover))
                {
                    if (_isFiring)
                    {
                        _motor.InputFire();
                        _isActivelyFacing = true;
                    }

                    if (_isZooming)
                    {
                        _motor.InputAim();
                        _motor.InputZoom();
                        _isActivelyFacing = true;
                    }
                }
            }

            if (_isSprinting)
            {
                _isAiming = false;
                _isActivelyFacing = false;
                _isFiring = false;
                _isZooming = false;
            }

            if (_isAiming && _aimSustain >= 0)
                _aimSustain -= Time.deltaTime;

            if (_noAimSustain >= 0)
                _noAimSustain -= Time.deltaTime;

            if (!_isFiring && !_isZooming)
            {
                if (_postSprintNoAutoAim >= 0)
                    _postSprintNoAutoAim -= Time.deltaTime;
            }
            else
            {
                _postSprintNoAutoAim = 0;
                _noAimSustain = 0;
            }

            if (((AlwaysAim || _isActivelyFacing) && _postSprintNoAutoAim <= float.Epsilon) ||
                 _isFiring ||
                 _isZooming)
            {
                _isAiming = true;
                _aimSustain = AimSustain;
            }
            else if (!_isAiming)
                _noAimSustain = DoubleTapDelay * 0.4f;

            if (!AlwaysAim)
                if (_aimSustain <= float.Epsilon || _noAimSustain > float.Epsilon)
                    _isAiming = false;

            if (_isAiming)
            {
                if (_motor.IsInCover)
                    _motor.InputAimWhenLeavingCover();
                else
                    _motor.InputAim();
            }

            if (_isFiring || _isZooming)
                _motor.InputPossibleImmediateTurn();

            if (_isActivelyFacing || _motor.IsAiming || _motor.IsInCover)
            {
                if (!_isSprinting)
                    _motor.SetBodyLookTarget(LookTargetInput);

                _motor.SetLookTarget(LookTargetInput);
                _motor.SetFireTarget(FireTargetInput);
            }

            if (_isZooming && !_wasZooming)
                SendMessage("OnZoom", SendMessageOptions.DontRequireReceiver);
            else if (!_isZooming && _wasZooming)
                SendMessage("OnUnzoom", SendMessageOptions.DontRequireReceiver);

            _wasZooming = _isZooming;
        }

		void OnTriggerEnter(Collider other)
		{
			if (other.gameObject.CompareTag ("Pick Up")) {
				other.gameObject.SetActive (false);
				//Canvas.SendMessage("OnCoinCollected", SendMessageOptions.DontRequireReceiver);
				CoinCount++;
				SetCountText ();
			}
		}
		void SetCountText ()
		{
			if (GameObject.Find ("CoinCountText")) {
				CoinCountText.text = "Coins: " + CoinCount.ToString ();
			}
		}

        private void updateMovement()
        {
            CharacterMovement movement = new CharacterMovement();

            var isForward = Input.GetKey(KeyCode.W);
            var isBackward = Input.GetKey(KeyCode.S);
            var isRight = Input.GetKey(KeyCode.D);
            var isLeft = Input.GetKey(KeyCode.A);

            Vector3 direction = Vector3.zero;

            if (isForward)
                direction.z += 1;
            if (isBackward)
                direction.z -= 1;
            if (isRight)
                direction.x += 1;
            if (isLeft)
                direction.x -= 1;

            if (isForward && isBackward) direction.z = _lastDirection.z;
            if (isRight && isLeft) direction.x = _lastDirection.x;

            _lastDirection = direction;

            var lookAngle = Util.AngleOfVector(LookTargetInput - _motor.transform.position);

            if (direction.magnitude > float.Epsilon)
                movement.Direction = Quaternion.Euler(0, lookAngle, 0) * direction.normalized;

            if (_isZooming)
                movement.Magnitude = 0.5f;
            else
            {
                if (_motor.Gun != null)
                {
                    if (Input.GetKey(KeyCode.LeftShift))
                        movement.Magnitude = 2.0f;
                    else
                        movement.Magnitude = 1.0f;
                }
                else
                {
                    if (Input.GetKey(KeyCode.LeftShift))
                        movement.Magnitude = 1.0f;
                    else
                        movement.Magnitude = 0.5f;
                }
            }

			if (_motor.IsInCover || _motor.IsAimingBackFromCover)
            {
                if (!_wasInCover)
                {
                    _wasInCover = true;
                    _coverTimer = 0;
                }
                else
                    _coverTimer += Time.deltaTime;

                if (_coverTimer < 0.5f && (movement.Direction.magnitude < 0.1f || Vector3.Dot(movement.Direction, _motor.Cover.Forward) > -0.1f))
                    movement.Direction = (movement.Direction + _motor.Cover.Forward).normalized;
            }
            else
                _wasInCover = false;

            _isSprinting = false;

            if (movement.IsMoving)
            {
                _isActivelyFacing = true;

                // Smooth sprinting turns
                if (movement.Magnitude > 1.1f && !_motor.IsInCover)
                {
                    // Don't allow sprinting backwards
                    if (Mathf.Abs(Mathf.DeltaAngle(lookAngle, Util.AngleOfVector(movement.Direction))) < 100)
                    {
                        var wantedAngle = Util.AngleOfVector(movement.Direction);
                        var bodyAngle = _motor.transform.eulerAngles.y;
                        var delta = Mathf.DeltaAngle(bodyAngle, wantedAngle);

                        const float MaxSprintTurn = 60;

                        if (delta > MaxSprintTurn)
                            movement.Direction = Quaternion.AngleAxis(bodyAngle + MaxSprintTurn, Vector3.up) * Vector3.forward;
                        else if (delta < -MaxSprintTurn)
                            movement.Direction = Quaternion.AngleAxis(bodyAngle - MaxSprintTurn, Vector3.up) * Vector3.forward;

                        _motor.SetBodyLookTarget(_motor.transform.position + movement.Direction * 100);
                        _motor.InputPossibleImmediateTurn(false);

                        _postSprintNoAutoAim = 0.3f;
                        _isSprinting = true;
                    }
                    else
                        movement.Magnitude = 1.0f;
                }   
            }

            _motor.InputMovement(movement);
        }

        private void updateGrenadeAimAndPreview()
        {
            if (_motor.IsAlive && _motor.IsReadyToThrowGrenade && _motor.CurrentGrenade != null)
            {
                GrenadeDescription desc;
                desc.Gravity = _motor.Grenade.Gravity;
                desc.Duration = _motor.PotentialGrenade.Timer;
                desc.Bounciness = _motor.PotentialGrenade.Bounciness;

                var verticalAngle = Mathf.Min(VerticalAngleInput + ThrowAngleOffset, MaxThrowAngle);

                var velocity = _motor.Grenade.MaxVelocity;

                if (verticalAngle < 45)
                    velocity *= Mathf.Clamp01((verticalAngle + 15) / 45f);

                _grenadePathLength = GrenadePath.Calculate(GrenadePath.Origin(_motor, HorizontalAngleInput),
                                                           HorizontalAngleInput,
                                                           verticalAngle,
                                                           velocity,
                                                           desc,
                                                           _grenadePath,
                                                           _motor.Grenade.Step);
                _hasGrenadePath = true;

                if (_explosionPreview == null && ExplosionPreview != null)
                {
                    _explosionPreview = GameObject.Instantiate(ExplosionPreview);
                    _explosionPreview.transform.parent = null;
                    _explosionPreview.SetActive(true);
                }

                if (_explosionPreview != null)
                {
                    _explosionPreview.transform.localScale = Vector3.one * _motor.PotentialGrenade.ExplosionRadius * 2;
                    _explosionPreview.transform.position = _grenadePath[_grenadePathLength - 1];
                }

                if (_pathPreview == null && PathPreview != null)
                {
                    _pathPreview = GameObject.Instantiate(PathPreview);
                    _pathPreview.transform.parent = null;
                    _pathPreview.SetActive(true);
                }

                if (_pathPreview != null)
                {
                    _pathPreview.transform.position = _grenadePath[0];

                    var path = _pathPreview.GetComponent<PathPreview>();

                    if (path != null)
                    {
                        path.Points = _grenadePath;
                        path.PointCount = _grenadePathLength;
                    }
                }
            }
            else
            {
                if (_explosionPreview != null)
                {
                    GameObject.Destroy(_explosionPreview);
                    _explosionPreview = null;
                }

                if (_pathPreview != null)
                {
                    GameObject.Destroy(_pathPreview);
                    _pathPreview = null;
                }

                _hasGrenadePath = false;
            }
        }
    }
}