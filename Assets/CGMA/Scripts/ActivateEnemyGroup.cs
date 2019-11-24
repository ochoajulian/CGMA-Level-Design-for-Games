using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateEnemyGroup : MonoBehaviour {

	public bool Activate = true;
	public GameObject EnemyGroup;

	void OnTriggerEnter () {
		EnemyGroup.SetActive(Activate);
	}
}
