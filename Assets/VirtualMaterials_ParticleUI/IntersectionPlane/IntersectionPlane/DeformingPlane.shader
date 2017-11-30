// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/DeformingPlane" {
  Properties {
    // Base visuals 
    _MainTex ("Main Texture", 2D) = "white" {} // Main texture for the surface
    _MaskTex ("Mask Texture", 2D) = "white" {} // Additional alpha mask for the surface
    _MainColor ("Grid Color", Color) = (1,1,1,1)// Base color of the main texture.

    // Color Glow Effect
    // The color glow effect will case the surface color to fade to GlowColor near fingers that approach and pass the plane.
    _GlowColor ("Glow Color", Color) = (1,1,1,1) // Glow color to apply to main texture.
    _GlowMaxZDist ("Glow Max Z Dist", Float) = 0.0 // Signed distance (negative is past the plane) at which glow begins to appear 
    _GlowMinZDist ("Glow Min Z Dist", Float) = -0.06 // Signed distance (negative is past the plane) at which glow has greatest brightness

    // Alpha glow effect
    // The alpha glow effect will cause the surface to fade-in near fingers that approach and pass the plane.
    _AlphaGlowMax ("Grid Max Alpha", Float) = 1.0 // The maximum alpha the glow effect will allow the surface to reach.
    _AlphaGlowMin ("Grid Min Alpha", Float) = 0.0 // The minimum alpha the glow effect will reduce the surface to.
    _GridMaxZDistForAlpha ("Max Z Dist for Alpha", Float) = 0.4 // Signed distance (nagative is past plane) at and above which effect has min alpha
    _GridMinZDistForAlpha ("Min Z Dist for Alpha", Float) = 0.0 // Signed distance (negative is past plane) at and below which effect has max alpha
    
    _BufferDistance ("Buffer Distance", Float ) = .06 // Maximum distance the surface can be distorted. 
    _DistanceCutoff ("Distance Cutoff", Float ) = .18 // Maximum distance (parallel to surface) that a finger can have influence on the surface.
    //_NormalDisplacementMagnitude ("Normal Displacement Magnitude", Float) = 10.0
  }
  SubShader {
    Tags { "RenderType"="Transparent" "Queue" = "Transparent" }
    LOD 200
    ZWrite Off
    Pass {
      Blend SrcAlpha OneMinusSrcAlpha // Alpha blending
      CGPROGRAM
      #pragma vertex vert
      #pragma fragment frag
      // Use shader model 3.0 target, to get nicer looking lighting
      #pragma target 3.0

      #include "UnityCG.cginc"

      uniform float4 _GlowColor;
      uniform float _GlowMinZDist;
      uniform float _GlowMaxZDist;
      uniform float4 _MainColor;
      uniform sampler2D _MainTex;
      uniform sampler2D _MaskTex;
      uniform float _AlphaGlowMax;
      uniform float _AlphaGlowMin;
      uniform float _GridMinZDistForAlpha;
      uniform float _GridMaxZDistForAlpha;
      uniform float _DistanceCutoff;
      uniform float _BufferDistance;
      //uniform float _NormalDisplacementMagnitude;

      // Hand 1 Finger Positions
      uniform float4 _Finger0;
      uniform float4 _Finger1;
      uniform float4 _Finger2;
      uniform float4 _Finger3;
      uniform float4 _Finger4;

      // Hand 2 Finger Positions
      uniform float4 _Finger5;
      uniform float4 _Finger6;
      uniform float4 _Finger7;
      uniform float4 _Finger8;
      uniform float4 _Finger9;

      // Unity Generated Uniforms
      uniform float4 _MainTex_ST; // Scale and transform data for GridTex UVs
      uniform float4 _MaskTex_ST; // Scale and transform data for MaskTex UVs

      struct VertexIn
      {
         float4 position : POSITION; // Model space position of vertex
         float3 normal : NORMAL; // Model space normal of the vertex
         float4 texcoord : TEXCOORD0; // UV of the vertex
      };

      struct VertexOut {
          float4 pos : POSITION; // Model space positon of the vertex
          float3 normal : NORMAL;  // Object space normal of the vertex.
          float4 uv : TEXCOORD0; // UV of the vertex
          float4 worldPos : TEXCOORD2; // World space position of the vertex
          float3 worldNormal : TEXCOORD3; // World space normal of the vertex
          //float3 displacedWorldNormal : TEXCOORD4; 
      };

      // Uses dot product to get the component distance along the normal.
      // Also sets the parallel and perpendicular vectors.
      float distanceToPlane(float3 normal, float4 point1, float4 point2, out float3 perp, out float3 para) {
        float3 diff = (point2 - point1).xyz;
        float normalDotDiff = dot( normal , diff );
        perp = normal * normalDotDiff;
        para = diff - perp;
        return normalDotDiff;
      }

      // Calculates the displacement of a point by a figner using:
      //   - The signed distance (negative is past plane) of the finger relative to the surface of the plane
      //   - The "finger influence" of the finger, which is a function of the distance between the point 
      //      and the finger along the plane.
      //
      // The baseDisplacement argument sets the maxiumum distance from the plane that will be reported, allowing
      // for the smooth falloff of finger influence.
      float getFingerDisplacement( float3 normal, float4 position , float4 fingerPosition, float baseDisplacement) {
        float maxDisplacement = baseDisplacement; // What is is max distance forward we'll report
        float3 para = float3(0.,0.,0.); // Vector pointing parallell to the plane
        float3 perp = float3(0.,0.,0.); // Vector pointing along the normal of the plane

        float d = distanceToPlane( normal , position , fingerPosition , perp , para ); // How far is the finger tip from the plane.
        float diff = min(0, d - maxDisplacement);
        float len = length( para ); // How far is the point from the tip, along the plane

        float fingerInfluence = 0.0;


        if( len <= _DistanceCutoff) {
          fingerInfluence = pow((1 - (len / _DistanceCutoff)), 3.);
        }
 
        float displacement = maxDisplacement + (diff * fingerInfluence);
        return displacement;

      }

      // Return of the greatest displacement caused to the point from a finger. 
      float getMinDisplacement(float3 normal, float4 pos, float baseDisplacement) {
        float zDisplacement = baseDisplacement; // 100 units seems a reasonable maxiumum distance.
 
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger0, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger1, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger2, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger3, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger4, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger5, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger6, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger7, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger8, baseDisplacement ));
        zDisplacement = min(zDisplacement, getFingerDisplacement( normal , pos , _Finger9, baseDisplacement ));

        return zDisplacement;
      }

      // Get the displacement past the plane (using 0 as base displacement)
      float getDisplacement( float3 normal , float4 pos ){
        float pushDist = min(0,getMinDisplacement(normal, pos, 0.0));
        float toReturn = clamp(pushDist, -_BufferDistance, 0. );
        return toReturn;
      }

      // Some old code we're not currently using from Issac's original WebGL shader.
      // Allows us to caculate the distorted normal of a point given the surface 
      // and distortion are defineable procedurally.
