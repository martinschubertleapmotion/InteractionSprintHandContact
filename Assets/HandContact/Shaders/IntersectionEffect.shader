Shader "Custom/IntersectionEffect" {
  Properties{
    _Color("Color", Color) = (1,1,1,1)
    [HDR] _Glow("Glow Color", Color) = (1,0,0,1)
    _GlowLength("Glow Length", Float) = 1
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
	}
	SubShader {
		Tags { "Queue"="Transparent-200" "RenderType"="Transparent" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Standard fullforwardshadows
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
      float4 screenPos;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;

    sampler2D _CameraDepthTexture;
    float4 _Glow;
    float _GlowLength;

		void surf (Input IN, inout SurfaceOutputStandard o) {
      float sceneZ = LinearEyeDepth(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(IN.screenPos)));
      float partZ = LinearEyeDepth(IN.screenPos.z / IN.screenPos.w);

      float glowPower = saturate(1.0 - abs(sceneZ - partZ) / _GlowLength);

      fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
      o.Emission = glowPower * _Glow;
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
