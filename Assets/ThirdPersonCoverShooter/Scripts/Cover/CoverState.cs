using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Cover state held by a CharacterMotor.
    /// </summary>
    public struct CoverState
    {
        /// <summary>
        /// Is the character currently in cover.
        /// </summary>
        public bool In
        {
            get { return Main != null; }
        }

        /// <summary>
        /// Is current cover tall.
        /// </summary>
        public bool IsTall
        {
            get { return Main != null && Main.IsTall(Observer.y, ObserverTallThreshold); }
        }

        /// <summary>
        /// Angle between the main cover and the left adjacent cover.
        /// </summary>
        public float LeftAdjacentAngle
        {
            get
            {
                if (Main == null || LeftAdjacent == null)
                    return 0;

                return Mathf.DeltaAngle(LeftAdjacent.Angle, Main.Angle);
            }
        }

        /// <summary>
        /// Angle between the main cover and the right adjacent cover.
        /// </summary>
        public float RightAngleDiff
        {
            get
            {
                if (Main == null || RightAdjacent == null)
                    return 0;

                return Mathf.DeltaAngle(Main.Angle, RightAdjacent.Angle);
            }
        }

        /// <summary>
        /// Is the character currently facing left of the cover.
        /// </summary>
        public bool IsStandingLeft
        {
            get
            {
                return Mathf.DeltaAngle(MovementAngle, ForwardAngle) > 0;
            }
        }

        /// <summary>
        /// Is the character currently facing right of the cover.
        /// </summary>
        public bool IsStandingRight
        {
            get
            {
                return Mathf.DeltaAngle(MovementAngle, ForwardAngle) < 0;
            }
        }

        /// <summary>
        /// Width of the currently held cover object.
        /// </summary>
        public float Width
        {
            get
            {
                if (Main == null)
                    return 0;
                else
                    return Main.Width;
            }
        }

        /// <summary>
        /// Degrees in world space of the direction going away from the character towards the cover.
        /// </summary>
        public float ForwardAngle
        {
            get
            {
                if (Main == null)
                    return 0;
                else
                    return Main.Angle;
            }
        }

        /// <summary>
        /// Degrees in world space of the direction the character would take if walking forward.
        /// </summary>
        public float MovementAngle
        {
            get { return ForwardAngle + 90 * Direction; }
        }

        /// <summary>
        /// Degrees in world space of the direction the character is currently facing. 
        /// For tall covers it points away from the cover.
        /// </summary>
        public float FaceAngle
        {
            get
            {
                if (IsTall)
                    return ForwardAngle + Mathf.DeltaAngle(ForwardAngle, ForwardAngle + 180);
                else
                    return ForwardAngle + 90 * Direction;
            }
        }

        /// <summary>
        /// Direction from the character towards the cover.
        /// </summary>
        public Vector3 ForwardDirection
        {
            get
            {
                if (Main == null)
                    return Vector3.zero;
                else
                    return Main.Forward;
            }
        }

        /// <summary>
        /// Is there a cover adjacent to the left of the current cover.
        /// </summary>
        public bool HasLeftAdjacent
        {
            get { return LeftAdjacent != null; }
        }

        /// <summary>
        /// Is there a cover adjacent to the right of the current cover.
        /// </summary>
        public bool HasRightAdjacent
        {
            get { return RightAdjacent != null; }
        }

        /// <summary>
        /// Is the left adjacent cover tall.
        /// </summary>
        public bool IsLeftAdjacentTall
        {
            get
            {
                if (LeftAdjacent == null)
                    return false;
                else
                    return (LeftAdjacent.Top - Observer.y) >= TallThreshold;
            }
        }

        /// <summary>
        /// Is the right adjacent cover tall.
        /// </summary>
        public bool IsRightAdjacentTall
        {
            get
            {
                if (RightAdjacent == null)
                    return false;
                else
                    return (RightAdjacent.Top - Observer.y) >= TallThreshold;
            }
        }

        /// <summary>
        /// Is there a corner on the left of the cover the character can use.
        /// </summary>
        public bool HasLeftCorner
        {
            get
            {
                if (Main == null || !Main.OpenLeft)
                    return false;

                return LeftAdjacent == null || (IsTall && !IsLeftAdjacentTall);
            }
        }

        /// <summary>
        /// Is there a corner on the right of the cover the character can use.
        /// </summary>
        public bool HasRightCorner
        {
            get
            {
                if (Main == null || !Main.OpenRight)
                    return false;

                return RightAdjacent == null || (IsTall && !IsRightAdjacentTall);
            }
        }

        /// <summary>
        /// Minimal height of a cover for it to be marked as tall.
        /// </summary>
        public const float TallThreshold = 1.1f;

        /// <summary>
        /// Cover component of the currently used cover object.
        /// </summary>
        public Cover Main;

        /// <summary>
        /// Cover adjacent to the main cover. Only covers within a certain distance are marked as adjacent.
        /// </summary>
        public Cover LeftAdjacent;

        /// <summary>
        /// Cover adjacent to the main cover. Only covers within a certain distance are marked as adjacent.
        /// </summary>
        public Cover RightAdjacent;

        /// <summary>
        /// Position of the CharacterMotor.
        /// </summary>
        public Vector3 Observer;

        /// <summary>
        /// Height threshold defined by the CharacterMotor for a cover to be considered tall.
        /// </summary>
        public float ObserverTallThreshold;

        /// <summary>
        /// Time in seconds since the Main cover was changed.
        /// </summary>
        public float MainChangeAge;

        /// <summary>
        /// Currently held face direction. -1 equals left, 1 equals right.
        /// </summary>
        public int Direction;

        /// <summary>
        /// Takes cover based on the given search.
        /// </summary>
        /// <param name="search">Cover search.</param>
        /// <param name="observer">Position of the character.</param>
        /// <returns>Was the cover taken.</returns>
        public bool Take(CoverSearch search, Vector3 observer, float tallThreshold)
        {
            Observer = observer;
            ObserverTallThreshold = tallThreshold;

            var wasIn = In;
            var closest = search.FindClosest();
            var previousMain = Main;

            if (Main == null && closest != null)
            {
                Main = closest;
                LeftAdjacent = Main.LeftAdjacent;
                RightAdjacent = Main.RightAdjacent;
            }
            else
                Clear();

            if (Main != previousMain)
                MainChangeAge = 0;

            if (In && !wasIn)
                return true;
            else
                return false;
        }

        /// <summary>
        /// Takes cover based on the given search only if it was already adjacent to the previously held cover.
        /// </summary>
        /// <param name="search">Cover search.</param>
        /// <param name="observer">Position of the character.</param>
        public void Maintain(CoverSearch search, Vector3 observer, float tallThreshold)
        {
            Observer = observer;
            ObserverTallThreshold = tallThreshold;

            var closest = search.FindClosest();
            var previousMain = Main;

            if (Main != null && Main != closest)
            {
                if (closest != null)
                {
                    if (closest == LeftAdjacent)
                    {
                        StandLeft();
                        Main = closest;
                    }
                    else if (closest == RightAdjacent)
                    {
                        StandRight();
                        Main = closest;
                    }
                    else
                        Main = null;
                }
                else
                    Main = null;
            }

            if (Main != null)
            {
                LeftAdjacent = Main.LeftAdjacent;
                RightAdjacent = Main.RightAdjacent;
            }
            else
            {
                LeftAdjacent = null;
                RightAdjacent = null;
            }

            if (Main != previousMain)
                MainChangeAge = 0;
        }

        /// <summary>
        /// Exits the cover.
        /// </summary>
        public void Clear()
        {
            Main = null;
            LeftAdjacent = null;
            RightAdjacent = null;
            MainChangeAge = 0;
        }

        /// <summary>
        /// Sets the facing direction to right.
        /// </summary>
        public void StandRight()
        {
            Direction = 1;
        }

        /// <summary>
        /// Sets the facing direction to left.
        /// </summary>
        public void StandLeft()
        {
            Direction = -1;
        }

        /// <summary>
        /// Update timers.
        /// </summary>
        public void Update()
        {
            MainChangeAge += Time.deltaTime;
        }

        /// <summary>
        /// Change current cover to the left adjacent cover.
        /// </summary>
        public void MoveToLeftAdjacent()
        {
            RightAdjacent = Main;
            Main = LeftAdjacent;
            LeftAdjacent = null;
        }

        /// <summary>
        /// Change current cover to the right adjacent cover.
        /// </summary>
        public void MoveToRightAdjacent()
        {
            LeftAdjacent = Main;
            Main = RightAdjacent;
            RightAdjacent = null;
        }

        /// <summary>
        /// Returns true if a given angle is pointing towards the front of the cover.
        /// </summary>
        public bool IsFront(float angle, SideAngles angles)
        {
            if (IsLeft(angle))
                return IsFront(angle, angles.Left);
            else
                return IsFront(angle, angles.Right);
        }

        /// <summary>
        /// Returns true if a given angle is pointing towards the front of the cover.
        /// </summary>
        /// <param name="angle">Degrees in world space.</param>
        public bool IsFront(float angle, TriggerAngles angles, bool state)
        {
            if (state)
                return IsFront(angle, angles.Exit);
            else
                return IsFront(angle, angles.Enter);
        }

        /// <summary>
        /// Returns true if a given angle is pointing towards the front of the cover.
        /// </summary>
        /// <param name="angle">Degrees in world space.</param>
        public bool IsFront(float angle, FaceAngles angles)
        {
            if (Direction < 0)
            {
                if (IsLeft(angle))
                    return IsFront(angle, angles.Face);
                else
                    return IsFront(angle, angles.Opposite);
            }
            else
            {
                if (IsRight(angle))
                    return IsFront(angle, angles.Face);
                else
                    return IsFront(angle, angles.Opposite);
            }
        }

        /// <summary>
        /// Returns true if a given angle is pointing towards the front of the cover.
        /// </summary>
        /// <param name="angle">Degrees in world space.</param>
        /// <param name="field">Field of the front. 180 equals half a circle.</param>
        public bool IsFrontField(float angle, float field)
        {
            return IsFront(angle, (180 - field) / 2);
        }

        /// <summary>
        /// Returns true if a given angle is pointing towards the front of the cover.
        /// </summary>
        /// <param name="angle">Degrees in world space.</param>
        /// <param name="margin">Reduction in each side of the front arc of the cover.</param>
        public bool IsFront(float angle, float margin = 0)
        {
            float delta = Mathf.DeltaAngle(angle, ForwardAngle);

            return delta >= (-90 + margin) && delta <= (90 - margin);
        }

        /// <summary>
        /// Returns true if a given angle is pointing backwards from the cover.
        /// </summary>
        /// <param name="angle">Degrees in world space.</param>
        /// <param name="margin">Reduction in each side of the back arc of the cover.</param>
        public bool IsBack(float angle, float margin = 0)
        {
            float delta = Mathf.DeltaAngle(angle, ForwardAngle);

            return delta <= (-90 - margin) || delta >= (90 + margin);
        }

        /// <summary>
        /// Returns true if a given angle is pointing left of the cover.
        /// </summary>
        public bool IsLeft(float angle, float margin = 0)
        {
            float delta = Mathf.DeltaAngle(angle, ForwardAngle);

            return delta >= margin && delta <= (180 - margin);
        }

        /// <summary>
        /// Returns true if a given angle is pointing left of the cover.
        /// </summary>
        public bool IsLeft(float angle, TriggerAngles angles, bool state)
        {
            return IsLeft(angle, state ? angles.Exit : angles.Enter);
        }

        /// <summary>
        /// Returns true if a given angle is pointing left of the cover.
        /// </summary>
        public bool IsLeftField(float angle, float field)
        {
            return IsLeft(angle, (180 - field) / 2);
        }

        /// <summary>
        /// Returns true if a given angle is pointing right of the cover.
        /// </summary>
        public bool IsRight(float angle, float margin = 0)
        {
            float delta = Mathf.DeltaAngle(angle, ForwardAngle);

            return delta >= (-180 + margin) && delta <= -margin;
        }

        /// <summary>
        /// Returns true if a given angle is pointing right of the cover.
        /// </summary>
        public bool IsRight(float angle, TriggerAngles angles, bool state)
        {
            return IsRight(angle, state ? angles.Exit : angles.Enter);
        }

        /// <summary>
        /// Returns true if a given angle is pointing right of the cover.
        /// </summary>
        public bool IsRightField(float angle, float field)
        {
            return IsRight(angle, (180 - field) / 2);
        }

        /// <summary>
        /// Returns position of the left corner moved away from the cover by given margin.
        /// </summary>
        public Vector3 LeftSide(float margin)
        {
            if (Main == null)
                return new Vector3(0, 999999, 0);
            else
                return Main.LeftCorner(Observer.y, margin);
        }

        /// <summary>
        /// Returns position of the right corner moved away from the cover by given margin.
        /// </summary>
        public Vector3 RightSide(float margin)
        {
            if (Main == null)
                return new Vector3(0, 999999, 0);
            else
                return Main.RightCorner(Observer.y, margin);
        }

        /// <summary>
        /// Returns true if the given position is closer to the left corner than the given margin.
        /// </summary>
        public bool IsByLeftCorner(Vector3 position, float margin)
        {
            if (Main == null)
                return false;
            else
                return Main.IsByLeftCorner(position, margin);
        }

        /// <summary>
        /// Returns true if the given position is closer to the right corner than the given margin.
        /// </summary>
        public bool IsByRightCorner(Vector3 position, float margin)
        {
            if (Main == null)
                return false;
            else
                return Main.IsByRightCorner(position, margin);
        }
    }
}