/*
      float3 getNormal( float3 normal , float4 position ){

        float3 mNorm = mul(_Object2World, float4(normal,0.0));
        mNorm = normalize( mNorm );

        float offset = .001;

        float4 pUpX = position + float4(  offset ,  0. , 0., 0. );
        float4 pDoX = position + float4( -offset ,  0. , 0., 0. );
        float4 pUpY = position + float4(  .0 ,  offset, .0,  0. );
        float4 pDoY = position + float4(  .0 , -offset, .0,  0. );

        float4 mUpX = mul(_Object2World, pUpX );
        float4 mDoX = mul(_Object2World, pDoX );
        float4 mUpY = mul(_Object2World, pUpY );
        float4 mDoY = mul(_Object2World, pDoY );

        float dUpX = getDisplacement( mNorm , mUpX );
        float dDoX = getDisplacement( mNorm , mDoX );
        float dUpY = getDisplacement( mNorm , mUpX );
        float dDoY = getDisplacement( mNorm , mDoY );

        float3 fUpX = pUpX + normal * dUpX * _NormalDisplacementMagnitude;
        float3 fDoX = pDoX + normal * dDoX * _NormalDisplacementMagnitude;
        float3 fUpY = pUpY + normal * dUpY * _NormalDisplacementMagnitude;
        float3 fDoY = pDoY + normal * dDoY * _NormalDisplacementMagnitude;

        float3 difX = fUpX - fDoX;
        float3 difY = fUpY - fDoY;

        float3 norm = cross( difX , difY );
        norm = normalize( norm );
        norm = mul(_Object2World, float4(norm, 0.));
        return norm;

      }
*/
    
      // Vertex Shader
      // Distort the positions of the surface's 
      // vertexes based on diplacement from fingers.
      // 
      // Also pass on data to fragment shader.
      VertexOut vert(VertexIn v) {
        VertexOut o;
        o.worldPos = mul( unity_ObjectToWorld , v.position );
        o.normal = v.normal;
        
        float3 worldNormal = mul( unity_ObjectToWorld , float4(v.normal,0.0) );
        worldNormal = normalize(worldNormal);
        o.worldNormal = worldNormal;
        
        //float3 displacedNormal = getNormal(v.normal, v.position);
        
        o.uv = v.texcoord;
        
        float worldSpaceDisplacement = getDisplacement( worldNormal , o.worldPos );
        float4 worldSpacePush = float4(worldNormal * worldSpaceDisplacement, 0.0);
        
        o.pos = UnityObjectToClipPos (v.position) + mul(UNITY_MATRIX_VP, worldSpacePush);
        return o;
      }

      // Fragment Shader
      // Calulate glow and alpha effects based on finger displacement.
      fixed4 frag(VertexOut i) : COLOR {
        float2 texUv = TRANSFORM_TEX(i.uv, _MainTex);
        float2 maskUv = TRANSFORM_TEX(i.uv, _MaskTex);
        float4 texColor = tex2D( _MainTex, texUv);
        float4 maskColor = tex2D( _MaskTex, maskUv);
        
        // Using distance for glow and alpha calculations
        // Using a distance slightly greater than the max distance 
        // used by the glow effects for the base displacement to allow
        // for the smoothest falloff reasonable.
        float dist = getMinDisplacement( i.worldNormal , i.worldPos, max(_GlowMaxZDist, _GridMaxZDistForAlpha) + 0.01);
        
        fixed4 color;

        float normGlow = 1. - ((dist - _GlowMinZDist) / (_GlowMaxZDist - _GlowMinZDist));
        float normAlpha = 1. - ((dist - _GridMinZDistForAlpha) / (_GridMaxZDistForAlpha - _GridMinZDistForAlpha));
        normGlow = clamp(normGlow,0.,1.);
        normAlpha = clamp(normAlpha,0.,1.); 
        float pushAlpha = _AlphaGlowMin + (normAlpha*(_AlphaGlowMax - _AlphaGlowMin));

        color = fixed4((float3)lerp(_MainColor, _GlowColor, normGlow), pushAlpha * texColor.a * maskColor.a);
        return color;
      }

      ENDCG
    }
  }
  FallBack "Diffuse"
}
