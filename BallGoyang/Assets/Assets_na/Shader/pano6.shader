Shader "Custom/pano6" {
	Properties{
		//_MainTex1("Albedo (RGB)", 2D) = "white" {}
		//_MainTex2("Albedo (RGB)", 2D) = "white" {}
		//_MainTex3("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex4("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex5("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex6("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex7("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex8("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex9("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex10("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex11("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex12("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex13("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex14("Albedo (RGB)", 2D) = "white" {}
	 //    _MainTex15("Albedo (RGB)", 2D) = "white" {}
		_MainTex16("Albedo (RGB)", 2D) = "white" {}
		_MainTex17("Albedo (RGB)", 2D) = "white" {}
		_MainTex18("Albedo (RGB)", 2D) = "white" {}
		_MainTex19("Albedo (RGB)", 2D) = "white" {}
		//    _MainTex20("Albedo (RGB)", 2D) = "white" {}
		//    _MainTex21("Albedo (RGB)", 2D) = "white" {}
		   _lerp("lerp", Range(0,1)) = 0
		   _playerPos("playerPos", Range(0,100)) = 0
	}
		SubShader{
		Tags{ "RenderType" = "Opaque" }
		LOD 200

		CGPROGRAM
  #pragma target 3.0
  #pragma debug
  #pragma surface surf Standard fullforwardshadows

			   /*sampler2D _MainTex1;
			   sampler2D _MainTex2;
			   sampler2D _MainTex3;*/
			   //    sampler2D _MainTex4;
			   //    sampler2D _MainTex5;
			   //    sampler2D _MainTex6;
			   //    sampler2D _MainTex7;
			   //    sampler2D _MainTex8;
			   //    sampler2D _MainTex9;
			   //    sampler2D _MainTex10;
			   //    sampler2D _MainTex11;
			   //    sampler2D _MainTex12;
			   //    sampler2D _MainTex13;
			   //    sampler2D _MainTex14;
			   //    sampler2D _MainTex15;
				  sampler2D _MainTex16;
				  sampler2D _MainTex17;
				  sampler2D _MainTex18;
				  sampler2D _MainTex19;
				  //    sampler2D _MainTex20;
				  //    sampler2D _MainTex21;
					 float _lerp;
					 float _playerPos;


					 struct Input {
						 /*float2 uv_MainTex1;
						 float2 uv_MainTex2;
						 float2 uv_MainTex3;*/
						 //   float2 uv_MainTex4;
						 //   float2 uv_MainTex5;
						 //   float2 uv_MainTex6;
						 //   float2 uv_MainTex7;
						 //   float2 uv_MainTex8;
						 //   float2 uv_MainTex9;
						 //   float2 uv_MainTex10;
						 //   float2 uv_MainTex11;
						 //   float2 uv_MainTex12;
						 //   float2 uv_MainTex13;
						 //   float2 uv_MainTex14;
						 //   float2 uv_MainTex15;
						   float2 uv_MainTex16;
						   float2 uv_MainTex17;
						   float2 uv_MainTex18;
						   float2 uv_MainTex19;
						   //   float2 uv_MainTex20;
						   //   float2 uv_MainTex21;
						  };

						  void surf(Input IN, inout SurfaceOutputStandard o) {

							 if (_playerPos >= 75 && _playerPos < 80)
							 {
								fixed4 c = tex2D(_MainTex16, IN.uv_MainTex16);
								fixed4 d = tex2D(_MainTex17, IN.uv_MainTex17);
								o.Albedo = lerp(c.rgb, d.rgb, _lerp);
								//o.Alpha = c.a;
							 }

							 else if (_playerPos >= 80 && _playerPos < 85)
							 {
								fixed4 c = tex2D(_MainTex17, IN.uv_MainTex17);
								fixed4 d = tex2D(_MainTex18, IN.uv_MainTex18);
								o.Albedo = lerp(c.rgb, d.rgb, _lerp);
								//o.Alpha = c.a;
							 }

							 else if (_playerPos >= 85 && _playerPos < 90)
							 {
								fixed4 c = tex2D(_MainTex18, IN.uv_MainTex18);
								fixed4 d = tex2D(_MainTex19, IN.uv_MainTex19);
								o.Albedo = lerp(c.rgb, d.rgb, _lerp);
								//o.Alpha = c.a;
							 }



						  }
						  ENDCG
		   }
			   FallBack "Diffuse"
}


