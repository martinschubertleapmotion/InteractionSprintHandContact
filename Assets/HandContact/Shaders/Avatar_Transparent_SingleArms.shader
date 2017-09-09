// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-6343-OUT,spec-3794-OUT,gloss-25-OUT,clip-4371-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32107,y:32325,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31830,y:32431,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31830,y:32232,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0572ed8c4ffb36f40beef9fbbd602186,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1813,x:31723,y:32794,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9,max:1;n:type:ShaderForge.SFN_Tex2d,id:1254,x:31787,y:32612,ptovrint:False,ptlb:GlossMask,ptin:_GlossMask,varname:node_1254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:280c391143c065c49b932bd2f111d38c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:25,x:32064,y:32638,varname:node_25,prsc:2|A-1254-R,B-1813-OUT;n:type:ShaderForge.SFN_Tex2d,id:6335,x:31392,y:33177,ptovrint:False,ptlb:LeftArm_FadeOutMask,ptin:_LeftArm_FadeOutMask,varname:node_6335,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d26604a7d7bd5e74899c423f3fb38176,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Slider,id:4712,x:31010,y:33037,ptovrint:False,ptlb:LeftArm_FadeOutAmount,ptin:_LeftArm_FadeOutAmount,varname:_Gloss_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:9095,x:31611,y:33001,varname:node_9095,prsc:2|A-2573-OUT,B-6335-R;n:type:ShaderForge.SFN_RemapRange,id:2573,x:31402,y:33001,varname:node_2573,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-4712-OUT;n:type:ShaderForge.SFN_Tex2d,id:7687,x:31392,y:33517,ptovrint:False,ptlb:RightArm_FadeOutMask,ptin:_RightArm_FadeOutMask,varname:_AlphaClip_LeftArm_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e3230108ffa7a6c448bd774fc82cfeab,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Slider,id:5410,x:31035,y:33333,ptovrint:False,ptlb:RightArm_FadeOutAmount,ptin:_RightArm_FadeOutAmount,varname:_AlphaClipAmount_LeftArm_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:405,x:31572,y:33333,varname:node_405,prsc:2|A-7639-OUT,B-7687-R;n:type:ShaderForge.SFN_RemapRange,id:7639,x:31392,y:33333,varname:node_7639,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-5410-OUT;n:type:ShaderForge.SFN_Lerp,id:5474,x:31846,y:33012,varname:node_5474,prsc:2|A-9095-OUT,B-405-OUT,T-7687-A;n:type:ShaderForge.SFN_Slider,id:3794,x:32028,y:32545,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_3794,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Lerp,id:5898,x:31838,y:33796,varname:node_5898,prsc:2|A-1847-OUT,B-3387-OUT,T-2698-A;n:type:ShaderForge.SFN_RemapRange,id:9883,x:31388,y:33695,varname:node_9883,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-2258-OUT;n:type:ShaderForge.SFN_Add,id:1847,x:31624,y:33695,varname:node_1847,prsc:2|A-9883-OUT,B-1639-R;n:type:ShaderForge.SFN_Slider,id:2258,x:31023,y:33778,ptovrint:False,ptlb:LeftArm_FadeInAmount,ptin:_LeftArm_FadeInAmount,varname:node_2258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:1639,x:31388,y:33885,ptovrint:False,ptlb:LeftArm_FadeInMask,ptin:_LeftArm_FadeInMask,varname:node_1639,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a85da7f582cb77b45aaa811937c30d85,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:4869,x:31026,y:34062,ptovrint:False,ptlb:RightArm_FadeInAmount,ptin:_RightArm_FadeInAmount,varname:_AlphaClipAmount_RightArm_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:1158,x:31388,y:34066,varname:node_1158,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-4869-OUT;n:type:ShaderForge.SFN_Add,id:3387,x:31568,y:34066,varname:node_3387,prsc:2|A-1158-OUT,B-2698-R;n:type:ShaderForge.SFN_Tex2d,id:2698,x:31388,y:34250,ptovrint:False,ptlb:RightArm_FadeInMask,ptin:_RightArm_FadeInMask,varname:_AlphaClip_LeftArm_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:649b63099fa18474588f1df3750a0752,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Blend,id:2431,x:32199,y:33067,varname:node_2431,prsc:2,blmd:5,clmp:True|SRC-5474-OUT,DST-5898-OUT;n:type:ShaderForge.SFN_Blend,id:5834,x:32211,y:33291,varname:node_5834,prsc:2,blmd:0,clmp:True|SRC-5474-OUT,DST-5898-OUT;n:type:ShaderForge.SFN_If,id:4371,x:32460,y:33108,varname:node_4371,prsc:2|A-6046-OUT,B-1450-OUT,GT-2431-OUT,EQ-2431-OUT,LT-5834-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6046,x:32217,y:32882,ptovrint:False,ptlb:LightenLeft,ptin:_LightenLeft,varname:node_6046,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:1450,x:32217,y:32980,ptovrint:False,ptlb:Constant,ptin:_Constant,varname:_Lighten_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;proporder:6665-7736-3794-1813-1254-6335-1639-4712-2258-7687-2698-5410-4869-6046-1450;pass:END;sub:END;*/

