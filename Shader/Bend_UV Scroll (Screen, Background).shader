//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Bend/UV Scroll (Screen, Background)" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_ScrollSpeed ("Scroll speed (xy)", Vector) = (0,0.5,0,0)
}
SubShader {
 Tags { "QUEUE" = "Geometry" }
 Pass {
  Tags { "QUEUE" = "Geometry" }
  GpuProgramID 59435
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
uniform 	mediump float _BackgroundDistanceScale;
uniform 	mediump float _BackgroundDistanceOffset;
uniform 	vec4 _MainTex_ST;
uniform 	vec4 _ScrollSpeed;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying mediump float vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
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
    vs_TEXCOORD1 = u_xlat0.x;
    u_xlat0.xy = _Time.yy * _ScrollSpeed.xy;
    u_xlat0.xy = u_xlat0.xy * _MainTex_ST.xy + in_TEXCOORD0.xy;
    vs_TEXCOORD0.xy = u_xlat0.xy + _MainTex_ST.zw;
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
uniform lowp sampler2D _MainTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump float vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
#define SV_Target0 gl_FragData[0]
lowp vec3 u_xlat10_0;
mediump vec3 u_xlat16_1;
mediump vec3 u_xlat16_2;
void main()
{
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = (-u_xlat10_0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-vs_COLOR0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = (-u_xlat16_2.xyz) * u_xlat16_1.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = u_xlat16_1.xyz + (-_BackgroundFogColor.xyz);
    SV_Target0.xyz = vec3(vs_TEXCOORD1) * u_xlat16_1.xyz + _BackgroundFogColor.xyz;
    SV_Target0.w = vs_COLOR0.w;
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
uniform 	mediump float _BackgroundDistanceScale;
uniform 	mediump float _BackgroundDistanceOffset;
uniform 	vec4 _MainTex_ST;
uniform 	vec4 _ScrollSpeed;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying mediump float vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
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
    vs_TEXCOORD1 = u_xlat0.x;
    u_xlat0.xy = _Time.yy * _ScrollSpeed.xy;
    u_xlat0.xy = u_xlat0.xy * _MainTex_ST.xy + in_TEXCOORD0.xy;
    vs_TEXCOORD0.xy = u_xlat0.xy + _MainTex_ST.zw;
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
uniform lowp sampler2D _MainTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump float vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
#define SV_Target0 gl_FragData[0]
lowp vec3 u_xlat10_0;
mediump vec3 u_xlat16_1;
mediump vec3 u_xlat16_2;
void main()
{
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = (-u_xlat10_0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-vs_COLOR0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = (-u_xlat16_2.xyz) * u_xlat16_1.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = u_xlat16_1.xyz + (-_BackgroundFogColor.xyz);
    SV_Target0.xyz = vec3(vs_TEXCOORD1) * u_xlat16_1.xyz + _BackgroundFogColor.xyz;
    SV_Target0.w = vs_COLOR0.w;
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
uniform 	mediump float _BackgroundDistanceScale;
uniform 	mediump float _BackgroundDistanceOffset;
uniform 	vec4 _MainTex_ST;
uniform 	vec4 _ScrollSpeed;
attribute highp vec4 in_POSITION0;
attribute highp vec2 in_TEXCOORD0;
attribute mediump vec4 in_COLOR0;
varying highp vec2 vs_TEXCOORD0;
varying mediump float vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
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
    vs_TEXCOORD1 = u_xlat0.x;
    u_xlat0.xy = _Time.yy * _ScrollSpeed.xy;
    u_xlat0.xy = u_xlat0.xy * _MainTex_ST.xy + in_TEXCOORD0.xy;
    vs_TEXCOORD0.xy = u_xlat0.xy + _MainTex_ST.zw;
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
uniform lowp sampler2D _MainTex;
varying highp vec2 vs_TEXCOORD0;
varying mediump float vs_TEXCOORD1;
varying mediump vec4 vs_COLOR0;
#define SV_Target0 gl_FragData[0]
lowp vec3 u_xlat10_0;
mediump vec3 u_xlat16_1;
mediump vec3 u_xlat16_2;
void main()
{
    u_xlat10_0.xyz = texture2D(_MainTex, vs_TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = (-u_xlat10_0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_2.xyz = (-vs_COLOR0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = (-u_xlat16_2.xyz) * u_xlat16_1.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat16_1.xyz = u_xlat16_1.xyz + (-_BackgroundFogColor.xyz);
    SV_Target0.xyz = vec3(vs_TEXCOORD1) * u_xlat16_1.xyz + _BackgroundFogColor.xyz;
    SV_Target0.w = vs_COLOR0.w;
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