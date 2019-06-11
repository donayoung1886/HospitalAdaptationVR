using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/* sphere(1)에 복사하고 싶은 sample sphere 만들고(배경만큼 크게) 새로 만드는 sphere position 재설정하기! */
public class createSphere : MonoBehaviour
{
    public GameObject player;
    public GameObject sphere;
    public GameObject sphere_old;
    public Vector3 playerPos;
    public Vector3 playerPos_old;

    // Use this for initialization
    void Start()
    {
       playerPos_old = player.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        playerPos = player.transform.position;
        Debug.Log(playerPos);
        
        //sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);

        if (playerPos_old!=playerPos) makeSphere(sphere);

        playerPos_old = playerPos;
        //sphere_old = sphere;
        //Destroy(sphere_old); // 
    }

    void makeSphere(GameObject sphere)
    {
        Instantiate(sphere, player.transform.position, player.transform.rotation);
    }
}