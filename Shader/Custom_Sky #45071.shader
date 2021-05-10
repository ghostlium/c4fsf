//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/Sky" {
Properties {
}
SubShader {
 Tags { "QUEUE" = "Geometry+500" "RenderType" = "Opaque" }
 Pass {
  Tags { "QUEUE" = "Geometry+500" "RenderType" = "Opaque" }
  ZWrite Off
  Cull Front
  GpuProgramID 14599
Program "vp" {
SubProgram "gles hw_tier00 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
attribute highp vec4 in_POSITION0;
varying mediump vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
mediump float u_xlat16_2;
mediump vec3 u_xlat16_5;
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
    gl_Position = u_xlat0;
    u_xlat0.x = u_xlat0.y / u_xlat0.w;
    u_xlat16_2 = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2 = clamp(u_xlat16_2, 0.0, 1.0);
    u_xlat16_5.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    vs_COLOR0.xyz = vec3(u_xlat16_2) * u_xlat16_5.xyz + _SkyGradientBottomColor.xyz;
    vs_COLOR0.w = 1.0;
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
varying mediump vec4 vs_COLOR0;
#define SV_Target0 gl_FragData[0]
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "gles hw_tier01 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
attribute highp vec4 in_POSITION0;
varying mediump vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
mediump float u_xlat16_2;
mediump vec3 u_xlat16_5;
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
    gl_Position = u_xlat0;
    u_xlat0.x = u_xlat0.y / u_xlat0.w;
    u_xlat16_2 = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2 = clamp(u_xlat16_2, 0.0, 1.0);
    u_xlat16_5.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    vs_COLOR0.xyz = vec3(u_xlat16_2) * u_xlat16_5.xyz + _SkyGradientBottomColor.xyz;
    vs_COLOR0.w = 1.0;
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
varying mediump vec4 vs_COLOR0;
#define SV_Target0 gl_FragData[0]
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif
"
}
SubProgram "gles hw_tier02 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	mediump vec4 _SkyGradientTopColor;
uniform 	mediump vec4 _SkyGradientBottomColor;
uniform 	mediump float _SkyGradientScale;
uniform 	mediump float _SkyGradientOffset;
attribute highp vec4 in_POSITION0;
varying mediump vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
mediump float u_xlat16_2;
mediump vec3 u_xlat16_5;
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
    gl_Position = u_xlat0;
    u_xlat0.x = u_xlat0.y / u_xlat0.w;
    u_xlat16_2 = _SkyGradientScale * u_xlat0.x + _SkyGradientOffset;
    u_xlat16_2 = clamp(u_xlat16_2, 0.0, 1.0);
    u_xlat16_5.xyz = _SkyGradientTopColor.xyz + (-_SkyGradientBottomColor.xyz);
    vs_COLOR0.xyz = vec3(u_xlat16_2) * u_xlat16_5.xyz + _SkyGradientBottomColor.xyz;
    vs_COLOR0.w = 1.0;
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
varying mediump vec4 vs_COLOR0;
#define SV_Target0 gl_FragData[0]
void main()
{
    SV_Target0 = vs_COLOR0;
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