﻿Shader "Custom/pano" {
	Properties{
		_MainTex("Albedo (RGB)", 2D) = "white" {}
	_MainTex2("Albedo (RGB)", 2D) = "white" {}
	_lerp("lerp", Range(0,1)) = 0.5
		//_lerpTest("lerp test", Range(0,1)) = 0
	}
		SubShader{
		Tags{ "RenderType" = "Opaque" }
		LOD 200

		CGPROGRAM
#pragma surface surf Standard fullforwardshadows

		sampler2D _MainTex;
	sampler2D _MainTex2;
	float _lerp; 

	struct Input {
		float2 uv_MainTex;
		float2 uv_MainTex2;
	};

	void surf(Input IN, inout SurfaceOutputStandard o) {
		fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
		fixed4 d = tex2D(_MainTex2, IN.uv_MainTex2);
		o.Albedo = lerp(c.rgb, d.rgb, _lerp);

		o.Alpha = c.a;
	}
	ENDCG
	}
		FallBack "Diffuse"
}



