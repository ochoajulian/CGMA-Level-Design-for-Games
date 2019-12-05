using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI_Manager : MonoBehaviour
{

    public GameObject triangle;
    public GameObject square;
    public GameObject pentagon;
    public GameObject circle;

    private CollisionManager tr;
    private CollisionManager sq;
    private CollisionManager pe;
    private CollisionManager ci;

    public Image triangle_img;
    public Image square_img;
    public Image pentagon_img;
    public Image circle_img;

    public Sprite triangle_spr;
    public Sprite square_spr;
    public Sprite pentagon_spr;
    public Sprite circle_spr;

    public Animator platformAnimator;
    
    //temple niches
    public GameObject triangleNiche;
    public GameObject pentagonNiche;
    public GameObject circleNiche;
    public GameObject squareNiche;

    private CollisionManager2 triangleNicheCol;
    private CollisionManager2 pentagonNicheCol;
    private CollisionManager2 circleNicheCol;
    private CollisionManager2 squareNicheCol;

    public GameObject triangleInNiche;
    public GameObject pentagonInNiche;
    public GameObject circleInNiche;
    public GameObject squareInNiche;

    //progress variables
    private bool squarePlaced = false;
    private bool circlePlaced = false;
    private bool pentagonPlaced = false;
    private bool trianglePlaced = false;

    public Text victoryText;


    // Start is called before the first frame update
    void Start()
    {
        tr = triangle.GetComponent<CollisionManager>();
        sq = square.GetComponent<CollisionManager>();
        pe = pentagon.GetComponent<CollisionManager>();
        ci = circle.GetComponent<CollisionManager>();

        triangleNicheCol = triangleNiche.GetComponent<CollisionManager2>();
        pentagonNicheCol = pentagonNiche.GetComponent<CollisionManager2>();
        circleNicheCol = circleNiche.GetComponent<CollisionManager2>();
        squareNicheCol = squareNiche.GetComponent<CollisionManager2>();
    }

    // Update is called once per frame
    void Update()
    {
        if (tr.enter){
            triangle_img.sprite = triangle_spr;
        }
        if (sq.enter){
            square_img.sprite = square_spr;
        }
        if (pe.enter){
            pentagon_img.sprite = pentagon_spr;
        }
        if (ci.enter){
           circle_img.sprite = circle_spr;
            platformAnimator.enabled = true;
        }
        
        //
        if (pentagon_img.sprite == pentagon_spr && pentagonNicheCol.enter) {
            pentagonInNiche.SetActive(true);
            pentagonPlaced = true;
        }
        if (square_img.sprite == square_spr && squareNicheCol.enter){
            squareInNiche.SetActive(true);
            squarePlaced = true;
        }
        if (triangle_img.sprite == triangle_spr && triangleNicheCol.enter){
            triangleInNiche.SetActive(true);
            trianglePlaced = true;
        }
        if (circle_img.sprite == circle_spr && circleNicheCol.enter){
            circleInNiche.SetActive(true);
            circlePlaced = true;
        }
        //
        if (pentagonPlaced && squarePlaced && trianglePlaced && circlePlaced) {
            victoryText.gameObject.SetActive(true);
        }

    }
}
