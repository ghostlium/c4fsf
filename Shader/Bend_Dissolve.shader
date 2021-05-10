//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Bend/Dissolve" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_DissolveMaskTex ("Disolve Mask (A)", 2D) = "white" { }
_Color ("Color (RGBA)", Color) = (1,1,1,1)
_DissolveColor ("Dissolve Color (RGB)", Color) = (1,0.8,0.1,1)
_DissolveThreshold ("Dissolve threshold", Range(0, 1.1)) = 0
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  GpuProgramID 12117
Program "vp" {
SubProgram "gles hw_tier00 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
attribute highp vec4 in_POSITION0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat3;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat3 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    gl_Position.y = u_xlat3 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.zw = u_xlat0.zw;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
#define SV_Target0 gl_FragData[0]
void main()
{
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

#endif
"
}
SubProgram "gles hw_tier01 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
attribute highp vec4 in_POSITION0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat3;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat3 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    gl_Position.y = u_xlat3 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.zw = u_xlat0.zw;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
#define SV_Target0 gl_FragData[0]
void main()
{
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

#endif
"
}
SubProgram "gles hw_tier02 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
attribute highp vec4 in_POSITION0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat3;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat3 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    gl_Position.y = u_xlat3 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.zw = u_xlat0.zw;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
#define SV_Target0 gl_FragData[0]
void main()
{
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

#endif
"
}
}
Program "fp" {
SubProgram "gles hw_tier00 " {
""
}
SubProgram "gles hw_tier01 " {
""
}
SubProgram "gles hw_tier02 " {
""
}
}
}
 Pass {
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZTest Equal
  GpuProgramID 74743
Program "vp" {
SubProgram "gles hw_tier00 " {
Keywords { "COLOR_MULTIPLY" }
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump vec4 _FogSilhouetteColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
uniform 	mediump float _FogSilhouetteScale;
uniform 	mediump float _FogSilhouetteOffset;
uniform 	mediump float _FogScale;
uniform 	mediump float _FogOffset;
uniform 	vec4 _MainTex_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
float u_xlat5;
mediump vec3 u_xlat16_6;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat5 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat5 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.yzw = u_xlat0.xzw;
    u_xlat0.x = u_xlat0.x / u_xlat0.w;
    u_xlat16_2.x = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2.x = clamp(u_xlat16_2.x, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.x = u_xlat0.w * _FogSilhouetteScale + _FogSilhouetteOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4 = u_xlat0.w * _FogScale + _FogOffset;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    vs_TEXCOORD1.w = u_xlat4;
    u_xlat16_6.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    u_xlat16_2.xyz = u_xlat16_2.xxx * u_xlat16_6.xyz + _SkyGradientBottomColor.xyz;
    u_xlat16_3.xyz = (-u_xlat16_2.xyz) + _FogSilhouetteColor.xyz;
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat16_3.xyz + u_xlat16_2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	mediump vec4 _Color;
uniform 	mediump vec4 _DissolveColor;
uniform 	float _DissolveThreshold;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _DissolveMaskTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
lowp vec3 u_xlat10_0;
mediump float u_xlat16_1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_4;
void main()
{
    u_xlat10_0.x = texture2D(_DissolveMaskTex, vs_TEXCOORD0.xy).w;
    u_xlat16_1 = u_xlat10_0.x + 0.150000006;
    u_xlat0 = u_xlat10_0.x + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 20.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    SV_Target0.w = u_xlat0;
    u_xlat0 = u_xlat16_1 + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 10.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat16_1 = (-u_xlat0) + 1.0;
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_4.xyz = u_xlat10_0.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_4.xyz = vs_TEXCOORD1.www * u_xlat16_4.xyz + vs_TEXCOORD1.xyz;
    u_xlat16_2.xyz = u_xlat16_4.xyz * _Color.xyz;
    u_xlat16_4.xyz = (-u_xlat16_4.xyz) * _Color.xyz + _DissolveColor.xyz;
    SV_Target0.xyz = vec3(u_xlat16_1) * u_xlat16_4.xyz + u_xlat16_2.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "COLOR_MULTIPLY" }
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump vec4 _FogSilhouetteColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
uniform 	mediump float _FogSilhouetteScale;
uniform 	mediump float _FogSilhouetteOffset;
uniform 	mediump float _FogScale;
uniform 	mediump float _FogOffset;
uniform 	vec4 _MainTex_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
float u_xlat5;
mediump vec3 u_xlat16_6;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat5 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat5 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.yzw = u_xlat0.xzw;
    u_xlat0.x = u_xlat0.x / u_xlat0.w;
    u_xlat16_2.x = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2.x = clamp(u_xlat16_2.x, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.x = u_xlat0.w * _FogSilhouetteScale + _FogSilhouetteOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4 = u_xlat0.w * _FogScale + _FogOffset;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    vs_TEXCOORD1.w = u_xlat4;
    u_xlat16_6.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    u_xlat16_2.xyz = u_xlat16_2.xxx * u_xlat16_6.xyz + _SkyGradientBottomColor.xyz;
    u_xlat16_3.xyz = (-u_xlat16_2.xyz) + _FogSilhouetteColor.xyz;
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat16_3.xyz + u_xlat16_2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	mediump vec4 _Color;
uniform 	mediump vec4 _DissolveColor;
uniform 	float _DissolveThreshold;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _DissolveMaskTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
lowp vec3 u_xlat10_0;
mediump float u_xlat16_1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_4;
void main()
{
    u_xlat10_0.x = texture2D(_DissolveMaskTex, vs_TEXCOORD0.xy).w;
    u_xlat16_1 = u_xlat10_0.x + 0.150000006;
    u_xlat0 = u_xlat10_0.x + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 20.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    SV_Target0.w = u_xlat0;
    u_xlat0 = u_xlat16_1 + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 10.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat16_1 = (-u_xlat0) + 1.0;
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_4.xyz = u_xlat10_0.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_4.xyz = vs_TEXCOORD1.www * u_xlat16_4.xyz + vs_TEXCOORD1.xyz;
    u_xlat16_2.xyz = u_xlat16_4.xyz * _Color.xyz;
    u_xlat16_4.xyz = (-u_xlat16_4.xyz) * _Color.xyz + _DissolveColor.xyz;
    SV_Target0.xyz = vec3(u_xlat16_1) * u_xlat16_4.xyz + u_xlat16_2.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "COLOR_MULTIPLY" }
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump vec4 _FogSilhouetteColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
uniform 	mediump float _FogSilhouetteScale;
uniform 	mediump float _FogSilhouetteOffset;
uniform 	mediump float _FogScale;
uniform 	mediump float _FogOffset;
uniform 	vec4 _MainTex_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
float u_xlat5;
mediump vec3 u_xlat16_6;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat5 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat5 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.yzw = u_xlat0.xzw;
    u_xlat0.x = u_xlat0.x / u_xlat0.w;
    u_xlat16_2.x = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2.x = clamp(u_xlat16_2.x, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.x = u_xlat0.w * _FogSilhouetteScale + _FogSilhouetteOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4 = u_xlat0.w * _FogScale + _FogOffset;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    vs_TEXCOORD1.w = u_xlat4;
    u_xlat16_6.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    u_xlat16_2.xyz = u_xlat16_2.xxx * u_xlat16_6.xyz + _SkyGradientBottomColor.xyz;
    u_xlat16_3.xyz = (-u_xlat16_2.xyz) + _FogSilhouetteColor.xyz;
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat16_3.xyz + u_xlat16_2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	mediump vec4 _Color;
uniform 	mediump vec4 _DissolveColor;
uniform 	float _DissolveThreshold;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _DissolveMaskTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
lowp vec3 u_xlat10_0;
mediump float u_xlat16_1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_4;
void main()
{
    u_xlat10_0.x = texture2D(_DissolveMaskTex, vs_TEXCOORD0.xy).w;
    u_xlat16_1 = u_xlat10_0.x + 0.150000006;
    u_xlat0 = u_xlat10_0.x + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 20.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    SV_Target0.w = u_xlat0;
    u_xlat0 = u_xlat16_1 + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 10.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat16_1 = (-u_xlat0) + 1.0;
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_4.xyz = u_xlat10_0.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_4.xyz = vs_TEXCOORD1.www * u_xlat16_4.xyz + vs_TEXCOORD1.xyz;
    u_xlat16_2.xyz = u_xlat16_4.xyz * _Color.xyz;
    u_xlat16_4.xyz = (-u_xlat16_4.xyz) * _Color.xyz + _DissolveColor.xyz;
    SV_Target0.xyz = vec3(u_xlat16_1) * u_xlat16_4.xyz + u_xlat16_2.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "COLOR_SCREEN" }
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump vec4 _FogSilhouetteColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
uniform 	mediump float _FogSilhouetteScale;
uniform 	mediump float _FogSilhouetteOffset;
uniform 	mediump float _FogScale;
uniform 	mediump float _FogOffset;
uniform 	vec4 _MainTex_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
float u_xlat5;
mediump vec3 u_xlat16_6;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat5 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat5 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.yzw = u_xlat0.xzw;
    u_xlat0.x = u_xlat0.x / u_xlat0.w;
    u_xlat16_2.x = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2.x = clamp(u_xlat16_2.x, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.x = u_xlat0.w * _FogSilhouetteScale + _FogSilhouetteOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4 = u_xlat0.w * _FogScale + _FogOffset;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    vs_TEXCOORD1.w = u_xlat4;
    u_xlat16_6.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    u_xlat16_2.xyz = u_xlat16_2.xxx * u_xlat16_6.xyz + _SkyGradientBottomColor.xyz;
    u_xlat16_3.xyz = (-u_xlat16_2.xyz) + _FogSilhouetteColor.xyz;
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat16_3.xyz + u_xlat16_2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	mediump vec4 _Color;
uniform 	mediump vec4 _DissolveColor;
uniform 	float _DissolveThreshold;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _DissolveMaskTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
lowp vec3 u_xlat10_0;
mediump vec3 u_xlat16_1;
mediump vec3 u_xlat16_2;
mediump float u_xlat16_10;
void main()
{
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = u_xlat10_0.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_1.xyz = vs_TEXCOORD1.www * u_xlat16_1.xyz + vs_TEXCOORD1.xyz;
    u_xlat16_1.xyz = (-u_xlat16_1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-_Color.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = (-u_xlat16_1.xyz) * u_xlat16_2.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-u_xlat16_1.xyz) + _DissolveColor.xyz;
    u_xlat10_0.x = texture2D(_DissolveMaskTex, vs_TEXCOORD0.xy).w;
    u_xlat16_10 = u_xlat10_0.x + 0.150000006;
    u_xlat0 = u_xlat10_0.x + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 20.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    SV_Target0.w = u_xlat0;
    u_xlat0 = u_xlat16_10 + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 10.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat16_10 = (-u_xlat0) + 1.0;
    SV_Target0.xyz = vec3(u_xlat16_10) * u_xlat16_2.xyz + u_xlat16_1.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "COLOR_SCREEN" }
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump vec4 _FogSilhouetteColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
uniform 	mediump float _FogSilhouetteScale;
uniform 	mediump float _FogSilhouetteOffset;
uniform 	mediump float _FogScale;
uniform 	mediump float _FogOffset;
uniform 	vec4 _MainTex_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
float u_xlat5;
mediump vec3 u_xlat16_6;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat5 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat5 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.yzw = u_xlat0.xzw;
    u_xlat0.x = u_xlat0.x / u_xlat0.w;
    u_xlat16_2.x = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2.x = clamp(u_xlat16_2.x, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.x = u_xlat0.w * _FogSilhouetteScale + _FogSilhouetteOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4 = u_xlat0.w * _FogScale + _FogOffset;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    vs_TEXCOORD1.w = u_xlat4;
    u_xlat16_6.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    u_xlat16_2.xyz = u_xlat16_2.xxx * u_xlat16_6.xyz + _SkyGradientBottomColor.xyz;
    u_xlat16_3.xyz = (-u_xlat16_2.xyz) + _FogSilhouetteColor.xyz;
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat16_3.xyz + u_xlat16_2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	mediump vec4 _Color;
uniform 	mediump vec4 _DissolveColor;
uniform 	float _DissolveThreshold;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _DissolveMaskTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
lowp vec3 u_xlat10_0;
mediump vec3 u_xlat16_1;
mediump vec3 u_xlat16_2;
mediump float u_xlat16_10;
void main()
{
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = u_xlat10_0.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_1.xyz = vs_TEXCOORD1.www * u_xlat16_1.xyz + vs_TEXCOORD1.xyz;
    u_xlat16_1.xyz = (-u_xlat16_1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-_Color.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = (-u_xlat16_1.xyz) * u_xlat16_2.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-u_xlat16_1.xyz) + _DissolveColor.xyz;
    u_xlat10_0.x = texture2D(_DissolveMaskTex, vs_TEXCOORD0.xy).w;
    u_xlat16_10 = u_xlat10_0.x + 0.150000006;
    u_xlat0 = u_xlat10_0.x + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 20.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    SV_Target0.w = u_xlat0;
    u_xlat0 = u_xlat16_10 + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 10.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat16_10 = (-u_xlat0) + 1.0;
    SV_Target0.xyz = vec3(u_xlat16_10) * u_xlat16_2.xyz + u_xlat16_1.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "COLOR_SCREEN" }
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump vec4 _FogSilhouetteColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
uniform 	mediump float _FogSilhouetteScale;
uniform 	mediump float _FogSilhouetteOffset;
uniform 	mediump float _FogScale;
uniform 	mediump float _FogOffset;
uniform 	vec4 _MainTex_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
float u_xlat5;
mediump vec3 u_xlat16_6;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat5 = u_xlat1.x * _BendY;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat5 * _ProjectionParams.x + u_xlat0.y;
    gl_Position.yzw = u_xlat0.xzw;
    u_xlat0.x = u_xlat0.x / u_xlat0.w;
    u_xlat16_2.x = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2.x = clamp(u_xlat16_2.x, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.x = u_xlat0.w * _FogSilhouetteScale + _FogSilhouetteOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4 = u_xlat0.w * _FogScale + _FogOffset;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    vs_TEXCOORD1.w = u_xlat4;
    u_xlat16_6.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    u_xlat16_2.xyz = u_xlat16_2.xxx * u_xlat16_6.xyz + _SkyGradientBottomColor.xyz;
    u_xlat16_3.xyz = (-u_xlat16_2.xyz) + _FogSilhouetteColor.xyz;
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat16_3.xyz + u_xlat16_2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	mediump vec4 _Color;
uniform 	mediump vec4 _DissolveColor;
uniform 	float _DissolveThreshold;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _DissolveMaskTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
lowp vec3 u_xlat10_0;
mediump vec3 u_xlat16_1;
mediump vec3 u_xlat16_2;
mediump float u_xlat16_10;
void main()
{
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = u_xlat10_0.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_1.xyz = vs_TEXCOORD1.www * u_xlat16_1.xyz + vs_TEXCOORD1.xyz;
    u_xlat16_1.xyz = (-u_xlat16_1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-_Color.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = (-u_xlat16_1.xyz) * u_xlat16_2.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-u_xlat16_1.xyz) + _DissolveColor.xyz;
    u_xlat10_0.x = texture2D(_DissolveMaskTex, vs_TEXCOORD0.xy).w;
    u_xlat16_10 = u_xlat10_0.x + 0.150000006;
    u_xlat0 = u_xlat10_0.x + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 20.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    SV_Target0.w = u_xlat0;
    u_xlat0 = u_xlat16_10 + (-_DissolveThreshold);
    u_xlat0 = u_xlat0 * 10.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat16_10 = (-u_xlat0) + 1.0;
    SV_Target0.xyz = vec3(u_xlat16_10) * u_xlat16_2.xyz + u_xlat16_1.xyz;
    return;
}

#endif
"
}
}
Program "fp" {
SubProgram "gles hw_tier00 " {
Keywords { "COLOR_MULTIPLY" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "COLOR_MULTIPLY" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "COLOR_MULTIPLY" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "COLOR_SCREEN" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "COLOR_SCREEN" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "COLOR_SCREEN" }
""
}
}
}
}
Fallback "Bend/Diffuse"
CustomEditor "BendDissolveMaterialInspector"
}