using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Maintains character health.
    /// </summary>
    public class CharacterHealth : MonoBehaviour
    {
        /// <summary>
        /// Current health of the character.
        /// </summary>
        [Tooltip("Current health of the character.")]
        public float Health = 100f;

        /// <summary>
        /// Max health to regenerate to.
        /// </summary>
        [Tooltip("Max health to regenerate to.")]
        public float MaxHealth = 100f;

        /// <summary>
        /// Amount of health regenerated per second.
        /// </summary>
        [Tooltip("Amount of health regenerated per second.")]
        public float Regeneration = 0f;

        /// <summary>
        /// Are bullet hits done to the main collider registered as damage.
        /// </summary>
        [Tooltip("Are bullet hits done to the main collider registered as damage.")]
        public bool IsRegisteringHits = true;

        private void OnValidate()
        {
            Health = Mathf.Max(0, Health);
            MaxHealth = Mathf.Max(0, MaxHealth);
        }

        private void LateUpdate()
        {
            Health = Mathf.Clamp(Health + Regeneration * Time.deltaTime, 0, MaxHealth);
        }

        /// <summary>
        /// Reduce health on bullet hit.
        /// </summary>
        public void OnHit(Hit hit)
        {
            Deal(hit.Damage);
        }

        /// <summary>
        /// Deals a specific amount of damage.
        /// </summary>
        public void Deal(float amount)
        {
            if (Health <= 0)
                return;

            Health -= amount;

            if (Health <= 0)
                SendMessage("OnDead");
        }
    }
}