using System;
using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Climbing settings for a character.
    /// </summary>
    [Serializable]
    public struct ClimbSettings
    {
        /// <summary>
        /// Capsule height to set during a climb.
        /// </summary>
        [Tooltip("Capsule height to set during a climb.")]
        [Range(0, 10)]
        public float CapsuleHeight;

        /// <summary>
        /// Moment in climbing animation to turn the character gravity on.
        /// </summary>
        [Tooltip("Moment in climbing animation to turn the character gravity on.")]
        [Range(0, 1)]
        public float FallTime;

        /// <summary>
        /// Scale of movement done by the climbing animation in Y axis. The animation usually assumed a 1 meter high obstacle.
        /// </summary>
        [Tooltip("Scale of movement in Y axis. The animation usually assumed a 1 meter high obstacle.")]
        [Range(0, 3)]
        public float VerticalScale;

        /// <summary>
        /// Scale of movement done by the climbing animation in X and Z axes.
        /// </summary>
        [Tooltip("Scale of movement done by the climbing animation in X and Z axes.")]
        [Range(0, 3)]
        public float HorizontalScale;

        /// <summary>
        /// Moment in the climbing animation to turn off the capsule collider.
        /// </summary>
        [Tooltip("Moment in the climbing animation to turn off the capsule collider.")]
        [Range(0, 1)]
        public float ClimbCollisionOff;

        /// <summary>
        /// Moment in the climbing animation to turn back on the capsule collider.
        /// </summary>
        [Tooltip("Moment in the climbing animation to turn back on the capsule collider.")]
        [Range(0, 1)]
        public float ClimbCollisionOn;

        /// <summary>
        /// Moment in the climbing animation to turn off the capsule collider.
        /// </summary>
        [Tooltip("Moment in the climbing animation to turn off the capsule collider.")]
        [Range(0, 1)]
        public float VaultCollisionOff;

        /// <summary>
        /// Moment in the climbing animation to turn back on the capsule collider.
        /// </summary>
        [Tooltip("Moment in the climbing animation to turn back on the capsule collider.")]
        [Range(0, 1)]
        public float VaultCollisionOn;

        /// <summary>
        /// Default character climbing settings.
        /// </summary>

        public static ClimbSettings Default()
        {
            var settings = new ClimbSettings();
            settings.CapsuleHeight = 1.5f;
            settings.FallTime = 0.55f;
            settings.VerticalScale = 0.9f;
            settings.HorizontalScale = 2;
            settings.ClimbCollisionOff = 0.5f;
            settings.ClimbCollisionOn = 1.0f;
            settings.VaultCollisionOff = 0.0f;
            settings.VaultCollisionOn = 0.0f;

            return settings;
        }
    }
}