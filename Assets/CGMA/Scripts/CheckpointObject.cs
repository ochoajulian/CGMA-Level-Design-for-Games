using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckpointObject : MonoBehaviour {

	private static bool created = false;

	// Use this for initialization
	void Awake () {
		if (!created) {
			DontDestroyOnLoad (this.gameObject);
			created = true;
		} else {
			DestroyObject (gameObject);
		}
			
	}
}
