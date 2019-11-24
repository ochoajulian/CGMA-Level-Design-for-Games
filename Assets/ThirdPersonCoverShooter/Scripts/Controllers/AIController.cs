using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

namespace CoverShooter
{
    /// <summary>
    /// Makes decisions based on the gameplay situation and gives input to CharacterMotor.
    /// </summary>
    [RequireComponent(typeof(CharacterMotor))]
    [RequireComponent(typeof(NavMeshAgent))]
    [RequireComponent(typeof(Actor))]
    public class AIController : MonoBehaviour
    {
        #region Properties

        /// <summary>
        /// All the alerted AI.
        /// </summary>
        public static IEnumerable<AIController> AlertedAI
        {
            get { return _alertedControllers; }
        }

        /// <summary>
        /// Returns true if the AI is thinking and acting.
        /// </summary>
        public bool IsAlerted
        {
            get { return _situation.IsAlerted; }
        }

        /// <summary>
        /// Current AI situation.
        /// </summary>
        public AISituation Situation
        {
            get { return _situation; }
        }

        /// <summary>
        /// Motor controlled by the AI.
        /// </summary>
        public CharacterMotor Motor
        {
            get { return _motor; }
        }

        /// <summary>
        /// Health component attached to the object. Can be null.
        /// </summary>
        public CharacterHealth Health
        {
            get { return _health; }
        }

        /// <summary>
        /// Actor component attached to the object.
        /// </summary>
        public Actor Actor
        {
            get { return _actor; }
        }

        /// <summary>
        /// Navmesh agent attached to the object.
        /// </summary>
        public NavMeshAgent Agent
        {
            get { return _agent; }
        }

        #endregion

        #region Public fields

        /// <summary>
        /// Group the AI belongs to. Groups manage AI group behaviour.
        /// </summary>
        [Tooltip("Group the AI belongs to. Groups manage AI group behaviour.")]
        public AIGroup Group;

        /// <summary>
        /// Settings for AI behaviour.
        /// </summary>
        [Tooltip("Settings for AI behaviour.")]
        public AIBehaviourSettings Behaviour = AIBehaviourSettings.Default();

        /// <summary>
        /// Settings for AI patrol.
        /// </summary>
        [Tooltip("Settings for AI patrol.")]
        public AIPatrolSettings Patrol = AIPatrolSettings.Default();

        /// <summary>
        /// Settings for AI fighting and aiming.
        /// </summary>
        [Tooltip("Settings for AI fighting and aiming.")]
        public AIFightingSettings Fighting = AIFightingSettings.Default();

        /// <summary>
        /// Settings for AI grenades.
        /// </summary>
        [Tooltip("Settings for AI fighting and aiming.")]
        public AIGrenadeSettings Grenades = AIGrenadeSettings.Default();

        /// <summary>
        /// Settings for distances AI tries to maintain.
        /// </summary>
        [Tooltip("Settings for distances AI tries to maintain.")]
        public AIDistanceSettings Distances = AIDistanceSettings.Default();

        /// <summary>
        /// AI cover settings.
        /// </summary>
        [Tooltip("AI cover settings.")]
        public AICoverSettings Cover = AICoverSettings.Default();

        /// <summary>
        /// Settings for AI to notice changes in the world.
        /// </summary>
        [Tooltip("Settings for AI to notice changes in the world.")]
        public AIViewSettings View = AIViewSettings.Default();

        /// <summary>
        /// Settings for bursts of fire when not walking in a cover.
        /// </summary>
        [Tooltip("Settings for bursts of fire when not walking in a cover.")]
        public AIBurstSettings WalkingBursts = AIBurstSettings.Default();

        /// <summary>
        /// Settings for bursts of fire when approaching but not intending to fight in covers.
        /// </summary>
        [Tooltip("Settings for bursts of fire when approaching but not intending to fight in covers.")]
        public AICoverBurstSettings CoveredApproachBursts = AICoverBurstSettings.DefaultApproach();

