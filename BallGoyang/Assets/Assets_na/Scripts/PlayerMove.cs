using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    public int playerSpeed = 1;
    public float positionX;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            //Debug.Log("click");
            positionX = transform.position.x + Camera.main.transform.forward.x * playerSpeed *
             Time.deltaTime;
            transform.position = new Vector3(positionX, transform.position.y, transform.position.z);
                    }
    }
}


