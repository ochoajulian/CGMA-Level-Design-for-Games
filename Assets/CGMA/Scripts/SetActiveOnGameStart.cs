using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetActiveOnGameStart : MonoBehaviour {

	public bool ActiveOnStart = true;

	// Use this for initialization
	void Start () {
		this.gameObject.SetActive(ActiveOnStart);
	}
}
