using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EffectSlider : MonoBehaviour
{
    public Slider EffectVolume;
    public AudioSource audio;

    private float EffectVol = 1f;

    // Start is called before the first frame update
    private void Start()
    {
        EffectVol = PlayerPrefs.GetFloat("Effectvol", 1f);
        //여기는 만약에 게임을 다시 시작했을 때 사운드가 고정되어있길 원하면 주석 제거, 아니면 그대로
        EffectVolume.value = EffectVol;
        audio.volume = EffectVolume.value;
    }

    // Update is called once per frame
    void Update()
    {
        SoundSlider();
    }

    public void SoundSlider()
    {
        audio.volume = EffectVolume.value;

        EffectVol = EffectVolume.value;
        PlayerPrefs.SetFloat("Effectvol", EffectVol);
    }
}
