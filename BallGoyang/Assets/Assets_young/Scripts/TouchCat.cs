using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TouchCat : MonoBehaviour
{

    //float h, v;
    private Animator aniCat;

    // Start is called before the first frame update
    void Start()
    {
        aniCat = GetComponent<Animator>();
        Debug.Log("start");
    }

    // Update is called once per frame
    void Update()
    {
        Debug.Log("update");
    }

    private void OnTriggerEnter(Collider col)
    {
        if(col.tag == "Cat"){
            Debug.Log("고양이와 닿았다!");
            aniCat.SetTrigger("C_massage");
        }
            
    }
}


