using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class collision_test : OVRGrabbable
{
    public string SceneName;

    void Start () {
        
    }
	
	// Update is called once per frame
	void Update () {
    }

    public void OnTriggerEnter(Collider col)
    {

        if (isGrabbed) { 
            Debug.Log("check!");
            SceneManager.LoadScene(SceneName);
        }
    }
}
