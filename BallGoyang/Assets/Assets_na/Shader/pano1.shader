Shader "Custom/pano1" {
	Properties{
	_MainTex1("Albedo (RGB)", 2D) = "white" {}
	_MainTex2("Albedo (RGB)", 2D) = "white" {}
	_MainTex3("Albedo (RGB)", 2D) = "white" {}
	_MainTex4("Albedo (RGB)", 2D) = "white" {}/*
	_MainTex5("Albedo (RGB)", 2D) = "white" {}
	_MainTex6("Albedo (RGB)", 2D) = "white" {}
	_MainTex7("Albedo (RGB)", 2D) = "white" {}
	_MainTex8("Albedo (RGB)", 2D) = "white" {}
	_MainTex9("Albedo (RGB)", 2D) = "white" {}
	_MainTex10("Albedo (RGB)", 2D) = "white" {}
	_MainTex11("Albedo (RGB)", 2D) = "white" {}
	_MainTex12("Albedo (RGB)", 2D) = "white" {}
	_MainTex13("Albedo (RGB)", 2D) = "white" {}
	_MainTex14("Albedo (RGB)", 2D) = "white" {}
	_MainTex15("Albedo (RGB)", 2D) = "white" {}
	_MainTex16("Albedo (RGB)", 2D) = "white" {}
	_MainTex17("Albedo (RGB)", 2D) = "white" {}
	_MainTex18("Albedo (RGB)", 2D) = "white" {}
	_MainTex19("Albedo (RGB)", 2D) = "white" {}
	_MainTex20("Albedo (RGB)", 2D) = "white" {}
	_MainTex21("Albedo (RGB)", 2D) = "white" {}*/
	_lerp("lerp", Range(0,1)) = 0
	_playerPos("playerPos", Range(0,100)) = 0
	//_playeri("playeri", Range(0,20)) = 0

		//_lerpTest("lerp test", Range(0,1)) = 0
	}
		SubShader{
		Tags{ "RenderType" = "Opaque" }
		LOD 200

		CGPROGRAM
#pragma target 3.0
#pragma debug
#pragma surface surf Standard fullforwardshadows

	sampler2D _MainTex1;
	sampler2D _MainTex2;
	sampler2D _MainTex3;
	sampler2D _MainTex4;/*
	sampler2D _MainTex5;
	sampler2D _MainTex6;
	sampler2D _MainTex7;
	sampler2D _MainTex8;
	sampler2D _MainTex9;
	sampler2D _MainTex10;
	sampler2D _MainTex11;
	sampler2D _MainTex12;
	sampler2D _MainTex13;
	sampler2D _MainTex14;
	sampler2D _MainTex15;
	sampler2D _MainTex16;
	sampler2D _MainTex17;
	sampler2D _MainTex18;
	sampler2D _MainTex19;
	sampler2D _MainTex20;
	sampler2D _MainTex21;*/
	float _lerp;
	float _playerPos;
	//int _playeri;


	struct Input {
		float2 uv_MainTex1;
		float2 uv_MainTex2;
		float2 uv_MainTex3;
		float2 uv_MainTex4;
		/*float2 uv_MainTex5;
		float2 uv_MainTex6;
		float2 uv_MainTex7;
		float2 uv_MainTex8;
		float2 uv_MainTex9;
		float2 uv_MainTex10;
		float2 uv_MainTex11;
		float2 uv_MainTex12;
		float2 uv_MainTex13;
		float2 uv_MainTex14;
		float2 uv_MainTex15;
		float2 uv_MainTex16;
		float2 uv_MainTex17;
		float2 uv_MainTex18;
		float2 uv_MainTex19;
		float2 uv_MainTex20;
		float2 uv_MainTex21;*/
	};

	void surf(Input IN, inout SurfaceOutputStandard o) {
		
		if(_playerPos >= 0 && _playerPos < 5)
		{
			fixed4 c = tex2D(_MainTex1, IN.uv_MainTex1);
			fixed4 d = tex2D(_MainTex3, IN.uv_MainTex3);
			o.Albedo = lerp(c.rgb, d.rgb, _lerp);
			//o.Alpha = c.a;
		}

		else if (_playerPos >= 5 && _playerPos < 10)
		{
			fixed4 c = tex2D(_MainTex3, IN.uv_MainTex3);
			fixed4 d = tex2D(_MainTex2, IN.uv_MainTex2);
			o.Albedo = lerp(c.rgb, d.rgb, _lerp);
			//o.Alpha = c.a;
		}

		else if (_playerPos >= 10 && _playerPos < 15)
		{
			fixed4 c = tex2D(_MainTex2, IN.uv_MainTex2);
			fixed4 d = tex2D(_MainTex4, IN.uv_MainTex4);
			o.Albedo = lerp(c.rgb, d.rgb, _lerp);
			//o.Alpha = c.a;
		}

		//else if (_playerPos >= 20 && _playerPos < 25)
		//{
		//	fixed4 c = tex2D(_MainTex4, IN.uv_MainTex4);
		//	fixed4 d = tex2D(_MainTex5, IN.uv_MainTex5);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	//o.Alpha = c.a;
		//}

		//switch (_playeri)
		//{
		//case 0:
		//	fixed4 c = tex2D(_MainTex1, IN.uv_MainTex1);
		//	fixed4 d = tex2D(_MainTex3, IN.uv_MainTex3);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 1:
		//	fixed4 c = tex2D(_MainTex3, IN.uv_MainTex3);
		//	fixed4 d = tex2D(_MainTex2, IN.uv_MainTex2);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 2:
		//	fixed4 c = tex2D(_MainTex2, IN.uv_MainTex2);
		//	fixed4 d = tex2D(_MainTex4, IN.uv_MainTex4);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 3:
		//	fixed4 c = tex2D(_MainTex4, IN.uv_MainTex4);
		//	fixed4 d = tex2D(_MainTex5, IN.uv_MainTex5);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 4:
		//	fixed4 c = tex2D(_MainTex5, IN.uv_MainTex5);
		//	fixed4 d = tex2D(_MainTex6, IN.uv_MainTex6);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 5:
		//	fixed4 c = tex2D(_MainTex6, IN.uv_MainTex6);
		//	fixed4 d = tex2D(_MainTex7, IN.uv_MainTex7);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 6:
		//	fixed4 c = tex2D(_MainTex7, IN.uv_MainTex7);
		//	fixed4 d = tex2D(_MainTex8, IN.uv_MainTex8);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 7:
		//	fixed4 c = tex2D(_MainTex8, IN.uv_MainTex8);
		//	fixed4 d = tex2D(_MainTex9, IN.uv_MainTex9);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		////case 8:
		//default:
		//	fixed4 c = tex2D(_MainTex9, IN.uv_MainTex9);
		//	fixed4 d = tex2D(_MainTex10, IN.uv_MainTex10);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;


		//case 9:
		//	fixed4 c = tex2D(_MainTex1, IN.uv_MainTex1);
		//	fixed4 d = tex2D(_MainTex3, IN.uv_MainTex3);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;

		//case 10:
		//	fixed4 c = tex2D(_MainTex1, IN.uv_MainTex1);
		//	fixed4 d = tex2D(_MainTex3, IN.uv_MainTex3);
		//	o.Albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.Alpha = c.a;
		//	break;
		//}

		//
		//if (_playeri == 0) {
		//	fixed4 c = tex2d(_maintex1, in.uv_maintex1);
		//	fixed4 d = tex2d(_maintex3, in.uv_maintex3);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 1) {
		//	fixed4 c = tex2d(_maintex3, in.uv_maintex3);
		//	fixed4 d = tex2d(_maintex2, in.uv_maintex2);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 2) {
		//	fixed4 c = tex2d(_maintex2, in.uv_maintex2);
		//	fixed4 d = tex2d(_maintex4, in.uv_maintex4);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 3) {
		//	fixed4 c = tex2d(_maintex4, in.uv_maintex4);
		//	fixed4 d = tex2d(_maintex5, in.uv_maintex5);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 4) {
		//	fixed4 c = tex2d(_maintex5, in.uv_maintex5);
		//	fixed4 d = tex2d(_maintex6, in.uv_maintex6);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 5) {
		//	fixed4 c = tex2d(_maintex6, in.uv_maintex6);
		//	fixed4 d = tex2d(_maintex7, in.uv_maintex7);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 6) {
		//	fixed4 c = tex2d(_maintex7, in.uv_maintex7);
		//	fixed4 d = tex2d(_maintex8, in.uv_maintex8);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}
		//else if (_playeri == 7) {
		//	fixed4 c = tex2d(_maintex8, in.uv_maintex8);
		//	fixed4 d = tex2d(_maintex9, in.uv_maintex9);
		//	o.albedo = lerp(c.rgb, d.rgb, _lerp);
		//	o.alpha = c.a;
		//}


		//*/



	}
	ENDCG
	}
		FallBack "Diffuse"
}



