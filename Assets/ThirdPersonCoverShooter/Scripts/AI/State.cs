using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Name of the current AI state.
    /// </summary>
    enum AIState
    {
        none,
        patrol,
        patrolPause,
        takeCover,
        fireInCover,
        hideInCover,
        reloadInCover,
        investigate,
        approach,
        retreat,
        avoidGrenade
    }
}
