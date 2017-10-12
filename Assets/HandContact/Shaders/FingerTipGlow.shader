// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-1760-OUT,spec-1202-R,emission-5828-OUT;n:type:ShaderForge.SFN_Tex2d,id:292,x:31772,y:32621,varname:node_292,prsc:2,tex:fae296cda61716c46bf6675afafc1515,ntxv:0,isnm:False|TEX-6066-TEX;n:type:ShaderForge.SFN_Slider,id:4667,x:31627,y:32505,ptovrint:False,ptlb:IndexGradientAmount,ptin:_IndexGradientAmount,varname:node_4667,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5128205,max:1;n:type:ShaderForge.SFN_Add,id:7794,x:32216,y:32604,varname:node_7794,prsc:2|A-1965-OUT,B-1459-OUT;n:type:ShaderForge.SFN_RemapRange,id:1965,x:31998,y:32490,varname:node_1965,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-4667-OUT;n:type:ShaderForge.SFN_Tex2d,id:7779,x:32469,y:32384,ptovrint:False,ptlb:Texture_BaseDiffuse,ptin:_Texture_BaseDiffuse,varname:node_7779,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5daedc5a8f1008648bcfb5931d482c94,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8094,x:31761,y:32811,ptovrint:False,ptlb:GradientColor,ptin:_GradientColor,varname:node_8094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9586208,c4:1;n:type:ShaderForge.SFN_Multiply,id:1459,x:31998,y:32648,varname:node_1459,prsc:2|A-292-R,B-8094-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:6066,x:31588,y:32660,ptovrint:False,ptlb:IndexFingerMask,ptin:_IndexFingerMask,varname:node_6066,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fae296cda61716c46bf6675afafc1515,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Max,id:1760,x:32469,y:32581,varname:node_1760,prsc:2|A-7779-RGB,B-7794-OUT,C-2310-OUT;n:type:ShaderForge.SFN_Color,id:1202,x:32544,y:33539,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_1202,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:2962,x:32223,y:33300,ptovrint:False,ptlb:EmissionBase,ptin:_EmissionBase,varname:node_2962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Max,id:5828,x:32469,y:32745,varname:node_5828,prsc:2|A-7794-OUT,B-2962-RGB,C-2310-OUT;n:type:ShaderForge.SFN_Slider,id:6268,x:31471,y:33467,ptovrint:False,ptlb:MiddleGradientAmount,ptin:_MiddleGradientAmount,varname:node_6268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4721888,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:8808,x:31662,y:33575,ptovrint:False,ptlb:MiddleFingerMask,ptin:_MiddleFingerMask,varname:node_8808,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:726660719e28a8b4eabd178d9b4dc838,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8782,x:31836,y:33537,varname:node_8782,prsc:2,tex:726660719e28a8b4eabd178d9b4dc838,ntxv:0,isnm:False|TEX-8808-TEX;n:type:ShaderForge.SFN_Multiply,id:5273,x:32039,y:33565,varname:node_5273,prsc:2|A-8782-R,B-8094-RGB;n:type:ShaderForge.SFN_RemapRange,id:9314,x:32039,y:33406,varname:node_9314,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-6268-OUT;n:type:ShaderForge.SFN_Add,id:2310,x:32263,y:33504,varname:node_2310,prsc:2|A-9314-OUT,B-5273-OUT;n:type:ShaderForge.SFN_Slider,id:8830,x:31702,y:31793,ptovrint:False,ptlb:ThumbGradientAmount,ptin:_ThumbGradientAmount,varname:node_8830,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5811966,max:1;n:type:ShaderForge.SFN_RemapRange,id:2956,x:32084,y:31777,varname:node_2956,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0|IN-8830-OUT;n:type:ShaderForge.SFN_Add,id:371,x:32281,y:31932,varname:node_371,prsc:2|A-2956-OUT,B-8947-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9387,x:31684,y:31924,ptovrint:False,ptlb:ThumbMask,ptin:_ThumbMask,varname:node_9387,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cad36387206322344a56c5841fc31a74,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6148,x:31874,y:31887,varname:node_6148,prsc:2,tex:cad36387206322344a56c5841fc31a74,ntxv:0,isnm:False|TEX-9387-TEX;n:type:ShaderForge.SFN_Multiply,id:8947,x:32084,y:31953,varname:node_8947,prsc:2|A-6148-R;proporder:4667-7779-8094-6066-1202-2962-6268-8808-8830-9387;pass:END;sub:END;*/