        /// <summary>
        /// Settings for bursts of fire when fighting in covers.
        /// </summary>
        [Tooltip("Settings for bursts of fire when fighting in covers.")]
        public AICoverBurstSettings CoveredFightingBursts = AICoverBurstSettings.DefaultCovered();

        /// <summary>
        /// Points to visit when patrolling.
        /// </summary>
        [Tooltip("Points to visit when patrolling.")]
        [HideInInspector]
        public Waypoint[] Waypoints;

        #endregion

        #region Private fields

        private CharacterMotor _motor;
        private CharacterHealth _health;
        private NavMeshAgent _agent;
        private Actor _actor;

        private AIGroup _registeredGroup;

        private float _updateTimer = 0;
        private AIState _state;
        private AISituation _previousSituation;
        private AISituation _situation;
        private float _stateTime;        

        private float _walkingBurstWait = 0;

        private int _lastLookPoint = 0;
        private float _lookPointTimer = 0;

        private Vector3[] _path = new Vector3[64];
        private int _pathLength;
        private int _currentPathIndex;
        private bool _isWaitingForPath;

        private float _grenadeTimer;
        private float _grenadeCheckTimer;
        private bool _hasThrowFirstGrenade;
        private Vector3[] _grenadePath = new Vector3[128];

        private Cover _lastTargetCover;

        private static List<AIController> _alertedControllers = new List<AIController>();
        private bool _hasAddedToAlertedControllers;

        #endregion

        #region Events

        /// <summary>
        /// React to attacks and notify other AI about it.
        /// </summary>
        public void OnHit(Hit hit)
        {
            _situation.IsAlerted = true;

            if (hit.Attacker != null && _situation.Threat == null)
            {
                var threat = hit.Attacker.GetComponent<Actor>();

                if (threat != null && threat.Side != _actor.Side)
                    _situation.ReadEnemyState(threat);
            }

            AIUtil.NotifyFriends(_actor, "OnFriendHit", _actor);
        }

        /// <summary>
        /// React to attacks on other AI.
        /// </summary>
        public void OnFriendHit(Actor friend)
        {
            if (friend == null)
                return;

            var vector = friend.transform.position - transform.position;

            if (vector.magnitude < View.CommunicationDistance)
                _situation.IsAlerted = true;
            else if (vector.magnitude < View.SightDistance && !IsAlerted)
                if (AIUtil.IsInSight(this, friend.TopPosition))
                    _situation.IsAlerted = true;

            if (_situation.IsAlerted && _situation.Threat == null)
            {
                var ai = friend.GetComponent<AIController>();

                if (ai != null)
                    _situation.TakeEnemyState(ai);
            }
        }

        #endregion

        #region Behaviour

        private void OnDisable()
        {
            unregister();
        }

        private void OnDestroy()
        {
            unregister();
        }

        private void Awake()
        {
            _agent = GetComponent<NavMeshAgent>();
            _motor = GetComponent<CharacterMotor>();
            _health = GetComponent<CharacterHealth>();
            _actor = GetComponent<Actor>();
        }

