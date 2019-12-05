using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CoinCollectpoints : MonoBehaviour
{

    public GameObject scoreText;
    public int theScore;


    void Update()
    {
        
        scoreText.GetComponent<Text>().text = "Coins: " + theScore;
    }


}
