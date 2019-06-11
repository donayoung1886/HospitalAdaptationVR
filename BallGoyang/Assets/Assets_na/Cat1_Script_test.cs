using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cat1_Script_test : MonoBehaviour
{
    //Animator anim;
    public int catSpeed = 1;
    
    //public Transform target;
    public Vector3 target = new Vector3(1, -1, (float)0.93);

    void Start()
    {
       // anim = GetComponent<Animator>();
    }

    void Update()
    {
       // AnimatorStateInfo stateInfo = anim.GetCurrentAnimatorStateInfo(0);

        float step = catSpeed * Time.deltaTime;
        transform.position = Vector3.MoveTowards(transform.position, target, step);



    }
}
