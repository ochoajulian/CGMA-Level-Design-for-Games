using System.Collections.Generic;
using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Identifies an object as a cover.
    /// </summary>
    [RequireComponent(typeof(BoxCollider))]
    public class Cover : MonoBehaviour
    {
        /// <summary>
        /// Returns all AI users of the cover.
        /// </summary>
        public IEnumerable<Actor> Users
        {
            get { return _users; }
        }

        /// <summary>
        /// Y coordinate of the cover top in world space.
        /// </summary>
        public float Top
        {
            get { return _collider.bounds.max.y; }
        }

        /// <summary>
        /// Y coordinate of the cover bottom in world space.
        /// </summary>
        public float Bottom
        {
            get { return _collider.bounds.min.y; }
        }

        /// <summary>
        /// Direction pointing towards the wall.
        /// </summary>
        public Vector3 Forward
        {
            get { return transform.forward; }
        }

        /// <summary>
        /// Direction pointing right from a character along the wall.
        /// </summary>
        public Vector3 Right
        {
            get { return transform.right; }
        }

        /// <summary>
        /// Direction pointing left from a character along the wall.
        /// </summary>
        public Vector3 Left
        {
            get { return -transform.right; }
        }

        /// <summary>
        /// Orientation of the cover in degrees in world space.
        /// </summary>
        public float Angle
        {
            get { return transform.eulerAngles.y; }
        }

        /// <summary>
        /// Width of the cover.
        /// </summary>
        public float Width
        {
            get { return _collider.size.x * transform.localScale.x; }
        }

        /// <summary>
        /// Cover to the left.
        /// </summary>
        public Cover LeftAdjacent
        {
            get { return _leftAdjacent; }
        }

        /// <summary>
        /// Cover to the right.
        /// </summary>
        public Cover RightAdjacent
        {
            get { return _rightAdjacent; }
        }

        /// <summary>
        /// Determines if the character will climb on a platform or vault over a cover.
        /// </summary>
        [Tooltip("Determines if the character will climb on a platform or vault over a cover.")]
        public bool IsVault = false;

        /// <summary>
        /// Can the character use the left corner of the cover.
        /// </summary>
        [Tooltip("Can the character use the left corner of the cover.")]
        public bool OpenLeft = true;

        /// <summary>
        /// Can the character use the rgiht corner of the cover.
        /// </summary>
        [Tooltip("Can the character use the rgiht corner of the cover.")]
        public bool OpenRight = true;

        /// <summary>
        /// Maximum allowed distance to adjacent covers.
        /// </summary>
        [Tooltip("Maximum allowed distance to adjacent covers.")]
        public float AdjacentDistance = 1;

        private Cover _leftAdjacent;
        private Cover _rightAdjacent;
        private BoxCollider _collider;
        private bool _hasLeftCorner;
        private bool _hasRightCorner;
        private bool _hasOrientation;
        private Vector3 _leftCorner;
        private Vector3 _rightCorner;
        private Quaternion _orientation;
        private Quaternion _negativeOrientation;
        private List<Actor> _users = new List<Actor>();

        private void Awake()
        {
            if (_collider == null)
                _collider = GetComponent<BoxCollider>();

            if (_leftAdjacent == null)
            {
                _leftAdjacent = findAdjacentTo(LeftCorner(Bottom), -120, 60, false);

                if (_leftAdjacent != null)
                    _leftAdjacent._rightAdjacent = this;
            }

            if (_rightAdjacent == null)
            {
                _rightAdjacent = findAdjacentTo(RightCorner(Bottom), -60, 120, true);
            
                if (_rightAdjacent != null)
                    _rightAdjacent._leftAdjacent = this;
            }
        }

        /// <summary>
        /// Find an adjacent cover.
        /// </summary>
        private Cover findAdjacentTo(Vector3 point, float minAngle, float maxAngle, bool useLeftCorner)
        {
            float closestDistance = 0f;
            Cover closestCover = null;

            foreach (var other in GameObject.FindObjectsOfType<Cover>())
                if (other != this)
                {
                    var closest = useLeftCorner ? other.LeftCorner(point.y) : other.RightCorner(point.y);
                    var distance = Vector3.Distance(point, closest);

                    if (distance > AdjacentDistance)
                        continue;

                    var closestAngle = other.Angle;
                    var deltaAngle = Mathf.DeltaAngle(Angle, closestAngle);

                    if (deltaAngle >= minAngle && deltaAngle <= maxAngle)
                        if (closestCover == null || distance < closestDistance)
                        {
                            closestCover = other;
                            closestDistance = distance;
                        }
                }

            return closestCover;
        }

        /// <summary>
        /// Adds an AI as a user to the cover.
        /// </summary>
        public void RegisterUser(Actor actor)
        {
            if (!_users.Contains(actor))
                _users.Add(actor);
        }

        /// <summary>
        /// Removes an AI from the cover users.
        /// </summary>
        public void UnregisterUser(Actor actor)
        {
            if (_users.Contains(actor))
                _users.Remove(actor);
        }

        /// <summary>
        /// Returns whether the cover is considered for an observer standing at the same level as the cover.
        /// </summary>
        public bool IsTall(float threshold)
        {
            return (Top - Bottom) > threshold;
        }

        /// <summary>
        /// Return whether the cover is considered for an observer with given y coordinate.
        /// </summary>
        public bool IsTall(float observer, float threshold)
        {
            return (Top - observer) > threshold;
        }

        /// <summary>
        /// Returns true if the given position is in front of the cover.
        /// </summary>
        /// <param name="isOld">Old positions use lesser thresholds.</param>
        public bool IsInFront(Vector3 observer, bool isOld)
        {
            var closest = ClosestPointTo(observer, 0, 0);
            var vector = (closest - observer).normalized;
            var dot = Vector3.Dot(vector, Forward);

            if (isOld)
                return dot >= 0.85f;
            else
                return dot >= 0.95f;
        }

        /// <summary>
        /// Returns the position of the left corner with the given height coordinate.
        /// </summary>
        public Vector3 LeftCorner(float height, float offset = 0)
        {
            var point = _leftCorner;

            if (!_hasLeftCorner)
            {
                _leftCorner = point = ClosestPointTo(transform.position + Left * 999, 0, 0);
                _hasLeftCorner = true;
            }

            point += Left * offset;
            point.y = height;
            return point;
        }

        /// <summary>
        /// Returns the position of the right corner with the given height coordinate.
        /// </summary>
        public Vector3 RightCorner(float height, float offset = 0)
        {
            var point = _rightCorner;

            if (!_hasRightCorner)
            {
                _rightCorner = point = ClosestPointTo(transform.position + Right * 999, 0, 0);
                _hasRightCorner = true;
            }

            point += Right * offset;
            point.y = height;
            return point;
        }

        /// <summary>
        /// Returns true if the given position is within the given distance of the left corner.
        /// </summary>
        public bool IsByLeftCorner(Vector3 position, float distance)
        {
            return Vector3.Distance(LeftCorner(position.y), position) <= distance;
        }

        /// <summary>
        /// Returns true if the given position is within the given distance of the right corner.
        /// </summary>
        public bool IsByRightCorner(Vector3 position, float distance)
        {
            return Vector3.Distance(RightCorner(position.y), position) <= distance;
        }

        /// <summary>
        /// Returns the closest corner useful for aiming.
        /// </summary>
        public int ClosestCornerTo(Vector3 point, float radius, out Vector3 position)
        {
            var left = LeftCorner(0, -radius);
            var right = RightCorner(0, -radius);

            var distLeft = Vector3.Distance(left, point);
            var distRight = Vector3.Distance(right, point);

            if (distLeft < distRight)
            {
                position = left;
                return -1;
            }
            else
            {
                position = right;
                return 1;
            }
        }

        /// <summary>
        /// Returns a position on a cover closest to the given point.
        /// </summary>
        public Vector3 ClosestPointTo(Vector3 point, float sideRadius, float frontRadius)
        {
            if (_collider == null)
                _collider = GetComponent<BoxCollider>();

            if (!_hasOrientation)
            {
                _orientation = Quaternion.Euler(0, -transform.eulerAngles.y, 0);
                _negativeOrientation = Quaternion.Euler(0, transform.eulerAngles.y, 0);
                _hasOrientation = true;
            }

            var hw = _collider.size.x * 0.5f * transform.localScale.x;
            var hh = _collider.size.z * 0.5f * transform.localScale.z;

            var local = _orientation * (point - transform.position);
            var left = new Vector3(-hw, local.y, -hh);
            var right = new Vector3(hw, local.y, -hh);
            var leftToRight = (right - left).normalized;
            left += leftToRight * sideRadius;
            right -= leftToRight * sideRadius;

            local = Util.FindClosestToPath(left, right, local);

            var result = _negativeOrientation * local + transform.position - Forward * frontRadius;

            return result;
        }
    }
}