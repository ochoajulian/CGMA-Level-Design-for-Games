using System;
using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Settings for AI behaviour.
    /// </summary>
    [Serializable]
    public struct AIBehaviourSettings
    {
        /// <summary>
        /// Is AI approaching the enemy from cover to cover.
        /// </summary>
        [Tooltip("Is AI approaching the enemy from cover to cover.")]
        public bool IsApproachingUsingCovers;

        /// <summary>
        /// Is AI always staying in cover to fight.
        /// </summary>
        [Tooltip("Is AI always staying in cover to fight.")]
        public bool IsFightingUsingCovers;

        /// <summary>
        /// Is AI using covers to retreat.
        /// </summary>
        [Tooltip("Is AI using covers to retreat.")]
        public bool IsRetreatingUsingCovers;

        /// <summary>
        /// Can AI pull the trigger.
        /// </summary>
        [Tooltip("Can AI pull the trigger.")]
        public bool CanFire;

        /// <summary>
        /// Does AI only fire when it is seen by the main camera.
        /// </summary>
        [Tooltip("Does AI only fire when it is seen by the main camera.")]
        public bool OnlyFireWhenSeen;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIBehaviourSettings Default()
        {
            var result = new AIBehaviourSettings();
            result.IsApproachingUsingCovers = true;
            result.IsFightingUsingCovers = true;
            result.IsRetreatingUsingCovers = true;
            result.CanFire = true;
            result.OnlyFireWhenSeen = false;

            return result;
        }
    }

    /// <summary>
    /// Settings for AI patrolling.
    /// </summary>
    [Serializable]
    public struct AIPatrolSettings
    {
        /// <summary>
        /// Should the AI always run when patrolling.
        /// </summary>
        [Tooltip("Should the AI always run when patrolling.")]
        public bool IsAlwaysRunning;

        /// <summary>
        /// Duration in seconds of a head sweep to one direction.
        /// </summary>
        [Tooltip("Duration in seconds of a head sweep to one direction.")]
        public float LookDuration;

        /// <summary>
        /// Angle in degrees of a head sweep to left or right.
        /// </summary>
        [Tooltip("Angle in degrees of a head sweep to left or right.")]
        public float LookAngle;

        /// <summary>
        /// Speed of head turning when patrolling.
        /// </summary>
        [Tooltip("Speed of head turning when patrolling.")]
        public float LookSpeed;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIPatrolSettings Default()
        {
            var result = new AIPatrolSettings();
            result.IsAlwaysRunning = false;
            result.LookDuration = 1.5f;
            result.LookAngle = 60f;
            result.LookSpeed = 2f;

            return result;
        }
    }

    /// <summary>
    /// Settings for AI fighting and aiming.
    /// </summary>
    [Serializable]
    public struct AIFightingSettings
    {
        /// <summary>
        /// AI retreats when its health is lower than this value.
        /// </summary>
        [Tooltip("AI retreats when its health is lower than this value.")]
        public float MinHealth;

        /// <summary>
        /// AI manually reloads a gun when the bullets lower than a fraction of the clip size.
        /// </summary>
        [Tooltip("AI manually reloads a gun when the bullets lower than a fraction of the clip size.")]
        public float ReloadFraction;

        /// <summary>
        /// Time in seconds for AI to react to changes in the world other than grenades.
        /// </summary>
        [Tooltip("Time in seconds for AI to react to changes in the world.")]
        public float ReactionTime;

        /// <summary>
        /// Time in seconds for AI to react to grenades.
        /// </summary>
        [Tooltip("Time in seconds for AI to react to grenades.")]
        public float GrenadeReactionTime;

        /// <summary>
        /// Weapon index for the AI to use. Will fallback to a lower one when not available.
        /// </summary>
        [Tooltip("Weapon index for the AI to use. Will fallback to a lower one when not available.")]
        public int WeaponToUse;

        /// <summary>
        /// Aiming precision. Lower values translate to better aiming.
        /// </summary>
        [Tooltip("Aiming precision. Lower values translate to better aiming.")]
        public DistanceRange TargetRadius;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIFightingSettings Default()
        {
            var result = new AIFightingSettings();
            result.MinHealth = 40;
            result.ReloadFraction = 0.3f;
            result.ReactionTime = 0.3f;
            result.GrenadeReactionTime = 0.6f;
            result.TargetRadius = new DistanceRange(0, 1, 3, 20);
            result.WeaponToUse = 2;

            return result;
        }
    }

    /// <summary>
    /// Settings for AI grenades.
    /// </summary>
    [Serializable]
    public struct AIGrenadeSettings
    {
        /// <summary>
        /// Number of grenades the AI will throw.
        /// </summary>
        [Tooltip("Number of grenades the AI will throw.")]
        public int GrenadeCount;

        /// <summary>
        /// Time in seconds since becoming alerted to wait before throwing a grenade.
        /// </summary>
        [Tooltip("Time in seconds since becoming alerted to wait before throwing a grenade.")]
        public float FirstGrenadeDelay;

        /// <summary>
        /// Time in seconds to wait before throwing a grenade after already having thrown one.
        /// </summary>
        [Tooltip("Time in seconds to wait before throwing a grenade after already having thrown one.")]
        public float Interval;

        /// <summary>
        /// AI will only throw a grenade if it can hit the enemy. CheckInterval defines the time between checks.
        /// </summary>
        [Tooltip("AI will only throw a grenade if it can hit the enemy. CheckInterval defines the time between checks.")]
        public float CheckInterval;

        /// <summary>
        /// Maximum allowed distance between a landed grenade and the enemy. Throws with greater result distance are cancelled.
        /// </summary>
        [Tooltip("Maximum allowed distance between a landed grenade and the enemy. Throws with greater result distance are cancelled.")]
        public float MaxRadius;

        /// <summary>
        /// Distance to maintain against grenades.
        /// </summary>
        [Tooltip("Distance to maintain against grenades.")]
        public float AvoidDistance;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIGrenadeSettings Default()
        {
            var result = new AIGrenadeSettings();
            result.GrenadeCount = 1;
            result.FirstGrenadeDelay = 5;
            result.Interval = 10;
            result.CheckInterval = 2;
            result.MaxRadius = 5;
            result.AvoidDistance = 8;

            return result;
        }
    }

    /// <summary>
    /// Settings for distances AI tries to maintain between characters.
    /// </summary>
    [Serializable]
    public struct AIDistanceSettings
    {
        /// <summary>
        /// Distance to maintain when retreating from an enemy.
        /// </summary>
        [Tooltip("Distance to maintain when retreating from an enemy.")]
        public float MinRetreat;

        /// <summary>
        /// AI will avoid taking paths that are too close to the enemy.
        /// </summary>
        [Tooltip("AI will avoid taking paths that are too close to the enemy.")]
        public float MinPassing;

        /// <summary>
        /// Distance to friends in cover for the AI to maintain.
        /// </summary>
        [Tooltip("Distance to friends in cover for the AI to maintain.")]
        public float MinFriend;

        /// <summary>
        /// AI tries to stand closer to it's enemy than this distance when fighting away from covers.
        /// </summary>
        [Tooltip("AI tries to stand closer to it's enemy than this distance when fighting away from covers.")]
        public float MaxWalkingFight;

        /// <summary>
        /// If enemy doesn't intend to always fight in covers it stops using them when closer to the enemy than this value.
        /// </summary>
        [Tooltip("If enemy doesn't intend to always fight in covers it stops using them when closer to the enemy than this value.")]
        public float MaxApproach;

        /// <summary>
        /// AI avoids being closer to it's enemy than this value.
        /// </summary>
        [Tooltip("AI avoids being closer to it's enemy than this value.")]
        public float MinEnemy;

        /// <summary>
        /// AI looks for enemies in random direction by at least this distance.
        /// </summary>
        [Tooltip("AI looks for enemies in random direction by at least this distance.")]
        public float MinSearch;

        /// <summary>
        /// AI counts threat as investigated once it comes closer than this value.
        /// </summary>
        [Tooltip("AI counts threat as investigated once it comes closer than this value.")]
        public float ThreatInvestigation;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIDistanceSettings Default()
        {
            var result = new AIDistanceSettings();
            result.MinRetreat = 40;
            result.MinPassing = 6;
            result.MinFriend = 4;
            result.MaxWalkingFight = 6;
            result.MaxApproach = 12;
            result.MinEnemy = 3;
            result.MinSearch = 20;
            result.ThreatInvestigation = 4;

            return result;
        }
    }

    /// <summary>
    /// AI cover settings.
    /// </summary>
    [Serializable]
    public struct AICoverSettings
    {
        /// <summary>
        /// AI won't take covers that are closer to the enemy.
        /// </summary>
        [Tooltip("AI won't take covers that are closer to the enemy.")]
        public float MinCoverToEnemyDistance;

        /// <summary>
        /// Maximum distance of a cover for AI to take.
        /// </summary>
        [Tooltip("Maximum distance of a cover for AI to take.")]
        public float MaxDistance;

        /// <summary>
        /// Maximum distance of a cover for AI to switch to when already in other cover.
        /// </summary>
        [Tooltip("Maximum distance of a cover for AI to switch to when already in other cover.")]
        public float MaxSwitchDistance;

        /// <summary>
        /// AI avoids to switch to covers that are closer than this value.
        /// </summary>
        [Tooltip("AI avoids to switch to covers that are closer than this value.")]
        public float MinSwitchDistance;

        /// <summary>
        /// Maximum angle of a low cover relative to the enemy.
        /// </summary>
        [Tooltip("Maximum angle of a low cover relative to the enemy.")]
        public float MaxLowAngle;

        /// <summary>
        /// Maximum angle of a tall cover relative to the enemy.
        /// </summary>
        [Tooltip("Maximum angle of a tall cover relative to the enemy.")]
        public float MaxTallAngle;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AICoverSettings Default()
        {
            var result = new AICoverSettings();
            result.MinCoverToEnemyDistance = 6;
            result.MaxDistance = 50;
            result.MaxSwitchDistance = 30;
            result.MinSwitchDistance = 4;
            result.MaxLowAngle = 60;
            result.MaxTallAngle = 40;

            return result;
        }
    }

    /// <summary>
    /// Settings for AI to notice changes in the world.
    /// </summary>
    [Serializable]
    public struct AIViewSettings
    {
        /// <summary>
        /// Field of sight to notice changes in the world.
        /// </summary>
        [Tooltip("Field of sight to notice changes in the world.")]
        public float FieldOfView;

        /// <summary>
        /// Distance for AI to notice visible threat or a teammate being attacked.
        /// </summary>
        [Tooltip("Distance for AI to notice visible threat or a teammate being attacked.")]
        public float SightDistance;

        /// <summary>
        /// Distance in any direction for AI to communicate between each other.
        /// </summary>
        [Tooltip("Distance in any direction for AI to communicate between each other.")]
        public float CommunicationDistance;

        /// <summary>
        /// How long the AI will fire at the last seen enemy position.
        /// </summary>
        [Tooltip("How long the AI will fire at the last seen enemy position.")]
        public float SightSustainTime;

        /// <summary>
        /// How long the AI will remember an existance of enemy when not seeing them.
        /// </summary>
        [Tooltip("How long the AI will remember an existance of enemy when not seeing them.")]
        public float EnemySustainTime;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIViewSettings Default()
        {
            var result = new AIViewSettings();
            result.FieldOfView = 160;
            result.SightDistance = 20;
            result.CommunicationDistance = 12;
            result.SightSustainTime = 3;
            result.EnemySustainTime = 8;

            return result;
        }
    }

    /// <summary>
    /// Settings for AI bursts of fire.
    /// </summary>
    [Serializable]
    public struct AIBurstSettings
    {
        /// <summary>
        /// Time in seconds to wait for another burst of fire.
        /// </summary>
        [Tooltip("Time in seconds to wait for another burst of fire.")]
        public float Wait;

        /// <summary>
        /// Duration in seconds of a burst of fire.
        /// </summary>
        [Tooltip("Duration in seconds of a burst of fire.")]
        public float Duration;

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AIBurstSettings Default()
        {
            var result = new AIBurstSettings();
            result.Wait = 0.25f;
            result.Duration = 1.0f;

            return result;
        }
    }

    /// <summary>
    /// Settings for AI burst of fire when in cover.
    /// </summary>
    [Serializable]
    public struct AICoverBurstSettings
    {
        /// <summary>
        /// Number of bursts before moving to another cover.
        /// </summary>
        [Tooltip("Number of bursts before moving to another cover.")]
        public int Count;

        /// <summary>
        /// Time in seconds to wait in cover for another burst of fire.
        /// </summary>
        [Tooltip("Time in seconds to wait in cover for another burst of fire.")]
        public float Wait;

        /// <summary>
        /// Duration in seconds of a burst.
        /// </summary>
        [Tooltip("Duration in seconds of a burst.")]
        public float Duration;

        /// <summary>
        /// Time in seconds for AI to stand without firing before a burst.
        /// </summary>
        [Tooltip("Time in seconds for AI to stand without firing before a burst.")]
        public float IntroDuration;

        /// <summary>
        /// Time in seconds for AI to stand without firing after a burst.
        /// </summary>
        [Tooltip("Time in seconds for AI to stand without firing after a burst.")]
        public float OutroDuration;

        /// <summary>
        /// Total duration of peeking.
        /// </summary>
        public float TotalPeekDuration { get { return Duration + IntroDuration + OutroDuration; } }

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AICoverBurstSettings DefaultApproach()
        {
            var result = new AICoverBurstSettings();
            result.Count = 2;
            result.Wait = 1.2f;
            result.Duration = 0.9f;
            result.IntroDuration = 0.35f;
            result.OutroDuration = 0.35f;

            return result;
        }

        /// <summary>
        /// Default settings.
        /// </summary>
        public static AICoverBurstSettings DefaultCovered()
        {
            var result = new AICoverBurstSettings();
            result.Count = 4;
            result.Wait = 1.2f;
            result.Duration = 0.9f;
            result.IntroDuration = 0.5f;
            result.OutroDuration = 0.5f;

            return result;
        }
    }
}
