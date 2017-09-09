Shader "Custom/IntersectionEffectTransparent" {
  Properties{
    [HDR] _Color("Glow Color", Color) = (1,0,0,1)
    _GlowLength("Glow Length", Float) = 1
  }
  SubShader {
    Tags { "Queue"="Transparent" "RenderType"="Transparent" }
    LOD 200
    
    ZWrite Off
    ZTest Off
    Blend SrcAlpha One
	Cull Off
    
    CGPROGRAM
    #pragma surface surf Standard fullforwardshadows alpha:fade
    #pragma target 3.0

    struct Input {
      float4 screenPos;
    };

    float4 _Color;
    sampler2D _CameraDepthTexture;
    float _GlowLength;

    void surf (Input IN, inout SurfaceOutputStandard o) {
      float sceneZ = LinearEyeDepth(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(IN.screenPos)));
      float partZ = LinearEyeDepth(IN.screenPos.z / IN.screenPos.w);

      float glowPower = saturate(1.0 - abs(sceneZ - partZ) / _GlowLength);

      o.Albedo = float3(0,0,0);
      o.Emission = _Color;
      o.Alpha = glowPower;
    }
    ENDCG
  }
  FallBack off
}
