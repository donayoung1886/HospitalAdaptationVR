using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class distance_move : MonoBehaviour
{
    public Transform player;
    //public Transform target2;
    int MoveSpeed = 2;
    int MaxDist = 50;
    int MinDist = 30;
    private Animator anim;
    //private Animation anim;ar
    float dist;
    int speed = 5;
    Quaternion targetRotation;
    Vector3 objectPos, playerPos;
    public Vector3 target;
   // public Vector3 target2;


    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        //anim = gameObject.GetComponent<Animation>();
        //anim["spin"].layer = 123;
        //base.Start();
    }

    // Update is called once per frame
    void Update()
    {

        float step = MoveSpeed * Time.deltaTime;

        objectPos = transform.position;
        playerPos = player.position;
        //dist = Mathf.Abs(objectPos.y - playerPos.y);
        dist = Vector3.Distance(objectPos, playerPos);
        Debug.Log(dist);

        //targetRotation = Quaternion.LookRotation(target2 - transform.position);
        targetRotation = Quaternion.LookRotation(player.transform.position - transform.position);



        if (dist >= MinDist)//멀리 떨어지면
        {
            Debug.Log("check!0");
            //transform.LookAt(player);
            //transform.position += transform.forward * MoveSpeed * Time.deltaTime;
            anim.ResetTrigger("A_walk");
            anim.SetTrigger("idle");
            targetRotation = Quaternion.LookRotation(player.transform.position - transform.position);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, speed * Time.deltaTime);
            objectPos.y = 13.12f;


            if (dist <= MaxDist)
            {
                //Here Call any function U want Like Shoot at here or something
            }
            else
            {
                //transform.position = new Vector3(-20, 49, 105);
            }
        }
        else
        {
            Debug.Log("check!1");
            //transform.position = new Vector3(Random.Range(-580,400), 160, Random.Range(-250, 550));
            //anim.Play();
            targetRotation = Quaternion.LookRotation(target - transform.position);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, speed * Time.deltaTime);

            //Move



            transform.position = Vector3.MoveTowards(transform.position, target, step);
            Debug.Log("check2");
            anim.SetTrigger("A_walk");
            Debug.Log("check3");


        }
    }
}