        private void Update()
        {
            if (_situation.IsAlerted)
            {
                if (!_hasAddedToAlertedControllers)
                {
                    _hasAddedToAlertedControllers = true;
                    _alertedControllers.Add(this);
                }
            }
            else if (_hasAddedToAlertedControllers)
                _alertedControllers.Remove(this);

            _stateTime += Time.deltaTime;

            _agent.updatePosition = false;
            _agent.updateRotation = false;
            _agent.updateUpAxis = false;
            _agent.autoRepath = true;
            _agent.autoBraking = false;

            if (!_motor.IsAlive)
                _situation.TargetCover = null;

            if (_lastTargetCover != _situation.TargetCover)
            {
                if (_lastTargetCover != null)
                    _lastTargetCover.UnregisterUser(_actor);

                _lastTargetCover = _situation.TargetCover;

                if (_lastTargetCover != null)
                    _lastTargetCover.RegisterUser(_actor);
            }

            if (_isWaitingForPath && !_agent.pathPending)
            {
                _pathLength = _agent.path.GetCornersNonAlloc(_path);
                _currentPathIndex = 0;
                _isWaitingForPath = false;
            }
            
            if (!_motor.IsAlive)
            {
                _state = AIState.none;
                _agent.enabled = false;
                return;
            }
            else
                _agent.enabled = true;

            if (_motor.PotentialCover != null)
                _motor.InputTakeCover();

            if (_situation.IsAlerted)
            {
                if (!_motor.IsInCover)
                    _motor.InputAim();

                // Make the AI pick up a weapon.
                if (Fighting.WeaponToUse <= 0)
                    _motor.InputWeapon(0);
                else if (Fighting.WeaponToUse - 1 < _motor.Weapons.Length)
                    _motor.InputWeapon(Fighting.WeaponToUse);
                else
                    _motor.InputWeapon(_motor.Weapons.Length);

                _situation.IsAllowedToBeAggressive = true;

                ///
                /// POTENTIALLY FORGET ABOUT THE ENEMY. CHECK IF CAN BE AGGRESSIVE.
                ///
                if (_situation.Threat != null)
                {
                    if (_situation.Threat.IsAlive)
                    {
                        if (!_situation.CanSeeTheThreat && _situation.NoThreatTimer > View.EnemySustainTime)
                            _situation.RemoveEnemyState();
                        else
                        {
                            if (_registeredGroup != null)
                            {
                                _registeredGroup.MarkAsPotentialAggressive(this);
                                _situation.IsAllowedToBeAggressive = _registeredGroup.IsAggressive(this);
                            }
                        }
                    }
                    else
                        _situation.RemoveEnemyState();
                }

                ///
                /// AIM AND FIRE
                /// 
                if (_situation.Threat != null && (_situation.CanSeeTheThreat || _situation.NoThreatTimer < View.SightSustainTime))
                {
                    // Process grenade throwing
                    if (_situation.ThrownGrenadeCount < Grenades.GrenadeCount)
                    {
                        var doThrow = false;

                        if (_situation.IsAllowedToBeAggressive)
                        {
                            if (_hasThrowFirstGrenade)
                            {
                                if (_grenadeTimer < Grenades.Interval)
                                    _grenadeTimer += Time.deltaTime;
                                else
                                    doThrow = true;
                            }
                            else
                            {
                                if (_grenadeTimer < Grenades.FirstGrenadeDelay)
                                    _grenadeTimer += Time.deltaTime;
                                else
                                    doThrow = true;
                            }
                        }

                        if (doThrow && _motor.PotentialGrenade != null)
                        {
                            if (_grenadeCheckTimer <= float.Epsilon)
                            {
                                GrenadeDescription desc;
                                desc.Gravity = _motor.Grenade.Gravity;
                                desc.Duration = _motor.PotentialGrenade.Timer;
                                desc.Bounciness = _motor.PotentialGrenade.Bounciness;

                                var length = GrenadePath.Calculate(GrenadePath.Origin(_motor, Util.AngleOfVector(_situation.ThreatGroundPosition - transform.position)),
                                                                   _situation.ThreatGroundPosition,
                                                                   _motor.Grenade.MaxVelocity,
                                                                   desc,
                                                                   _grenadePath,
                                                                   _motor.Grenade.Step);

                                if (Vector3.Distance(_grenadePath[length - 1], _situation.ThreatGroundPosition) > Grenades.MaxRadius ||
                                    Vector3.Distance(_grenadePath[length - 1], _situation.CurrentPosition) < Grenades.AvoidDistance)
                                    _grenadeCheckTimer = Grenades.CheckInterval;
                                else
                                {
                                    _motor.InputThrowGrenade(_grenadePath, length, _motor.Grenade.Step);
                                    _situation.ThrownGrenadeCount++;

                                    _grenadeTimer = 0;
                                    _hasThrowFirstGrenade = true;
                                }
                            }
                            else
                                _grenadeCheckTimer -= Time.deltaTime;
                        }
                        else
                            _grenadeCheckTimer = 0;
                    }

                    // Position in world space that is best fit to aim at.
                    var perfectTarget = _situation.ThreatGroundPosition + (_situation.ThreatTopPosition - _situation.ThreatGroundPosition) * 0.7f;

                    if (_situation.IsThreatInCover)
                    {
                        var dot = Vector3.Dot(_situation.ThreatCoverForward, (_situation.ThreatGroundPosition - transform.position).normalized);

                        if (dot < -0.1f)
                            perfectTarget = _situation.ThreatStandingTopPosition;
                    }

                    // Make the AI look at the target.
                    {
                        var vector = perfectTarget - _motor.transform.position;
                        vector.y = 0;

                        if (vector.magnitude < 2)
                            _motor.SetLookTarget(perfectTarget + vector * 2);
                        else
                            _motor.SetLookTarget(perfectTarget);

                        _motor.SetBodyLookTarget(perfectTarget);
                    }

                    // Aim the gun at the inprecise target.
                    var targetRadius = Fighting.TargetRadius.Get(Vector3.Distance(_situation.ThreatGroundPosition, transform.position));
                    _motor.SetFireTarget(perfectTarget + new Vector3(UnityEngine.Random.Range(-1, 1) * targetRadius,
                                                                     UnityEngine.Random.Range(-1, 1) * targetRadius,
                                                                     UnityEngine.Random.Range(-1, 1) * targetRadius));

                    // We want AI too look at the corner when standing near it.
                    if (_motor.IsInTallCover)
                    {
                        if (_situation.TargetDirection < 0)
                            _motor.InputStandLeft();
                        else if (_situation.TargetDirection > 0)
                            _motor.InputStandRight();
                    }

                    // Fire
                    {
                        var isAllowedToFire = _situation.IsAllowedToBeAggressive;

                        if (Behaviour.OnlyFireWhenSeen || !_situation.IsAllowedToBeAggressive)
                        {
                            var up = Camera.main.WorldToViewportPoint(transform.position);
                            var down = Camera.main.WorldToViewportPoint(transform.position + Vector3.up * 2);

                            if ((up.x < 0 ||
                                up.y < 0 ||
                                up.x > 1 ||
                                up.y > 1 ||
                                up.z < 0) &&
                                (down.x < 0 ||
                                down.y < 0 ||
                                down.x > 1 ||
                                down.y > 1 ||
                                down.z < 0))
                                isAllowedToFire = false;
                            else
                                isAllowedToFire = true;
                        }

                        if (isAllowedToFire)
                        {
                            var burst = Behaviour.IsFightingUsingCovers ? CoveredFightingBursts : CoveredApproachBursts;
                            var isDumb = _state == AIState.fireInCover &&
                                         (_stateTime <= burst.IntroDuration || _stateTime >= burst.IntroDuration + burst.Duration);

                            var isWalking = _state != AIState.takeCover && _state != AIState.approach && _state != AIState.retreat;

                            // Check if can fire right now.
                            if (Behaviour.CanFire &&
                                (!isWalking || _walkingBurstWait < WalkingBursts.Duration) &&
                                (!_situation.IsTargetCoverGood ||
                                 (_state != AIState.hideInCover &&
                                  (_state != AIState.takeCover || _motor.Cover == null))))
                            {
                                var aimPoint = transform.position;

                                if (_motor.IsInTallCover && _situation.IsTargetCoverGood)
                                {
                                    if (_situation.TargetDirection < 0)
                                        aimPoint = _motor.Cover.LeftCorner(transform.position.y, _motor.CoverSettings.CornerOffset.x);
                                    else
                                        aimPoint = _motor.Cover.RightCorner(transform.position.y, _motor.CoverSettings.CornerOffset.x);
                                }

                                // See if the motor can hit the standing enemy after potentially peeking.
                                if (AIUtil.IsInSight(this, aimPoint, _situation.ThreatStandingTopPosition))
                                {
                                    if (_state == AIState.fireInCover)
                                        _motor.InputAim();

                                    if (!isDumb)
                                        _motor.InputFire();
                                }
                            }
                        }

                        _lookPointTimer = 0;
                    }
                }
                else
                {
                    _motor.SetFireTarget(_situation.ThreatGroundPosition);
                    _motor.SetLookTarget(_situation.ThreatGroundPosition);
                    _motor.SetBodyLookTarget(_situation.ThreatGroundPosition);
                    lookAround(_situation.ThreatGroundPosition - _motor.transform.position);
                }
            }
            else
            {
                _motor.InputWeapon(0);

                if (_state == AIState.patrol || _state == AIState.patrolPause)
                {
                    Vector3 forward;

                    if (Waypoints.Length > 1)
                    {
                        var next = Waypoints[_situation.PatrolPoint];

                        forward = next.Position - transform.position;

                        if (forward.magnitude < 0.5f)
                        {
                            var previous = _situation.PatrolPoint == 0 ? Waypoints[Waypoints.Length - 1] : Waypoints[_situation.PatrolPoint - 1];
                            var line = next.Position - previous.Position;

                            if (Vector2.Dot(line, forward) > 0)
                                forward = line;
                        }
                    }
                    else
                        forward = transform.forward;

                    lookAround(forward);
                }
                else
                    _lookPointTimer = 0;
            }

            var positionToMoveTo = transform.position;

            ///
            /// STATE MANAGEMENT
            /// 
            {
                var updateSituationInDetail = false;

                {
                    // Update the update delay timer.
                    _updateTimer -= Time.deltaTime;

                    if (_updateTimer < 0)
                    {
                        _updateTimer = Fighting.ReactionTime;
                        updateSituationInDetail = true;
                    }
                }

                // Update standing burst timer.
                {
                    _walkingBurstWait += Time.deltaTime;

                    if (_walkingBurstWait > WalkingBursts.Duration + WalkingBursts.Wait)
                        _walkingBurstWait = 0;
                }

                {
                    _situation.Update(this, _previousSituation, updateSituationInDetail);

                    if (!isStateStillValid(_state, _stateTime, _situation, _situation))
                        updateSituation(calcState(_situation, _state, _stateTime));
                }
            }

            ///
            /// WALK
            ///
            if (!_motor.IsInCornerAimState)
                if (_state == AIState.takeCover ||
                    _state == AIState.approach ||
                    _state == AIState.investigate ||
                    _state == AIState.retreat ||
                    _state == AIState.patrol ||
                    _state == AIState.avoidGrenade)
                {
                    var toTarget = _situation.TargetPosition - transform.position;

                    // If patrolling, set the body to rotate towards the target.
                    if (_state == AIState.patrol)
                        if (toTarget.magnitude > 0.1f)
                        {
                            var normalized = toTarget.normalized;
                            var position = transform.position + normalized * 4;
                            var dot = Vector3.Dot(toTarget.normalized, _motor.transform.forward);

                            if (Waypoints[_situation.PatrolPoint].Run)
                                _motor.SetBodyLookTarget(position, 8);
                            else
                            {
                                if (dot > 0)
                                    _motor.SetBodyLookTarget(position, 1.6f);
                                else if (dot > -0.5f)
                                    _motor.SetBodyLookTarget(position, 2.5f);
                                else
                                    _motor.SetBodyLookTarget(position, 4f);
                            }
                        }

                    // Move the last meter without using the agent.
                    if (toTarget.magnitude > 1.0f)
                    {
                        var vectorToAgent = _agent.nextPosition - transform.position;
                        var distanceToAgent = vectorToAgent.magnitude;

                        if (distanceToAgent > float.Epsilon)
                            vectorToAgent /= distanceToAgent;

                        // If agent moved too far, reset it.
                        if (distanceToAgent > 1f)
                            updateAgent(_situation.TargetPosition);

                        float walkSpeed;

                        if (_state == AIState.patrol && !Patrol.IsAlwaysRunning && (Waypoints.Length == 0 || !Waypoints[_situation.PatrolPoint].Run))
                            walkSpeed = 0.5f;
                        else
                            walkSpeed = 1.0f;

                        var point = _currentPathIndex + 1 < _pathLength ? _path[_currentPathIndex + 1] : _situation.TargetPosition;

                        var vectorToPoint = point - transform.position;
                        var distanceToPoint = vectorToPoint.magnitude;

                        if (distanceToPoint > float.Epsilon)
                            vectorToPoint /= distanceToPoint;

                        if (distanceToPoint < 0.1f && _currentPathIndex + 1 < _pathLength)
                            _currentPathIndex++;

                        _agent.speed = 0.1f;
                        _motor.InputMovement(new CharacterMovement(vectorToPoint, walkSpeed));
                    }
                    else
                    {
                        if (_state == AIState.takeCover)
                        {
                            _motor.InputImmediateCoverSearch();
                            _motor.InputTakeCover();
                        }

                        if (toTarget.magnitude > 0.05f)
                            _motor.InputMovement(new CharacterMovement(toTarget.normalized, 0.5f));
                        else
                            _motor.transform.position = _situation.TargetPosition;
                    }
                }
        }

