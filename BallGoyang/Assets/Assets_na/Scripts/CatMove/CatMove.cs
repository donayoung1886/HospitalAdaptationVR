using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CatMove : MonoBehaviour
{
    private Animator anim;
    public float catSpeed = 1;
    public int flag = 0;

    public Vector3 target;
  //  public Vector3 target_fixed;

    Quaternion targetRotation;
  //  Quaternion targetRotation_fixed;

    public GameObject player;

    void Start()
    {
       anim = GetComponent<Animator>();
       target.y = transform.position.y;
       flag = 0;
    }

    void Update()
    {
        if (flag == 0)
        {
            float step = catSpeed * Time.deltaTime;
            transform.position = Vector3.MoveTowards(transform.position, target, step);

            targetRotation = Quaternion.LookRotation(target - transform.position);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, catSpeed * Time.deltaTime);
        }
        
       // targetRotation_fixed = Quaternion.LookRotation(target_fixed - transform.position);

        if (transform.position.x >= (target.x-0.2) && transform.position.x <= (target.x + 0.2) )
        {
            anim.SetTrigger("A_idle");
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, catSpeed * Time.deltaTime);
            //transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation_fixed, catSpeed * Time.deltaTime);
            flag = 1;
        }        
    }
}

