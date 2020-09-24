using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace CoverShooter
{
public class DeathCollider : MonoBehaviour
{
    public GameObject cowboy;
    CharacterEffects characterEffects;
    CharacterHealth characterHealth;

    // Start is called before the first frame update
    void Start()
    {
        characterEffects = cowboy.GetComponent<CharacterEffects>();
        characterHealth = cowboy.GetComponent<CharacterHealth>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        characterHealth.Deal(200f);
        characterEffects.OnDead();
    }
}
}