Shader "Shader Forge/FingerTipGlow" {
    Properties {
        _IndexGradientAmount ("IndexGradientAmount", Range(0, 1)) = 0.5128205
        _Texture_BaseDiffuse ("Texture_BaseDiffuse", 2D) = "white" {}
        _GradientColor ("GradientColor", Color) = (0,1,0.9586208,1)
        _IndexFingerMask ("IndexFingerMask", 2D) = "white" {}
        _Metallic ("Metallic", Color) = (0,0,0,1)
        _EmissionBase ("EmissionBase", Color) = (0,0,0,1)
        _MiddleGradientAmount ("MiddleGradientAmount", Range(0, 1)) = 0.4721888
        _MiddleFingerMask ("MiddleFingerMask", 2D) = "white" {}
        _ThumbGradientAmount ("ThumbGradientAmount", Range(0, 1)) = 0.5811966
        _ThumbMask ("ThumbMask", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _IndexGradientAmount;
            uniform sampler2D _Texture_BaseDiffuse; uniform float4 _Texture_BaseDiffuse_ST;
            uniform float4 _GradientColor;
            uniform sampler2D _IndexFingerMask; uniform float4 _IndexFingerMask_ST;
            uniform float4 _Metallic;
            uniform float4 _EmissionBase;
            uniform float _MiddleGradientAmount;
            uniform sampler2D _MiddleFingerMask; uniform float4 _MiddleFingerMask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.5;
                float perceptualRoughness = 1.0 - 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic.r;
                float specularMonochrome;
                float4 _Texture_BaseDiffuse_var = tex2D(_Texture_BaseDiffuse,TRANSFORM_TEX(i.uv0, _Texture_BaseDiffuse));
                float4 node_292 = tex2D(_IndexFingerMask,TRANSFORM_TEX(i.uv0, _IndexFingerMask));
                float3 node_7794 = ((_IndexGradientAmount*1.0+-1.0)+(node_292.r*_GradientColor.rgb));
                float4 node_8782 = tex2D(_MiddleFingerMask,TRANSFORM_TEX(i.uv0, _MiddleFingerMask));
                float3 node_2310 = ((_MiddleGradientAmount*1.0+-1.0)+(node_8782.r*_GradientColor.rgb));
                float3 diffuseColor = max(max(_Texture_BaseDiffuse_var.rgb,node_7794),node_2310); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = max(max(node_7794,_EmissionBase.rgb),node_2310);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _IndexGradientAmount;
            uniform sampler2D _Texture_BaseDiffuse; uniform float4 _Texture_BaseDiffuse_ST;
            uniform float4 _GradientColor;
            uniform sampler2D _IndexFingerMask; uniform float4 _IndexFingerMask_ST;
            uniform float4 _Metallic;
            uniform float4 _EmissionBase;
            uniform float _MiddleGradientAmount;
            uniform sampler2D _MiddleFingerMask; uniform float4 _MiddleFingerMask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.5;
                float perceptualRoughness = 1.0 - 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic.r;
                float specularMonochrome;
                float4 _Texture_BaseDiffuse_var = tex2D(_Texture_BaseDiffuse,TRANSFORM_TEX(i.uv0, _Texture_BaseDiffuse));
                float4 node_292 = tex2D(_IndexFingerMask,TRANSFORM_TEX(i.uv0, _IndexFingerMask));
                float3 node_7794 = ((_IndexGradientAmount*1.0+-1.0)+(node_292.r*_GradientColor.rgb));
                float4 node_8782 = tex2D(_MiddleFingerMask,TRANSFORM_TEX(i.uv0, _MiddleFingerMask));
                float3 node_2310 = ((_MiddleGradientAmount*1.0+-1.0)+(node_8782.r*_GradientColor.rgb));
                float3 diffuseColor = max(max(_Texture_BaseDiffuse_var.rgb,node_7794),node_2310); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
