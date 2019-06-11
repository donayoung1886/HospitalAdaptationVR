using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/* Set weight -> _lerp -> _lerp in pano.shader */
/* weight(=lerpTest)값 [0,1]로 제한해야함 / 구 안으로 들어갈 수 있도록 설정 변경하기e.g. Collider/RigidBody */
/* 사실 Sphere_0과 Sphere_-8에 어떤 사진을 입히는지와 독립적인 코드임.  panoShader에 설정한 사진이 중요. */

public class SetLerp_new : MonoBehaviour {

    public GameObject player;
    public float playerPosX;
    public float distance = 5;
    public float weight;
    public int i;

    void Start () {
        transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano1");
        float f = transform.GetComponent<Renderer>().material.GetFloat("_lerp");
        Debug.Log("ColorStreangth value is  " + f);
        distance = 5;
}
	
	void Update () {
        float pl;
        playerPosX = player.transform.position.x;

        i = (int)playerPosX / 5;
        pl = playerPosX - 5 * i;
        weight = (distance - pl) / distance; // 0 - 1
        weight = 1 - weight;

        transform.GetComponent<Renderer>().material.SetFloat("_lerp", weight);// set '_lerp' to 'weight' value
        transform.GetComponent<Renderer>().material.SetFloat("_playerPos", playerPosX);
        if (i >= 0 &&  i<3)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano1");
        else if(i>=3 && i<6)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano2");
        else if (i >= 6 && i < 9)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano3");
        else if (i >= 9 && i < 12)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano4");
        else if (i >= 12 && i < 15)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano5");
        else if (i >= 15 && i < 18)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano6");
        else if (i >= 18 && i < 21)
            transform.GetComponent<Renderer>().material.shader = Shader.Find("Custom/pano7");

    }
}



