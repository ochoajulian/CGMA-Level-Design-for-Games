using System.Collections.Generic;
using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Information about a target and AI assigned to it.
    /// </summary>
    class AIGroupTarget
    {
        public Actor Target;
        public List<AssignedAI> Assignees = new List<AssignedAI>();

        public AIGroupTarget(Actor target)
        {
            Target = target;
        }

        /// <summary>
        /// Adds an ai to the assignee list. Removes other AI if they are further away and the list has reached the max.
        /// </summary>
        public void CheckIn(AIController ai, int max)
        {
            if (max <= 0)
            {
                Assignees.Clear();
                return;
            }

            var distance = Vector3.Distance(ai.transform.position, Target.transform.position);

            while (Assignees.Count >= max)
            {
                if (Assignees[Assignees.Count - 1].Distance > distance)
                    Assignees.RemoveAt(Assignees.Count - 1);
                else
                    return;
            }

            Assignees.Add(new AssignedAI(ai, distance));
        }
    }

    struct AssignedAI
    {
        public AIController AI;
        public float Distance;

        public AssignedAI(AIController ai, float distance)
        {
            AI = ai;
            Distance = distance;
        }
    }

    public class AIGroup : MonoBehaviour
    {
        /// <summary>
        /// Returns a list of all registered AI members.
        /// </summary>
        public IEnumerable<AIController> Members
        {
            get { return _list; }
        }

        /// <summary>
        /// Returns a list of all aggressive AI members.
        /// </summary>
        public IEnumerable<AIController> Aggressive
        {
            get { return _aggressive; }
        }

        /// <summary>
        /// Maximum number of aggressive attackers allowed at the same time.
        /// </summary>
        [Tooltip("Maximum number of aggressive attackers allowed at the same time.")]
        public int MaxAggressive = 2;

        private List<AIController> _list = new List<AIController>();
        private List<AIController> _aggressive = new List<AIController>();
        private List<AIController> _potentialAggressive = new List<AIController>();
        private Dictionary<Actor, AIGroupTarget> _targets = new Dictionary<Actor, AIGroupTarget>();
        private List<Actor> _targetsToRemove = new List<Actor>();

        private void LateUpdate()
        {
            foreach (var target in _targets.Values)
                target.Assignees.Clear();

            _aggressive.Clear();

            foreach (var ai in _potentialAggressive)
            {
                var enemy = ai.Situation.Threat;

                if (enemy != null)
                {
                    if (!_targets.ContainsKey(enemy))
                        _targets[enemy] = new AIGroupTarget(enemy);

                    _targets[enemy].CheckIn(ai, MaxAggressive);
                }
            }

            foreach (var target in _targets.Values)
            {
                if (target.Assignees.Count == 0)
                    _targetsToRemove.Add(target.Target);
                else
                    foreach (var assignee in target.Assignees)
                        _aggressive.Add(assignee.AI);
            }

            foreach (var target in _targetsToRemove)
                _targets.Remove(target);

            _targetsToRemove.Clear();
            _potentialAggressive.Clear();
        }

        public bool IsAggressive(AIController ai)
        {
            return _aggressive.Contains(ai);
        }

        /// <summary>
        /// Tell the group that the AI wants to be aggressive the next frame.
        /// </summary>
        public void MarkAsPotentialAggressive(AIController ai)
        {
            if (!_potentialAggressive.Contains(ai))
                _potentialAggressive.Add(ai);
        }

        /// <summary>
        /// Registers an AI as part of the group.
        /// </summary>
        public void Register(AIController ai)
        {
            if (!_list.Contains(ai))
                _list.Add(ai);
        }

        /// <summary>
        /// Removes the AI from the registered group.
        /// </summary>
        public void Unregister(AIController ai)
        {
            if (_list.Contains(ai))
                _list.Remove(ai);
        }
    }
}
