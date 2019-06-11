using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour
{
    //float h, v;
    private Animator aniCat;

    // Start is called before the first frame update
    void Start()
    {
        aniCat = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        //OnTriggerEnter();
    }

    private void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player")
        {
            Debug.Log("고양이와 닿았다!");
            aniCat.SetTrigger("C_massage");
        }

    }
}