        #endregion

        #region Private methods

        private void unregister()
        {
            if (_registeredGroup != null)
            {
                _registeredGroup.Unregister(this);
                _registeredGroup = null;
            }
        }

        private void register(AIGroup value)
        {
            if (_registeredGroup != value)
            {
                unregister();

                if (value != null)
                {
                    _registeredGroup = value;
                    _registeredGroup.Register(this);
                }
            }
        }

        private void lookAround(Vector3 forward)
        {
            _motor.InputLeaveCover();

            forward.y = 0;
            forward.Normalize();

            _lookPointTimer -= Time.deltaTime;

            if (_lookPointTimer <= float.Epsilon)
            {
                Vector3 vector;
                var timer = Patrol.LookDuration;

                if (_lastLookPoint == 0)
                {
                    vector = forward;
                    _lastLookPoint = 1;
                    timer = 1.0f;
                }
                else if (_lastLookPoint > 0)
                {
                    vector = Quaternion.AngleAxis(Patrol.LookAngle, Vector3.up) * forward;
                    _lastLookPoint = -1;
                }
                else
                {
                    vector = Quaternion.AngleAxis(-Patrol.LookAngle, Vector3.up) * forward;
                    _lastLookPoint = 1;
                }

                var target = transform.position + vector * 1000;
                _motor.SetHeadLookTargetOverride(target, Patrol.LookSpeed);
                _lookPointTimer = timer;
            }
            else if (Vector3.Dot(transform.forward, forward) < 0.5f)
            {
                var target = transform.position + forward * 1000;
                _motor.SetHeadLookTargetOverride(target, Patrol.LookSpeed * 2);
            }
        }

