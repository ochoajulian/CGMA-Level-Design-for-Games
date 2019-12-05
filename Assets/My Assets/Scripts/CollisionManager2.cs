using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollisionManager2 : MonoBehaviour
{
    public bool enter = false;
    public Renderer rend;


    // Start is called before the first frame update
    void Start()
    {
        rend = GetComponent<Renderer>();
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.name == "Player")
        {
            enter = true;

            //rend.enabled = false;
        }

    }

    private void OnTriggerExit(Collider other)
    {
        if (other.name == "Player")
        {
            enter = false;

            //rend.enabled = false;
        }
    }
}
