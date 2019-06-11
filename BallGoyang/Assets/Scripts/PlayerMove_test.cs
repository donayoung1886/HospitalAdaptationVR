using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VR;

public class PlayerMove_test : MonoBehaviour
{
    public Transform player;
    public Transform leftHand;
    public Transform rightHand;
    public int playerSpeed = 1;
    public float positionX;

    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("START");
    }

    // Update is called once per frame
    void Update()
    {
       if(OVRInput.GetDown(OVRInput.Button.PrimaryThumbstickUp))
        {
            Debug.Log("ThumbstickUP");
            //positionX = transform.position.x + Camera.main.transform.forward.x * playerSpeed * Time.deltaTime;
            positionX = player.position.x + playerSpeed*Time.deltaTime;
            transform.position = new Vector3(positionX, transform.position.y, transform.position.z);
            rightHand.position = leftHand.position = transform.position;
        }

        
       else if (OVRInput.GetDown(OVRInput.Button.PrimaryThumbstickDown))
        {
            Debug.Log("ThumbstickDown");
        }
        else if (OVRInput.GetDown(OVRInput.Button.PrimaryThumbstickLeft))
        {
            Debug.Log("ThumbstickLeft");
        }
        else if (OVRInput.GetDown(OVRInput.Button.PrimaryThumbstickRight))
        {
            Debug.Log("ThumbstickRight");
        }
    }
}


