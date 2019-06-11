using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test_material : MonoBehaviour
{
    public Material m_material;
    public Renderer m_Renderer;
    // Start is called before the first frame update
    void Start()
    {
        m_Renderer = GetComponent<Renderer>();
    }

    // Update is called once per frame
    void Update()
    {
        //RenderSettings.skybox = new Material(Shader.Find("Custom/test"));
        RenderSettings.skybox = Resources.Load("test") as Material;
        //m_material.mainTexture = Resources.Load("test") as Texture;
        //m_Renderer.material.SetTexture("_MainTex", m_material);
        //m_Renderer.material.mainTexture = Resources.Load("test") as Texture;
    }
}
