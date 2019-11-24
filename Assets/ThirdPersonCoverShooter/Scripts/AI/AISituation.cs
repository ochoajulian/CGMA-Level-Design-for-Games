using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Status of the AI situation in single a frame.
    /// </summary>
    public struct AISituation
    {
        public bool IsAlerted;
        public bool IsGettingAlerted;
        public float AlertReaction;

        public bool IsAllowedToBeAggressive;

        public float GrenadeReaction;
        public bool IsNoticingGrenade;
        public int ThrownGrenadeCount;

        public bool HasInvestigatedTheLatestAlert;
        public bool HasAnInvestigatedAlert;
        public bool WasTheLastInvestigatedAlertTheFirst;
        public float InvestigatedAlertAge;
        public Vector3 InvestigatedThreatPosition;
        public Vector3 DirectionOfInvestigation;

        public bool IsNearGrenade;
        public Vector3 NearestGrenadePosition;

        public Vector3 ThreatGroundPosition;
        public Vector3 ThreatTopPosition;
        public Vector3 ThreatStandingTopPosition;

        public Actor Threat;
        public float NoThreatTimer;
        public bool CanSeeTheThreat;
        public bool IsThreatInCover;
        public Vector3 ThreatCoverForward;

        public Vector3 TargetPosition;
        public Vector3 CurrentPosition;

        public int PatrolPoint;

        public bool DidntFindCover;
        public Cover TargetCover;
        public Cover CurrentCover;
        public bool IsNewCover;
        public bool IsTargetCoverGood;
        public bool CanSeeFromTargetPosition;
        public int TargetDirection;

        public int BurstCount;
        public bool IsGunReady;

        public bool IsRetreating;

        /// <summary>
        /// Marks the threat as investigated.
        /// </summary>
        public void MarkInvestigated()
        {
            if (HasInvestigatedTheLatestAlert)
                return;

            WasTheLastInvestigatedAlertTheFirst = !HasAnInvestigatedAlert;
            HasInvestigatedTheLatestAlert = true;
            HasAnInvestigatedAlert = true;
            InvestigatedThreatPosition = ThreatGroundPosition;
        }
        
        /// <summary>
        /// Forgets about the enemy.
        /// </summary>
        public void RemoveEnemyState()
        {
            Threat = null;
            CanSeeTheThreat = false;
            HasInvestigatedTheLatestAlert = false;
            WasTheLastInvestigatedAlertTheFirst = false;
            HasAnInvestigatedAlert = false;
        }

        /// <summary>
        /// Copy enemy info from a friend. Ignored if an enemy is already known.
        /// </summary>
        public void TakeEnemyState(AIController other)
        {
            if (Threat != null || other.Situation.Threat == null)
                return;

            Threat = other.Situation.Threat;
            CanSeeTheThreat = other.Situation.CanSeeTheThreat;
            NoThreatTimer = other.Situation.NoThreatTimer;
            IsThreatInCover = other.Situation.IsThreatInCover;
            ThreatGroundPosition = other.Situation.ThreatGroundPosition;
            ThreatTopPosition = other.Situation.ThreatTopPosition;
            ThreatStandingTopPosition = other.Situation.ThreatStandingTopPosition;
            ThreatCoverForward = other.Situation.ThreatCoverForward;
        }

        public void ReadEnemyState(Actor threat)
        {
            if (Threat != null && Threat != threat)
                return;

            Threat = threat;
            CanSeeTheThreat = true;
            NoThreatTimer = 0;
            ThreatGroundPosition = Threat.transform.position;
            IsThreatInCover = Threat.Cover != null;
            ThreatTopPosition = Threat.TopPosition;
            ThreatStandingTopPosition = Threat.StandingTopPosition;

            if (IsThreatInCover)
                ThreatCoverForward = Threat.Cover.Forward;
        }

        /// <summary>
        /// Returns an updated situation struct.
        /// </summary>
        public void Update(AIController controller, AISituation previous, bool updateInDetail)
        {
            if (!IsAlerted)
                HasInvestigatedTheLatestAlert = false;
            else if (Threat == null & Vector3.Distance(CurrentPosition, ThreatGroundPosition) < controller.Distances.ThreatInvestigation)
                MarkInvestigated();

            if (HasAnInvestigatedAlert)
                InvestigatedAlertAge += Time.deltaTime;

            // Check grenades
            {
                IsNearGrenade = false;
                float minDist = 1000;

                foreach (var grenade in GrenadeList.All)
                {
                    var vec = grenade.transform.position - controller.transform.position;
                    var dist = vec.magnitude;

                    if (dist < grenade.ExplosionRadius)
                        if (!IsNearGrenade || dist < minDist)
                        {
                            minDist = dist;
                            IsNearGrenade = true;
                            NearestGrenadePosition = grenade.transform.position;

                            if (Threat == null)
                            {
                                HasInvestigatedTheLatestAlert = false;
                                HasAnInvestigatedAlert = false;
                                ThreatGroundPosition = grenade.transform.position;
                            }
                        }
                }
            }

            // Check friends and enemies.
            if (Threat == null || (!IsAlerted && !IsGettingAlerted))
            {
                var minEnemyInfoTimer = controller.View.EnemySustainTime;

                foreach (var actor in Actors.All)
                    if (actor != controller.Actor)
                    {
                        if (actor.Side != controller.Actor.Side)
                        {
                            if (AIUtil.IsInSight(controller, actor.TopPosition))
                            {
                                IsAlerted = true;
                                ReadEnemyState(actor);
                                break;
                            }
                        }
                        else if (actor.AI != null && actor.AI.IsAlerted)
                        {
                            var vector = actor.transform.position - controller.transform.position;

                            if (vector.magnitude < controller.View.CommunicationDistance)
                            {
                                IsAlerted = true;

                                if (actor.AI.Situation.NoThreatTimer < actor.AI.View.EnemySustainTime &&
                                    minEnemyInfoTimer > actor.AI.Situation.NoThreatTimer)
                                    TakeEnemyState(actor.AI);
                            }
                        }
                    }
            }

            // Check friends if they had investigated the same position
            if (IsAlerted && Threat == null && !HasInvestigatedTheLatestAlert)
                foreach (var friend in Actors.All)
                    if (friend != controller.Actor &&
                        friend.Side == controller.Actor.Side &&
                        friend.AI.IsAlerted &&
                        friend.AI.Situation.HasAnInvestigatedAlert && 
                        friend.AI.Situation.InvestigatedAlertAge < 10 &&
                        Vector3.Distance(friend.transform.position, controller.transform.position) < controller.View.CommunicationDistance &&
                        Vector3.Distance(friend.AI.Situation.InvestigatedThreatPosition, ThreatGroundPosition) < controller.Distances.ThreatInvestigation)
                    {
                        MarkInvestigated();
                        break;
                    }


            // Check threats
            if (Threat == null)
            {
                var minDist = 100000f;

                foreach (var alert in Alerts.All)
                {
                    var dist = Vector3.Distance(controller.transform.position, alert.Position);

                    if (dist < alert.Range)
                    {
                        if (dist < minDist)
                        {
                            minDist = dist;
                            IsAlerted = true;
                            ThreatGroundPosition = alert.Position;
                            HasAnInvestigatedAlert = false;
                            HasInvestigatedTheLatestAlert = false;
                        }
                    }
                }
            }

            // React to grenades
            if (IsNoticingGrenade)
            {
                if (GrenadeReaction < float.Epsilon)
                    IsNoticingGrenade = false;
                else
                {
                    GrenadeReaction -= Time.deltaTime;
                    IsNearGrenade = false;
                }
            }
            else if (IsNearGrenade && !previous.IsNearGrenade)
            {
                GrenadeReaction = controller.Fighting.GrenadeReactionTime;
                IsNoticingGrenade = true;
                IsNearGrenade = false;
            }

            if (IsNearGrenade)
                IsAlerted = true;

            // React to being alerted.
            if (IsGettingAlerted)
            {
                if (AlertReaction < float.Epsilon)
                {
                    IsGettingAlerted = false;
                    IsAlerted = true;
                }
                else
                {
                    AlertReaction -= Time.deltaTime;
                    IsAlerted = false;
                }
            }
            else if (IsAlerted && !previous.IsAlerted)
            {
                AlertReaction = controller.Fighting.ReactionTime;
                IsGettingAlerted = true;
                IsAlerted = false;
            }

            if (previous.TargetCover != null && 
                (controller.Motor.LeftCover == previous.TargetCover || controller.Motor.RightCover == previous.TargetCover || controller.Motor.Cover == previous.TargetCover))
                CurrentCover = previous.TargetCover;
            else
                CurrentCover = controller.Motor.Cover;

            CurrentPosition = controller.transform.position;
            IsGunReady = controller.Motor.IsGunReady && controller.Motor.Gun.Clip >= controller.Motor.Gun.ClipSize * controller.Fighting.ReloadFraction;

            if (controller.Health != null && Threat != null && Threat.IsAttacking)
                IsRetreating = IsAlerted && controller.Health.Health <= controller.Fighting.MinHealth;
            else
                IsRetreating = false;

            if (IsAlerted)
            {
                var couldSeeTheEnemy = CanSeeTheThreat;
                CanSeeTheThreat = false;

                if (Threat != null)
                {
                    if (couldSeeTheEnemy || updateInDetail)
                        CanSeeTheThreat = AIUtil.IsInSight(controller, Threat.TopPosition);

                    if (CanSeeTheThreat)
                        ReadEnemyState(Threat);
                    else
                    {
                        NoThreatTimer += Time.deltaTime;

                        if (updateInDetail)
                        {
                            // Check friends and enemies.
                            foreach (var friend in Actors.All)
                                if (friend != controller.Actor &&
                                    friend.Side == controller.Actor.Side &&
                                    friend.AI != null &&
                                    friend.AI.IsAlerted &&
                                    friend.AI.Situation.CanSeeTheThreat &&
                                    friend.AI.Situation.Threat == Threat)
                                {
                                    var vector = friend.transform.position - controller.transform.position;

                                    if (vector.magnitude < controller.View.CommunicationDistance)
                                        TakeEnemyState(friend.AI);
                                }
                        }
                    }
                }

                if (TargetCover != null && updateInDetail)
                {
                    var distanceToThreat = Vector3.Distance(TargetPosition, ThreatGroundPosition);

                    IsTargetCoverGood = distanceToThreat >= controller.Distances.MinEnemy &&
                                        distanceToThreat >= controller.Cover.MinCoverToEnemyDistance &&
                                        AIUtil.IsGoodAngle(controller,
                                                           TargetCover,
                                                           TargetPosition,
                                                           ThreatGroundPosition,
                                                           TargetCover.IsTall(controller.Motor.CoverSettings.TallThreshold)) &&
                                        !AIUtil.IsCoverPositionTooCloseToFriends(TargetCover, controller, TargetPosition);
                }

                if (updateInDetail)
                {
                    if (TargetCover != null && TargetCover.IsTall(controller.Motor.CoverSettings.TallThreshold))
                    {
                        Vector3 aimPoint;

                        if (TargetDirection < 0)
                            aimPoint = TargetCover.LeftCorner(0, controller.Motor.CoverSettings.CornerOffset.x);
                        else
                            aimPoint = TargetCover.RightCorner(0, controller.Motor.CoverSettings.CornerOffset.x);

                        CanSeeFromTargetPosition = AIUtil.IsInSight(controller, aimPoint, ThreatStandingTopPosition);
                    }
                    else
                        CanSeeFromTargetPosition = AIUtil.IsInSight(controller, TargetPosition, ThreatStandingTopPosition);
                }
            }
            else
            {
                if (TargetCover != null && updateInDetail)
                    IsTargetCoverGood = !AIUtil.IsCoverPositionTooCloseToFriends(TargetCover, controller, TargetPosition);

                CanSeeFromTargetPosition = true;
            }
        }
    }
}
