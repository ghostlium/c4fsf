//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Bend/Flag Improved" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_Color ("Color (RGBA)", Color) = (1,1,1,1)
_Speed ("Speed", Float) = 22
_WaveWeights ("Wave Weights (XYZ)", Vector) = (1.45,0.45,2.2,0)
_WaveScale ("Wave Scale", Float) = 1
}
SubShader {
 Pass {
  Cull Off
  GpuProgramID 64070
Program "vp" {
SubProgram "gles hw_tier00 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _Time;
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
uniform 	float _Speed;
uniform 	vec4 _WaveWeights;
uniform 	float _WaveScale;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
mediump vec3 u_xlat16_6;
float u_xlat12;
void main()
{
    u_xlat0.x = _Time.x * _Speed;
    u_xlat0.x = u_xlat0.x * 10.0;
    u_xlat4 = dot(in_POSITION0.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat0.xyz = u_xlat0.xxx * _WaveWeights.xyz + vec3(u_xlat4);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.159155071, 0.159155071, 0.159155071) + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = fract(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = abs(u_xlat0.xyz) * abs(u_xlat0.xyz);
    u_xlat0.xyz = -abs(u_xlat0.xyz) * vec3(2.0, 2.0, 2.0) + vec3(3.0, 3.0, 3.0);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat12 = in_COLOR0.x * _WaveScale;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat12) + in_POSITION0.xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat1 = hlslcc_mtx4x4unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat1.x * _BendY;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.x + u_xlat0.y;
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
uniform lowp sampler2D _MainTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
mediump float u_xlat16_0;
lowp vec4 u_xlat10_0;
mediump vec3 u_xlat16_1;
void main()
{
    u_xlat10_0 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1.xyz = u_xlat10_0.xyz * _Color.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_0 = u_xlat10_0.w * _Color.w;
    SV_Target0.w = u_xlat16_0;
    SV_Target0.xyz = vs_TEXCOORD1.www * u_xlat16_1.xyz + vs_TEXCOORD1.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier01 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _Time;
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
uniform 	float _Speed;
uniform 	vec4 _WaveWeights;
uniform 	float _WaveScale;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
mediump vec3 u_xlat16_6;
float u_xlat12;
void main()
{
    u_xlat0.x = _Time.x * _Speed;
    u_xlat0.x = u_xlat0.x * 10.0;
    u_xlat4 = dot(in_POSITION0.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat0.xyz = u_xlat0.xxx * _WaveWeights.xyz + vec3(u_xlat4);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.159155071, 0.159155071, 0.159155071) + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = fract(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = abs(u_xlat0.xyz) * abs(u_xlat0.xyz);
    u_xlat0.xyz = -abs(u_xlat0.xyz) * vec3(2.0, 2.0, 2.0) + vec3(3.0, 3.0, 3.0);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat12 = in_COLOR0.x * _WaveScale;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat12) + in_POSITION0.xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat1 = hlslcc_mtx4x4unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat1.x * _BendY;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.x + u_xlat0.y;
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
uniform lowp sampler2D _MainTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
mediump float u_xlat16_0;
lowp vec4 u_xlat10_0;
mediump vec3 u_xlat16_1;
void main()
{
    u_xlat10_0 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1.xyz = u_xlat10_0.xyz * _Color.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_0 = u_xlat10_0.w * _Color.w;
    SV_Target0.w = u_xlat16_0;
    SV_Target0.xyz = vs_TEXCOORD1.www * u_xlat16_1.xyz + vs_TEXCOORD1.xyz;
    return;
}

#endif
"
}
SubProgram "gles hw_tier02 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _Time;
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
uniform 	float _Speed;
uniform 	vec4 _WaveWeights;
uniform 	float _WaveScale;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
mediump vec3 u_xlat16_2;
mediump vec3 u_xlat16_3;
float u_xlat4;
mediump vec3 u_xlat16_6;
float u_xlat12;
void main()
{
    u_xlat0.x = _Time.x * _Speed;
    u_xlat0.x = u_xlat0.x * 10.0;
    u_xlat4 = dot(in_POSITION0.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat0.xyz = u_xlat0.xxx * _WaveWeights.xyz + vec3(u_xlat4);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.159155071, 0.159155071, 0.159155071) + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = fract(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = abs(u_xlat0.xyz) * abs(u_xlat0.xyz);
    u_xlat0.xyz = -abs(u_xlat0.xyz) * vec3(2.0, 2.0, 2.0) + vec3(3.0, 3.0, 3.0);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat12 = in_COLOR0.x * _WaveScale;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat12) + in_POSITION0.xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat1 = hlslcc_mtx4x4unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    gl_Position.x = u_xlat1.x * _BendX + u_xlat0.x;
    u_xlat0.x = u_xlat1.x * _BendY;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.x + u_xlat0.y;
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
uniform lowp sampler2D _MainTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump vec4 vs_TEXCOORD1;
#define SV_Target0 gl_FragData[0]
mediump float u_xlat16_0;
lowp vec4 u_xlat10_0;
mediump vec3 u_xlat16_1;
void main()
{
    u_xlat10_0 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1.xyz = u_xlat10_0.xyz * _Color.xyz + (-vs_TEXCOORD1.xyz);
    u_xlat16_0 = u_xlat10_0.w * _Color.w;
    SV_Target0.w = u_xlat16_0;
    SV_Target0.xyz = vs_TEXCOORD1.www * u_xlat16_1.xyz + vs_TEXCOORD1.xyz;
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
}
}