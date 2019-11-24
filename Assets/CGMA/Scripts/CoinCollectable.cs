using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinCollectable : MonoBehaviour {

	void Start () {
		transform.Rotate (new Vector3 (0, Random.Range(0, 360), 0));
	}

	// Update is called once per frame
	void Update () {
		transform.Rotate (new Vector3 (0, 45, 0) * Time.deltaTime);
	}
}