        /// <summary>
        /// Sets a new state and takes necessary actions.
        /// </summary>
        private void updateSituation(AIState state)
        {
            if (_registeredGroup != Group)
            {
                if (Group != null)
                    register(Group);
                else
                    unregister();
            }

            setNewState(state, _situation);

            switch (_state)
            {
                case AIState.approach:
                    if (_situation.IsThreatInCover)
                        Positioning.ApproachACovered(this, ref _situation);
                    else
                        Positioning.ApproachAFree(this, ref _situation, _agent, Distances.MaxWalkingFight, true);
                    break;

                case AIState.retreat:
                    Positioning.Retreat(this, ref _situation, _agent);
                    break;

                case AIState.avoidGrenade:
                    Positioning.AvoidGrenade(this, ref _situation, _agent);
                    break;

                case AIState.investigate:
                    _situation.HasInvestigatedTheLatestAlert = false;

                    if (_situation.HasAnInvestigatedAlert)
                    {
                        if (_situation.WasTheLastInvestigatedAlertTheFirst)
                        {
                            if (!Positioning.FindNewThreatPositionInDirection(_situation.DirectionOfInvestigation, this, ref _situation, _agent))
                                Positioning.FindNewThreatPosition(this, ref _situation, _agent);
                        }
                        else
                            Positioning.FindNewThreatPosition(this, ref _situation, _agent);
                    }

                    _situation.TargetCover = null;
                    _situation.TargetPosition = _situation.ThreatGroundPosition;

                    _situation.DirectionOfInvestigation = _situation.ThreatGroundPosition - transform.position;
                    _situation.DirectionOfInvestigation.y = 0;
                    _situation.DirectionOfInvestigation.Normalize();
                    break;

                case AIState.takeCover:
                    _situation.DidntFindCover = !Positioning.TakeCover(this, ref _situation);

                    if (_situation.DidntFindCover)
                        updateSituation(AIState.approach);

                    break;

                case AIState.reloadInCover:
                    _motor.InputReload();
                    break;

                case AIState.patrol:
                    Positioning.Patrol(this, ref _situation);
                    break;
            }

            updateAgent(_situation.TargetPosition);
            _previousSituation = _situation;
        }

