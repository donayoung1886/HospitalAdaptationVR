using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test2 : OVRGrabbable
{
    

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        Debug.Log(isGrabbed);
    }

    public void OnTriggerEnter(Collider col)
    {
        /*
        if (col.gameObject.tag == "cube")
        {
            //gameObject.GetComponent<Renderer>().material.color = Color.green;
            GetComponent<Renderer>().material.color = Color.green;
        }*/

        
         Debug.Log("check!");
         GetComponent<Renderer>().material.color = Color.green;
        
    }
}
