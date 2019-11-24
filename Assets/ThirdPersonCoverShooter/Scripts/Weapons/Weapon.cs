using System;
using UnityEngine;

namespace CoverShooter
{
    /// <summary>
    /// Description of a weapon held by a CharacterMotor. 
    /// </summary>
    [Serializable]
    public struct WeaponDescription
    {
        /// <summary>
        /// Link to the weapon object containg a Gun component.
        /// </summary>
        [Tooltip("Link to the weapon object containg a Gun component.")]
        public GameObject Item;

        /// <summary>
        /// Link to the holstered weapon object which is made visible when the weapon is not used.
        /// </summary>
        [Tooltip("Link to the holstered weapon object which is made visible when the weapon is not used.")]
        public GameObject Holster;

        /// <summary>
        /// Defines character animations used with this weapon.
        /// </summary>
        [Tooltip("Defines character animations used with this weapon.")]
        public WeaponType Type;

        /// <summary>
        /// Shortcut for getting the gun component of the Item.
        /// </summary>
        public Gun Gun
        {
            get
            {
                if (_cachedGunItem == Item)
                    return _cachedGun;
                else
                {
                    _cachedGunItem = Item;
                    _cachedGun = Item == null ? null : Item.GetComponent<Gun>();

                    return _cachedGun;
                }
            }
        }

        private Gun _cachedGun;
        private GameObject _cachedGunItem;
    }

    /// <summary>
    /// Defines character animations used with a weapon.
    /// </summary>
    public enum WeaponType
    {
        Pistol,
        Rifle
    }

    /// <summary>
    /// Defines a set of character animator states used with a weapon.
    /// </summary>
    public struct WeaponAnimationStates
    {
        /// <summary>
        /// Name of the reload animator state.
        /// </summary>
        public string Reload;

        /// <summary>
        /// Name of the melee hit animator state.
        /// </summary>
        public string Hit;

        /// <summary>
        /// Name of animator states when a weapon is in full use.
        /// </summary>
        public string[] Common;

        /// <summary>
        /// Name of equip animator state.
        /// </summary>
        public string Equip;

        /// <summary>
        /// Returns animator state names.
        /// </summary>
        public static WeaponAnimationStates Default()
        {
            var states = new WeaponAnimationStates();
            states.Reload = "Reload";
            states.Hit = "Hit";
            states.Equip = "Equip";
            states.Common = new string[] { "Idle", "Aim", "Cover", "Empty state", "Jump" };

            return states;
        }
    }
}