        /// <summary>
        /// Returns true if the current selected state is still valid.
        /// </summary>
        private bool isStateStillValid(AIState state, float time, AISituation previous, AISituation next)
        {
            var hasEnemyMoved = Vector3.Distance(previous.ThreatGroundPosition, next.ThreatGroundPosition) > 4 || (previous.IsThreatInCover != next.IsThreatInCover);
            var canUseCover = (next.IsRetreating && Behaviour.IsRetreatingUsingCovers) || (!next.IsRetreating && Behaviour.IsApproachingUsingCovers);
            var isTargetPositionUseful = next.CanSeeFromTargetPosition || next.IsRetreating;
            var burst = Behaviour.IsFightingUsingCovers ? CoveredFightingBursts : CoveredApproachBursts;

            if (next.IsNearGrenade)
                return state == AIState.avoidGrenade;
            else
            {
                switch (state)
                {
                    case AIState.avoidGrenade: return time < 2 || next.IsNearGrenade;
                    case AIState.investigate: return next.IsAlerted && !next.HasInvestigatedTheLatestAlert && next.Threat == null && Vector3.Distance(next.ThreatGroundPosition, previous.TargetPosition) < Distances.ThreatInvestigation;
                    case AIState.approach:
                        if (next.DidntFindCover && time < 4)
                            return true;

                        return !next.IsRetreating && (!Behaviour.IsFightingUsingCovers || !Behaviour.IsApproachingUsingCovers) && isTargetPositionUseful;
                    case AIState.fireInCover: return next.IsAllowedToBeAggressive && canUseCover && !hasEnemyMoved && time <= burst.TotalPeekDuration && next.IsTargetCoverGood && isTargetPositionUseful;
                    case AIState.hideInCover: return canUseCover && !hasEnemyMoved && time <= burst.Wait && next.IsTargetCoverGood && isTargetPositionUseful;
                    case AIState.retreat: return next.IsRetreating && Behaviour.IsRetreatingUsingCovers && isTargetPositionUseful;
                    case AIState.reloadInCover: return !next.IsGunReady;
                    case AIState.none: return false;
                    case AIState.patrol:
                        {
                            if (!next.IsAlerted && Waypoints != null && Waypoints.Length > 0 && _situation.PatrolPoint < Waypoints.Length)
                            {
                                if (Waypoints[_situation.PatrolPoint].Pause < float.Epsilon && Vector3.Distance(next.TargetPosition, next.CurrentPosition) < 0.5f)
                                    return false;
                                else if (Vector3.Distance(transform.position, _situation.TargetPosition) > 1)
                                    return true;
                                else
                                    return false;
                            }
                            else
                                return false;
                        }
                    case AIState.patrolPause: return !next.IsAlerted && Waypoints != null && Waypoints.Length > 0 && _situation.PatrolPoint < Waypoints.Length && time <= Waypoints[_situation.PatrolPoint].Pause;
                    case AIState.takeCover:
                        if (next.Threat == null || !next.Threat.IsAttacking)
                            return false;

                        return canUseCover && !hasEnemyMoved && next.IsTargetCoverGood && isTargetPositionUseful && next.CurrentCover != next.TargetCover;
                }
            }

            return false;
        }

