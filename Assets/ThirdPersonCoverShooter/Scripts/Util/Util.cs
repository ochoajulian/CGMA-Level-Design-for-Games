using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Utility functions.
    /// </summary>
    public sealed class Util
    {
       /// <summary>
       /// Is the given target object is inside the parent hierarchy.
       /// </summary>
        public static bool InHiearchyOf(GameObject target, GameObject parent)
        {
            var obj = target;

            while (obj != null)
            {
                if (obj == parent)
                    return true;

                if (obj.transform.parent != null)
                    obj = obj.transform.parent.gameObject;
                else
                    obj = null;
            }

            return false;
        }

        /// <summary>
        /// Delta of a point on AB line closest to the given point.
        /// </summary>
        public static float FindDeltaPath(Vector3 a, Vector3 b, Vector3 point)
        {
            Vector3 ap = point - a;
            Vector3 ab = b - a;
            float ab2 = ab.x * ab.x + +ab.z * ab.z;
            float ap_ab = ap.x * ab.x + ap.z * ab.z;
            float t = ap_ab / ab2;

            return t;
        }

        /// <summary>
        /// Position of a point on AB line closest to the given .point.
        /// </summary>
        public static Vector3 FindClosestToPath(Vector3 a, Vector3 b, Vector3 point)
        {
            Vector3 ap = point - a;
            Vector3 ab = b - a;
            float ab2 = ab.x * ab.x + +ab.z * ab.z;
            float ap_ab = ap.x * ab.x + ap.z * ab.z;
            float t = ap_ab / ab2;

            return a + ab * Mathf.Clamp01(t);
        }

        /// <summary>
        /// Calculates horizontal angle of the given vector.
        /// </summary>
        public static float AngleOfVector(Vector3 vector)
        {
            var v = new Vector2(vector.z, vector.x);

            if (v.sqrMagnitude > 0.01f)
                v.Normalize();

            var sign = (v.y < 0) ? -1.0f : 1.0f;
            return Vector2.Angle(Vector2.right, v) * sign;
        }

        /// <summary>
        /// An utility function to calculate a distance between a point and a segment.
        /// </summary>
        public static float DistanceToSegment(Vector3 point, Vector3 p0, Vector3 p1)
        {
            var lengthSqr = (p1 - p0).sqrMagnitude;
            if (lengthSqr <= float.Epsilon) return Vector3.Distance(point, p0);

            var t = Mathf.Clamp01(((point.x - p0.x) * (p1.x - p0.x) +
                                   (point.y - p0.y) * (p1.y - p0.y) +
                                   (point.z - p0.z) * (p1.z - p0.z)) / lengthSqr);

            return Vector3.Distance(point, p0 + (p1 - p0) * t);
        }
    }
}