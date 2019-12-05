using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class CoinCollect : MonoBehaviour
{

    public AudioSource collectSound;
    public CoinCollectpoints ccp;
    
    void OnTriggerEnter(Collider other)
    { if(other.gameObject.tag=="Player")
        {
            collectSound.Play();
            ccp.theScore++;   //= 1;
            Destroy(gameObject);
        }
        

    }


}
