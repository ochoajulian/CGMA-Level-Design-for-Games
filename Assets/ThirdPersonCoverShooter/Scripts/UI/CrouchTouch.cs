﻿using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace CoverShooter
{
    /// <summary>
    /// Toggles character's crouching when touched.
    /// </summary>
    public class CrouchTouch : Text, IPointerDownHandler
    {
        /// <summary>
        /// Link to the mobile controller that will be set to crouch.
        /// </summary>
        [Tooltip("Link to the mobile controller that will be set to crouch.")]
        public MobileController Controller;

        private RectTransform _rect;

        protected override void Awake()
        {
            _rect = GetComponent<RectTransform>();
        }

        private void LateUpdate()
        {
            if (Controller == null)
                return;

            var viewport = Camera.main.WorldToViewportPoint(Controller.transform.position);
            _rect.localPosition = new Vector3(0, 0, _rect.localPosition.z);
            _rect.anchorMin = viewport;
            _rect.anchorMax = viewport;
        }

        public void OnPointerDown(PointerEventData data)
        {
            if (Controller != null)
                Controller.IsCrouching = !Controller.IsCrouching;
        }
    }
}