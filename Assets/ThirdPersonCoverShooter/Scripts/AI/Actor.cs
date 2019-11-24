using System.Collections.Generic;
using UnityEngine;

namespace CoverShooter
{
    [RequireComponent(typeof(Collider))]
    public class Actor : MonoBehaviour
    {
        /// <summary>
        /// Is the object alive.
        /// </summary>
        public bool IsAlive
        {
            get { return _isAlive; }
        }

        /// <summary>
        /// Cover the threat is hiding behind. Null if there isn't any.
        /// </summary>
        public Cover Cover
        {
            get { return _cover; }
        }

        /// <summary>
        /// Top position when the actor is standing.
        /// </summary>
        public Vector3 StandingTopPosition
        {
            get
            {
                if (_hasStandingHeight)
                    return transform.position + Vector3.up * _standingHeight;
                else
                    return _topPosition;
            }
        }

        public Vector3 TopPosition
        {
            get { return _topPosition; }
        }

        /// <summary>
        /// Collider attached to the object.
        /// </summary>
        public Collider Collider
        {
            get { return _collider; }
        }

        /// <summary>
        /// AI component attached to the object. Can be null.
        /// </summary>
        public AIController AI
        {
            get { return _ai; }
        }

        /// <summary>
        /// Team number used by the AI.
        /// </summary>
        [Tooltip("Team number used by the AI.")]
        public int Side = 0;

        /// <summary>
        /// Is the threat actively attacking.
        /// </summary>
        [Tooltip("Is the threat actively attacking.")]
        public bool IsAttacking = false;

        private bool _isAlive = true;
        private Cover _cover;
        private bool _hasStandingHeight;
        private float _standingHeight;
        private Vector3 _topPosition;
        private Collider _collider;
        private AIController _ai;

        /// <summary>
        /// Notify the component of the standing height (used when in cover).
        /// </summary>
        public void OnStandingHeight(float value)
        {
            _hasStandingHeight = true;
            _standingHeight = value;
        }

        public void OnDead()
        {
            _isAlive = false;
            Actors.Unregister(this);
        }

        /// <summary>
        /// Tell the threat to mark itself as being behind the given cover.
        /// </summary>
        public void OnEnterCover(Cover cover)
        {
            _cover = cover;
        }

        /// <summary>
        /// Tell the threat to mark itself as out of cover.
        /// </summary>
        public void OnLeaveCover()
        {
            _cover = null;
        }

        private void Update()
        {
            _topPosition = transform.position;
            _topPosition.y = _collider.bounds.max.y;
        }

        private void Awake()
        {
            _collider = GetComponent<Collider>();
            _ai = GetComponent<AIController>();

            _topPosition = transform.position;
            _topPosition.y = _collider.bounds.max.y;
        }

        private void OnEnable()
        {
            Actors.Register(this);
        }

        private void OnDisable()
        {
            Actors.Unregister(this);
        }

        private void OnDestroy()
        {
            Actors.Unregister(this);
        }
    }

    public static class Actors
    {
        public static IEnumerable<Actor> All
        {
            get { return _list; }
        }

        private static List<Actor> _list = new List<Actor>();

        public static void Register(Actor actor)
        {
            if (!_list.Contains(actor))
                _list.Add(actor);
        }

        public static void Unregister(Actor actor)
        {
            if (_list.Contains(actor))
                _list.Remove(actor);
        }
    }
}
