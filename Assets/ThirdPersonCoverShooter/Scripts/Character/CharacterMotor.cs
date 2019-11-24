using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Manages the character, it’s movement, appearance and use of weapons.
    /// </summary>
    [RequireComponent(typeof(CapsuleCollider))]
    [RequireComponent(typeof(Animator))]
    [RequireComponent(typeof(Rigidbody))]
    public class CharacterMotor : MonoBehaviour
    {
        public const int FirstWeaponLayer = 2;
        public const int GrenadeLayer = 5;

        #region Properties

        /// <summary>
        /// An object the motor is currently aiming at. Only objects with CharacterHealth are considered.
        /// </summary>
        public GameObject Target
        {
            get { return _target; }
        }

        /// <summary>
        /// Position the body is rotated at.
        /// </summary>
        public Vector3 BodyLookTarget
        {
            get { return _currentBodyLookTarget; }
        }

        /// <summary>
        /// Position the body is rotated at.
        /// </summary>
        public Vector3 LookTarget
        {
            get { return _lookTarget; }
        }

        /// <summary>
        /// Position the character is aiming at.
        /// </summary>
        public Vector3 FireTarget
        {
            get { return _fireTarget; }
        }

        /// <summary>
        /// Horizontal head look vector.
        /// </summary>
        public Vector3 HeadForward
        {
            get
            {
                var vec = HeadLookTarget - transform.position;
                vec.y = 0;

                return vec.normalized;
            }
        }

        /// <summary>
        /// Position the motor head is looking at.
        /// </summary>
        public Vector3 HeadLookTarget
        {
            get { return _isHeadLookTargetOverriden ? _headLookTargetOverride : _lookTarget; }
        }

        /// <summary>
        /// Is character currently climbing.
        /// </summary>
        public bool IsClimbing
        {
            get { return _isClimbing; }
        }

        /// <summary>
        /// Is the character currently in cover.
        /// </summary>
        public bool IsInCover
        {
            get { return _cover.In && !_isAimingBackInTallCover; }
        }

        /// <summary>
        /// Is the character currently crouching.
        /// </summary>
        public bool IsCrouching
        {
            get { return _isCrouching; }
        }

        /// <summary>
        /// Degrees in world space of direction the character is intended to face.
        /// </summary>
        public float LookAngle
        {
            get { return _horizontalLookAngle; }
        }

        /// <summary>
        /// Degrees in world space of the vertical angle the character is facing.
        /// </summary>
        public float VerticalAngle
        {
            get { return _verticalLookAngle; }
        }

        /// <summary>
        /// Is the character currently facing left in a cover.
        /// </summary>
        public bool IsStandingLeftInCover
        {
            get { return _cover.In && _cover.IsStandingLeft; }
        }

        /// <summary>
        /// Is the character currently in low cover.
        /// </summary>
        public bool IsInLowCover
        {
            get { return _cover.In && !_cover.IsTall; }
        }

        /// <summary>
        /// Is the character currently in tall cover.
        /// </summary>
        public bool IsInTallCover
        {
            get { return _cover.In && _cover.IsTall; }
        }

        /// <summary>
        /// Is the character or camera currently facing away from the cover.
        /// </summary>
        public bool IsAimingBackFromCover
        {
            get
            {
                if (!_cover.In)
                    return false;

                if (_cover.IsTall)
                    return _isAimingBackInTallCover;
                else
                {
                    if (IsNearLeftCorner || IsNearRightCorner)
                        return !_cover.IsFrontField(_horizontalLookAngle, CoverSettings.Angles.LowCornerFront);
                    else
                        return !_cover.IsFront(_horizontalLookAngle, (_wasAimingBackFromCover ? 1f : -1f) +
                                                                     (_cover.IsStandingLeft ? CoverSettings.Angles.LowerAim.Left : CoverSettings.Angles.LowerAim.Right));
                }
            }
        }

        /// <summary>
        /// Is currently aiming from a corner or transitioning to or from the state.
        /// </summary>
        public bool IsInCornerAimState
        {
            get { return _isInCornerAimState; }
        }

        /// <summary>
        /// Is currently aiming from a cover.
        /// </summary>
        public bool IsCornerAiming
        {
            get
            {
                if (!_isInCornerAimState || _isLeavingCornerAimBecauseAngle)
                    return false;

                if (!_isFalling && !_isClimbing && (_isThrowing || (IsGunReady && (!_gun.IsClipEmpty || !_cover.In))))
                {
                    if (_coverAim.IsAiming || (wantsToAim && IsAimingBackFromCover) || _isThrowing)
                        return true;
                    else if (!_cover.In && CurrentWeapon > 0)
                        return true;
                    else
                        return false;
                }
                else
                    return false;
            }
        }

        /// <summary>
        /// Is the character positioned well for climbing.
        /// </summary>
        public bool CanClimb
        {
            get
            {
                if (!_cover.In || _cover.IsTall)
                    return false;

                return _cover.IsFrontField(_horizontalLookAngle, CoverSettings.Angles.Front);
            }
        }

        /// <summary>
        /// Gun component of the currently used weapon. Setting a value will search the Weapons array for an appropriate index to input.
        /// </summary>
        public Gun Gun
        {
            get { return _gun; }
            set
            {
                for (int i = 0; i < Weapons.Length; i++)
                    if (Weapons[i].Gun == value)
                    {
                        InputWeapon(i + 1);
                        break;
                    }
            }
        }

        /// <summary>
        /// Is the gun not being changed or reloaded.
        /// </summary>
        public bool IsGunReady
        {
            get
            {
                return CurrentWeapon > 0 && _gun != null && !_isChangingWeapon && !_isReloading && !HasGrenadeInHand && !IsClimbing && !IsRolling && !IsSprinting && _localMovement.z < 1.1f;
            }
        }

        /// <summary>
        /// Is the character currently rolling.
        /// </summary>
        public bool IsRolling
        {
            get { return _isRolling || _isIntendingToRoll; }
        }

        /// <summary>
        /// Is the character going to sprint. True when already sprinting.
        /// </summary>
        public bool IsGoingToSprint
        {
            get { return !_cover.In && _isGrounded && _inputMovement.Magnitude > 1.1f; }
        }

        /// <summary>
        /// Is the character currently sprinting.
        /// </summary>
        public bool IsSprinting
        {
            get { return _isSprinting; }
        }

        /// <summary>
        /// Is the character currently in cover and standing near the left corner.
        /// </summary>
        public bool IsNearLeftCorner
        {
            get
            {
                if (!CoverSettings.CanUseCorners)
                    return false;

                if (_isInCornerAimState && _cover.Direction < 0)
                    return true;

                return _cover.In &&
                       _cover.HasLeftCorner &&
                       _cover.IsByLeftCorner(transform.position, CoverSettings.CornerAimTriggerDistance);
            }
        }

        /// <summary>
        /// Is the character currently in cover and standing near the right corner.
        /// </summary>
        public bool IsNearRightCorner
        {
            get
            {
                if (!CoverSettings.CanUseCorners)
                    return false;

                if (_isInCornerAimState && _cover.Direction > 0)
                    return true;

                return _cover.In &&
                       _cover.HasRightCorner &&
                       _cover.IsByRightCorner(transform.position, CoverSettings.CornerAimTriggerDistance);
            }
        }

        /// <summary>
        /// Is the character currently in a state where it can aim from the left corner.
        /// </summary>
        public bool CanPeekLeftCorner
        {
            get
            {
                if (!CoverSettings.CanUseCorners)
                    return false;

                if (_isInCornerAimState && _cover.Direction < 0)
                    return true;

                return IsNearLeftCorner &&

                       (!IsAimingBackFromCover &&
                        _cover.IsLeft(_horizontalLookAngle, CoverSettings.Angles.LeftCorner, _wasAbleToPeekCorner) &&
                        _cover.Direction < 0);
            }
        }

        /// <summary>
        /// Is the character currently in a state where it can aim from the right corner.
        /// </summary>
        public bool CanPeekRightCorner
        {
            get
            {
                if (!CoverSettings.CanUseCorners)
                    return false;

                if (_isInCornerAimState && _cover.Direction > 0)
                    return true;

                return IsNearRightCorner &&

                       (!IsAimingBackFromCover &&
                        _cover.IsRight(_horizontalLookAngle, CoverSettings.Angles.RightCorner, _wasAbleToPeekCorner) &&
                        _cover.Direction > 0);
            }
        }

        /// <summary>
        /// Returns the object of the current taken cover.
        /// </summary>
        public Cover Cover { get { return _cover.Main; } }

        /// <summary>
        /// Currently faced direction in cover. -1 for left, 1 for right.
        /// </summary>
        public int CoverDirection { get { return _cover.Direction; } }

        /// <summary>
        /// Returns the object of the cover left to the current cover.
        /// </summary>
        public Cover LeftCover { get { return _cover.LeftAdjacent; } }

        /// <summary>
        /// Returns the object of the cover right to the current cover.
        /// </summary>
        public Cover RightCover { get { return _cover.RightAdjacent; } }

        /// <summary>
        /// Is the camera looking away enough from the cover axis for the character to aim at a wall.
        /// </summary>
        public bool CanWallAim
        {
            get
            {
                return !_cover.IsFront(_horizontalLookAngle, CoverSettings.Angles.TallWallAim);
            }
        }

        /// <summary>
        /// Position of the currently held gun where bullets would appear. 
        /// </summary>
        public Vector3 GunOrigin
        {
            get { return _gun == null ? transform.position : _gun.Origin; }
        }

        /// <summary>
        /// Direction of the gun affected by recoil.
        /// </summary>
        public Vector3 GunDirection
        {
            get { return _gun == null ? transform.forward : _gun.Direction; }
        }

        /// <summary>
        /// Direction of the gun going straight towards the set target.
        /// </summary>
        public Vector3 GunTargetDirection
        {
            get { return _gun == null ? transform.forward : _gun.TargetDirection; }
        }

        /// <summary>
        /// Position of the top of the capsule.
        /// </summary>
        public Vector3 Top
        {
            get { return transform.position + Vector3.up * _defaultCapsuleHeight; }
        }

        /// <summary>
        /// Current intensity of recoil affecting a gun. In range of 0 to 1.
        /// </summary>
        public float RecoilIntensity
        {
            get { return _gun == null ? 0 : _gun.RecoilIntensity; }
        }

        /// <summary>
        /// Is the character in a state where they want to aim.
        /// </summary>
        public bool WouldAim
        {
            get
            {
                if (_isThrowing || _isGrenadeTakenOut)
                    return true;

                return CurrentWeapon > 0;
            }
        }

        /// <summary>
        /// Is aiming or intending to aim.
        /// </summary>
        public bool IsAimingGun
        {
            get
            {
                if (!_isFalling && 
                    !_isClimbing &&
                    !_isJumping &&
                    _canAim &&
                    IsGunReady &&
                    !HasGrenadeInHand &&
                    (!_cover.In || IsAimingBackFromCover || _isEnteringCornerAimFromBackAim || !_isInCornerAimState || (!_isLeavingCornerAim && _normalizedCornerAim > 0.2f)))
                {
                    if (_coverAim.IsAiming || (wantsToAim && IsAimingBackFromCover))
                        return true;
                    else if (!_cover.In && CurrentWeapon > 0 && (wantsToAim || _wantsToAimWhenLeavingCover))
                        return true;
                    else
                        return false;
                }
                else
                    return false;
            }
        }

        /// <summary>
        /// Is currently aiming a gun or grenade.
        /// </summary>
        public bool IsAiming
        {
            get { return _isThrowing || IsAimingGun; }
        }

        /// <summary>
        /// Was there any intended movement in cover.
        /// </summary>
        public bool IsWalkingInCover
        {
            get { return _wasMovingInCover; }
        }

        /// <summary>
        /// Returns height when standing.
        /// </summary>
        public float StandingHeight
        {
            get { return _defaultCapsuleHeight; }
        }
        
        /// <summary>
        /// Returns current height of the capsule collider.
        /// </summary>
        public float CurrentHeight
        {
            get { return _capsule.height; }
        }

        /// <summary>
        /// Returns true if the character has a grenade in a hand
        /// </summary>
        public bool HasGrenadeInHand
        {
            get { return _isGrenadeTakenOut || _isThrowing || _isInGrenadeAnimation; }
        }

        /// <summary>
        /// Returns true if the character has a grenade in hand and ready to throw it.
        /// </summary>
        public bool IsReadyToThrowGrenade
        {
            get { return _isGrenadeTakenOut && !_isThrowing && !_hasThrown; }
        }

        /// <summary>
        /// Grenade that would be potentially displayed in a hand if thrown.
        /// </summary>
        public Grenade PotentialGrenade
        {
            get
            {
                GameObject obj = null;

                if (IsThrowingLeft)
                    obj = Grenade.Left;
                else
                    obj = Grenade.Right;

                if (obj != null)
                    return obj.GetComponent<Grenade>();
                else
                    return null;
            }
        }

        /// <summary>
        /// Returns currently displayed grenade object in a hand.
        /// </summary>
        public Grenade CurrentGrenade
        {
            get
            {
                GameObject obj = null;

                if (Grenade.Right != null && Grenade.Right.activeSelf)
                    obj = Grenade.Right;
                else if (Grenade.Left != null && Grenade.Left.activeSelf)
                    obj = Grenade.Left;
                else
                    return null;

                return obj.GetComponent<Grenade>();
            }
        }

        /// <summary>
        /// True if in the current situation grenade would be thrown behind the back.
        /// </summary>
        public bool IsLookingBackInTallCover
        {
            get { return _cover.In && _cover.IsTall && !CanPeekLeftCorner && !CanPeekRightCorner && _cover.IsFrontField(LookAngle, CoverSettings.Angles.BackThrow); }
        }

        /// <summary>
        /// Returns true if in current situation grenades would be thrown with the left hand.
        /// </summary>
        public bool IsThrowingLeft
        {
            get
            {
                if (_isThrowing)
                    return _isGoingToThrowLeft;

                var shouldThrowLeft = _cover.In && _cover.IsStandingLeft && !IsLookingBackInTallCover;
                return (shouldThrowLeft && Grenade.Left != null) || (Grenade.Right == null);
            }
        }

        /// <summary>
        /// Returns cover object the character is closest to and able to take.
        /// </summary>
        public Cover PotentialCover
        {
            get { return _potentialCover; }
        }

        #endregion

        #region Public fields

        /// <summary>
        /// Renderer to check object's visiblity for optimisations. If set to none it will be searched for inside child objects.
        /// </summary>
        [Tooltip("Renderer to check object's visiblity for optimisations. If set to none it will be searched for inside child objects.")]
        public SkinnedMeshRenderer Renderer;

        /// <summary>
        /// Controls wheter the character is in a state of death. Dead characters have no collisions and ignore any input.
        /// </summary>
        [Tooltip("Controls wheter the character is in a state of death.")]
        public bool IsAlive = true;

        /// <summary>
        /// Distance below feet to check for ground.
        /// </summary>
        [Tooltip("Distance below feet to check for ground.")]
        [Range(0, 1)]
        public float GroundThreshold = 0.3f;

        /// <summary>
        /// Minimal height to trigger state of falling. It’s ignored when jumping over gaps.
        /// </summary>
        [Tooltip("Minimal height to trigger state of falling. It’s ignored when jumping over gaps.")]
        [Range(0, 10)]
        public float FallThreshold = 2.0f;

        /// <summary>
        /// Movement to obstacles closer than this is ignored. 
        /// It is mainly used to prevent character running into walls.
        /// </summary>
        [Tooltip("Movement to obstacles closer than this is ignored.")]
        [Range(0, 2)]
        public float ObstacleDistance = 0.05f;

        /// <summary>
        /// Aiming in front of obstacles closer than this distance is ignored.
        /// </summary>
        [Tooltip("Aiming in front of obstacles closer than this distance is ignored.")]
        [Range(0, 5)]
        public float AimObstacleDistance = 0.4f;

        /// <summary>
        /// Gravity force applied to this character.
        /// </summary>
        [Tooltip("Gravity force applied to this character.")]
        public float Gravity = 10;

        /// <summary>
        /// Sets the origin of bullet raycasts, either a camera or an end of a gun.
        /// </summary>
        [Tooltip("Sets the origin of bullet raycasts, either a camera or an end of a gun.")]
        public bool IsFiringFromCamera = true;

        /// <summary>
        /// ID of the currently held weapon. Index starts from 1. Value of 0 means unarmed.
        /// </summary>
        [Tooltip("ID of the currently held weapon. Index starts from 1. Value of 0 means unarmed.")]
        public int CurrentWeapon = 0;

        /// <summary>
        /// Descriptions of currently held weapons.
        /// </summary>
        [Tooltip("Descriptions of currently held weapons.")]
        public WeaponDescription[] Weapons;

        public GrenadeSettings Grenade = GrenadeSettings.Default();

        /// <summary>
        /// IK settings for the character.
        /// </summary>
        [Tooltip("IK settings for the character.")]
        public IKSettings IK = IKSettings.Default();

        /// <summary>
        /// Settings for cover behaviour.
        /// </summary>
        [Tooltip("Settings for cover behaviour.")]
        public CoverSettings CoverSettings = CoverSettings.Default();

        /// <summary>
        /// Settings for climbing.
        /// </summary>
        [Tooltip("Settings for climbing.")]
        public ClimbSettings ClimbSettings = ClimbSettings.Default();

        /// <summary>
        /// Settings for jumping.
        /// </summary>
        [Tooltip("Settings for jumping.")]
        public JumpSettings JumpSettings = JumpSettings.Default();

        /// <summary>
        /// Settings for rolling.
        /// </summary>
        [Tooltip("Settings for rolling.")]
        public RollSettings RollSettings = RollSettings.Default();

        /// <summary>
        /// Settings for turning and aiming.
        /// </summary>
        [Tooltip("Settings for turning and aiming.")]
        public TurnSettings TurnSettings = TurnSettings.Default();

        #endregion

        #region Private fields

        private bool _hasRegistered;

        private CapsuleCollider _capsule;
        private Rigidbody _body;
        private Animator _animator;
        private SkinnedMeshRenderer _renderer;

        private CoverState _cover;
        private Cover _potentialCover;
        private Cover _lastNotifiedCover;

        private Vector3 _lastKnownPosition;
        private float _previousCapsuleHeight;

        private bool _isGrenadeTakenOut = false;
        private bool _isThrowing = false;
        private bool _hasBeganThrowAnimation = false;
        private bool _isGoingToThrowLeft;
        private bool _hasThrown = false;
        private float _throwBodyAngle;
        private float _throwAngle;
        private Vector3 _throwTarget;
        private Vector3 _throwVelocity;
        private Vector3 _throwOrigin;
        private bool _isInGrenadeAnimation = false;

        private bool _isGrounded = true;
        private bool _wasGrounded;
        private bool _isFalling;

        private bool _wantsToZoom;
        private bool _wantedToZoom;

        private bool _hasLookTarget;
        private float _bodyTurnSpeed = 10;
        private Vector3 _bodyLookTarget;
        private Vector3 _currentBodyLookTarget;
        private Vector3 _lookTarget;

        private Vector3 _fireTarget;
        private Vector3 _currentFireTarget;

        private Vector3 _headLookTargetOverride;
        private Vector3 _headLookTargetOverrideTarget;
        private bool _isHeadLookTargetOverriden;
        private float _headTurnSpeed = 10;

        private float _horizontalBodyAngle;
        private float _currentHorizontalBodyAngle;
        private float _horizontalLookAngle;
        private float _verticalLookAngle;
        private float _bodyAngleDiff;
        private bool _wouldTurnImmediately;

        private float _currentAnimatedAngle;
        private float _requiredAnimationRotation;
        private bool _isRotatingAnimatedAngle;

        private bool _wantsToTakeCover;
        private bool _wantsToImmediatelyUpdatePotentialCover;
        private bool _wasMovingInCover;

        private CoverAimState _coverAim;

        private float _leftHandIntensity = 0;
        private float _armAimIntensity = 0;
        private float _previousArmAimTargetIntensity = 0;
        private float _throwAimIntensity = 0;
        private float _headAimIntensity = 0;
        private float _aimPivotIntensity = 0;

        private bool _isChangingWeapon = false;
        private int _weaponToChangeTo = 0;
        private bool _isPreviousGunHidden = false;
        private Gun _gun;
        private float _armTimer = 0;

        private float _movementInput = 0;

        private float _coverTime = 0;
        private float _coverUpdateTimer = 0;

        private bool _isSprinting = false;

        private bool _useGravity = true;
        private bool _isClimbing = false;
        private bool _hasBeganClimbing = false;
        private bool _isClimbingAVault = false;
        private bool _wantsToClimb = false;
        private float _climbHeight = 0;
        private float _climbAngle = 0;
        private float _climbTime = 0;
        private float _ignoreFallTimer = 0;
        private float _normalizedClimbTime = 0;

        private bool _isReloading = false;
        private bool _hasBeganReloading = false;
        private float _reloadTime = 0;
        private float _normalizedReloadTime = 0;

        private bool _isAimingBackInTallCover = false;

        private bool _canAim = true;
        private float _canAimLerp = 1;

        private bool _isJumping = false;
        private float _jumpAngle;
        private bool _isIntendingToJump = false;
        private bool _wantsToJump = false;
        private float _nextJumpTimer = 0;
        private float _jumpLegTimer = 0;
        private float _jumpTimer = 0;
        private float _normalizedJumpTime = 0;

        private bool _isRolling = false;
        private bool _isIntendingToRoll = false;
        private float _rollAngle;
        private float _normalizedRollTime;
        private float _rollTimer = 0;

        private float _defaultCapsuleHeight = 2.0f;
        private float _defaultCapsuleCenter = 1.0f;

        private float _leftMoveIntensity = 1;
        private float _rightMoveIntensity = 1;
        private float _backMoveIntensity = 1;
        private float _frontMoveIntensity = 1;

        private IK _aimIK = new IK();
        private IK _recoilIK = new IK();
        private IK _leftHandIK = new IK();
        private IK _sightIK = new IK();
        private IK _throwIK = new IK();
        private CoverSearch _coverSearch = new CoverSearch();

        private Vector3 _localMovement = new Vector3(0, 0, 0);

        private bool _isCrouching = false;
        private bool _wantsToCrouch = false;
        private CharacterMovement _inputMovement;
        private CharacterMovement _currentMovement;
        private bool _wantsToAim;
        private bool _wantsToAimWhenLeavingCover;
        private bool _wantsToFire;
        private bool _dontChangeArmAimingJustYet = false;
        private bool _wantsToFaceInADirection;

        private Quaternion _lastHit = Quaternion.identity;
        private float _lastHitStrength;

        private int _lastFoot;

        private float _coverDelay;
        private bool _needsToUpdaToCoverBecauseOfDelay;

        private bool _isInCornerAimState;
        private bool _isLeavingCornerAim;
        private bool _isLeavingCornerAimBecauseAngle;
        private bool _isEnteringCornerAimFromBackAim;
        private float _normalizedCornerAim;
        private bool _ignoreCornerUntilFreshlyAble;
        private bool _isAnimatingCornerAim;
        private bool _isCornerAiming;
        private Vector3 _cornerAimStart;

        private Vector3 _positionToSnap;
        private Vector3 _positionToSnapStart;
        private float _positionSnapTimer;
        private float _positionSnapTimerStart;

        private bool _wasAbleToPeekCorner;

        private bool _wasAimingBackFromCover;

        private float _directionChangeDelay;

        private float _tallCoverTimer = 0;

        private float _oppositeTallBackAimTimer = 0;

        private bool _isExitingLeftCorner = false;
        private bool _isExitingRightCorner = false;
        private float _cornerExitTimer = 0f;

        private bool _wasAlive = true;

        private Transform _lastAimTransform;

        private Collider[] _colliderCache = new Collider[16];
        private RaycastHit[] _raycastHits = new RaycastHit[16];

        private WeaponAnimationStates _weaponStates = WeaponAnimationStates.Default();

        private GameObject _target;

        private bool _isOnSlope = false;
        private float _noMovementTimer;
        private float _groundTimer;

        #endregion

        #region Public methods

        /// <summary>
        /// Sets the position for the character head look at independent of the body.
        /// </summary>
        public void SetHeadLookTargetOverride(Vector3 target, float speed = 8f)
        {
            if (!_isHeadLookTargetOverriden)
                _headLookTargetOverride = TurnSettings.IsAimingPrecisely ? _currentFireTarget : _lookTarget;

            _headTurnSpeed = speed;
            _headLookTargetOverrideTarget = target;
            _isHeadLookTargetOverriden = true;
        }

        /// <summary>
        /// Sets the position for the character to look and aim at without turning off head look target override.
        /// </summary>
        public void SetBodyLookTarget(Vector3 target, float speed = 8f)
        {
            _bodyLookTarget = target;

            if (!_hasLookTarget)
            {
                _lookTarget = _bodyLookTarget;
                _hasLookTarget = true;
            }

            _bodyTurnSpeed = speed;

            calcualteBodyTurn();
        }

        /// <summary>
        /// Sets the position for the character to look and aim at.
        /// </summary>
        public void SetLookTarget(Vector3 target)
        {
            if (_gun != null)
            {
                var vector = target - _gun.transform.position;
                var distance = vector.magnitude;

                if (distance < 2 && distance > 0.01f)
                    _lookTarget = _gun.transform.position + vector.normalized * 2;
                else
                    _lookTarget = target;
            }
            else
                _lookTarget = target;

            _isHeadLookTargetOverriden = false;
        }

        /// <summary>
        /// Sets the position to raycast bullets from.
        /// </summary>
        /// <param name="position"></param>
        public void FireFrom(Vector3 position)
        {
            if (_gun != null)
                _gun.SetFireFrom(position);
        }

        /// <summary>
        /// Sets the gun to raycast bullets from the default position.
        /// </summary>
        public void SetDefaultFireOrigin()
        {
            if (_gun != null)
                _gun.StopFiringFromCustom();
        }

        /// <summary>
        /// Sets the position to fire bullets at.
        /// </summary>
        /// <param name="target"></param>
        public void SetFireTarget(Vector3 target)
        {
            _fireTarget = target;
        }

        #endregion

        #region Events

        /// <summary>
        /// Supposed to be called by the grenade throw animation to release the grenade.
        /// </summary>
        public void OnThrow()
        {
            if (_isThrowing)
            {
                if (_isGoingToThrowLeft)
                    throwGrenade(Grenade.Left);
                else
                    throwGrenade(Grenade.Right);

                _isThrowing = false;
                _hasThrown = true;
            }
        }

        /// <summary>
        /// Sets IsAlive to false upon the character death.
        /// </summary>
        public void OnDead()
        {
            IsAlive = false;
        }

        /// <summary>
        /// Affects the character spine by a bullet hit.
        /// </summary>
        public void OnHit(Hit hit)
        {
            if (IK.HitBone == null)
                return;

            var forwardDot = Vector3.Dot(-IK.HitBone.transform.forward, hit.Normal);
            var rightDot = Vector3.Dot(IK.HitBone.transform.right, hit.Normal);

            _lastHit = Quaternion.Euler(forwardDot * 40, 0, rightDot * 40);
            _lastHitStrength = 1.0f;
        }

        /// <summary>
        /// Rotation of the pivot for the camera.
        /// </summary>
        public Quaternion GetPivotRotation()
        {
            Quaternion body;

            if (_cover.In && !_isAimingBackInTallCover && (!IsAiming || _isInCornerAimState))
                body = Quaternion.AngleAxis(_cover.ForwardAngle + (_cover.IsFront(_horizontalLookAngle) ? 0 : 180), Vector3.up);
            else
                body = transform.rotation;

            return Quaternion.Lerp(body, body * Quaternion.Euler(0, _horizontalLookAngle - transform.eulerAngles.y, 0), _aimPivotIntensity);
        }

        /// <summary>
        /// Position of the pivot for the camera.
        /// </summary>
        public Vector3 GetPivotPosition()
        {
            if (_cover.In && !_isAimingBackInTallCover && !_wantedToZoom)
            {
                float margin;

                if (_cover.IsStandingLeft)
                {
                    if (_cover.HasLeftAdjacent)
                        margin = CoverSettings.CornerAimTriggerDistance;
                    else
                        margin = -CoverSettings.PivotSideMargin;
                }
                else
                {
                    if (_cover.HasRightAdjacent)
                        margin = CoverSettings.CornerAimTriggerDistance;
                    else
                        margin = -CoverSettings.PivotSideMargin;
                }

                if (_cover.Width > -margin * 2 + float.Epsilon)
                {
                    var left = _cover.LeftSide(margin) - _cover.ForwardDirection * CoverSettings.EnterDistance;
                    var right = _cover.RightSide(margin) - _cover.ForwardDirection * CoverSettings.EnterDistance;

                    left.y = transform.position.y;
                    right.y = transform.position.y;

                    return Util.FindClosestToPath(left, right, transform.position);
                }
                else
                {
                    var pos = _cover.Main.transform.position - _cover.ForwardDirection * CoverSettings.EnterDistance;
                    pos.y = transform.position.y;
                    return pos;
                }
            }
            else
                return transform.position;
        }

        #endregion

        #region Input

        /// <summary>
        /// Tells the character to take a grenade in hands.
        /// </summary>
        public void InputTakeGrenade()
        {
            if (!_isThrowing && !_isGrenadeTakenOut)
            {
                _isGrenadeTakenOut = true;
                _animator.SetTrigger("TakeGrenade");
            }
        }

        /// <summary>
        /// Tells the character to put the grenade away.
        /// </summary>
        public void InputCancelGrenade()
        {
            _isGrenadeTakenOut = false;
        }

        /// <summary>
        /// Calculates flight parameters given a path and launches the grenade.
        /// </summary>
        public void InputThrowGrenade(Vector3[] predictedPath, int predictedPathLength, float step)
        {
            if (predictedPathLength < 2)
                return;

            InputThrowGrenade(predictedPath[0], (predictedPath[1] - predictedPath[0]) / step, predictedPath[predictedPathLength - 1]);
        }

        /// <summary>
        /// Tells the character to throw a grenade in the given path.
        /// </summary>
        public void InputThrowGrenade(Vector3 origin, Vector3 velocity, Vector3 target)
        {
            if (!_isThrowing)
            {
                _isGoingToThrowLeft = IsThrowingLeft;
                _wouldTurnImmediately = true;
                _isThrowing = true;
                _hasThrown = false;
                _isGrenadeTakenOut = false;
                _throwOrigin = origin;
                _throwVelocity = velocity;
                _throwTarget = target;
                _hasBeganThrowAnimation = false;

                showGrenadeAnyHand();

                _throwAngle = Util.AngleOfVector(velocity);

                if (_cover.In && _cover.IsTall && !IsAimingBackFromCover && couldTakeAPeek)
                {
                    _throwBodyAngle = _throwAngle;
                    startCornerAim();
                }
                else if (_cover.In && (IsLookingBackInTallCover || _cover.IsFrontField(_throwAngle, 180)))
                    _throwBodyAngle = _cover.FaceAngle;
                else
                    _throwBodyAngle = _throwAngle;
            }
        }

        /// <summary>
        /// Inputs a command to roll. Should be preceeded by movement input for the direction.
        /// </summary>
        public void InputRoll()
        {
            if (_isRolling || _isIntendingToRoll)
                return;

            if (_inputMovement.IsMoving)
                _rollAngle = Util.AngleOfVector(_inputMovement.Direction);
            else
                _rollAngle = _horizontalLookAngle;

            if (_cover.In)
                _rollAngle = clampAngleToCover(_rollAngle);

            _isIntendingToRoll = true;
        }

        /// <summary>
        /// Inputs a command to jump.
        /// </summary>
        public void InputJump()
        {
            if (_isIntendingToJump || _isRolling)
                return;

            if (_inputMovement.IsMoving)
                _jumpAngle = Util.AngleOfVector(_inputMovement.Direction);
            else
                _jumpAngle = _horizontalLookAngle;

            _wantsToJump = true;
        }

        /// <summary>
        /// Inputs a command to climb or vault.
        /// </summary>
        public void InputClimbOrVault()
        {
            _wantsToClimb = true;
        }

        /// <summary>
        /// Inputs a command to take cover.
        /// </summary>
        public void InputTakeCover()
        {
            _wantsToTakeCover = true;
        }

        /// <summary>
        /// Tells the motor to immediately update potential cover status.
        /// </summary>
        public void InputImmediateCoverSearch()
        {
            _wantsToImmediatelyUpdatePotentialCover = true;
        }

        /// <summary>
        /// Makes the motor ignore any cover in the following frame.
        /// </summary>
        public void InputLeaveCover()
        {
            _wantsToTakeCover = false;

            if (_cover.In)
                _cover.Clear();
        }

        /// <summary>
        /// Sets the character movement for the next update.
        /// </summary>
        public void InputMovement(CharacterMovement movement)
        {
            _inputMovement = movement;
        }

        /// <summary>
        /// Sets the character to move forward during the next update.
        /// </summary>
        public void InputMoveForward(float strength = 1)
        {
            InputMovement(new CharacterMovement(Quaternion.AngleAxis(_horizontalLookAngle, Vector3.up) * Vector3.forward, 1));
        }

        /// <summary>
        /// Sets the character to move backwards during the next update.
        /// </summary>
        public void InputMoveBack(float strength = 1)
        {
            InputMovement(new CharacterMovement(Quaternion.AngleAxis(_horizontalLookAngle - 180, Vector3.up) * Vector3.forward, 1));
        }

        /// <summary>
        /// Sets the character to move left during the next update.
        /// </summary>
        public void InputMoveLeft(float strength = 1)
        {
            InputMovement(new CharacterMovement(Quaternion.AngleAxis(_horizontalLookAngle - 90, Vector3.up) * Vector3.forward, 1));
        }

        /// <summary>
        /// Sets the character to move right during the next update.
        /// </summary>
        public void InputMoveRight(float strength = 1)
        {
            InputMovement(new CharacterMovement(Quaternion.AngleAxis(_horizontalLookAngle + 90, Vector3.up) * Vector3.forward, 1));
        }

        /// <summary>
        /// Sets the character crouching state for the next update.
        /// </summary>
        public void InputCrouch()
        {
			_wantsToCrouch = !_wantsToCrouch;
        }

        /// <summary>
        /// Sets the character to turn immediately if needed and allowed in the settings.
        /// </summary>
        public void InputPossibleImmediateTurn(bool value = true)
        {
            _wouldTurnImmediately = value;
        }

        /// <summary>
        /// Sets the character aim state for the next update.
        /// </summary>
        public void InputAim()
        {
            _wantsToAim = true;
        }

        /// <summary>
        /// Sets the character to avoid having a frame without aiming when leaving cover.
        /// </summary>
        public void InputAimWhenLeavingCover()
        {
            _wantsToAimWhenLeavingCover = true;
        }

        /// <summary>
        /// Used to make camera pivot around the character when corner aiming.
        /// </summary>
        public void InputZoom()
        {
            _wantsToZoom = true;
        }

        /// <summary>
        /// Sets the character state of firing for the next update.
        /// </summary>
        public void InputFire()
        {
            _wantsToFire = true;
            InputAim();
        }

        /// <summary>
        /// Attempts to start reloading a gun.
        /// </summary>
        public void InputReload()
        {
            startReload();
        }

        /// <summary>
        /// Sets the currently held weapon.
        /// </summary>
        /// <param name="id">Index of the weapon based on 1. Value of 0 hides weapons.</param>
        public void InputWeapon(int id)
        {
            _weaponToChangeTo = id;
        }

        /// <summary>
        /// Tells the character to face left relative to the cover.
        /// </summary>
        public void InputStandLeft()
        {
            _wantsToFaceInADirection = true;
            _cover.StandLeft();
        }

        /// <summary>
        /// Tells the character to face right relative to the cover.
        /// </summary>
        public void InputStandRight()
        {
            _wantsToFaceInADirection = true;
            _cover.StandRight();
        }

        #endregion

        #region Behaviour

        private void OnEnable()
        {
            if (IsAlive)
            {
                Characters.Register(this);
                _hasRegistered = true;
            }
        }

        private void OnDisable()
        {
            Characters.Unregister(this);
            _hasRegistered = false;
        }

        private void Awake()
        {
            _capsule = GetComponent<CapsuleCollider>();
            _body = GetComponent<Rigidbody>();
            _animator = GetComponent<Animator>();
            _renderer = GetComponentInChildren<SkinnedMeshRenderer>();

            _weaponToChangeTo = CurrentWeapon;

            _defaultCapsuleHeight = _capsule.height;
            _defaultCapsuleCenter = _capsule.center.y;
            _previousCapsuleHeight = _defaultCapsuleHeight;

            SetLookTarget(transform.position + transform.forward * 1000);
            SetFireTarget(transform.position + transform.forward * 1000);

            if (Grenade.Left != null)
            {
                var collider = Grenade.Left.GetComponent<Collider>();

                if (collider != null)
                    Physics.IgnoreCollision(_capsule, collider, true);
            }

            if (Grenade.Right != null)
            {
                var collider = Grenade.Right.GetComponent<Collider>();

                if (collider != null)
                    Physics.IgnoreCollision(_capsule, collider, true);
            }

            SendMessage("OnStandingHeight", _defaultCapsuleHeight, SendMessageOptions.DontRequireReceiver);
            SendMessage("OnCurrentHeight", _defaultCapsuleHeight, SendMessageOptions.DontRequireReceiver);
        }

        private void LateUpdate()
        {
            _target = null;

            if (IsAlive && !_hasRegistered)
            {
                _hasRegistered = true;
                Characters.Register(this);
            }
            else if (!IsAlive && _hasRegistered)
            {
                _hasRegistered = false;
                Characters.Unregister(this);
            }

            if (IsAlive)
            {
                _coverUpdateTimer += Time.deltaTime;
                _isCrouching = _wantsToCrouch;

                if (_cover.In)
                    _coverTime += Time.deltaTime;
                else
                    _coverTime = 0;

                {
                    var distance = Vector3.Distance(_fireTarget, Top);
                    var dir = Vector3.Lerp((_currentFireTarget - Top).normalized, (_fireTarget - Top).normalized, Time.deltaTime * 16);

                    _currentFireTarget = Top + dir * distance;
                }

                calcualteBodyTurn();
                calculateLookAngle();

                if (_useGravity && IsAlive && !_isClimbing)
                {
                    if (_noMovementTimer < 0.1f || !_isGrounded || _isOnSlope || _groundTimer < 0.2f)
                    {
                        var force = new Vector3(0, Gravity, 0) * Time.deltaTime;

                        if (_isGrounded && _jumpTimer > 0.1f && _noMovementTimer < 0.1f)
                            _body.velocity -= force * 3;
                        else
                            _body.velocity -= force;
                    }
                }

                updateCanAim();
                updateHeadAimIntennsity();
                updateThrowAimIntensity();
                updateArmAimIntennsity();
                updateLeftHandIntensity();
                updateAimPivotIntensity();
                updateGuns();
                updateReload();
                updateGrenade();
                updateSprinting();

                if (_isClimbing)
                {
                    _potentialCover = null;
                    updateClimb();
                }
                else if (_isInCornerAimState)
                    updateCornerAim();
                else
                    updateCommon();

                if (currentRenderer == null || currentRenderer.isVisible)
                    updateIK();

                if (Mathf.Abs(_movementInput) > float.Epsilon)
                    _noMovementTimer = 0;
                else if (_noMovementTimer < 1)
                    _noMovementTimer += Time.deltaTime;

                if (!_isGrounded)
                    _groundTimer = 0;
                else if (_groundTimer < 1)
                    _groundTimer += Time.deltaTime;

                if (_lastNotifiedCover != _cover.Main)
                {
                    _lastNotifiedCover = _cover.Main;

                    if (_lastNotifiedCover == null)
                        SendMessage("OnLeaveCover", SendMessageOptions.DontRequireReceiver);
                    else
                        SendMessage("OnTakeCover", _lastNotifiedCover, SendMessageOptions.DontRequireReceiver);
                }
            }
            else
            {
                _isCrouching = false;

                _body.velocity = Vector3.zero;
                updateGround();
            }

            updateCapsule();
            updateAnimator();

            _wantedToZoom = _wantsToZoom;

            _wantsToAim = false;
            _wouldTurnImmediately = false;
            _wantsToAimWhenLeavingCover = false;
            _wantsToJump = false;
            _wantsToClimb = false;
            _wantsToTakeCover = false;
            _inputMovement = new CharacterMovement();
			//_wantsToCrouch = false;
            _wantsToFire = false;
            _wantsToFaceInADirection = false;
            _wantsToImmediatelyUpdatePotentialCover = false;
            _wantsToZoom = false;
            _wasAbleToPeekCorner = !_isClimbing && (CanPeekLeftCorner || CanPeekRightCorner);
            _wasAimingBackFromCover = IsAimingBackFromCover;

            {
                var isAlive = IsAlive;
                if (isAlive && !_wasAlive) SendMessage("OnAlive", SendMessageOptions.DontRequireReceiver);
                if (!isAlive && _wasAlive) SendMessage("OnDead", SendMessageOptions.DontRequireReceiver);
                _wasAlive = isAlive;
            }
        }

        #endregion

        #region Private methods

        private void snapToPosition(Vector3 value, float time)
        {
            _positionToSnap = value;
            _positionToSnapStart = transform.position;
            _positionSnapTimer = time;
            _positionSnapTimerStart = time;
        }

        private void calculateLookAngle()
        {
            {
                var diff = _bodyLookTarget - transform.position;

                if (diff.magnitude > 0)
                {
                    diff.Normalize();

                    _verticalLookAngle = Mathf.Asin(diff.y) * 180f / Mathf.PI;
                    _horizontalLookAngle = Util.AngleOfVector(diff);
                }
            }

            if (TurnSettings.ImmediateAim && _wouldTurnImmediately)
                _currentHorizontalBodyAngle = _horizontalLookAngle;
            else
                _currentHorizontalBodyAngle = Util.AngleOfVector(_currentBodyLookTarget - transform.position);
        }

        private void calcualteBodyTurn()
        {
            _horizontalBodyAngle = Util.AngleOfVector(_bodyLookTarget - transform.position);

            if (TurnSettings.ImmediateAim && _wouldTurnImmediately)
                _currentHorizontalBodyAngle = _horizontalLookAngle;
            else
                _currentHorizontalBodyAngle = Util.AngleOfVector(_currentBodyLookTarget - transform.position);
        }

        private void updateAimingBackInTallCover()
        {
            if ((_isThrowing || (_hasThrown && _isInGrenadeAnimation)) && _cover.In && _cover.IsTall && !IsNearLeftCorner && !IsNearRightCorner && !IsLookingBackInTallCover)
                _isAimingBackInTallCover = true;
            else if (_cover.In && _cover.IsTall && CurrentWeapon > 0)
            {
                if ((IsNearLeftCorner && _cover.IsLeft(_horizontalLookAngle)) ||
                    (IsNearRightCorner && _cover.IsRight(_horizontalLookAngle)))
                {
                    _isAimingBackInTallCover = !_cover.IsFrontField(_horizontalLookAngle, CoverSettings.Angles.Front);
                }
                else
                {
                    if ((_cover.IsStandingLeft && _cover.IsLeft(_horizontalLookAngle)) ||
                        (_cover.IsStandingRight && _cover.IsRight(_horizontalLookAngle)))
                    {
                        _isAimingBackInTallCover = !_cover.IsFront(_horizontalLookAngle, CoverSettings.Angles.TallBack.Face);
                    }
                    else
                    {
                        _isAimingBackInTallCover = !_cover.IsFront(_horizontalLookAngle, CoverSettings.Angles.TallBack.Opposite);

                        if (_isAimingBackInTallCover)
                            _oppositeTallBackAimTimer = CoverSettings.Angles.TallBack.OppositeSustainTime;
                    }
                }
            }
            else
                _isAimingBackInTallCover = false;

            if (_oppositeTallBackAimTimer > 0)
            {
                _oppositeTallBackAimTimer -= Time.deltaTime;
                _isAimingBackInTallCover = true;
            }
        }

        private void updateCapsule()
        {
            if (IsAlive)
            {
                var targetHeight = _defaultCapsuleHeight;

                if (!_isClimbingAVault && _isClimbing && _normalizedClimbTime >= ClimbSettings.ClimbCollisionOff && _normalizedClimbTime < ClimbSettings.ClimbCollisionOn && ClimbSettings.ClimbCollisionOff < ClimbSettings.ClimbCollisionOn)
                    _capsule.enabled = false;
                else if (_isClimbingAVault && _isClimbing && _normalizedClimbTime >= ClimbSettings.VaultCollisionOff && _normalizedClimbTime < ClimbSettings.VaultCollisionOn && ClimbSettings.VaultCollisionOff < ClimbSettings.VaultCollisionOn)
                    _capsule.enabled = false;
                else
                {
                    if (!_capsule.enabled)
                        _groundTimer = 0;

                    _capsule.enabled = true;
                }

                if (_isClimbing && _normalizedClimbTime < 0.5f)
                    targetHeight = ClimbSettings.CapsuleHeight;
                else if (_isJumping && _jumpTimer < JumpSettings.HeightDuration)
                    targetHeight = JumpSettings.CapsuleHeight;
                else if (_isRolling && _rollTimer < RollSettings.HeightDuration)
                    targetHeight = RollSettings.CapsuleHeight;
                else if (_cover.In && !_cover.IsTall && (!IsAiming || IsCornerAiming))
                    targetHeight = Mathf.Lerp(CoverSettings.LowCapsuleHeight, targetHeight, _cover.IsTall ? 1.0f : 0.0f);

                _capsule.height = Mathf.Lerp(_capsule.height, targetHeight, Time.deltaTime * 10);
                _capsule.center = new Vector3(_capsule.center.x, _defaultCapsuleCenter - (_defaultCapsuleHeight - _capsule.height) * 0.5f, _capsule.center.z);

                if (_previousCapsuleHeight != _capsule.height)
                    SendMessage("OnCurrentHeight", _capsule.height, SendMessageOptions.DontRequireReceiver);
            }
            else
                _capsule.enabled = false;
        }

        private void updateCanAim()
        {
            if (_cover.In)
            {
                if (!_cover.IsTall && _isLeavingCornerAim && _isInCornerAimState)
                    _canAimLerp = 0;
                else
                    _canAimLerp = 1;
            }
            else
                _canAimLerp = Mathf.Lerp(_canAimLerp, isFree(transform.forward, AimObstacleDistance, 0.7f) ? 1 : 0, Time.deltaTime * 4);

            _canAim = _canAimLerp > 0.5f;
        }

        private void updateThrowAimIntensity()
        {
            float targetIntensity = 0;

            if (_isThrowing && _isCornerAiming)
                targetIntensity = 1;

            _throwAimIntensity = Mathf.Lerp(_throwAimIntensity, targetIntensity, Mathf.Clamp01(Time.deltaTime * 6));
        }

        private void updateArmAimIntennsity()
        {
            float targetIntensity = IsAimingGun ? 1 : 0;

            if (_dontChangeArmAimingJustYet && _previousArmAimTargetIntensity < targetIntensity)
                targetIntensity = 0.0f;
            else
                _previousArmAimTargetIntensity = targetIntensity;

            _armAimIntensity = Mathf.Lerp(_armAimIntensity, targetIntensity, Mathf.Clamp01(Time.deltaTime * 10));
        }

        private void updateLeftHandIntensity()
        {
            float targetIntensity = 0f;

            if (IsGunReady && !_isClimbing && !_isFalling && !IsSprinting)
            {
                if (Weapons[CurrentWeapon - 1].Type == WeaponType.Pistol)
                {
                    if (IsAimingGun || _cover.In)
                        targetIntensity = 1;
                }
                else
                    targetIntensity = 1f;
            }

            _leftHandIntensity = Mathf.Lerp(_leftHandIntensity, targetIntensity, Mathf.Clamp01(Time.deltaTime * 15));
        }

        private void updateHeadAimIntennsity()
        {
            float targetIntensity = 0f;

            if ((IsAiming && !IsLookingBackInTallCover) || _isHeadLookTargetOverriden)
                targetIntensity = 1;

            if (targetIntensity > _headAimIntensity)
                _headAimIntensity = Mathf.Lerp(_headAimIntensity, targetIntensity, Time.deltaTime * 2);
            else
                _headAimIntensity = Mathf.Lerp(_headAimIntensity, targetIntensity, Time.deltaTime * 15);
        }

        private void updateAimPivotIntensity()
        {
            float targetIntensity = 0f;

            if (_isFalling || _isClimbing)
                targetIntensity = 0;
            else if (!_cover.In)
            {
                if (CurrentWeapon > 0)
                    targetIntensity = 1;
            }
            else if (_coverAim.IsAiming && (!_isInCornerAimState || _wantsToZoom))
                targetIntensity = 1;

            if (_isClimbing || _ignoreFallTimer > 0)
                _aimPivotIntensity = Mathf.Lerp(_aimPivotIntensity, targetIntensity, Mathf.Clamp01(Time.deltaTime * 4));
            else
                _aimPivotIntensity = Mathf.Lerp(_aimPivotIntensity, targetIntensity, Mathf.Clamp01(Time.deltaTime * 8));
        }

        private void updateSprinting()
        {
            var state = _animator.GetCurrentAnimatorStateInfo(0);

            _isSprinting = state.IsName("Sprint") || state.IsName("Sprint Rifle");

            if (_isSprinting)
            {
                var next = _animator.GetNextAnimatorStateInfo(0);

                if (next.shortNameHash != 0 && !(next.IsName("Sprint") || next.IsName("Sprint Rifle")))
                    _isSprinting = false;
            }
        }

        private void updateRolling()
        {
            if (!_isRolling)
                _rollTimer = 0;

            if (_isIntendingToRoll && !_isRolling && Mathf.Abs(Mathf.DeltaAngle(transform.eulerAngles.y, _rollAngle)) < 60)
            {
                _animator.SetTrigger("Roll");
                _animator.SetTrigger("RollWeapon");
                _isIntendingToRoll = false;
                _isRolling = true;
                _normalizedRollTime = 0;
            }
            else if (_isRolling)
            {
                var info = _animator.GetCurrentAnimatorStateInfo(0);
                _isRolling = info.IsName("Roll");

                if (_isRolling)
                    _normalizedRollTime = info.normalizedTime;
                else
                {
                    info = _animator.GetNextAnimatorStateInfo(0);
                    _isRolling = info.IsName("Roll");

                    if (_isRolling)
                        _normalizedRollTime = info.normalizedTime;
                }

                if (_rollTimer < 0.3f)
                    _isRolling = true;

                _rollTimer += Time.deltaTime;
            }
        }

        private void updateReload()
        {
            if (_isReloading)
            {
                _reloadTime += Time.deltaTime;

                var info = _animator.GetCurrentAnimatorStateInfo(FirstWeaponLayer + gunType(_gun));

                var isInState = false;

                if (info.IsName(_weaponStates.Reload))
                    isInState = true;

                if (isInState)
                    _hasBeganReloading = true;
                else if (_hasBeganReloading)
                    _isReloading = false;

                if (_hasBeganReloading)
                {
                    if (info.normalizedTime >= 0.2f && _gun != null)
                        _gun.Reload();

                    if (info.normalizedTime > _normalizedReloadTime)
                        _normalizedReloadTime = info.normalizedTime;

                    if (_normalizedReloadTime > 0.8f)
                        _isReloading = false;
                }

                if (_reloadTime > 10)
                    _isReloading = false;
            }
            else
                _reloadTime = 0;
        }

        private void hideGrenade(GameObject grenade)
        {
            if (grenade != null && grenade.activeSelf)
                grenade.SetActive(false);
        }

        private void showGrenade(GameObject grenade)
        {
            if (grenade != null && !grenade.activeSelf)
                grenade.SetActive(true);
        }

        private void throwGrenade(GameObject grenade)
        {
            if (grenade == null)
                return;

            var clone = GameObject.Instantiate(grenade);
            clone.transform.parent = null;
            clone.transform.position = grenade.transform.position;

            var collider = clone.GetComponent<Collider>();
            if (collider != null)
            {
                Physics.IgnoreCollision(_capsule, collider, true);
                Physics.IgnoreCollision(grenade.GetComponent<Collider>(), collider, true);
            }

            var body = clone.GetComponent<Rigidbody>();
            if (body != null)
            {
                var forward = Quaternion.AngleAxis(_throwBodyAngle, Vector3.up) * Vector3.forward;

                body.isKinematic = false;
                body.velocity += (forward + Vector3.up).normalized * Grenade.MaxVelocity;
            }

            var component = clone.GetComponent<Grenade>();
            if (component != null)
            {
                component.Activate(gameObject);
                component.Fly(_throwOrigin, _throwVelocity, Grenade.Gravity);
            }

            hideGrenade(grenade);
        }

        private void showGrenadeAnyHand()
        {
            if (IsThrowingLeft)
            {
                showGrenade(Grenade.Left);
                hideGrenade(Grenade.Right);
            }
            else
            {
                hideGrenade(Grenade.Left);
                showGrenade(Grenade.Right);
            }
        }

        private void updateGrenade()
        {
            if (_isThrowing)
            {
                if (!_hasBeganThrowAnimation && (Mathf.Abs(Mathf.DeltaAngle(transform.eulerAngles.y, _throwBodyAngle)) < 30 || _isInCornerAimState))
                {
                    _hasBeganThrowAnimation = true;
                    _animator.SetTrigger("ThrowGrenade");
                }
            }
            else if (_isGrenadeTakenOut)
                showGrenadeAnyHand();
            else
            {
                hideGrenade(Grenade.Left);
                hideGrenade(Grenade.Right);
            }

            var current = _animator.GetCurrentAnimatorStateInfo(GrenadeLayer);
            var next = _animator.GetNextAnimatorStateInfo(GrenadeLayer);

            if (current.IsName("None") && (next.shortNameHash == 0 || next.IsName("None")))
            {
                _isInGrenadeAnimation = false;

                if (!_isThrowing)
                    _hasThrown = false;
            }
            else
                _isInGrenadeAnimation = true;
        }

        private Vector3 lerpRelativePosition(Vector3 from, Vector3 to, float speed)
        {
            var current = from - transform.position;
            var next = to - transform.position;

            var currentLength = current.magnitude;
            var nextLength = next.magnitude;

            if (currentLength > float.Epsilon) current.Normalize();
            if (nextLength > float.Epsilon) next.Normalize();

            var vector = Vector3.Lerp(current, next, Time.deltaTime * speed);
            var length = Mathf.Lerp(currentLength, nextLength, Time.deltaTime * speed);

            return transform.position + vector * length;
        }

        private void OnAnimatorMove()
        {
            if (_isHeadLookTargetOverriden)
            {
                _headLookTargetOverride = lerpRelativePosition(_headLookTargetOverride, _headLookTargetOverrideTarget, _headTurnSpeed);

                var angle0 = Util.AngleOfVector(transform.forward);
                var angle1 = Util.AngleOfVector(_headLookTargetOverride - transform.position);
                var delta = Mathf.DeltaAngle(angle0, angle1);

                const float limit = 70f;

                if (Mathf.Abs(delta) > limit)
                {
                    var vector = _headLookTargetOverride - transform.position;
                    var dist = vector.magnitude;
                    if (dist > float.Epsilon) vector /= dist;

                    if (delta < 0)
                        vector = Quaternion.AngleAxis(angle0 - limit, Vector3.up) * Vector3.forward;
                    else
                        vector = Quaternion.AngleAxis(angle0 + limit, Vector3.up) * Vector3.forward;

                    _headLookTargetOverride = transform.position + vector * dist;
                }
            }

            _currentBodyLookTarget = lerpRelativePosition(_currentBodyLookTarget, _bodyLookTarget, _bodyTurnSpeed);

            if (_positionSnapTimer > float.Epsilon)
            {
                _body.velocity = Vector3.zero;
                transform.position = Vector3.Lerp(_positionToSnapStart, _positionToSnap, 1.0f - _positionSnapTimer / _positionSnapTimerStart);
                _positionSnapTimer -= Time.deltaTime;
            }
            else
            {
                var animatorMovement = _animator.deltaPosition / Time.deltaTime;
                var animatorSpeed = animatorMovement.magnitude;

                if (!IsAlive)
                {
                }
                else if (_isClimbing)
                {
                    if (_isClimbingAVault)
                        if (_normalizedClimbTime >= ClimbSettings.FallTime)
                            animatorMovement.y -= Gravity * (_normalizedClimbTime - ClimbSettings.FallTime) / (1.0f - ClimbSettings.FallTime);

                    var y = animatorMovement.y;
                    animatorMovement *= ClimbSettings.HorizontalScale;
                    animatorMovement.y = y * ClimbSettings.VerticalScale;

                    _body.velocity = animatorMovement;

                    var turnIntensity = Mathf.Clamp01(_normalizedClimbTime - 0.6f) * (1.0f - 0.6f);
                    transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(0, Mathf.LerpAngle(_climbAngle, _horizontalLookAngle, turnIntensity), 0), Mathf.Clamp01(Time.deltaTime * 20));
                }
                else if (_isInCornerAimState)
                {
                    transform.Rotate(0, _animator.deltaRotation.eulerAngles.y, 0);

                    _body.velocity = animatorMovement;

                    if (_isLeavingCornerAim && _normalizedCornerAim < 0.4f)
                        snapToPosition(_cornerAimStart, 0.1f);
                }
                else if (_isRolling || _isIntendingToRoll)
                {
                    var speed = RollSettings.RotationSpeed;

                    if (_isRolling && _normalizedRollTime > RollSettings.AnimationLock)
                        speed = TurnSettings.RunningRotationSpeed;

                    smoothTurn(_bodyAngleDiff, speed);

                    if (_isRolling)
                    {
                        animatorMovement.y = _body.velocity.y - Gravity * Time.deltaTime;

                        if (_potentialCover == null)
                            animatorMovement -= transform.right * Vector3.Dot(transform.right, animatorMovement);
                        else
                            animatorMovement -= _potentialCover.Forward * Vector3.Dot(_potentialCover.Forward, animatorMovement);

                        _body.velocity = animatorMovement;
                    }
                }
                else if ((_isJumping && _normalizedJumpTime < JumpSettings.AnimationLock) || _isIntendingToJump)
                {
					float velY = _body.velocity.y;
                    smoothTurn(_bodyAngleDiff, JumpSettings.RotationSpeed);
					Vector3 jumpAdjust = _body.velocity + _inputMovement.Direction * JumpSettings.JumpVelInputAdjust;
					jumpAdjust.y = 0.0f;

					if (jumpAdjust.magnitude > JumpSettings.Speed) {
						jumpAdjust = jumpAdjust.normalized * JumpSettings.Speed;
					}
					jumpAdjust.y = velY;
					Debug.Log(jumpAdjust.ToString(), gameObject);
					_body.velocity = jumpAdjust;
					//eschatz
					//animatorMovement.y = _body.velocity.y;
					//_body.velocity = animatorMovement;
                }
                else if (!_isGrounded)
                {
                    smoothTurn(_bodyAngleDiff, JumpSettings.RotationSpeed);
                }
                else
                {
                    if (_wouldTurnImmediately && TurnSettings.ImmediateAim)
                    {
                        transform.Rotate(0, _bodyAngleDiff, 0);
                        _bodyAngleDiff = 0;
                    }
                    else if (_isThrowing && !_hasThrown)
                        smoothTurn(_bodyAngleDiff, TurnSettings.GrenadeRotationSpeed);
                    else
                    {
                        float minThreshold = -1.0f;
                        float maxThreshold = 1.0f;

                        float manualSpeed;
                        float manualInfluence;

                        float rootMovement = _animator.deltaPosition.magnitude / Time.deltaTime;
                        float animatorInfluence = _isRotatingAnimatedAngle ? Mathf.Clamp01(Mathf.Abs(_requiredAnimationRotation) * 0.1f) : 0.0f;

                        if (rootMovement >= minThreshold || IsAiming)
                        {
                            manualInfluence = Mathf.Clamp01((rootMovement - minThreshold) / (maxThreshold - minThreshold));

                            if (_cover.In)
                                manualSpeed = CoverSettings.RotationSpeed;
                            else if (IsSprinting)
                            {
                                manualSpeed = TurnSettings.SprintingRotationSpeed;
                                manualInfluence = 1.0f;
                            }
                            else
                                manualSpeed = TurnSettings.RunningRotationSpeed;

                            if (manualInfluence < 1.0f - animatorInfluence)
                                manualInfluence = 1.0f - animatorInfluence;
                        }
                        else if (_cover.In)
                        {
                            manualSpeed = CoverSettings.RotationSpeed;
                            manualInfluence = 1.0f;
                        }
                        else
                        {
                            manualSpeed = 0.0f;
                            manualInfluence = 1.0f - animatorInfluence;
                        }

                        var turn = Mathf.LerpAngle(_animator.deltaRotation.eulerAngles.y,
                                                   _bodyAngleDiff * Mathf.Clamp01(Time.deltaTime * manualSpeed),
                                                   manualInfluence);

                        transform.Rotate(0, turn, 0);
                    }

                    animatorMovement.y = _body.velocity.y;

                    if (_cover.In)
                    {
                        if (animatorSpeed > float.Epsilon)
                            _body.velocity = _currentMovement.Direction * Vector3.Dot(_currentMovement.Direction, animatorMovement / animatorSpeed) * animatorSpeed;
                        else
                            _body.velocity = new Vector3(0, _body.velocity.y, 0);
                    }
                    else
                        _body.velocity = animatorMovement;
                }
            }

            var deltaRotation = _animator.deltaRotation.eulerAngles.y;
            var requiredRotation = Mathf.DeltaAngle(_currentAnimatedAngle, transform.eulerAngles.y + _bodyAngleDiff);

            const float max = 45;

            if (requiredRotation > max)
            {
                _currentAnimatedAngle += requiredRotation - max;
                requiredRotation = max;
            }
            else if (requiredRotation < -max)
            {
                _currentAnimatedAngle += requiredRotation + max;
                requiredRotation = -max;
            }

            if (_isRotatingAnimatedAngle)
                {
                    _currentAnimatedAngle += deltaRotation;
                    _isRotatingAnimatedAngle = Mathf.Abs(requiredRotation) > 1;
                }
                else
                    _isRotatingAnimatedAngle = Mathf.Abs(requiredRotation) > 10;

            _currentAnimatedAngle = _currentAnimatedAngle % 360;

            if (_isRotatingAnimatedAngle)
                _requiredAnimationRotation = requiredRotation;
            else
                _requiredAnimationRotation = 0;
        }

        private void smoothTurn(float angle, float speed)
        {
            var initialAngle = angle;

            angle *= Time.deltaTime * speed;
            var clamp = Time.deltaTime * 720 * speed;

            if (angle > clamp)
                angle = clamp;
            else if (angle < -clamp)
                angle = -clamp;

            if (initialAngle > 0 && angle > initialAngle)
                angle = initialAngle;
            else if (initialAngle < 0 && angle < initialAngle)
                angle = initialAngle;

            transform.Rotate(0, angle, 0);
        }

        private SkinnedMeshRenderer currentRenderer
        {
            get
            {
                if (Renderer != null)
                    return Renderer;
                else
                    return _renderer;
            }
        }

        private bool wantsToAim
        {
            get { return (_cover.In && _coverAim.IsZoomed) || _wantsToFire || _isThrowing || _wantedToZoom || _wantsToAim; }
        }

        private void updateCornerAim()
        {
            if (!_isInCornerAimState)
            {
                _isLeavingCornerAimBecauseAngle = false;
                return;
            }

            _currentMovement = new CharacterMovement();

            if (!_isLeavingCornerAimBecauseAngle &&
                !_isLeavingCornerAim &&
                _isCornerAiming)
                if (_inputMovement.IsMoving)
                {
                    _isLeavingCornerAimBecauseAngle = false;
                    _isInCornerAimState = false;
                    _ignoreCornerUntilFreshlyAble = true;
                    _animator.SetBool("ExitCornerAim", true);
                    updateCover(true);
                    return;
                }

            var info = _animator.GetCurrentAnimatorStateInfo(0);

            var to = Animator.StringToHash("To Corner Aim");
            var aim = Animator.StringToHash("Corner Aim");
            var from = Animator.StringToHash("From Corner Aim");

            var setToTrue = true;

            _isCornerAiming = false;

            if (info.shortNameHash == to)
                _normalizedCornerAim = info.normalizedTime;
            else if (info.shortNameHash == aim)
            {
                _isEnteringCornerAimFromBackAim = false;
                _normalizedCornerAim = 1.0f;
                _isCornerAiming = true;
            }
            else if (info.shortNameHash == from)
            {
                _isEnteringCornerAimFromBackAim = false;
                _normalizedCornerAim = 1.0f - info.normalizedTime;
                _isLeavingCornerAim = true;
            }
            else
            {
                if (_isAnimatingCornerAim || _isLeavingCornerAimBecauseAngle)
                {
                    if (wantsToAim && (CanPeekLeftCorner || CanPeekRightCorner) && canFire && !_isLeavingCornerAimBecauseAngle)
                    {
                        _isEnteringCornerAimFromBackAim = false;
                        startCornerAim();
                        return;
                    }
                    else
                    {
                        _isLeavingCornerAimBecauseAngle = false;
                        _isEnteringCornerAimFromBackAim = false;
                        _isInCornerAimState = false;
                        _coverUpdateTimer = CoverSettings.Update.IdleCover;
                    }
                }

                setToTrue = false;
                _normalizedCornerAim = 0;
            }

            if (!_isInCornerAimState)
                _isLeavingCornerAimBecauseAngle = false;
            else
            {
                updateAimingBackInTallCover();

                if (IsAimingBackFromCover)
                    _isLeavingCornerAimBecauseAngle = true;
                else if ((_cover.IsStandingLeft && !_cover.IsLeft(_horizontalLookAngle, CoverSettings.Angles.LeftCorner, true)) ||
                         (_cover.IsStandingRight && !_cover.IsRight(_horizontalLookAngle, CoverSettings.Angles.RightCorner, true)))
                {
                    _isLeavingCornerAimBecauseAngle = true;
                    _coverAim.Leave();
                }
                    
            }

            if (setToTrue)
                _isAnimatingCornerAim = true;

            updateAim();

            if (!wantsToAim || (!canFire && !_isThrowing))
            {
                if (_isCornerAiming)
                    _coverAim.Leave();
            }
            else if (!_isLeavingCornerAim || _isLeavingCornerAimBecauseAngle)
            {
                if (_wantsToFire)
                    fire();
            }
        }

        private bool canFire
        {
            get
            {
                return !_isReloading && !_isChangingWeapon && IsGunReady && !_gun.IsClipEmpty;
            }
        }

        private void startCornerAim()
        {
            _isInCornerAimState = true;
            _isAnimatingCornerAim = false;
            _isLeavingCornerAim = false;
            _isLeavingCornerAimBecauseAngle = false;
            _normalizedCornerAim = 0;

            if (_cover.IsTall)
            {
                if (_cover.IsStandingLeft)
                    _cornerAimStart = _cover.Main.LeftCorner(transform.position.y, -CoverSettings.TallCornerOffset);
                else
                    _cornerAimStart = _cover.Main.RightCorner(transform.position.y, -CoverSettings.TallCornerOffset);
            }
            else
            {
                if (_cover.IsStandingLeft)
                    _cornerAimStart = _cover.Main.LeftCorner(transform.position.y, -CoverSettings.LowCornerOffset);
                else
                    _cornerAimStart = _cover.Main.RightCorner(transform.position.y, -CoverSettings.LowCornerOffset);
            }

            _cornerAimStart += Vector3.Dot(_cover.Main.Forward, transform.position - _cornerAimStart) * _cover.Main.Forward;

            _coverAim.CoverAim(_horizontalLookAngle);
            transform.rotation = Quaternion.AngleAxis(_cover.FaceAngle, Vector3.up);
        }

        private void updateClimb()
        {
            if (_isClimbing)
            {
                _climbTime += Time.deltaTime;

                var info = _animator.GetCurrentAnimatorStateInfo(0);
                var vault = Animator.StringToHash("Vault");
                var climb = Animator.StringToHash("Climb");

                if (info.shortNameHash == climb ||
                    info.shortNameHash == vault)
                {
                    var time = info.normalizedTime;

                    if (time > _normalizedClimbTime)
                        _normalizedClimbTime = time;

                    _hasBeganClimbing = true;
                }
                else if (_hasBeganClimbing)
                    _isClimbing = false;

                if (_climbTime > 5)
                    _isClimbing = false;

                _isGrounded = true;
                _isFalling = false;
                _isJumping = false;
                _nextJumpTimer = 0;
                _ignoreFallTimer = 0.2f;
            }
            else
                _climbTime = 0;

            updateLookAngleDiff();
            updateGround();
        }

        private void startReload()
        {
            if (_isReloading || _gun == null)
                return;

            _isReloading = true;
            _hasBeganReloading = false;
            _reloadTime = 0;
            _normalizedReloadTime = 0;

            _gun.SendMessage("OnReloadStart", SendMessageOptions.DontRequireReceiver);
        }

        private bool startClimb(Cover cover)
        {
            if (!_isClimbing)
            {
                _climbHeight = cover.Top - transform.position.y;

                if (_climbHeight <= 1.1f)
                {
                    _normalizedClimbTime = 0;
                    _isClimbing = true;
                    _isClimbingAVault = cover.IsVault;
                    _hasBeganClimbing = false;
                    _climbTime = 0;
                    _climbAngle = cover.Angle;

                    _cover.Clear();

                    return true;
                }
            }

            return false;
        }

        private void updateCover(bool isForcedToMaintain)
        {
            var wasNearLeftCorner = false;
            var wasNearRightCorner = false;
            var wasInCover = false;

            if (_cover.In)
            {
                wasInCover = true;
                wasNearLeftCorner = IsNearLeftCorner;
                wasNearRightCorner = IsNearRightCorner;

                _tallCoverTimer = _cover.IsTall ? 1.0f : 0.0f;

                _isExitingLeftCorner = false;
                _isExitingRightCorner = false;
            }
            else
            {
                if (_tallCoverTimer > 0)
                    _tallCoverTimer -= Time.deltaTime;

                if (_cornerExitTimer > 0)
                    _cornerExitTimer -= Time.deltaTime;
                else
                {
                    _isExitingLeftCorner = false;
                    _isExitingRightCorner = false;
                }
            }

            var searchRadius = CoverSettings.EnterDistance + CoverSettings.CornerAimTriggerDistance;
            var head = _animator.GetBoneTransform(HumanBodyBones.Head).position;

            _coverSearch.Update(_cover,
                                transform.position,
                                head,
                                searchRadius,
                                _capsule.radius,
                                CoverSettings);

            if (_cover.In && _isGrounded && (isForcedToMaintain || _inputMovement.IsMoving || !IsAiming))
                _cover.Maintain(_coverSearch, transform.position, CoverSettings.TallThreshold);

            _potentialCover = null;

            if (_cover.In)
            {
                _coverDelay = 0;

                if (_wantsToClimb && CanClimb)
                    startClimb(_cover.Main);
            }
            else if (!_isClimbing && _isGrounded && _wantsToTakeCover)
            {
                var isNewCover = _cover.Take(_coverSearch, transform.position, CoverSettings.TallThreshold);

                if (isNewCover)
                {
                    if (!_cover.IsFrontField(_horizontalLookAngle, CoverSettings.Angles.Front))
                    {
                        if (_coverDelay < CoverSettings.BackDelay)
                        {
                            _cover.Clear();
                            _coverDelay += Time.deltaTime;
                            _needsToUpdaToCoverBecauseOfDelay = true;
                        }
                        else
                            _coverDelay = 0;
                    }
                    else
                        _coverDelay = 0;

                    if (!_wantsToFaceInADirection)
                    {
                        if (_cover.IsLeft(transform.eulerAngles.y))
                            _cover.StandLeft();
                        else
                            _cover.StandRight();
                    }

                    instantCoverAnimatorUpdate();
                }
                else
                    _coverDelay = 0;

                if (_cover.IsTall && !_cover.IsFront(_horizontalLookAngle))
                    _cover.Clear();
                else if (_wantsToClimb && _cover.In && CanClimb)
                    startClimb(_cover.Main);
            }
            else
                _potentialCover = _coverSearch.FindClosest();

            _cover.Update();
            updateAimingBackInTallCover();

            if (!_cover.In)
            {
                if (wasNearLeftCorner)
                {
                    _isExitingLeftCorner = true;
                    _cornerExitTimer = 0.3f;
                }
                else if (wasNearRightCorner)
                {
                    _isExitingRightCorner = true;
                    _cornerExitTimer = 0.3f;
                }

                _wasMovingInCover = false;
                _isAimingBackInTallCover = false;
            }
            else if (!wasInCover)
                _wantsToJump = false;
        }

        private int gunType(Gun gun)
        {
            if (gun == null)
                return 0;

            for (int i = 0; i < Weapons.Length; i++)
                if (Weapons[i].Gun == gun)
                    return (int)Weapons[i].Type + 1;

            return 0;
        }

        private void updateGuns()
        {
            var weaponToShow = 0;

            if (!HasGrenadeInHand)
            {
                for (int i = 0; i < Weapons.Length; i++)
                    if (_gun == Weapons[i].Gun)
                        weaponToShow = i + 1;
            }

            if (!_isChangingWeapon && !_isReloading && _weaponToChangeTo != CurrentWeapon && _isGrounded)
            {
                _isPreviousGunHidden = false;
                _isChangingWeapon = true;
                CurrentWeapon = _weaponToChangeTo;
            }

            if (_isChangingWeapon && !_isReloading)
            {
                if (!_isPreviousGunHidden)
                {
                    if (_gun == null)
                        _isPreviousGunHidden = true;
                    else
                    {
                        var previousType = gunType(_gun);

                        var next = _animator.GetNextAnimatorStateInfo(FirstWeaponLayer + previousType);
                        var isNextState = next.shortNameHash == 0 || next.IsName("Idle Body") || next.IsName("None");

                        if (isNextState)
                        {
                            var state = _animator.GetCurrentAnimatorStateInfo(FirstWeaponLayer + previousType);

                            if (state.IsName("Idle Body") || state.IsName("None"))
                            {
                                weaponToShow = 0;
                                _isPreviousGunHidden = true;
                            }
                            else if (previousType < 2 && _animator.IsInTransition(FirstWeaponLayer + previousType))
                                weaponToShow = 0;
                        }
                    }
                }

                if (_isPreviousGunHidden)
                {
                    if (CurrentWeapon == 0)
                    {
                        weaponToShow = 0;
                        _isChangingWeapon = false;
                        _animator.SetLayerWeight(FirstWeaponLayer, 1);
                    }
                    else
                    {
                        weaponToShow = 0;

                        for (int i = 0; i < Weapons.Length; i++)
                            if (CurrentWeapon == i + 1)
                            {
                                int type = (int)Weapons[i].Type + 1;
                                var state = _animator.GetCurrentAnimatorStateInfo(FirstWeaponLayer + type);
                                var next = _animator.GetNextAnimatorStateInfo(FirstWeaponLayer + type);

                                var isTransitional = false;

                                if (state.IsName(_weaponStates.Equip))
                                {
                                    weaponToShow = i + 1;
                                    isTransitional = true;
                                }
                                else if (next.IsName(_weaponStates.Equip))
                                    isTransitional = true;

                                if (!isTransitional)
                                {
                                    foreach (var name in _weaponStates.Common)
                                        if (state.IsName(name) && (next.shortNameHash == 0 || next.IsName(name)))
                                        {
                                            weaponToShow = i + 1;
                                            _isChangingWeapon = false;
                                            break;
                                        }
                                }
                            }
                    }
                }
            }

            if (!_isChangingWeapon)
            {
                var previousGun = _gun;

                if (CurrentWeapon > 0 && CurrentWeapon <= Weapons.Length)
                    _gun = Weapons[CurrentWeapon - 1].Gun;
                else
                    _gun = null;

                if (previousGun != _gun)
                {
                    if (previousGun != null) previousGun.CancelFire();
                    if (_gun != null) _gun.CancelFire();
                }
            }

            for (int i = 0; i < Weapons.Length; i++)
            {
                var show = weaponToShow == i + 1;
                var weapon = Weapons[i];

                if (weapon.Item != null && weapon.Item.activeSelf != show) weapon.Item.SetActive(show);
                if (weapon.Holster != null && weapon.Holster.activeSelf != !show) weapon.Holster.SetActive(!show);
            }

            if (_gun != null)
            {
                _gun.Target = _fireTarget;
                _gun.Character = this;
                _gun.Allow(IsGunReady && !_isFalling && (!_cover.In || _coverAim.Step == AimStep.Aiming));
            }

            if (CurrentWeapon == 0)
                _armTimer = 0.2f;
            else if (_armTimer > 0)
                _armTimer -= Time.deltaTime;
        }

        private void updateAim()
        {
            _coverAim.Update();

            if (!_isClimbing && _wantsToAim && IsGunReady)
                _coverAim.IsZoomed = true;
            else
                _coverAim.IsZoomed = false;
        }

        private bool couldTakeAPeek
        {
            get
            {
                if (!_isThrowing && (_isReloading || _gun == null || _gun.IsClipEmpty))
                    return false;
                else if (_isLeavingCornerAimBecauseAngle)
                    return false;
                else if (!IsAimingBackFromCover)
                {
                    if ((CanPeekLeftCorner || CanPeekRightCorner))
                    {
                        if (_cover.IsTall && !_inputMovement.IsMoving)
                            return _isThrowing || wantsToAim;
                        else
                            return true;
                    }
                    else
                        return false;
                }
                else
                    return false;
            }
        }

        private void updateFire()
        {
            if (_isClimbing)
                return;

            var wasAimingBack = IsAimingBackFromCover;

            updateAimingBackInTallCover();
            var isAbleToPeek = couldTakeAPeek && !IsAimingBackFromCover;

            if (!isAbleToPeek)
                _ignoreCornerUntilFreshlyAble = false;

            if (HasGrenadeInHand)
                return;

            if ((wantsToAim || _isAimingBackInTallCover) && IsGunReady)
            {
                var canFire = _canAim;

                if (_gun != null && _gun.IsClipEmpty)
                {
                    startReload();
                    canFire = false;
                }

                if (_cover.In && _coverTime < 0.5f)
                    canFire = false;

                if (canFire && _cover.IsTall && !_isAimingBackInTallCover && !isAbleToPeek)
                    if ((!IsNearLeftCorner && !IsNearRightCorner) ||
                        (IsNearLeftCorner && !_cover.IsLeft(_horizontalLookAngle) ||
                        (IsNearRightCorner && !_cover.IsRight(_horizontalLookAngle))))
                        canFire = CanWallAim;

                if (_ignoreCornerUntilFreshlyAble && isAbleToPeek)
                    canFire = false;

                if (canFire && isAbleToPeek)
                {
                    if (!_isLeavingCornerAimBecauseAngle)
                    {
                        if (wasAimingBack)
                            _isEnteringCornerAimFromBackAim = true;

                        startCornerAim();
                    }

                    if (_wantsToFire)
                        fire();
                }
                else
                {
                    if (canFire)
                    {
                        if (_wantsToFire)
                            fire();
                        else
                            _coverAim.CoverAim(_horizontalLookAngle);
                    }
                    else
                        _coverAim.Leave();
                }
            }
            else
                _coverAim.Leave();
        }

        private void fire()
        {
            if (!_cover.In && !IsAimingGun)
                return;

            _coverAim.Angle = _horizontalLookAngle;

            if (_cover.In)
            {
                if (!_gun.HasJustFired && !_gun.IsAllowed)
                    _gun.FireWhenReady();
                else
                {
                    _gun.CancelFire();
                    _gun.TryFireNow();
                }

                _coverAim.CoverAim(_horizontalLookAngle);
            }
            else
            {
                _coverAim.FreeAim(_horizontalLookAngle);

                _gun.CancelFire();
                _gun.TryFireNow();
            }
        }

        private bool isFree(Vector3 direction)
        {
            return isFree(direction, ObstacleDistance, 0.3f);
        }

        private bool isFree(Vector3 direction, float distance, float height)
        {
            var count = Physics.RaycastNonAlloc(transform.position + new Vector3(0, _capsule.height * height, 0),
                                                direction,
                                                _raycastHits,
                                                _capsule.radius + distance,
                                                1);

            for (int i = 0; i < count; i++)
                if (!_raycastHits[i].collider.isTrigger && !Util.InHiearchyOf(_raycastHits[i].collider.gameObject, gameObject))
                    return false;

            return true;
        }

        private void updateCommon()
        {
            float requiredUpdateDelay;

            if (_inputMovement.IsMoving || _isRolling || Vector3.Distance(_lastKnownPosition, transform.position) > 0.1f)
            {
                _lastKnownPosition = transform.position;

                if (_cover.In)
                    requiredUpdateDelay = CoverSettings.Update.MovingCover;
                else
                    requiredUpdateDelay = CoverSettings.Update.MovingNonCover;
            }
            else
            {
                if (_cover.In)
                    requiredUpdateDelay = CoverSettings.Update.IdleCover;
                else
                    requiredUpdateDelay = CoverSettings.Update.IdleNonCover;
            }

            if (_coverUpdateTimer >= requiredUpdateDelay - float.Epsilon || _needsToUpdaToCoverBecauseOfDelay || _wantsToImmediatelyUpdatePotentialCover)
            {
                if (_needsToUpdaToCoverBecauseOfDelay)
                {
                    _needsToUpdaToCoverBecauseOfDelay = false;
                    _wantsToTakeCover = true;
                }

                _coverUpdateTimer = Random.Range(-0.05f, 0.1f);
                updateCover(false);
            }

            updateLookAngleDiff();
            updateRolling();

            if (_isRolling && _normalizedRollTime < RollSettings.AnimationLock)
                return;

            if (_isClimbing) return;

            updateAim();
            updateFire();
            if (_isInCornerAimState) return;

            updateWalk();
            updateVertical();
        }
    
        private void updateWalk()
        {
            Vector3 movement;

            if (_directionChangeDelay > float.Epsilon)
                _directionChangeDelay -= Time.deltaTime;

            _currentMovement = _inputMovement;

            if (_currentMovement.Direction.sqrMagnitude > 0.1f)
            {
                var overallIntensity = 1.0f;

                if (_cover.In)
                {
                    _currentMovement.Magnitude = 1.0f;

                    var intendedWalkAngle = Util.AngleOfVector(_currentMovement.Direction);

                    if (!_isAimingBackInTallCover)
                        _currentMovement.Direction = Quaternion.AngleAxis(clampAngleToCover(intendedWalkAngle), Vector3.up) * Vector3.forward;

                    if (isFree(_currentMovement.Direction) && !IsAiming && !_wantsToFaceInADirection && _cover.IsFront(intendedWalkAngle, -60) && !_isRolling)
                    {
                        if (_cover.IsLeft(intendedWalkAngle, 0) &&
                            (_cover.IsTall || !_cover.IsRight(_horizontalLookAngle, 90 - CoverSettings.Angles.LowWalkFaceChange)) &&
                            _cover.MainChangeAge >= 0.5f)
                        {
                            if (_cover.IsStandingRight)
                                _directionChangeDelay = CoverSettings.DirectionChangeDelay;

                            _cover.StandLeft();
                        }
                        else if (_cover.IsRight(intendedWalkAngle, 0) &&
                                 (_cover.IsTall || !_cover.IsLeft(_horizontalLookAngle, 90 - CoverSettings.Angles.LowWalkFaceChange)) &&
                                 _cover.MainChangeAge >= 0.5f)
                        {
                            if (_cover.IsStandingLeft)
                                _directionChangeDelay = CoverSettings.DirectionChangeDelay;

                            _cover.StandRight();
                        }
                    }

                    if (_directionChangeDelay > float.Epsilon)
                        overallIntensity = 0.0f;
                }

                var local = Quaternion.Euler(0, -transform.eulerAngles.y, 0) * _currentMovement.Direction;

                _leftMoveIntensity = Mathf.Lerp(_leftMoveIntensity, isFree(-transform.right) ? 1.0f : 0.0f, Time.deltaTime * 4);
                _rightMoveIntensity = Mathf.Lerp(_rightMoveIntensity, isFree(transform.right) ? 1.0f : 0.0f, Time.deltaTime * 4);
                _backMoveIntensity = Mathf.Lerp(_backMoveIntensity, isFree(-transform.forward) ? 1.0f : 0.0f, Time.deltaTime * 4);
                _frontMoveIntensity = Mathf.Lerp(_frontMoveIntensity, isFree(transform.forward) ? 1.0f : 0.0f, Time.deltaTime * 4);

                if (local.x < -float.Epsilon) local.x *= _leftMoveIntensity;
                if (local.x > float.Epsilon) local.x *= _rightMoveIntensity;
                if (local.z < -float.Epsilon) local.z *= _backMoveIntensity;
                if (local.z > float.Epsilon) local.z *= _frontMoveIntensity;

                _currentMovement.Direction = Quaternion.Euler(0, transform.eulerAngles.y, 0) * local;
                movement = local * _currentMovement.Magnitude * overallIntensity;
            }
            else
                movement = Vector3.zero;

            _localMovement = Vector3.Lerp(_localMovement, movement, Time.deltaTime * 8);
            _movementInput = Mathf.Clamp(movement.magnitude * 2, 0, 1);
        }

        private float clampAngleToCover(float intendedWalkAngle)
        {
            var angle = intendedWalkAngle - _cover.ForwardAngle;

            var angle0 = angle - angle % 90;
            var angle1 = angle0 + 90;
            var angle2 = angle0 - 90;

            if (Mathf.Abs(angle - angle0) < Mathf.Abs(angle - angle1))
            {
                if (Mathf.Abs(angle - angle0) < Mathf.Abs(angle - angle2))
                    angle = angle0;
                else
                    angle = angle2;
            }
            else
            {
                if (Mathf.Abs(angle - angle1) < Mathf.Abs(angle - angle2))
                    angle = angle1;
                else
                    angle = angle2;
            }

            return Mathf.DeltaAngle(intendedWalkAngle, angle + _cover.ForwardAngle) + intendedWalkAngle;
        }

        private float deltaAngleToTurnTo(float target)
        {
            var angle = Mathf.DeltaAngle(transform.eulerAngles.y, target);

            if (Mathf.Abs(angle) <= 90)
                return angle;

            if (_isExitingLeftCorner)
            {
                if (angle < 0)
                    angle = 360 + angle;
            }
            else if (_isExitingRightCorner)
            {
                if (angle > 0)
                    angle = -360 + angle;
            }
            else if (_cover.In && !_cover.IsTall && !IsAiming)
            {
                var angleToCover = Mathf.Abs(Mathf.DeltaAngle(transform.eulerAngles.y, _cover.ForwardAngle));
                var halfwayToCover = Mathf.Abs(Mathf.DeltaAngle(transform.eulerAngles.y + angle * 0.5f, _cover.ForwardAngle));

                if (angleToCover < 100 && halfwayToCover < angleToCover)
                {
                    if (angle > 0)
                        angle = -360 + _bodyAngleDiff;
                    else
                        angle = 360 + _bodyAngleDiff;
                }
            }

            return angle;
        }

        private void updateLookAngleDiff()
        {
            if (_isThrowing && !_hasThrown)
                _bodyAngleDiff = deltaAngleToTurnTo(_throwBodyAngle);
            else if (_isIntendingToJump || (_isJumping && _normalizedJumpTime < JumpSettings.AnimationLock))
                _bodyAngleDiff = deltaAngleToTurnTo(_jumpAngle);
            else if (_isIntendingToRoll || (_isRolling && _normalizedRollTime < RollSettings.AnimationLock))
                _bodyAngleDiff = deltaAngleToTurnTo(_rollAngle);
            else if (_cover.In && HasGrenadeInHand)
            {
                if (!_cover.IsTall)
                {
                    if ((_isThrowing || (_hasThrown && _isInGrenadeAnimation)) && !_cover.IsFrontField(_throwBodyAngle, 180))
                        _bodyAngleDiff = deltaAngleToTurnTo(_throwBodyAngle);
                    else
                        _bodyAngleDiff = deltaAngleToTurnTo(_cover.FaceAngle);

                    if (!_wantsToFaceInADirection)
                    {
                        if (_cover.IsStandingLeft && _cover.IsRight(_horizontalLookAngle, CoverSettings.Angles.LowGrenadeFaceChange.Left))
                            _cover.StandRight();
                        else if (_cover.IsStandingRight && _cover.IsLeft(_horizontalLookAngle, CoverSettings.Angles.LowGrenadeFaceChange.Right))
                            _cover.StandLeft();
                    }
                }
                else
                {
                    var isThrowing = (_isThrowing || (_isInGrenadeAnimation && _hasThrown)) && _isAimingBackInTallCover;

                    if (!isThrowing)
                        _bodyAngleDiff = deltaAngleToTurnTo(_cover.FaceAngle);
                    else
                        _bodyAngleDiff = deltaAngleToTurnTo(_currentHorizontalBodyAngle);

                    if (!_wantsToFaceInADirection)
                    {
                        if (CanPeekLeftCorner)
                            _cover.StandLeft();
                        else if (CanPeekRightCorner)
                            _cover.StandRight();
                        else
                        {
                            if (_cover.IsLeft(_horizontalLookAngle, 40))
                                _cover.StandLeft();
                            else if (_cover.IsRight(_horizontalLookAngle, 40))
                                _cover.StandRight();
                        }
                    }
                }
            }
            else
            {
                if (_cover.In && !IsAimingGun)
                    _bodyAngleDiff = deltaAngleToTurnTo(_cover.FaceAngle);
                else
                    _bodyAngleDiff = deltaAngleToTurnTo(_currentHorizontalBodyAngle);

                if (_cover.In && !_wantsToFaceInADirection && IsAiming)
                {
                    if (_cover.IsTall)
                    {
                        if (_cover.IsLeft(_horizontalLookAngle))
                            _cover.StandLeft();
                        else
                            _cover.StandRight();
                    }
                    else
                    {
                        if (_cover.IsStandingLeft && _cover.IsRight(_horizontalLookAngle, CoverSettings.Angles.LowAimFaceChange.Left))
                            _cover.StandRight();
                        else if (_cover.IsStandingRight && _cover.IsLeft(_horizontalLookAngle, CoverSettings.Angles.LowAimFaceChange.Right))
                            _cover.StandLeft();
                    }
                }
            }
        }

        private void updateVertical()
        {
            if (_jumpTimer < 999) _jumpTimer += Time.deltaTime;
            if (_ignoreFallTimer > 0) _ignoreFallTimer -= Time.deltaTime;

            updateGround();

            if (_isGrounded)
            {
                if (_nextJumpTimer > -float.Epsilon) _nextJumpTimer -= Time.deltaTime;

                if (!_cover.In && !_isJumping && _nextJumpTimer < float.Epsilon && _wantsToJump)
                    _isIntendingToJump = true;
            }
            else if (_body.velocity.y < -5)
                _isJumping = false;

            if (_isGrounded)
            {
                if (_isIntendingToJump && Mathf.Abs(Mathf.DeltaAngle(transform.eulerAngles.y, _jumpAngle)) < 10)
                {
                    if (!_isJumping)
                    {
                        _animator.SetTrigger("Jump");
                        _isJumping = true;
                        _jumpTimer = 0;

                        SendMessage("OnJump", SendMessageOptions.DontRequireReceiver);
                    }

                    var direction = _localMovement;

                    if (direction.magnitude > 0.1f)
                        direction.Normalize();

                    var v = transform.rotation * direction * JumpSettings.Speed;
                    v.y = JumpSettings.Strength;
                    _body.velocity = v;
                }
                else if (_isJumping)
                    _isJumping = false;
            }
            else
                _isIntendingToJump = false;

            if (_isJumping)
            {
                var info = _animator.GetCurrentAnimatorStateInfo(0);

                if (info.IsName("Jump")) _normalizedJumpTime = info.normalizedTime;
                else if (info.IsName("Jump Land")) _normalizedJumpTime = 1;
                else
                {
                    info = _animator.GetNextAnimatorStateInfo(0);

                    if (info.IsName("Jump")) _normalizedJumpTime = info.normalizedTime;
                    else if (info.IsName("Jump Land")) _normalizedJumpTime = 1;
                }
            }

            if (_ignoreFallTimer <= float.Epsilon)
            {
                if (!_isFalling)
                {
                    if (_body.velocity.y < -6 &&
                        !findGround(FallThreshold))
                        _isFalling = true;
                }
                else
                {
                    if (_isGrounded)
                        _isFalling = false;
                }
            }
            else
                _isFalling = false;

            if (_isFalling)
            {
                Vector3 edge;
                if (findEdge(out edge, 0.1f))
                {
                    var offset = transform.position - edge;
                    offset.y = 0;
                    var distance = offset.magnitude;

                    if (distance > 0.01f)
                    {
                        offset /= distance;
                        transform.position += offset * Mathf.Clamp(Time.deltaTime * 3, 0, distance);
                    }
                }
            }
        }

        private void updateGround()
        {
            if (_ignoreFallTimer < float.Epsilon)
            {
                if (_cover.In)
                    _isGrounded = findGround(GroundThreshold + 1.0f, out _isOnSlope);
                else
                    _isGrounded = findGround(GroundThreshold, out _isOnSlope);
            }
            else
                _isGrounded = true;

            if (_isGrounded && !_wasGrounded && IsAlive)
            {
                SendMessage("OnLand", SendMessageOptions.DontRequireReceiver);
                _nextJumpTimer = 0.2f;
            }

            _wasGrounded = _isGrounded;
        }

        private void updateAnimator()
        {
            if (IsAlive)
            {
                var state = _animator.GetCurrentAnimatorStateInfo(0);

                float runCycle = Mathf.Repeat(state.normalizedTime, 1);
                float jumpLeg = (runCycle < 0.5f ? 1 : -1) * _movementInput;
                if (_isGrounded)
                {
                    if (_jumpLegTimer > 0)
                        _jumpLegTimer -= Time.deltaTime;
                    else
                        _animator.SetFloat("JumpLeg", jumpLeg);
                }
                else
                    _jumpLegTimer = 0.5f;

                if (IsAlive &&
                    (state.IsName("Walk Armed") || state.IsName("Walk Unarmed") || state.IsName("Sprint") || state.IsName("Sprint Rifle")))
                {
                    if (runCycle > 0.6f)
                    {
                        if (_lastFoot != 1)
                        {
                            _lastFoot = 1;
                            SendMessage("OnFootstep", _animator.GetBoneTransform(HumanBodyBones.LeftFoot).position, SendMessageOptions.DontRequireReceiver);
                        }
                    }
                    else if (runCycle > 0.1f)
                    {
                        if (_lastFoot != 0)
                        {
                            _lastFoot = 0;
                            SendMessage("OnFootstep", _animator.GetBoneTransform(HumanBodyBones.RightFoot).position, SendMessageOptions.DontRequireReceiver);
                        }
                    }
                }
                else
                    _lastFoot = -1;

                _animator.SetBool("IsDead", false);
                _animator.SetBool("IsJumping", _isJumping);
                _animator.SetFloat("Rotation", _requiredAnimationRotation, 0.2f, Mathf.Clamp01(Time.deltaTime * 20));

                _animator.SetFloat("MovementX", _localMovement.x);
                _animator.SetFloat("MovementZ", _localMovement.z);
                _animator.SetFloat("MovementInput", _movementInput);
                _animator.SetBool("IsFalling", _isFalling && !_isJumping);
                _animator.SetBool("IsGrounded", _isGrounded);

                int weaponType;

                if (_isChangingWeapon && !_isPreviousGunHidden)
                    weaponType = 0;
                else
                {
                    if (CurrentWeapon > 0 && CurrentWeapon <= Weapons.Length)
                        weaponType = 1 + (int)Weapons[CurrentWeapon - 1].Type;
                    else
                        weaponType = 0;
                }

                _animator.SetInteger("WeaponType", weaponType);
                _animator.SetBool("IsArmed", CurrentWeapon > 0 && _armTimer <= float.Epsilon && !HasGrenadeInHand);

                // Small hacks. Better animation transitions when rolling.
                _animator.SetBool("IsGunReady", IsGunReady || _isRolling || (_isClimbing && _normalizedClimbTime > 0.7f));

                _dontChangeArmAimingJustYet = false;

                if (_gun != null)
                {
                    var type = gunType(_gun);

                    if (_animator.GetCurrentAnimatorStateInfo(FirstWeaponLayer + type).IsName("Aim"))
                        if (_animator.IsInTransition(FirstWeaponLayer + type))
                            _dontChangeArmAimingJustYet = true;
                }

                if (!_dontChangeArmAimingJustYet)
                {
                    _animator.SetBool("IsAiming", !IsGoingToSprint && !HasGrenadeInHand &&
                                                  (IsAiming ||
                                                   (_isRolling && _wantsToAim) ||
                                                   (_isChangingWeapon && _wantsToAim && CurrentWeapon > 0)));
                }

                _animator.SetBool("IsCornerAiming", IsCornerAiming);

                if (!_ignoreCornerUntilFreshlyAble)
                    _animator.SetBool("ExitCornerAim", false);

                var isInCover = _cover.In && (_isInCornerAimState || (!_isAimingBackInTallCover && !IsAimingGun));

                _animator.SetBool("IsInCover", IsAlive && isInCover);
                _animator.SetBool("IsInLowCover", IsAlive && _cover.In && !_cover.IsTall);
                _animator.SetBool("IsInTallLeftCover", IsAlive && _cover.In && _cover.IsTall && _cover.IsStandingLeft);
                _animator.SetBool("IsInTallCoverBack", IsAlive && IsLookingBackInTallCover);

                if (IsAlive && _cover.In)
                {
                    _animator.SetInteger("HardCoverDirection", _cover.Direction);

                    if (_isInCornerAimState)
                        _animator.SetFloat("CoverDirection", _cover.Direction);
                    else
                        _animator.SetFloat("CoverDirection", _cover.Direction, 0.2f, Time.deltaTime);

                    _animator.SetFloat("CoverHeight", _cover.IsTall ? 1.0f : 0.0f, 0.1f, Time.deltaTime);

                    var angle = _isThrowing ? _throwAngle : _horizontalBodyAngle;

                    if (_cover.IsFrontField(angle, 180))
                        angle = Mathf.DeltaAngle(_cover.ForwardAngle, angle);
                    else if (_cover.IsStandingRight)
                        angle = 90;
                    else
                        angle = -90;

                    _animator.SetFloat("ThrowAngle", angle);
                }

                _animator.SetFloat("InterpolatedGrenade", HasGrenadeInHand ? 1.0f : 0.0f, 0.1f, Time.deltaTime);

                _animator.SetBool("IsClimbing", _isClimbing && !_isClimbingAVault);
                _animator.SetBool("IsVault", _isClimbing && _isClimbingAVault);
                _animator.SetFloat("VerticalVelocity", _body.velocity.y);
                _animator.SetBool("IsCrouching", _isCrouching);
                _animator.SetBool("IsReloading", _isReloading);

                if (_cover.In)
                {
                    if (_isInCornerAimState && !_cover.IsTall)
                        _animator.SetFloat("LowAim", 1, 0.1f, Time.deltaTime);
                    else
                        _animator.SetFloat("LowAim", (!_cover.IsTall && !_cover.IsFrontField(_horizontalLookAngle, CoverSettings.Angles.Front)) ? 1.0f : 0.0f, 0.1f, Time.deltaTime);
                }
                else
                    _animator.SetFloat("LowAim", 0, 0.1f, Time.deltaTime);

                _animator.SetBool("HasGrenade", _isGrenadeTakenOut);

                if (_verticalLookAngle < 0f)
                    _animator.SetFloat("LookHeight", Mathf.Clamp(_verticalLookAngle / 55f, -1, 1));
                else
                    _animator.SetFloat("LookHeight", Mathf.Clamp(_verticalLookAngle / 40f, -1, 1));
            }
            else
            {
                _animator.SetBool("IsDead", true);
                _animator.SetBool("IsAiming", false);
            }
        }

        private void instantCoverAnimatorUpdate()
        {
            _animator.SetFloat("CoverDirection", _cover.Direction);
            _animator.SetFloat("CoverHeight", _cover.IsTall ? 1.0f : 0.0f);
        }

        private void updateIK()
        {
            if (!IsAlive)
                return;

            if (_lastHitStrength > float.Epsilon)
            {
                if (IK.HitBone != null)
                    IK.HitBone.localRotation *= Quaternion.Lerp(Quaternion.identity, _lastHit, _lastHitStrength);

                _lastHitStrength -= Time.deltaTime * 5.0f;
            }

            if (_gun != null)
                _lastAimTransform = _gun.transform.Find("Aim");

            var distance = 0f;

            if (Camera.main != null && Camera.main.transform != null)
                distance = Vector3.Distance(transform.position, Camera.main.transform.position);

            var lookTarget = _lookTarget;

            {
                var groundTarget = _bodyLookTarget;
                groundTarget.y = transform.position.y;

                var lookDistance = Mathf.Max((groundTarget - transform.position).magnitude, 3);
                var lookDirection = (groundTarget - transform.position).normalized;

                var currentTarget = transform.position + transform.forward * lookDistance;
                currentTarget.y = groundTarget.y;
                var currentDirection = (currentTarget - transform.position).normalized;

                var lookAngle = Mathf.Atan2(lookDirection.z, lookDirection.x) * Mathf.Rad2Deg;
                var currentAngle = Mathf.Atan2(currentDirection.z, currentDirection.x) * Mathf.Rad2Deg;
                var deltaAngle = Mathf.DeltaAngle(currentAngle, lookAngle);

                var direction = lookDirection;

                if (!_isEnteringCornerAimFromBackAim)
                {
                    if (deltaAngle < -TurnSettings.MaxAimAngle)
                        direction = new Vector3(Mathf.Cos((currentAngle - TurnSettings.MaxAimAngle) * Mathf.Deg2Rad), 0, Mathf.Sin((currentAngle - TurnSettings.MaxAimAngle) * Mathf.Deg2Rad)).normalized;
                    else if (deltaAngle > TurnSettings.MaxAimAngle)
                        direction = new Vector3(Mathf.Cos((currentAngle + TurnSettings.MaxAimAngle) * Mathf.Deg2Rad), 0, Mathf.Sin((currentAngle + TurnSettings.MaxAimAngle) * Mathf.Deg2Rad)).normalized;
                }

                lookTarget = transform.position + direction * lookDistance;
                lookTarget.y = _bodyLookTarget.y;
            }

            if (!IK.ThrowChain.IsEmpty && _throwAimIntensity > 0.01f)
            {
                var target = _isThrowing ? _throwTarget : lookTarget;

                _throwIK.Target = IK.Sight;
                _throwIK.Bones = IK.ThrowChain.Bones;
                _throwIK.UpdateAim(target, IK.ThrowChain.Delay.Get(distance), _throwAimIntensity, IK.ThrowChain.Iterations);
            }

            if (_lastAimTransform != null && !IK.AimChain.IsEmpty && _armAimIntensity > 0.01f)
            {
                _aimIK.Target = _lastAimTransform;
                _aimIK.Bones = IK.AimChain.Bones;
                _aimIK.UpdateAim(TurnSettings.IsAimingPrecisely ? _currentFireTarget : lookTarget, IK.AimChain.Delay.Get(distance), _armAimIntensity, IK.AimChain.Iterations);
            }

            if (_gun != null)
                _gun.UpdateIntendedRotation();

            if (_gun != null && IK.RightHand != null && _gun.RecoilShift.magnitude > 0.01f && !IK.RecoilChain.IsEmpty)
            {
                _recoilIK.Target = IK.RightHand;
                _recoilIK.Bones = IK.RecoilChain.Bones;
                _recoilIK.UpdateMove(IK.RightHand.position + _gun.RecoilShift, IK.RecoilChain.Delay.Get(distance), 1.0f, IK.RecoilChain.Iterations);
            }

            if (_gun != null && IK.LeftHand != null && !IK.LeftArmChain.IsEmpty && _leftHandIntensity > 0.01f)
            {
                Transform hand = null;

                if (IsAimingGun)
                    hand = _gun.LeftHandOverwrite.Aim;
                else if (_cover.In)
                {
                    if (_cover.IsTall)
                    {
                        if (_cover.IsStandingLeft)
                            hand = _gun.LeftHandOverwrite.TallCoverLeft;
                        else
                            hand = _gun.LeftHandOverwrite.TallCoverRight;
                    }
                    else
                    {
                        if (_cover.IsStandingLeft)
                            hand = _gun.LeftHandOverwrite.LowCoverLeft;
                        else
                            hand = _gun.LeftHandOverwrite.LowCoverRight;
                    }
                }

                if (hand == null)
                    hand = _gun.LeftHandDefault;

                if (hand != null)
                {
                    _leftHandIK.Target = IK.LeftHand;
                    _leftHandIK.Bones = IK.LeftArmChain.Bones;
                    _leftHandIK.UpdateMove(hand.position, IK.LeftArmChain.Delay.Get(distance), _leftHandIntensity, IK.LeftArmChain.Iterations);
                }
            }

            if (IK.Sight != null && !IK.SightChain.IsEmpty && _headAimIntensity > 0.01f)
            {
                Vector3 target;

                if (_isHeadLookTargetOverriden)
                    target = _headLookTargetOverride;
                else if (_isThrowing)
                    target = _throwTarget;
                else
                    target = TurnSettings.IsAimingPrecisely ? _currentFireTarget : lookTarget;

                _sightIK.Target = IK.Sight;
                _sightIK.Bones = IK.SightChain.Bones;
                _sightIK.UpdateAim(target, IK.SightChain.Delay.Get(distance), _headAimIntensity, IK.SightChain.Iterations);
            }

            if (_gun != null)
            {
                _gun.UpdateAimOrigin();
                _target = _gun.FindCurrentAimedTarget();

                while (_target != null)
                {
                    var health = _target.GetComponent<CharacterHealth>();

                    if (health != null)
                    {
                        if (health.Health <= float.Epsilon)
                            _target = null;

                        break;
                    }

                    var parent = _target.transform.parent;

                    if (parent != null)
                        _target = parent.gameObject;
                    else
                        _target = null;
                }
            }
        }
        private bool findGround(float threshold)
        {
            bool temp;
            return findGround(threshold, out temp);
        }

        private bool findGround(float threshold, out bool isOnSlope)
        {
            isOnSlope = false;

            var offset = 0.2f;

            for (int i = 0; i < Physics.RaycastNonAlloc(transform.position + Vector3.up * offset, Vector3.down, _raycastHits, threshold + offset); i++)
            {
                var hit = _raycastHits[i];

                if (!hit.collider.isTrigger)
                    if (hit.collider.gameObject != gameObject)
                    {
                        var up = Vector3.Dot(Vector3.up, hit.normal);
                        var slope = Mathf.Acos(up) * Mathf.Rad2Deg;

                        if (up > 0.99f) slope = 0;

                        if (slope > 20f)
                            isOnSlope = true;

                        return true;
                    }
            }

            return false;
        }

        private float getGoundHeight()
        {
            for (int i = 0; i < Physics.RaycastNonAlloc(transform.position + (Vector3.up * (0.1f)), Vector3.down, _raycastHits); i++)
            {
                var hit = _raycastHits[i];

                if (hit.collider.gameObject != gameObject)
                    return hit.point.y;
            }

            return 0;
        }

        private bool findEdge(out Vector3 position, float threshold)
        {
            var bottom = transform.TransformPoint(_capsule.center - new Vector3(0, _capsule.height * 0.5f + _capsule.radius, 0));
            var count = Physics.OverlapSphereNonAlloc(bottom, _capsule.radius + threshold, _colliderCache);

            for (int i = 0; i < count; i++)
                if (_colliderCache[i].gameObject != gameObject)
                {
                    position = _colliderCache[i].ClosestPointOnBounds(bottom);
                    return true;
                }

            position = Vector3.zero;
            return false;
        }

        #endregion
    }
}