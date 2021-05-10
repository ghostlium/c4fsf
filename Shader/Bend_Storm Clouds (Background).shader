//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Bend/Storm Clouds (Background)" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_MaskTex ("Mask (RGB)", 2D) = "white" { }
_MaskColor ("Mask Color (RGB)", Color) = (1,1,1,1)
_MaskOffsetScale ("Mask Offset (X, Y, ScaleX, ScaleY)", Vector) = (0,0,2,2)
}
SubShader {
 Pass {
  GpuProgramID 49970
Program "vp" {
SubProgram "gles hw_tier00 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 _ProjectionParams;
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	float _BendY;
uniform 	float _BendX;
uniform 	mediump float _BackgroundDistanceScale;
uniform 	mediump float _BackgroundDistanceOffset;
uniform 	vec4 _MaskOffsetScale;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute highp vec2 in_TEXCOORD1;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying highp vec2 vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
varying mediump float vs_TEXCOORD2;
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
    u_xlat0.x = u_xlat0.w * _BackgroundDistanceScale + _BackgroundDistanceOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    vs_TEXCOORD2 = u_xlat0.x;
    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * _MaskOffsetScale.zw + _MaskOffsetScale.xy;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    vs_COLOR0 = in_COLOR0;
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
uniform 	mediump vec4 _BackgroundFogColor;
uniform 	mediump vec4 _MaskColor;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _MaskTex;
varying highp vec2 vs_TEXCOORD0;
varying highp vec2 vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
varying mediump float vs_TEXCOORD2;
#define SV_Target0 gl_FragData[0]
lowp vec4 u_xlat10_0;
mediump vec3 u_xlat16_1;
void main()
{
    u_xlat10_0.xyz = texture2D(_MaskTex, vs_TEXCOORD1.xy).xyz;
    u_xlat16_1.xyz = u_xlat10_0.xyz * vs_COLOR0.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * _MaskColor.xyz;
    u_xlat10_0 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1.xyz = u_xlat16_1.xyz * vec3(2.0, 2.0, 2.0) + u_xlat10_0.xyz;
    SV_Target0.w = u_xlat10_0.w;
    u_xlat16_1.xyz = u_xlat16_1.xyz + (-_BackgroundFogColor.xyz);
    SV_Target0.xyz = vec3(vs_TEXCOORD2) * u_xlat16_1.xyz + _BackgroundFogColor.xyz;
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
uniform 	mediump float _BackgroundDistanceScale;
uniform 	mediump float _BackgroundDistanceOffset;
uniform 	vec4 _MaskOffsetScale;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute highp vec2 in_TEXCOORD1;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying highp vec2 vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
varying mediump float vs_TEXCOORD2;
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
    u_xlat0.x = u_xlat0.w * _BackgroundDistanceScale + _BackgroundDistanceOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    vs_TEXCOORD2 = u_xlat0.x;
    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * _MaskOffsetScale.zw + _MaskOffsetScale.xy;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    vs_COLOR0 = in_COLOR0;
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
uniform 	mediump vec4 _BackgroundFogColor;
uniform 	mediump vec4 _MaskColor;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _MaskTex;
varying highp vec2 vs_TEXCOORD0;
varying highp vec2 vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
varying mediump float vs_TEXCOORD2;
#define SV_Target0 gl_FragData[0]
lowp vec4 u_xlat10_0;
mediump vec3 u_xlat16_1;
void main()
{
    u_xlat10_0.xyz = texture2D(_MaskTex, vs_TEXCOORD1.xy).xyz;
    u_xlat16_1.xyz = u_xlat10_0.xyz * vs_COLOR0.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * _MaskColor.xyz;
    u_xlat10_0 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1.xyz = u_xlat16_1.xyz * vec3(2.0, 2.0, 2.0) + u_xlat10_0.xyz;
    SV_Target0.w = u_xlat10_0.w;
    u_xlat16_1.xyz = u_xlat16_1.xyz + (-_BackgroundFogColor.xyz);
    SV_Target0.xyz = vec3(vs_TEXCOORD2) * u_xlat16_1.xyz + _BackgroundFogColor.xyz;
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
uniform 	mediump float _BackgroundDistanceScale;
uniform 	mediump float _BackgroundDistanceOffset;
uniform 	vec4 _MaskOffsetScale;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute highp vec2 in_TEXCOORD1;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying highp vec2 vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
varying mediump float vs_TEXCOORD2;
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
    u_xlat0.x = u_xlat0.w * _BackgroundDistanceScale + _BackgroundDistanceOffset;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    vs_TEXCOORD2 = u_xlat0.x;
    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * _MaskOffsetScale.zw + _MaskOffsetScale.xy;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    vs_COLOR0 = in_COLOR0;
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
uniform 	mediump vec4 _BackgroundFogColor;
uniform 	mediump vec4 _MaskColor;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _MaskTex;
varying highp vec2 vs_TEXCOORD0;
varying highp vec2 vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
varying mediump float vs_TEXCOORD2;
#define SV_Target0 gl_FragData[0]
lowp vec4 u_xlat10_0;
mediump vec3 u_xlat16_1;
void main()
{
    u_xlat10_0.xyz = texture2D(_MaskTex, vs_TEXCOORD1.xy).xyz;
    u_xlat16_1.xyz = u_xlat10_0.xyz * vs_COLOR0.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * _MaskColor.xyz;
    u_xlat10_0 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1.xyz = u_xlat16_1.xyz * vec3(2.0, 2.0, 2.0) + u_xlat10_0.xyz;
    SV_Target0.w = u_xlat10_0.w;
    u_xlat16_1.xyz = u_xlat16_1.xyz + (-_BackgroundFogColor.xyz);
    SV_Target0.xyz = vec3(vs_TEXCOORD2) * u_xlat16_1.xyz + _BackgroundFogColor.xyz;
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
Fallback "Bend/Diffuse"
}