Shader "Shader Forge/Avatar_Transparent_SingleArms" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 1)) = 0.1
        _Gloss ("Gloss", Range(0, 1)) = 0.9
        _GlossMask ("GlossMask", 2D) = "white" {}
        _LeftArm_FadeOutMask ("LeftArm_FadeOutMask", 2D) = "gray" {}
        _LeftArm_FadeInMask ("LeftArm_FadeInMask", 2D) = "white" {}
        _LeftArm_FadeOutAmount ("LeftArm_FadeOutAmount", Range(0, 1)) = 1
        _LeftArm_FadeInAmount ("LeftArm_FadeInAmount", Range(0, 1)) = 0
        _RightArm_FadeOutMask ("RightArm_FadeOutMask", 2D) = "gray" {}
        _RightArm_FadeInMask ("RightArm_FadeInMask", 2D) = "gray" {}
        _RightArm_FadeOutAmount ("RightArm_FadeOutAmount", Range(0, 1)) = 1
        _RightArm_FadeInAmount ("RightArm_FadeInAmount", Range(0, 1)) = 0
        _LightenLeft ("LightenLeft", Float ) = 1
        _Constant ("Constant", Float ) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Gloss;
            uniform sampler2D _GlossMask; uniform float4 _GlossMask_ST;
            uniform sampler2D _LeftArm_FadeOutMask; uniform float4 _LeftArm_FadeOutMask_ST;
            uniform float _LeftArm_FadeOutAmount;
            uniform sampler2D _RightArm_FadeOutMask; uniform float4 _RightArm_FadeOutMask_ST;
            uniform float _RightArm_FadeOutAmount;
            uniform float _Metallic;
            uniform float _LeftArm_FadeInAmount;
            uniform sampler2D _LeftArm_FadeInMask; uniform float4 _LeftArm_FadeInMask_ST;
            uniform float _RightArm_FadeInAmount;
            uniform sampler2D _RightArm_FadeInMask; uniform float4 _RightArm_FadeInMask_ST;
            uniform float _LightenLeft;
            uniform float _Constant;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float node_4371_if_leA = step(_LightenLeft,_Constant);
                float node_4371_if_leB = step(_Constant,_LightenLeft);
                float4 _LeftArm_FadeOutMask_var = tex2D(_LeftArm_FadeOutMask,TRANSFORM_TEX(i.uv0, _LeftArm_FadeOutMask));
                float4 _RightArm_FadeOutMask_var = tex2D(_RightArm_FadeOutMask,TRANSFORM_TEX(i.uv0, _RightArm_FadeOutMask));
                float node_5474 = lerp(((_LeftArm_FadeOutAmount*1.0+-0.5)+_LeftArm_FadeOutMask_var.r),((_RightArm_FadeOutAmount*1.0+-0.5)+_RightArm_FadeOutMask_var.r),_RightArm_FadeOutMask_var.a);
                float4 _LeftArm_FadeInMask_var = tex2D(_LeftArm_FadeInMask,TRANSFORM_TEX(i.uv0, _LeftArm_FadeInMask));
                float4 _RightArm_FadeInMask_var = tex2D(_RightArm_FadeInMask,TRANSFORM_TEX(i.uv0, _RightArm_FadeInMask));
                float node_5898 = lerp(((_LeftArm_FadeInAmount*1.0+-0.5)+_LeftArm_FadeInMask_var.r),((_RightArm_FadeInAmount*1.0+-0.5)+_RightArm_FadeInMask_var.r),_RightArm_FadeInMask_var.a);
                float node_2431 = saturate(max(node_5474,node_5898));
                clip(lerp((node_4371_if_leA*saturate(min(node_5474,node_5898)))+(node_4371_if_leB*node_2431),node_2431,node_4371_if_leA*node_4371_if_leB) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossMask_var = tex2D(_GlossMask,TRANSFORM_TEX(i.uv0, _GlossMask));
                float gloss = (_GlossMask_var.r*_Gloss);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Gloss;
            uniform sampler2D _GlossMask; uniform float4 _GlossMask_ST;
            uniform sampler2D _LeftArm_FadeOutMask; uniform float4 _LeftArm_FadeOutMask_ST;
            uniform float _LeftArm_FadeOutAmount;
            uniform sampler2D _RightArm_FadeOutMask; uniform float4 _RightArm_FadeOutMask_ST;
            uniform float _RightArm_FadeOutAmount;
            uniform float _Metallic;
            uniform float _LeftArm_FadeInAmount;
            uniform sampler2D _LeftArm_FadeInMask; uniform float4 _LeftArm_FadeInMask_ST;
            uniform float _RightArm_FadeInAmount;
            uniform sampler2D _RightArm_FadeInMask; uniform float4 _RightArm_FadeInMask_ST;
            uniform float _LightenLeft;
            uniform float _Constant;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float node_4371_if_leA = step(_LightenLeft,_Constant);
                float node_4371_if_leB = step(_Constant,_LightenLeft);
                float4 _LeftArm_FadeOutMask_var = tex2D(_LeftArm_FadeOutMask,TRANSFORM_TEX(i.uv0, _LeftArm_FadeOutMask));
                float4 _RightArm_FadeOutMask_var = tex2D(_RightArm_FadeOutMask,TRANSFORM_TEX(i.uv0, _RightArm_FadeOutMask));
                float node_5474 = lerp(((_LeftArm_FadeOutAmount*1.0+-0.5)+_LeftArm_FadeOutMask_var.r),((_RightArm_FadeOutAmount*1.0+-0.5)+_RightArm_FadeOutMask_var.r),_RightArm_FadeOutMask_var.a);
                float4 _LeftArm_FadeInMask_var = tex2D(_LeftArm_FadeInMask,TRANSFORM_TEX(i.uv0, _LeftArm_FadeInMask));
                float4 _RightArm_FadeInMask_var = tex2D(_RightArm_FadeInMask,TRANSFORM_TEX(i.uv0, _RightArm_FadeInMask));
                float node_5898 = lerp(((_LeftArm_FadeInAmount*1.0+-0.5)+_LeftArm_FadeInMask_var.r),((_RightArm_FadeInAmount*1.0+-0.5)+_RightArm_FadeInMask_var.r),_RightArm_FadeInMask_var.a);
                float node_2431 = saturate(max(node_5474,node_5898));
                clip(lerp((node_4371_if_leA*saturate(min(node_5474,node_5898)))+(node_4371_if_leB*node_2431),node_2431,node_4371_if_leA*node_4371_if_leB) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossMask_var = tex2D(_GlossMask,TRANSFORM_TEX(i.uv0, _GlossMask));
                float gloss = (_GlossMask_var.r*_Gloss);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _LeftArm_FadeOutMask; uniform float4 _LeftArm_FadeOutMask_ST;
            uniform float _LeftArm_FadeOutAmount;
            uniform sampler2D _RightArm_FadeOutMask; uniform float4 _RightArm_FadeOutMask_ST;
            uniform float _RightArm_FadeOutAmount;
            uniform float _LeftArm_FadeInAmount;
            uniform sampler2D _LeftArm_FadeInMask; uniform float4 _LeftArm_FadeInMask_ST;
            uniform float _RightArm_FadeInAmount;
            uniform sampler2D _RightArm_FadeInMask; uniform float4 _RightArm_FadeInMask_ST;
            uniform float _LightenLeft;
            uniform float _Constant;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_4371_if_leA = step(_LightenLeft,_Constant);
                float node_4371_if_leB = step(_Constant,_LightenLeft);
                float4 _LeftArm_FadeOutMask_var = tex2D(_LeftArm_FadeOutMask,TRANSFORM_TEX(i.uv0, _LeftArm_FadeOutMask));
                float4 _RightArm_FadeOutMask_var = tex2D(_RightArm_FadeOutMask,TRANSFORM_TEX(i.uv0, _RightArm_FadeOutMask));
                float node_5474 = lerp(((_LeftArm_FadeOutAmount*1.0+-0.5)+_LeftArm_FadeOutMask_var.r),((_RightArm_FadeOutAmount*1.0+-0.5)+_RightArm_FadeOutMask_var.r),_RightArm_FadeOutMask_var.a);
                float4 _LeftArm_FadeInMask_var = tex2D(_LeftArm_FadeInMask,TRANSFORM_TEX(i.uv0, _LeftArm_FadeInMask));
                float4 _RightArm_FadeInMask_var = tex2D(_RightArm_FadeInMask,TRANSFORM_TEX(i.uv0, _RightArm_FadeInMask));
                float node_5898 = lerp(((_LeftArm_FadeInAmount*1.0+-0.5)+_LeftArm_FadeInMask_var.r),((_RightArm_FadeInAmount*1.0+-0.5)+_RightArm_FadeInMask_var.r),_RightArm_FadeInMask_var.a);
                float node_2431 = saturate(max(node_5474,node_5898));
                clip(lerp((node_4371_if_leA*saturate(min(node_5474,node_5898)))+(node_4371_if_leB*node_2431),node_2431,node_4371_if_leA*node_4371_if_leB) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Gloss;
            uniform sampler2D _GlossMask; uniform float4 _GlossMask_ST;
            uniform float _Metallic;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffColor = (_MainTex_var.rgb*_Color.rgb);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float4 _GlossMask_var = tex2D(_GlossMask,TRANSFORM_TEX(i.uv0, _GlossMask));
                float roughness = 1.0 - (_GlossMask_var.r*_Gloss);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
