//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Bend/Portal Depth Cut" {
Properties {
_FadeBand ("Fade Band", Float) = 0.1
_BlendFactor ("Blend Factor", Range(0, 1.5)) = 0
_Color ("Color", Color) = (1,1,1,1)
_EdgeColor ("Edge Color", Color) = (1,1,1,1)
_FadeMask ("Fade Mask", 2D) = "white" { }
}
SubShader {
 Tags { "QUEUE" = "Geometry-99" }
 Pass {
  Tags { "QUEUE" = "Geometry-99" }
  GpuProgramID 55249
Program "vp" {
SubProgram "gles hw_tier00 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	vec4 _FadeMask_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
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
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _FadeMask_ST.xy + _FadeMask_ST.zw;
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
uniform 	mediump vec4 _EdgeColor;
uniform 	mediump float _BlendFactor;
uniform 	float _FadeBand;
uniform lowp sampler2D _FadeMask;
varying highp vec2 vs_TEXCOORD0;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
mediump float u_xlat16_0;
lowp float u_xlat10_0;
mediump float u_xlat16_1;
float u_xlat2;
mediump vec3 u_xlat16_3;
void main()
{
    u_xlat10_0 = texture2D(_FadeMask, vs_TEXCOORD0.xy).w;
    u_xlat16_0 = (-u_xlat10_0) + _BlendFactor;
    u_xlat2 = float(1.0) / _FadeBand;
    u_xlat0 = u_xlat2 * u_xlat16_0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat2 = u_xlat0 * -2.0 + 3.0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat16_1 = u_xlat0 * u_xlat0;
    u_xlat16_1 = u_xlat0 * u_xlat16_1;
    SV_Target0.w = u_xlat0;
    u_xlat16_3.xyz = _Color.xyz + (-_EdgeColor.xyz);
    SV_Target0.xyz = vec3(u_xlat16_1) * u_xlat16_3.xyz + _EdgeColor.xyz;
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
uniform 	vec4 _FadeMask_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
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
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _FadeMask_ST.xy + _FadeMask_ST.zw;
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
uniform 	mediump vec4 _EdgeColor;
uniform 	mediump float _BlendFactor;
uniform 	float _FadeBand;
uniform lowp sampler2D _FadeMask;
varying highp vec2 vs_TEXCOORD0;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
mediump float u_xlat16_0;
lowp float u_xlat10_0;
mediump float u_xlat16_1;
float u_xlat2;
mediump vec3 u_xlat16_3;
void main()
{
    u_xlat10_0 = texture2D(_FadeMask, vs_TEXCOORD0.xy).w;
    u_xlat16_0 = (-u_xlat10_0) + _BlendFactor;
    u_xlat2 = float(1.0) / _FadeBand;
    u_xlat0 = u_xlat2 * u_xlat16_0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat2 = u_xlat0 * -2.0 + 3.0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat16_1 = u_xlat0 * u_xlat0;
    u_xlat16_1 = u_xlat0 * u_xlat16_1;
    SV_Target0.w = u_xlat0;
    u_xlat16_3.xyz = _Color.xyz + (-_EdgeColor.xyz);
    SV_Target0.xyz = vec3(u_xlat16_1) * u_xlat16_3.xyz + _EdgeColor.xyz;
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
uniform 	vec4 _FadeMask_ST;
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_TEXCOORD0;
varying highp vec2 vs_TEXCOORD0;
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
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _FadeMask_ST.xy + _FadeMask_ST.zw;
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
uniform 	mediump vec4 _EdgeColor;
uniform 	mediump float _BlendFactor;
uniform 	float _FadeBand;
uniform lowp sampler2D _FadeMask;
varying highp vec2 vs_TEXCOORD0;
#define SV_Target0 gl_FragData[0]
float u_xlat0;
mediump float u_xlat16_0;
lowp float u_xlat10_0;
mediump float u_xlat16_1;
float u_xlat2;
mediump vec3 u_xlat16_3;
void main()
{
    u_xlat10_0 = texture2D(_FadeMask, vs_TEXCOORD0.xy).w;
    u_xlat16_0 = (-u_xlat10_0) + _BlendFactor;
    u_xlat2 = float(1.0) / _FadeBand;
    u_xlat0 = u_xlat2 * u_xlat16_0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat2 = u_xlat0 * -2.0 + 3.0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat16_1 = u_xlat0 * u_xlat0;
    u_xlat16_1 = u_xlat0 * u_xlat16_1;
    SV_Target0.w = u_xlat0;
    u_xlat16_3.xyz = _Color.xyz + (-_EdgeColor.xyz);
    SV_Target0.xyz = vec3(u_xlat16_1) * u_xlat16_3.xyz + _EdgeColor.xyz;
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