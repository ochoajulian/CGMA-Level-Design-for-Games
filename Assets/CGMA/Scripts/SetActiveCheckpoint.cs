using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetActiveCheckpoint : MonoBehaviour {

	//public GameObject CheckpointObject;
	public GameObject NewCheckpoint;
	//private Transform CPTransform;

	void OnTriggerEnter () {
		var cp = GameObject.Find ("CheckpointObject");
		if (cp != null) {
			cp.transform.position = NewCheckpoint.transform.position;
		}
	}
}
