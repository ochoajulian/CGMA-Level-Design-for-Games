using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Generates alerts on various gun events.
    /// </summary>
    public class GunAlerts : MonoBehaviour
    {
        /// <summary>
        /// Distance at which fire can be heard. Alert is not generated if value is zero or negative.
        /// </summary>
        [Tooltip("Distance at which fire can be heard. Alert is not generated if value is zero or negative.")]
        public float Fire = 20;

        /// <summary>
        /// Distance at which reloads can be heard. Alert is not generated if value is zero or negative.
        /// </summary>
        [Tooltip("Distance at which reloads can be heard. Alert is not generated if value is zero or negative.")]
        public float Reload = 10;

        private UpdatedAlert _fire;
        private UpdatedAlert _reload;

        private void LateUpdate()
        {
            _fire.Update();
            _reload.Update();
        }

        private void OnDisable()
        {
            _fire.Kill();
            _reload.Kill();
        }

        /// <summary>
        /// Generates a land alert.
        /// </summary>
        public void OnFire()
        {
            _fire.Start(transform.position, Fire);
        }

        /// <summary>
        /// Generates a hurt alert.
        /// </summary>
        public void OnReloadStart()
        {
            _reload.Start(transform.position, Reload);
        }
    }
}
