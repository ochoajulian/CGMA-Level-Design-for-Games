using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }
    public float xAngle, yAngle, zAngle;
    // Update is called once per frame
    void Update()
    {
        transform.Rotate(xAngle, yAngle*Time.deltaTime, zAngle, Space.World);
    }
}
