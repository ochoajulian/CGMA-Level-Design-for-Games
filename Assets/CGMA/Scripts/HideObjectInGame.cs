using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HideObjectInGame : MonoBehaviour {

	public bool HideObjectInGameView = true;

	// Use this for initialization
	void Start () {
		if (HideObjectInGameView) {
			Destroy (this.GetComponent ("MeshRenderer"));
		}
	}
}