        /// <summary>
        /// Calculates and returns best state to move to depending on the given situation.
        /// </summary>
        private AIState calcState(AISituation situation, AIState current, float time)
        {
            if (situation.IsAlerted)
            {
                if (situation.IsNearGrenade)
                    return AIState.avoidGrenade;

                var burst = Behaviour.IsFightingUsingCovers ? CoveredFightingBursts : CoveredApproachBursts;

                var isTargetCoverTooCloseForApproach = !Behaviour.IsFightingUsingCovers &&
                                                        ((situation.CurrentCover != null && !situation.IsNewCover) ||
                                                         Vector3.Distance(situation.TargetPosition, situation.ThreatGroundPosition) < Distances.MaxApproach);
                var isCloseToFight = !Behaviour.IsFightingUsingCovers && Vector3.Distance(situation.CurrentPosition, situation.ThreatGroundPosition) < Distances.MaxApproach;

                if (situation.Threat == null)
                    return AIState.investigate;
                else if (!situation.Threat.IsAttacking)
                    return AIState.approach;
                else if ((situation.IsRetreating && Behaviour.IsRetreatingUsingCovers) ||
                         (!situation.IsRetreating && Behaviour.IsApproachingUsingCovers && !isCloseToFight && !isTargetCoverTooCloseForApproach))
                {
                    if (situation.CurrentCover == null || !situation.IsAllowedToBeAggressive || situation.CurrentCover != situation.TargetCover || (!situation.IsRetreating && (!situation.IsTargetCoverGood || !situation.CanSeeFromTargetPosition)))
                        return AIState.takeCover;
                    else
                    {
                        if (!situation.IsGunReady)
                            return AIState.reloadInCover;
                        else if (current == AIState.hideInCover)
                        {
                            if (time <= burst.Wait)
                                return AIState.hideInCover;
                            else if (situation.BurstCount < burst.Count)
                                return AIState.fireInCover;
                            else
                                return AIState.takeCover;
                        }
                        else if (current == AIState.fireInCover)
                        {
                            if (time <= burst.TotalPeekDuration)
                                return AIState.fireInCover;
                            else if (situation.BurstCount < burst.Count)
                                return AIState.hideInCover;
                            else
                                return AIState.takeCover;
                        }
                        else
                            return AIState.hideInCover;
                    }
                }
                else
                {
                    if (situation.IsRetreating || !situation.IsAllowedToBeAggressive)
                        return AIState.retreat;
                    else
                        return AIState.approach;
                }
            }
            else
            {
                if (Waypoints != null)
                {
                    var isAlreadyCloseToTheOnlyOne = false;
                    var hasToWait = false;

                    if (Waypoints.Length == 0)
                    {
                        isAlreadyCloseToTheOnlyOne = true;
                        hasToWait = true;
                    }
                    else
                    {
                        if (_situation.PatrolPoint < Waypoints.Length)
                            hasToWait = Waypoints[_situation.PatrolPoint].Pause > float.Epsilon;

                        if (Waypoints.Length == 1)
                        {
                            isAlreadyCloseToTheOnlyOne = Vector3.Distance(transform.position, Waypoints[0].Position) < 0.7f;

                            if (!isAlreadyCloseToTheOnlyOne)
                                hasToWait = false;
                        }
                    }

                    if (hasToWait && (current == AIState.patrol || isAlreadyCloseToTheOnlyOne))
                        return AIState.patrolPause;
                    else
                        return AIState.patrol;
                }
                else
                    return AIState.patrolPause;
            }
        }

        /// <summary>
        /// Sets the current state machine state. Resets the state and burst timers and counters.
        /// </summary>
        private void setNewState(AIState value, AISituation situation)
        {
            _situation = situation;

            if (value != AIState.reloadInCover && _state != AIState.reloadInCover)
                _stateTime = 0;

            if (_state != value && value == AIState.fireInCover)
                _situation.BurstCount++;
            else if (value == AIState.takeCover || value == AIState.retreat || value == AIState.approach)
                _situation.BurstCount = 0;

            _state = value;
            _walkingBurstWait = 0;
        }

        /// <summary>
        /// Sets up the navigation agent to move to the givent position.
        /// </summary>
        private void updateAgent(Vector3 value)
        {
            if (!_agent.isActiveAndEnabled)
                return;

            _agent.Warp(transform.position);
            _agent.ResetPath();
            _agent.SetDestination(value);
            _isWaitingForPath = true;
        }

        #endregion
    }
}