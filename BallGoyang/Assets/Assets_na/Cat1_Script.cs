using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cat1_Script : MonoBehaviour
{
    Animator anim;
    public int catSpeed = 1;
    public float positionX;


    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        //float move = Input.GetAxis("Vertical");
        //anim.SetFloat("Speed", move);

        AnimatorStateInfo stateInfo = anim.GetCurrentAnimatorStateInfo(0);

        if (transform.position.x > 1)
        {
            positionX = transform.position.x - catSpeed * Time.deltaTime;
            transform.position = new Vector3(positionX, transform.position.y, transform.position.z);
        }
        
        
    }
}
