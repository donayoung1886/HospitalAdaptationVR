using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System;


public class playPython : MonoBehaviour
{

    public GameObject player;
    public float playerPosX;
    public Material m_material;
    public float weight;
    public float pl;
    public int i;
    public int distance = 5;

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        playerPosX = player.transform.position.x;

        i = (int)playerPosX / 5;
        pl = playerPosX - 5 * i;
        weight = pl / distance;

        UnityEngine.Debug.Log("PLAYER POSITION is " + playerPosX);
        UnityEngine.Debug.Log("weight is " +  weight);

        System.Diagnostics.ProcessStartInfo cmd = new System.Diagnostics.ProcessStartInfo();
        System.Diagnostics.Process process = new System.Diagnostics.Process();

        cmd.FileName = @"cmd";
        cmd.CreateNoWindow = true; //cmd 창 띄우지X
        cmd.UseShellExecute = false;

        cmd.RedirectStandardOutput = true;
        cmd.RedirectStandardInput = true;
        cmd.RedirectStandardError = true;

        process.StartInfo = cmd;
        process.Start();

        //c://에 python 넣기
        //process.StandardInput.Write(@"cd Assets/Scripts" + Environment.NewLine);
        process.StandardInput.Write(@"cd Assets/Resources" + Environment.NewLine);
        //process.StandardInput.Write(@"cd Scripts" + Environment.NewLine);
        process.StandardInput.Write(@"python blending_img.py " + weight + " " + i + Environment.NewLine);
        process.StandardInput.Close();
        string resultValue = process.StandardOutput.ReadToEnd();

        UnityEngine.Debug.Log(resultValue);

        process.WaitForExit();
        process.Close();

        Console.WriteLine(resultValue);

        //RenderSettings.skybox.shader = Resources.Load("pano") as Shader; // skybox는 shader아닌 skybox를 적용해야함.
        
        //RenderSettings.skybox.mainTexture = Resources.Load("test") as Texture; // SUCCESS?

        m_material.mainTexture = Resources.Load("test") as Texture;
        RenderSettings.skybox = m_material;
        //RenderSettings.skybox = Resources.Load("ewha_chapel") as Material; // SUCCESS

    }
}
