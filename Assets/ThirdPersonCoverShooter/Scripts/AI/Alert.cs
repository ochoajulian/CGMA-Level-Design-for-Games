using System.Collections.Generic;
using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Generates alerts.
    /// </summary>
    public class Alert : MonoBehaviour
    {
        /// <summary>
        /// Range of the alert.
        /// </summary>
        [Tooltip("Range of the alert.")]
        public float Range = 20;

        /// <summary>
        /// Should the alert be activate when enabling the object.
        /// </summary>
        [Tooltip("Should the alert be activate when enabling the object.")]
        public bool AutoActivate = true;

        private UpdatedAlert _alert;

        /// <summary>
        /// Activates the alert and resets the timer.
        /// </summary>
        public void Activate()
        {
            _alert.Start(transform.position, Range);
        }

        /// <summary>
        /// Deactivates the alert.
        /// </summary>
        public void Deactivate()
        {
            _alert.Kill();
        }

        private void Update()
        {
            _alert.Update();
        }

        private void OnEnable()
        {
            if (AutoActivate)
                Activate();
        }

        private void OnDisable()
        {
            Deactivate();
        }
    }

    /// <summary>
    /// Used for inside objects.
    /// </summary>
    public struct UpdatedAlert
    {
        public bool IsGenerated;
        public int Frames;
        public int ID;

        /// <summary>
        /// Registers the alert and starts counting frames.
        /// </summary>
        public void Start(Vector3 position, float range)
        {
            if (!IsGenerated)
            {
                IsGenerated = true;
                ID = Alerts.Register(position, range);
            }

            Frames = 2;
        }

        /// <summary>
        /// Unregisters the alert.
        /// </summary>
        public void Kill()
        {
            if (IsGenerated)
            {
                Alerts.Unregister(ID);
                IsGenerated = false;
            }
        }

        /// <summary>
        /// Updates the alert. Kills few frames after starting.
        /// </summary>
        public void Update()
        {
            if (IsGenerated)
            {
                Frames--;

                if (Frames <= 0)
                    Kill();
            }
        }
    }

    public struct GeneratedAlert
    {
        /// <summary>
        /// Position of the alert.
        /// </summary>
        public Vector3 Position;

        /// <summary>
        /// Range of the alert.
        /// </summary>
        public float Range;

        public GeneratedAlert(Vector3 position, float range)
        {
            Position = position;
            Range = range;
        }
    }

    public static class Alerts
    {
        public static IEnumerable<GeneratedAlert> All
        {
            get { return _alerts.Values; }
        }

        private static Dictionary<int, GeneratedAlert> _alerts = new Dictionary<int, GeneratedAlert>();
        private static int _latest;

        /// <summary>
        /// Registers a new alert and returns its ID.
        /// </summary>
        public static int Register(Vector3 position, float range)
        {
            _alerts[++_latest] = new GeneratedAlert(position, range);
            return _latest;
        }

        /// <summary>
        /// Removes an alert with the given ID.
        /// </summary>
        public static void Unregister(int id)
        {
            if (_alerts.ContainsKey(id))
                _alerts.Remove(id);
        }
    }
}
