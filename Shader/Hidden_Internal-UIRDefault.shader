//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-UIRDefault" {
Properties {
_MainTex ("Atlas", 2D) = "white" { }
_FontTex ("Font", 2D) = "black" { }
_CustomTex ("Custom", 2D) = "black" { }
_Color ("Tint", Color) = (1,1,1,1)
_StencilCompFront ("__scf", Float) = 3
_StencilPassFront ("__spf", Float) = 0
_StencilZFailFront ("__szf", Float) = 1
_StencilFailFront ("__sff", Float) = 0
_StencilCompBack ("__scb", Float) = 8
_StencilPassBack ("__spb", Float) = 0
_StencilZFailBack ("__szb", Float) = 2
_StencilFailBack ("__sfb", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" "UIE_VertexTexturingIsAvailable" = "1" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" "UIE_VertexTexturingIsAvailable" = "1" }
  ZTest GEqual
  ZWrite Off
  Cull Off
  GpuProgramID 24877
}
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZTest GEqual
  ZWrite Off
  Cull Off
  GpuProgramID 98481
Program "vp" {
SubProgram "gles hw_tier00 " {
"#ifdef VERTEX
#version 100

uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	vec4 _MainTex_ST;
uniform 	vec4 _MainTex_TexelSize;
uniform 	vec4 _ShaderInfoTex_TexelSize;
uniform 	vec4 _1PixelClipInvView;
uniform 	vec4 _Transforms[60];
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_COLOR0;
attribute highp vec2 in_TEXCOORD0;
attribute highp vec4 in_TEXCOORD2;
attribute highp vec4 in_TEXCOORD3;
varying mediump vec4 vs_COLOR0;
varying highp vec4 vs_TEXCOORD0;
flat varying mediump vec4 vs_TEXCOORD1;
flat varying mediump vec3 vs_TEXCOORD2;
flat varying mediump vec4 vs_TEXCOORD3;
vec4 u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec2 u_xlat1;
ivec2 u_xlati1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec2 u_xlat6;
float u_xlat7;
bool u_xlatb7;
float u_xlat11;
float u_xlat14;
vec2 u_xlat15;
bvec2 u_xlatb15;
vec2 u_xlat18;
vec2 u_xlat19;
float u_xlat23;
float roundEven(float x) { float y = floor(x + 0.5); return (y - x == 0.5) ? floor(0.5*y) * 2.0 : y; }
vec2 roundEven(vec2 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); return a; }
vec3 roundEven(vec3 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); a.z = roundEven(a.z); return a; }
vec4 roundEven(vec4 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); a.z = roundEven(a.z); a.w = roundEven(a.w); return a; }

void main()
{
    u_xlat0 = in_TEXCOORD2.xwzz * vec4(765.0, 255.0, 255.0, 8160.0);
    u_xlati0 = int(u_xlat0.x);
    u_xlati1.xy = ivec2(u_xlati0) + ivec2(1, 2);
    u_xlat2.y = in_TEXCOORD2.w * 255.0 + -8.0;
    u_xlat2.y = clamp(u_xlat2.y, 0.0, 1.0);
    u_xlat7 = (-u_xlat2.y) * 9.0 + u_xlat0.y;
    u_xlat2.x = u_xlat7 + -7.0;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat2.x) * 8.0 + u_xlat7;
    u_xlat15.x = u_xlat7 + -6.0;
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat15.x) * 7.0 + u_xlat7;
    u_xlat15.y = u_xlat7 + -5.0;
    u_xlat15.y = clamp(u_xlat15.y, 0.0, 1.0);
    u_xlat7 = (-u_xlat15.y) * 6.0 + u_xlat7;
    u_xlat23 = u_xlat7 + -4.0;
    u_xlat23 = clamp(u_xlat23, 0.0, 1.0);
    u_xlat7 = (-u_xlat23) * 5.0 + u_xlat7;
    u_xlat3.z = u_xlat7 + -3.0;
    u_xlat3.z = clamp(u_xlat3.z, 0.0, 1.0);
    u_xlat7 = (-u_xlat3.z) * 4.0 + u_xlat7;
    u_xlat4.x = u_xlat7 + -2.0;
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat4.x) * 3.0 + u_xlat7;
    u_xlat11 = u_xlat7 + -1.0;
    u_xlat11 = clamp(u_xlat11, 0.0, 1.0);
    u_xlat3.x = (-u_xlat11) * 2.0 + u_xlat7;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat3.y = u_xlat11 + u_xlat4.x;
    u_xlat7 = u_xlat3.y + u_xlat3.x;
    u_xlat7 = u_xlat3.z + u_xlat7;
    u_xlat7 = u_xlat2.x + u_xlat7;
    u_xlat7 = u_xlat2.y + u_xlat7;
    u_xlat7 = min(u_xlat7, 1.0);
    u_xlat3.w = (-u_xlat7) + 1.0;
    u_xlatb7 = u_xlat23==1.0;
    u_xlatb15.xy = equal(u_xlat15.xyxy, vec4(1.0, 1.0, 1.0, 1.0)).xy;
    u_xlatb7 = u_xlatb7 || u_xlatb15.y;
    u_xlatb7 = u_xlatb15.x || u_xlatb7;
    if(u_xlatb7){
        u_xlat4.x = dot(_Transforms[u_xlati0].xy, in_TEXCOORD0.xy);
        u_xlat4.y = dot(_Transforms[u_xlati1.x].xy, in_TEXCOORD0.xy);
        u_xlat18.xy = u_xlat4.xy * _1PixelClipInvView.zw;
        u_xlat5.xy = max(abs(u_xlat18.xy), vec2(1.0, 1.0));
        u_xlat19.xy = roundEven(u_xlat5.xy);
        u_xlat5.xy = max(u_xlat5.xy, u_xlat19.xy);
        u_xlat6.x = (u_xlatb15.y) ? u_xlat5.x : u_xlat19.x;
        u_xlat6.y = (u_xlatb15.x) ? u_xlat5.y : u_xlat19.y;
        u_xlat15.xy = abs(u_xlat18.xy) + vec2(9.99999997e-07, 9.99999997e-07);
        u_xlat15.xy = u_xlat6.xy / u_xlat15.xy;
        u_xlat15.xy = max(u_xlat15.xy, vec2(0.00999999978, 0.00999999978));
        u_xlat15.xy = min(u_xlat15.xy, vec2(100.0, 100.0));
        u_xlat15.xy = u_xlat15.xy + vec2(-1.0, -1.0);
        u_xlat15.xy = u_xlat4.xy * u_xlat15.xy;
    } else {
        u_xlat15.x = float(0.0);
        u_xlat15.y = float(0.0);
    }
    u_xlat18.x = dot(_Transforms[u_xlati0], in_POSITION0);
    u_xlat18.y = dot(_Transforms[u_xlati1.x], in_POSITION0);
    u_xlat0.x = dot(_Transforms[u_xlati1.y], in_POSITION0);
    u_xlat1.xy = u_xlat15.xy + u_xlat18.xy;
    u_xlat4 = u_xlat1.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat4 = hlslcc_mtx4x4unity_ObjectToWorld[0] * u_xlat1.xxxx + u_xlat4;
    u_xlat4 = hlslcc_mtx4x4unity_ObjectToWorld[2] * u_xlat0.xxxx + u_xlat4;
    u_xlat4 = u_xlat4 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat5 = u_xlat4.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat5 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat4.xxxx + u_xlat5;
    u_xlat5 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat4.zzzz + u_xlat5;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat4.wwww + u_xlat5;
    u_xlat0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlatb15.x = u_xlat3.y==1.0;
    u_xlat4.xy = u_xlat0.xy * _MainTex_TexelSize.xy;
    vs_TEXCOORD0.xy = (u_xlatb15.x) ? u_xlat4.xy : u_xlat0.xy;
    u_xlat2.z = dot(in_TEXCOORD3.zw, vec2(65025.0, 255.0));
    u_xlatb0 = u_xlat0.w>=(-u_xlat0.w);
    u_xlat0.xy = (bool(u_xlatb0)) ? vec2(32.0, 0.03125) : vec2(-32.0, -0.03125);
    u_xlat7 = u_xlat0.y * u_xlat0.z;
    u_xlat7 = fract(u_xlat7);
    u_xlat0.x = u_xlat7 * u_xlat0.x;
    u_xlat7 = in_TEXCOORD2.z * 255.0 + (-u_xlat0.x);
    u_xlat14 = in_TEXCOORD3.y * 2040.0;
    u_xlat15.x = in_TEXCOORD3.x * 8160.0 + u_xlat0.x;
    u_xlat15.y = u_xlat7 * 0.03125 + u_xlat14;
    u_xlat0.xy = u_xlat15.xy + vec2(0.5, 0.5);
    u_xlat0.zw = u_xlat0.xy * _ShaderInfoTex_TexelSize.xy;
    vs_COLOR0 = in_COLOR0;
    vs_TEXCOORD0.zw = u_xlat1.xy;
    vs_TEXCOORD1 = u_xlat3;
    u_xlat0.x = in_TEXCOORD2.y * 255.0;
    u_xlat0.y = 0.0;
    vs_TEXCOORD3 = u_xlat0;
    vs_TEXCOORD2.xyz = u_xlat2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100
#ifdef GL_OES_standard_derivatives
#extension GL_OES_standard_derivatives : enable
#endif

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	vec4 _MainTex_TexelSize;
uniform 	vec4 _CustomTex_TexelSize;
uniform 	vec4 _GradientSettingsTex_TexelSize;
uniform 	vec4 _PixelClipRect;
uniform 	vec4 _ClipRects[20];
uniform lowp sampler2D _ShaderInfoTex;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _FontTex;
uniform lowp sampler2D _CustomTex;
uniform lowp sampler2D _GradientSettingsTex;
varying mediump vec4 vs_COLOR0;
varying highp vec4 vs_TEXCOORD0;
flat varying mediump vec4 vs_TEXCOORD1;
flat varying mediump vec3 vs_TEXCOORD2;
flat varying mediump vec4 vs_TEXCOORD3;
#define SV_Target0 gl_FragData[0]
vec4 u_xlat0;
mediump float u_xlat16_0;
lowp float u_xlat10_0;
int u_xlatu0;
bvec4 u_xlatb0;
mediump vec4 u_xlat16_1;
lowp vec4 u_xlat10_1;
vec2 u_xlat2;
mediump vec4 u_xlat16_2;
lowp vec4 u_xlat10_2;
vec2 u_xlat3;
mediump vec2 u_xlat16_3;
lowp vec4 u_xlat10_3;
vec3 u_xlat4;
lowp vec4 u_xlat10_4;
bvec2 u_xlatb4;
vec3 u_xlat5;
bool u_xlatb5;
mediump vec2 u_xlat16_6;
vec2 u_xlat7;
bvec2 u_xlatb7;
vec2 u_xlat12;
vec2 u_xlat14;
bvec2 u_xlatb14;
vec2 u_xlat16;
vec2 u_xlat17;
mediump vec2 u_xlat16_17;
bool u_xlatb17;
float u_xlat18;
bool u_xlatb19;
float u_xlat21;
int u_xlati21;
bool u_xlatb21;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
#define UNITY_DYNAMIC_INDEX_ES2 0



vec4 _ClipRectsDynamicIndex(int i){
#if UNITY_DYNAMIC_INDEX_ES2
    return _ClipRects[i];
#else
#define d_ar _ClipRects
    if (i <= 0) return d_ar[0]; else if (i == 1) return d_ar[1]; else if (i == 2) return d_ar[2]; else if (i == 3) return d_ar[3]; else if (i == 4) return d_ar[4]; else if (i == 5) return d_ar[5]; else if (i == 6) return d_ar[6]; else if (i == 7) return d_ar[7]; else if (i == 8) return d_ar[8]; else if (i == 9) return d_ar[9]; else if (i == 10) return d_ar[10]; else if (i == 11) return d_ar[11]; else if (i == 12) return d_ar[12]; else if (i == 13) return d_ar[13]; else if (i == 14) return d_ar[14]; else if (i == 15) return d_ar[15]; else if (i == 16) return d_ar[16]; else if (i == 17) return d_ar[17]; else if (i == 18) return d_ar[18]; else if (i == 19) return d_ar[19];
    return d_ar[0];
#undef d_ar
#endif
}

void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlatu0 = int(vs_TEXCOORD3.x);
    u_xlatb0.yz = greaterThanEqual(vs_TEXCOORD0.zzwz, _ClipRectsDynamicIndex(int(u_xlatu0)).xxyx).yz;
    u_xlatb0.xw = greaterThanEqual(_ClipRectsDynamicIndex(int(u_xlatu0)).zzzw, vs_TEXCOORD0.zzzw).xw;
    u_xlat0.x = u_xlatb0.x ? float(1.0) : 0.0;
    u_xlat0.y = u_xlatb0.y ? float(1.0) : 0.0;
    u_xlat0.z = u_xlatb0.z ? float(1.0) : 0.0;
    u_xlat0.w = u_xlatb0.w ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat0.xw + u_xlat0.yz;
    u_xlatb14.xy = greaterThanEqual(hlslcc_FragCoord.xyxy, _PixelClipRect.xyxy).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat14.xy + u_xlat0.xy;
    u_xlatb14.xy = greaterThanEqual(_PixelClipRect.zwzw, hlslcc_FragCoord.xyxy).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat14.xy + u_xlat0.xy;
    u_xlat0.z = 1.0;
    u_xlat0.x = dot(u_xlat0.xyz, vec3(1.0, 1.0, -7.94999981));
    u_xlatb0.x = u_xlat0.x<0.0;
    if(u_xlatb0.x){discard;}
    u_xlat10_0 = texture2D(_ShaderInfoTex, vs_TEXCOORD3.zw).w;
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0.w;
    u_xlat10_1 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1 = u_xlat10_1 * vs_TEXCOORD1.yyyy + vs_TEXCOORD1.wwww;
    u_xlat7.x = texture2D(_FontTex, vs_TEXCOORD0.xy).w;
    u_xlat14.x = dFdx(u_xlat7.x);
    u_xlat21 = dFdy(u_xlat7.x);
    u_xlat14.x = abs(u_xlat21) + abs(u_xlat14.x);
    u_xlat21 = (-u_xlat14.x) + 0.5;
    u_xlat7.y = u_xlat14.x + 0.5;
    u_xlat7.xy = (-vec2(u_xlat21)) + u_xlat7.xy;
    u_xlat14.x = float(1.0) / u_xlat7.y;
    u_xlat7.x = u_xlat14.x * u_xlat7.x;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat14.x = u_xlat7.x * -2.0 + 3.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat14.x;
    u_xlat16_2.xyz = vs_TEXCOORD1.xxx;
    u_xlat16_2.w = u_xlat7.x * vs_TEXCOORD1.x;
    u_xlat16_1 = u_xlat16_1 + u_xlat16_2;
    u_xlat10_2 = texture2D(_CustomTex, vs_TEXCOORD0.xy);
    u_xlat16_1 = u_xlat10_2 * vs_TEXCOORD1.zzzz + u_xlat16_1;
    u_xlatb7.xy = equal(vs_TEXCOORD2.xyxx, vec4(1.0, 1.0, 0.0, 0.0)).xy;
    u_xlatb7.x = u_xlatb7.y || u_xlatb7.x;
    if(u_xlatb7.x){
        u_xlat7.xy = (u_xlatb7.y) ? _CustomTex_TexelSize.xy : _MainTex_TexelSize.xy;
        u_xlat2.y = vs_TEXCOORD2.z + 0.5;
        u_xlat2.x = float(0.5);
        u_xlat16.y = float(0.0);
        u_xlat3.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy;
        u_xlat10_4 = texture2D(_GradientSettingsTex, u_xlat3.xy);
        u_xlatb21 = 0.0<u_xlat10_4.x;
        u_xlat16_17.xy = u_xlat10_4.zw + vec2(-0.5, -0.5);
        u_xlat16_17.xy = u_xlat16_17.xy + u_xlat16_17.xy;
        u_xlat4.xz = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
        u_xlat4.xz = u_xlat4.xz * vec2(2.0, 2.0) + (-u_xlat16_17.xy);
        u_xlat25 = dot(u_xlat4.xz, u_xlat4.xz);
        u_xlat25 = inversesqrt(u_xlat25);
        u_xlat5.xy = vec2(u_xlat25) * u_xlat4.xz;
        u_xlat25 = dot((-u_xlat16_17.xy), u_xlat5.xy);
        u_xlat16_17.x = dot(u_xlat16_17.xy, u_xlat16_17.xy);
        u_xlat17.x = (-u_xlat25) * u_xlat25 + u_xlat16_17.x;
        u_xlat17.x = (-u_xlat17.x) + 1.0;
        u_xlat17.x = sqrt(u_xlat17.x);
        u_xlat24 = (-u_xlat17.x) + u_xlat25;
        u_xlat17.x = u_xlat17.x + u_xlat25;
        u_xlat25 = min(u_xlat17.x, u_xlat24);
        u_xlatb19 = u_xlat25<0.0;
        u_xlat17.x = max(u_xlat17.x, u_xlat24);
        u_xlat17.x = (u_xlatb19) ? u_xlat17.x : u_xlat25;
        u_xlat17.xy = u_xlat17.xx * u_xlat5.xy;
        u_xlatb25 = 9.99999975e-05>=abs(u_xlat17.x);
        u_xlatb5 = 9.99999975e-05<abs(u_xlat17.y);
        u_xlat17.xy = u_xlat4.xz / u_xlat17.xy;
        u_xlat24 = u_xlatb5 ? u_xlat17.y : float(0.0);
        u_xlat12.x = (u_xlatb25) ? u_xlat24 : u_xlat17.x;
        u_xlat12.y = 0.0;
        u_xlat5.yz = (bool(u_xlatb21)) ? u_xlat12.xy : vs_TEXCOORD0.xy;
        u_xlat16_6.x = u_xlat10_4.y * 255.0;
        u_xlati21 = int(u_xlat16_6.x);
        u_xlatb17 = u_xlat5.y>=(-u_xlat5.y);
        u_xlat24 = fract(abs(u_xlat5.y));
        u_xlat17.x = (u_xlatb17) ? u_xlat24 : (-u_xlat24);
        u_xlat17.x = (u_xlati21 != 0) ? u_xlat5.y : u_xlat17.x;
        u_xlatb4.xy = equal(ivec4(u_xlati21), ivec4(1, 2, 0, 0)).xy;
        u_xlat21 = u_xlat17.x;
        u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
        u_xlat21 = (u_xlatb4.x) ? u_xlat21 : u_xlat17.x;
        u_xlat17.x = u_xlat21 * 0.5;
        u_xlatb24 = u_xlat17.x>=(-u_xlat17.x);
        u_xlat17.x = fract(abs(u_xlat17.x));
        u_xlat17.x = (u_xlatb24) ? u_xlat17.x : (-u_xlat17.x);
        u_xlat24 = u_xlat17.x + u_xlat17.x;
        u_xlatb17 = 0.5<u_xlat17.x;
        u_xlatb4.x = u_xlat24>=(-u_xlat24);
        u_xlat18 = fract(abs(u_xlat24));
        u_xlat4.x = (u_xlatb4.x) ? u_xlat18 : (-u_xlat18);
        u_xlat4.x = (-u_xlat4.x) + 1.0;
        u_xlat17.x = (u_xlatb17) ? u_xlat4.x : u_xlat24;
        u_xlat5.x = (u_xlatb4.y) ? u_xlat17.x : u_xlat21;
        u_xlat16.x = _GradientSettingsTex_TexelSize.x;
        u_xlat17.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy + u_xlat16.xy;
        u_xlat10_4 = texture2D(_GradientSettingsTex, u_xlat17.xy);
        u_xlat16_17.xy = u_xlat10_4.yw * vec2(255.0, 255.0);
        u_xlat16_6.xy = u_xlat10_4.xz * vec2(65025.0, 65025.0) + u_xlat16_17.xy;
        u_xlat16_17.xy = u_xlat16_6.xy + vec2(0.5, 0.5);
        u_xlat3.xy = u_xlat16.xy * vec2(2.0, 2.0) + u_xlat3.xy;
        u_xlat10_2 = texture2D(_GradientSettingsTex, u_xlat3.xy);
        u_xlat16_3.xy = u_xlat10_2.yw * vec2(255.0, 255.0);
        u_xlat16_6.xy = u_xlat10_2.xz * vec2(65025.0, 65025.0) + u_xlat16_3.xy;
        u_xlat3.xy = u_xlat7.xy * u_xlat16_17.xy;
        u_xlat7.xy = u_xlat7.xy * u_xlat16_6.xy;
        u_xlat7.xy = u_xlat5.xz * u_xlat7.xy + u_xlat3.xy;
        u_xlat10_2 = texture2D(_MainTex, u_xlat7.xy);
        u_xlat16_2 = u_xlat10_2 * vs_TEXCOORD2.xxxx + u_xlat16_1;
        u_xlat10_3 = texture2D(_CustomTex, u_xlat7.xy);
        u_xlat16_2 = u_xlat10_3 * vs_TEXCOORD2.yyyy + u_xlat16_2;
        u_xlat16_2 = u_xlat16_2;
    } else {
        u_xlat16_2 = u_xlat16_1;
    }
    SV_Target0.xyz = u_xlat16_2.xyz * vs_COLOR0.xyz;
    SV_Target0.w = u_xlat16_0 * u_xlat16_2.w;
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
uniform 	vec4 _MainTex_ST;
uniform 	vec4 _MainTex_TexelSize;
uniform 	vec4 _ShaderInfoTex_TexelSize;
uniform 	vec4 _1PixelClipInvView;
uniform 	vec4 _Transforms[60];
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_COLOR0;
attribute highp vec2 in_TEXCOORD0;
attribute highp vec4 in_TEXCOORD2;
attribute highp vec4 in_TEXCOORD3;
varying mediump vec4 vs_COLOR0;
varying highp vec4 vs_TEXCOORD0;
flat varying mediump vec4 vs_TEXCOORD1;
flat varying mediump vec3 vs_TEXCOORD2;
flat varying mediump vec4 vs_TEXCOORD3;
vec4 u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec2 u_xlat1;
ivec2 u_xlati1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec2 u_xlat6;
float u_xlat7;
bool u_xlatb7;
float u_xlat11;
float u_xlat14;
vec2 u_xlat15;
bvec2 u_xlatb15;
vec2 u_xlat18;
vec2 u_xlat19;
float u_xlat23;
float roundEven(float x) { float y = floor(x + 0.5); return (y - x == 0.5) ? floor(0.5*y) * 2.0 : y; }
vec2 roundEven(vec2 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); return a; }
vec3 roundEven(vec3 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); a.z = roundEven(a.z); return a; }
vec4 roundEven(vec4 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); a.z = roundEven(a.z); a.w = roundEven(a.w); return a; }

void main()
{
    u_xlat0 = in_TEXCOORD2.xwzz * vec4(765.0, 255.0, 255.0, 8160.0);
    u_xlati0 = int(u_xlat0.x);
    u_xlati1.xy = ivec2(u_xlati0) + ivec2(1, 2);
    u_xlat2.y = in_TEXCOORD2.w * 255.0 + -8.0;
    u_xlat2.y = clamp(u_xlat2.y, 0.0, 1.0);
    u_xlat7 = (-u_xlat2.y) * 9.0 + u_xlat0.y;
    u_xlat2.x = u_xlat7 + -7.0;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat2.x) * 8.0 + u_xlat7;
    u_xlat15.x = u_xlat7 + -6.0;
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat15.x) * 7.0 + u_xlat7;
    u_xlat15.y = u_xlat7 + -5.0;
    u_xlat15.y = clamp(u_xlat15.y, 0.0, 1.0);
    u_xlat7 = (-u_xlat15.y) * 6.0 + u_xlat7;
    u_xlat23 = u_xlat7 + -4.0;
    u_xlat23 = clamp(u_xlat23, 0.0, 1.0);
    u_xlat7 = (-u_xlat23) * 5.0 + u_xlat7;
    u_xlat3.z = u_xlat7 + -3.0;
    u_xlat3.z = clamp(u_xlat3.z, 0.0, 1.0);
    u_xlat7 = (-u_xlat3.z) * 4.0 + u_xlat7;
    u_xlat4.x = u_xlat7 + -2.0;
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat4.x) * 3.0 + u_xlat7;
    u_xlat11 = u_xlat7 + -1.0;
    u_xlat11 = clamp(u_xlat11, 0.0, 1.0);
    u_xlat3.x = (-u_xlat11) * 2.0 + u_xlat7;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat3.y = u_xlat11 + u_xlat4.x;
    u_xlat7 = u_xlat3.y + u_xlat3.x;
    u_xlat7 = u_xlat3.z + u_xlat7;
    u_xlat7 = u_xlat2.x + u_xlat7;
    u_xlat7 = u_xlat2.y + u_xlat7;
    u_xlat7 = min(u_xlat7, 1.0);
    u_xlat3.w = (-u_xlat7) + 1.0;
    u_xlatb7 = u_xlat23==1.0;
    u_xlatb15.xy = equal(u_xlat15.xyxy, vec4(1.0, 1.0, 1.0, 1.0)).xy;
    u_xlatb7 = u_xlatb7 || u_xlatb15.y;
    u_xlatb7 = u_xlatb15.x || u_xlatb7;
    if(u_xlatb7){
        u_xlat4.x = dot(_Transforms[u_xlati0].xy, in_TEXCOORD0.xy);
        u_xlat4.y = dot(_Transforms[u_xlati1.x].xy, in_TEXCOORD0.xy);
        u_xlat18.xy = u_xlat4.xy * _1PixelClipInvView.zw;
        u_xlat5.xy = max(abs(u_xlat18.xy), vec2(1.0, 1.0));
        u_xlat19.xy = roundEven(u_xlat5.xy);
        u_xlat5.xy = max(u_xlat5.xy, u_xlat19.xy);
        u_xlat6.x = (u_xlatb15.y) ? u_xlat5.x : u_xlat19.x;
        u_xlat6.y = (u_xlatb15.x) ? u_xlat5.y : u_xlat19.y;
        u_xlat15.xy = abs(u_xlat18.xy) + vec2(9.99999997e-07, 9.99999997e-07);
        u_xlat15.xy = u_xlat6.xy / u_xlat15.xy;
        u_xlat15.xy = max(u_xlat15.xy, vec2(0.00999999978, 0.00999999978));
        u_xlat15.xy = min(u_xlat15.xy, vec2(100.0, 100.0));
        u_xlat15.xy = u_xlat15.xy + vec2(-1.0, -1.0);
        u_xlat15.xy = u_xlat4.xy * u_xlat15.xy;
    } else {
        u_xlat15.x = float(0.0);
        u_xlat15.y = float(0.0);
    }
    u_xlat18.x = dot(_Transforms[u_xlati0], in_POSITION0);
    u_xlat18.y = dot(_Transforms[u_xlati1.x], in_POSITION0);
    u_xlat0.x = dot(_Transforms[u_xlati1.y], in_POSITION0);
    u_xlat1.xy = u_xlat15.xy + u_xlat18.xy;
    u_xlat4 = u_xlat1.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat4 = hlslcc_mtx4x4unity_ObjectToWorld[0] * u_xlat1.xxxx + u_xlat4;
    u_xlat4 = hlslcc_mtx4x4unity_ObjectToWorld[2] * u_xlat0.xxxx + u_xlat4;
    u_xlat4 = u_xlat4 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat5 = u_xlat4.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat5 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat4.xxxx + u_xlat5;
    u_xlat5 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat4.zzzz + u_xlat5;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat4.wwww + u_xlat5;
    u_xlat0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlatb15.x = u_xlat3.y==1.0;
    u_xlat4.xy = u_xlat0.xy * _MainTex_TexelSize.xy;
    vs_TEXCOORD0.xy = (u_xlatb15.x) ? u_xlat4.xy : u_xlat0.xy;
    u_xlat2.z = dot(in_TEXCOORD3.zw, vec2(65025.0, 255.0));
    u_xlatb0 = u_xlat0.w>=(-u_xlat0.w);
    u_xlat0.xy = (bool(u_xlatb0)) ? vec2(32.0, 0.03125) : vec2(-32.0, -0.03125);
    u_xlat7 = u_xlat0.y * u_xlat0.z;
    u_xlat7 = fract(u_xlat7);
    u_xlat0.x = u_xlat7 * u_xlat0.x;
    u_xlat7 = in_TEXCOORD2.z * 255.0 + (-u_xlat0.x);
    u_xlat14 = in_TEXCOORD3.y * 2040.0;
    u_xlat15.x = in_TEXCOORD3.x * 8160.0 + u_xlat0.x;
    u_xlat15.y = u_xlat7 * 0.03125 + u_xlat14;
    u_xlat0.xy = u_xlat15.xy + vec2(0.5, 0.5);
    u_xlat0.zw = u_xlat0.xy * _ShaderInfoTex_TexelSize.xy;
    vs_COLOR0 = in_COLOR0;
    vs_TEXCOORD0.zw = u_xlat1.xy;
    vs_TEXCOORD1 = u_xlat3;
    u_xlat0.x = in_TEXCOORD2.y * 255.0;
    u_xlat0.y = 0.0;
    vs_TEXCOORD3 = u_xlat0;
    vs_TEXCOORD2.xyz = u_xlat2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100
#ifdef GL_OES_standard_derivatives
#extension GL_OES_standard_derivatives : enable
#endif

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	vec4 _MainTex_TexelSize;
uniform 	vec4 _CustomTex_TexelSize;
uniform 	vec4 _GradientSettingsTex_TexelSize;
uniform 	vec4 _PixelClipRect;
uniform 	vec4 _ClipRects[20];
uniform lowp sampler2D _ShaderInfoTex;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _FontTex;
uniform lowp sampler2D _CustomTex;
uniform lowp sampler2D _GradientSettingsTex;
varying mediump vec4 vs_COLOR0;
varying highp vec4 vs_TEXCOORD0;
flat varying mediump vec4 vs_TEXCOORD1;
flat varying mediump vec3 vs_TEXCOORD2;
flat varying mediump vec4 vs_TEXCOORD3;
#define SV_Target0 gl_FragData[0]
vec4 u_xlat0;
mediump float u_xlat16_0;
lowp float u_xlat10_0;
int u_xlatu0;
bvec4 u_xlatb0;
mediump vec4 u_xlat16_1;
lowp vec4 u_xlat10_1;
vec2 u_xlat2;
mediump vec4 u_xlat16_2;
lowp vec4 u_xlat10_2;
vec2 u_xlat3;
mediump vec2 u_xlat16_3;
lowp vec4 u_xlat10_3;
vec3 u_xlat4;
lowp vec4 u_xlat10_4;
bvec2 u_xlatb4;
vec3 u_xlat5;
bool u_xlatb5;
mediump vec2 u_xlat16_6;
vec2 u_xlat7;
bvec2 u_xlatb7;
vec2 u_xlat12;
vec2 u_xlat14;
bvec2 u_xlatb14;
vec2 u_xlat16;
vec2 u_xlat17;
mediump vec2 u_xlat16_17;
bool u_xlatb17;
float u_xlat18;
bool u_xlatb19;
float u_xlat21;
int u_xlati21;
bool u_xlatb21;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
#define UNITY_DYNAMIC_INDEX_ES2 0



vec4 _ClipRectsDynamicIndex(int i){
#if UNITY_DYNAMIC_INDEX_ES2
    return _ClipRects[i];
#else
#define d_ar _ClipRects
    if (i <= 0) return d_ar[0]; else if (i == 1) return d_ar[1]; else if (i == 2) return d_ar[2]; else if (i == 3) return d_ar[3]; else if (i == 4) return d_ar[4]; else if (i == 5) return d_ar[5]; else if (i == 6) return d_ar[6]; else if (i == 7) return d_ar[7]; else if (i == 8) return d_ar[8]; else if (i == 9) return d_ar[9]; else if (i == 10) return d_ar[10]; else if (i == 11) return d_ar[11]; else if (i == 12) return d_ar[12]; else if (i == 13) return d_ar[13]; else if (i == 14) return d_ar[14]; else if (i == 15) return d_ar[15]; else if (i == 16) return d_ar[16]; else if (i == 17) return d_ar[17]; else if (i == 18) return d_ar[18]; else if (i == 19) return d_ar[19];
    return d_ar[0];
#undef d_ar
#endif
}

void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlatu0 = int(vs_TEXCOORD3.x);
    u_xlatb0.yz = greaterThanEqual(vs_TEXCOORD0.zzwz, _ClipRectsDynamicIndex(int(u_xlatu0)).xxyx).yz;
    u_xlatb0.xw = greaterThanEqual(_ClipRectsDynamicIndex(int(u_xlatu0)).zzzw, vs_TEXCOORD0.zzzw).xw;
    u_xlat0.x = u_xlatb0.x ? float(1.0) : 0.0;
    u_xlat0.y = u_xlatb0.y ? float(1.0) : 0.0;
    u_xlat0.z = u_xlatb0.z ? float(1.0) : 0.0;
    u_xlat0.w = u_xlatb0.w ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat0.xw + u_xlat0.yz;
    u_xlatb14.xy = greaterThanEqual(hlslcc_FragCoord.xyxy, _PixelClipRect.xyxy).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat14.xy + u_xlat0.xy;
    u_xlatb14.xy = greaterThanEqual(_PixelClipRect.zwzw, hlslcc_FragCoord.xyxy).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat14.xy + u_xlat0.xy;
    u_xlat0.z = 1.0;
    u_xlat0.x = dot(u_xlat0.xyz, vec3(1.0, 1.0, -7.94999981));
    u_xlatb0.x = u_xlat0.x<0.0;
    if(u_xlatb0.x){discard;}
    u_xlat10_0 = texture2D(_ShaderInfoTex, vs_TEXCOORD3.zw).w;
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0.w;
    u_xlat10_1 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1 = u_xlat10_1 * vs_TEXCOORD1.yyyy + vs_TEXCOORD1.wwww;
    u_xlat7.x = texture2D(_FontTex, vs_TEXCOORD0.xy).w;
    u_xlat14.x = dFdx(u_xlat7.x);
    u_xlat21 = dFdy(u_xlat7.x);
    u_xlat14.x = abs(u_xlat21) + abs(u_xlat14.x);
    u_xlat21 = (-u_xlat14.x) + 0.5;
    u_xlat7.y = u_xlat14.x + 0.5;
    u_xlat7.xy = (-vec2(u_xlat21)) + u_xlat7.xy;
    u_xlat14.x = float(1.0) / u_xlat7.y;
    u_xlat7.x = u_xlat14.x * u_xlat7.x;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat14.x = u_xlat7.x * -2.0 + 3.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat14.x;
    u_xlat16_2.xyz = vs_TEXCOORD1.xxx;
    u_xlat16_2.w = u_xlat7.x * vs_TEXCOORD1.x;
    u_xlat16_1 = u_xlat16_1 + u_xlat16_2;
    u_xlat10_2 = texture2D(_CustomTex, vs_TEXCOORD0.xy);
    u_xlat16_1 = u_xlat10_2 * vs_TEXCOORD1.zzzz + u_xlat16_1;
    u_xlatb7.xy = equal(vs_TEXCOORD2.xyxx, vec4(1.0, 1.0, 0.0, 0.0)).xy;
    u_xlatb7.x = u_xlatb7.y || u_xlatb7.x;
    if(u_xlatb7.x){
        u_xlat7.xy = (u_xlatb7.y) ? _CustomTex_TexelSize.xy : _MainTex_TexelSize.xy;
        u_xlat2.y = vs_TEXCOORD2.z + 0.5;
        u_xlat2.x = float(0.5);
        u_xlat16.y = float(0.0);
        u_xlat3.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy;
        u_xlat10_4 = texture2D(_GradientSettingsTex, u_xlat3.xy);
        u_xlatb21 = 0.0<u_xlat10_4.x;
        u_xlat16_17.xy = u_xlat10_4.zw + vec2(-0.5, -0.5);
        u_xlat16_17.xy = u_xlat16_17.xy + u_xlat16_17.xy;
        u_xlat4.xz = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
        u_xlat4.xz = u_xlat4.xz * vec2(2.0, 2.0) + (-u_xlat16_17.xy);
        u_xlat25 = dot(u_xlat4.xz, u_xlat4.xz);
        u_xlat25 = inversesqrt(u_xlat25);
        u_xlat5.xy = vec2(u_xlat25) * u_xlat4.xz;
        u_xlat25 = dot((-u_xlat16_17.xy), u_xlat5.xy);
        u_xlat16_17.x = dot(u_xlat16_17.xy, u_xlat16_17.xy);
        u_xlat17.x = (-u_xlat25) * u_xlat25 + u_xlat16_17.x;
        u_xlat17.x = (-u_xlat17.x) + 1.0;
        u_xlat17.x = sqrt(u_xlat17.x);
        u_xlat24 = (-u_xlat17.x) + u_xlat25;
        u_xlat17.x = u_xlat17.x + u_xlat25;
        u_xlat25 = min(u_xlat17.x, u_xlat24);
        u_xlatb19 = u_xlat25<0.0;
        u_xlat17.x = max(u_xlat17.x, u_xlat24);
        u_xlat17.x = (u_xlatb19) ? u_xlat17.x : u_xlat25;
        u_xlat17.xy = u_xlat17.xx * u_xlat5.xy;
        u_xlatb25 = 9.99999975e-05>=abs(u_xlat17.x);
        u_xlatb5 = 9.99999975e-05<abs(u_xlat17.y);
        u_xlat17.xy = u_xlat4.xz / u_xlat17.xy;
        u_xlat24 = u_xlatb5 ? u_xlat17.y : float(0.0);
        u_xlat12.x = (u_xlatb25) ? u_xlat24 : u_xlat17.x;
        u_xlat12.y = 0.0;
        u_xlat5.yz = (bool(u_xlatb21)) ? u_xlat12.xy : vs_TEXCOORD0.xy;
        u_xlat16_6.x = u_xlat10_4.y * 255.0;
        u_xlati21 = int(u_xlat16_6.x);
        u_xlatb17 = u_xlat5.y>=(-u_xlat5.y);
        u_xlat24 = fract(abs(u_xlat5.y));
        u_xlat17.x = (u_xlatb17) ? u_xlat24 : (-u_xlat24);
        u_xlat17.x = (u_xlati21 != 0) ? u_xlat5.y : u_xlat17.x;
        u_xlatb4.xy = equal(ivec4(u_xlati21), ivec4(1, 2, 0, 0)).xy;
        u_xlat21 = u_xlat17.x;
        u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
        u_xlat21 = (u_xlatb4.x) ? u_xlat21 : u_xlat17.x;
        u_xlat17.x = u_xlat21 * 0.5;
        u_xlatb24 = u_xlat17.x>=(-u_xlat17.x);
        u_xlat17.x = fract(abs(u_xlat17.x));
        u_xlat17.x = (u_xlatb24) ? u_xlat17.x : (-u_xlat17.x);
        u_xlat24 = u_xlat17.x + u_xlat17.x;
        u_xlatb17 = 0.5<u_xlat17.x;
        u_xlatb4.x = u_xlat24>=(-u_xlat24);
        u_xlat18 = fract(abs(u_xlat24));
        u_xlat4.x = (u_xlatb4.x) ? u_xlat18 : (-u_xlat18);
        u_xlat4.x = (-u_xlat4.x) + 1.0;
        u_xlat17.x = (u_xlatb17) ? u_xlat4.x : u_xlat24;
        u_xlat5.x = (u_xlatb4.y) ? u_xlat17.x : u_xlat21;
        u_xlat16.x = _GradientSettingsTex_TexelSize.x;
        u_xlat17.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy + u_xlat16.xy;
        u_xlat10_4 = texture2D(_GradientSettingsTex, u_xlat17.xy);
        u_xlat16_17.xy = u_xlat10_4.yw * vec2(255.0, 255.0);
        u_xlat16_6.xy = u_xlat10_4.xz * vec2(65025.0, 65025.0) + u_xlat16_17.xy;
        u_xlat16_17.xy = u_xlat16_6.xy + vec2(0.5, 0.5);
        u_xlat3.xy = u_xlat16.xy * vec2(2.0, 2.0) + u_xlat3.xy;
        u_xlat10_2 = texture2D(_GradientSettingsTex, u_xlat3.xy);
        u_xlat16_3.xy = u_xlat10_2.yw * vec2(255.0, 255.0);
        u_xlat16_6.xy = u_xlat10_2.xz * vec2(65025.0, 65025.0) + u_xlat16_3.xy;
        u_xlat3.xy = u_xlat7.xy * u_xlat16_17.xy;
        u_xlat7.xy = u_xlat7.xy * u_xlat16_6.xy;
        u_xlat7.xy = u_xlat5.xz * u_xlat7.xy + u_xlat3.xy;
        u_xlat10_2 = texture2D(_MainTex, u_xlat7.xy);
        u_xlat16_2 = u_xlat10_2 * vs_TEXCOORD2.xxxx + u_xlat16_1;
        u_xlat10_3 = texture2D(_CustomTex, u_xlat7.xy);
        u_xlat16_2 = u_xlat10_3 * vs_TEXCOORD2.yyyy + u_xlat16_2;
        u_xlat16_2 = u_xlat16_2;
    } else {
        u_xlat16_2 = u_xlat16_1;
    }
    SV_Target0.xyz = u_xlat16_2.xyz * vs_COLOR0.xyz;
    SV_Target0.w = u_xlat16_0 * u_xlat16_2.w;
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
uniform 	vec4 _MainTex_ST;
uniform 	vec4 _MainTex_TexelSize;
uniform 	vec4 _ShaderInfoTex_TexelSize;
uniform 	vec4 _1PixelClipInvView;
uniform 	vec4 _Transforms[60];
attribute highp vec4 in_POSITION0;
attribute highp vec4 in_COLOR0;
attribute highp vec2 in_TEXCOORD0;
attribute highp vec4 in_TEXCOORD2;
attribute highp vec4 in_TEXCOORD3;
varying mediump vec4 vs_COLOR0;
varying highp vec4 vs_TEXCOORD0;
flat varying mediump vec4 vs_TEXCOORD1;
flat varying mediump vec3 vs_TEXCOORD2;
flat varying mediump vec4 vs_TEXCOORD3;
vec4 u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec2 u_xlat1;
ivec2 u_xlati1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec2 u_xlat6;
float u_xlat7;
bool u_xlatb7;
float u_xlat11;
float u_xlat14;
vec2 u_xlat15;
bvec2 u_xlatb15;
vec2 u_xlat18;
vec2 u_xlat19;
float u_xlat23;
float roundEven(float x) { float y = floor(x + 0.5); return (y - x == 0.5) ? floor(0.5*y) * 2.0 : y; }
vec2 roundEven(vec2 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); return a; }
vec3 roundEven(vec3 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); a.z = roundEven(a.z); return a; }
vec4 roundEven(vec4 a) { a.x = roundEven(a.x); a.y = roundEven(a.y); a.z = roundEven(a.z); a.w = roundEven(a.w); return a; }

void main()
{
    u_xlat0 = in_TEXCOORD2.xwzz * vec4(765.0, 255.0, 255.0, 8160.0);
    u_xlati0 = int(u_xlat0.x);
    u_xlati1.xy = ivec2(u_xlati0) + ivec2(1, 2);
    u_xlat2.y = in_TEXCOORD2.w * 255.0 + -8.0;
    u_xlat2.y = clamp(u_xlat2.y, 0.0, 1.0);
    u_xlat7 = (-u_xlat2.y) * 9.0 + u_xlat0.y;
    u_xlat2.x = u_xlat7 + -7.0;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat2.x) * 8.0 + u_xlat7;
    u_xlat15.x = u_xlat7 + -6.0;
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat15.x) * 7.0 + u_xlat7;
    u_xlat15.y = u_xlat7 + -5.0;
    u_xlat15.y = clamp(u_xlat15.y, 0.0, 1.0);
    u_xlat7 = (-u_xlat15.y) * 6.0 + u_xlat7;
    u_xlat23 = u_xlat7 + -4.0;
    u_xlat23 = clamp(u_xlat23, 0.0, 1.0);
    u_xlat7 = (-u_xlat23) * 5.0 + u_xlat7;
    u_xlat3.z = u_xlat7 + -3.0;
    u_xlat3.z = clamp(u_xlat3.z, 0.0, 1.0);
    u_xlat7 = (-u_xlat3.z) * 4.0 + u_xlat7;
    u_xlat4.x = u_xlat7 + -2.0;
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat7 = (-u_xlat4.x) * 3.0 + u_xlat7;
    u_xlat11 = u_xlat7 + -1.0;
    u_xlat11 = clamp(u_xlat11, 0.0, 1.0);
    u_xlat3.x = (-u_xlat11) * 2.0 + u_xlat7;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat3.y = u_xlat11 + u_xlat4.x;
    u_xlat7 = u_xlat3.y + u_xlat3.x;
    u_xlat7 = u_xlat3.z + u_xlat7;
    u_xlat7 = u_xlat2.x + u_xlat7;
    u_xlat7 = u_xlat2.y + u_xlat7;
    u_xlat7 = min(u_xlat7, 1.0);
    u_xlat3.w = (-u_xlat7) + 1.0;
    u_xlatb7 = u_xlat23==1.0;
    u_xlatb15.xy = equal(u_xlat15.xyxy, vec4(1.0, 1.0, 1.0, 1.0)).xy;
    u_xlatb7 = u_xlatb7 || u_xlatb15.y;
    u_xlatb7 = u_xlatb15.x || u_xlatb7;
    if(u_xlatb7){
        u_xlat4.x = dot(_Transforms[u_xlati0].xy, in_TEXCOORD0.xy);
        u_xlat4.y = dot(_Transforms[u_xlati1.x].xy, in_TEXCOORD0.xy);
        u_xlat18.xy = u_xlat4.xy * _1PixelClipInvView.zw;
        u_xlat5.xy = max(abs(u_xlat18.xy), vec2(1.0, 1.0));
        u_xlat19.xy = roundEven(u_xlat5.xy);
        u_xlat5.xy = max(u_xlat5.xy, u_xlat19.xy);
        u_xlat6.x = (u_xlatb15.y) ? u_xlat5.x : u_xlat19.x;
        u_xlat6.y = (u_xlatb15.x) ? u_xlat5.y : u_xlat19.y;
        u_xlat15.xy = abs(u_xlat18.xy) + vec2(9.99999997e-07, 9.99999997e-07);
        u_xlat15.xy = u_xlat6.xy / u_xlat15.xy;
        u_xlat15.xy = max(u_xlat15.xy, vec2(0.00999999978, 0.00999999978));
        u_xlat15.xy = min(u_xlat15.xy, vec2(100.0, 100.0));
        u_xlat15.xy = u_xlat15.xy + vec2(-1.0, -1.0);
        u_xlat15.xy = u_xlat4.xy * u_xlat15.xy;
    } else {
        u_xlat15.x = float(0.0);
        u_xlat15.y = float(0.0);
    }
    u_xlat18.x = dot(_Transforms[u_xlati0], in_POSITION0);
    u_xlat18.y = dot(_Transforms[u_xlati1.x], in_POSITION0);
    u_xlat0.x = dot(_Transforms[u_xlati1.y], in_POSITION0);
    u_xlat1.xy = u_xlat15.xy + u_xlat18.xy;
    u_xlat4 = u_xlat1.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat4 = hlslcc_mtx4x4unity_ObjectToWorld[0] * u_xlat1.xxxx + u_xlat4;
    u_xlat4 = hlslcc_mtx4x4unity_ObjectToWorld[2] * u_xlat0.xxxx + u_xlat4;
    u_xlat4 = u_xlat4 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat5 = u_xlat4.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat5 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat4.xxxx + u_xlat5;
    u_xlat5 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat4.zzzz + u_xlat5;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat4.wwww + u_xlat5;
    u_xlat0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlatb15.x = u_xlat3.y==1.0;
    u_xlat4.xy = u_xlat0.xy * _MainTex_TexelSize.xy;
    vs_TEXCOORD0.xy = (u_xlatb15.x) ? u_xlat4.xy : u_xlat0.xy;
    u_xlat2.z = dot(in_TEXCOORD3.zw, vec2(65025.0, 255.0));
    u_xlatb0 = u_xlat0.w>=(-u_xlat0.w);
    u_xlat0.xy = (bool(u_xlatb0)) ? vec2(32.0, 0.03125) : vec2(-32.0, -0.03125);
    u_xlat7 = u_xlat0.y * u_xlat0.z;
    u_xlat7 = fract(u_xlat7);
    u_xlat0.x = u_xlat7 * u_xlat0.x;
    u_xlat7 = in_TEXCOORD2.z * 255.0 + (-u_xlat0.x);
    u_xlat14 = in_TEXCOORD3.y * 2040.0;
    u_xlat15.x = in_TEXCOORD3.x * 8160.0 + u_xlat0.x;
    u_xlat15.y = u_xlat7 * 0.03125 + u_xlat14;
    u_xlat0.xy = u_xlat15.xy + vec2(0.5, 0.5);
    u_xlat0.zw = u_xlat0.xy * _ShaderInfoTex_TexelSize.xy;
    vs_COLOR0 = in_COLOR0;
    vs_TEXCOORD0.zw = u_xlat1.xy;
    vs_TEXCOORD1 = u_xlat3;
    u_xlat0.x = in_TEXCOORD2.y * 255.0;
    u_xlat0.y = 0.0;
    vs_TEXCOORD3 = u_xlat0;
    vs_TEXCOORD2.xyz = u_xlat2.xyz;
    return;
}

#endif
#ifdef FRAGMENT
#version 100
#ifdef GL_OES_standard_derivatives
#extension GL_OES_standard_derivatives : enable
#endif

#ifdef GL_FRAGMENT_PRECISION_HIGH
    precision highp float;
#else
    precision mediump float;
#endif
precision highp int;
uniform 	vec4 _MainTex_TexelSize;
uniform 	vec4 _CustomTex_TexelSize;
uniform 	vec4 _GradientSettingsTex_TexelSize;
uniform 	vec4 _PixelClipRect;
uniform 	vec4 _ClipRects[20];
uniform lowp sampler2D _ShaderInfoTex;
uniform lowp sampler2D _MainTex;
uniform lowp sampler2D _FontTex;
uniform lowp sampler2D _CustomTex;
uniform lowp sampler2D _GradientSettingsTex;
varying mediump vec4 vs_COLOR0;
varying highp vec4 vs_TEXCOORD0;
flat varying mediump vec4 vs_TEXCOORD1;
flat varying mediump vec3 vs_TEXCOORD2;
flat varying mediump vec4 vs_TEXCOORD3;
#define SV_Target0 gl_FragData[0]
vec4 u_xlat0;
mediump float u_xlat16_0;
lowp float u_xlat10_0;
int u_xlatu0;
bvec4 u_xlatb0;
mediump vec4 u_xlat16_1;
lowp vec4 u_xlat10_1;
vec2 u_xlat2;
mediump vec4 u_xlat16_2;
lowp vec4 u_xlat10_2;
vec2 u_xlat3;
mediump vec2 u_xlat16_3;
lowp vec4 u_xlat10_3;
vec3 u_xlat4;
lowp vec4 u_xlat10_4;
bvec2 u_xlatb4;
vec3 u_xlat5;
bool u_xlatb5;
mediump vec2 u_xlat16_6;
vec2 u_xlat7;
bvec2 u_xlatb7;
vec2 u_xlat12;
vec2 u_xlat14;
bvec2 u_xlatb14;
vec2 u_xlat16;
vec2 u_xlat17;
mediump vec2 u_xlat16_17;
bool u_xlatb17;
float u_xlat18;
bool u_xlatb19;
float u_xlat21;
int u_xlati21;
bool u_xlatb21;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
#define UNITY_DYNAMIC_INDEX_ES2 0



vec4 _ClipRectsDynamicIndex(int i){
#if UNITY_DYNAMIC_INDEX_ES2
    return _ClipRects[i];
#else
#define d_ar _ClipRects
    if (i <= 0) return d_ar[0]; else if (i == 1) return d_ar[1]; else if (i == 2) return d_ar[2]; else if (i == 3) return d_ar[3]; else if (i == 4) return d_ar[4]; else if (i == 5) return d_ar[5]; else if (i == 6) return d_ar[6]; else if (i == 7) return d_ar[7]; else if (i == 8) return d_ar[8]; else if (i == 9) return d_ar[9]; else if (i == 10) return d_ar[10]; else if (i == 11) return d_ar[11]; else if (i == 12) return d_ar[12]; else if (i == 13) return d_ar[13]; else if (i == 14) return d_ar[14]; else if (i == 15) return d_ar[15]; else if (i == 16) return d_ar[16]; else if (i == 17) return d_ar[17]; else if (i == 18) return d_ar[18]; else if (i == 19) return d_ar[19];
    return d_ar[0];
#undef d_ar
#endif
}

void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlatu0 = int(vs_TEXCOORD3.x);
    u_xlatb0.yz = greaterThanEqual(vs_TEXCOORD0.zzwz, _ClipRectsDynamicIndex(int(u_xlatu0)).xxyx).yz;
    u_xlatb0.xw = greaterThanEqual(_ClipRectsDynamicIndex(int(u_xlatu0)).zzzw, vs_TEXCOORD0.zzzw).xw;
    u_xlat0.x = u_xlatb0.x ? float(1.0) : 0.0;
    u_xlat0.y = u_xlatb0.y ? float(1.0) : 0.0;
    u_xlat0.z = u_xlatb0.z ? float(1.0) : 0.0;
    u_xlat0.w = u_xlatb0.w ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat0.xw + u_xlat0.yz;
    u_xlatb14.xy = greaterThanEqual(hlslcc_FragCoord.xyxy, _PixelClipRect.xyxy).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat14.xy + u_xlat0.xy;
    u_xlatb14.xy = greaterThanEqual(_PixelClipRect.zwzw, hlslcc_FragCoord.xyxy).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat14.xy + u_xlat0.xy;
    u_xlat0.z = 1.0;
    u_xlat0.x = dot(u_xlat0.xyz, vec3(1.0, 1.0, -7.94999981));
    u_xlatb0.x = u_xlat0.x<0.0;
    if(u_xlatb0.x){discard;}
    u_xlat10_0 = texture2D(_ShaderInfoTex, vs_TEXCOORD3.zw).w;
    u_xlat16_0 = u_xlat10_0 * vs_COLOR0.w;
    u_xlat10_1 = texture2D(_MainTex, vs_TEXCOORD0.xy);
    u_xlat16_1 = u_xlat10_1 * vs_TEXCOORD1.yyyy + vs_TEXCOORD1.wwww;
    u_xlat7.x = texture2D(_FontTex, vs_TEXCOORD0.xy).w;
    u_xlat14.x = dFdx(u_xlat7.x);
    u_xlat21 = dFdy(u_xlat7.x);
    u_xlat14.x = abs(u_xlat21) + abs(u_xlat14.x);
    u_xlat21 = (-u_xlat14.x) + 0.5;
    u_xlat7.y = u_xlat14.x + 0.5;
    u_xlat7.xy = (-vec2(u_xlat21)) + u_xlat7.xy;
    u_xlat14.x = float(1.0) / u_xlat7.y;
    u_xlat7.x = u_xlat14.x * u_xlat7.x;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat14.x = u_xlat7.x * -2.0 + 3.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat14.x;
    u_xlat16_2.xyz = vs_TEXCOORD1.xxx;
    u_xlat16_2.w = u_xlat7.x * vs_TEXCOORD1.x;
    u_xlat16_1 = u_xlat16_1 + u_xlat16_2;
    u_xlat10_2 = texture2D(_CustomTex, vs_TEXCOORD0.xy);
    u_xlat16_1 = u_xlat10_2 * vs_TEXCOORD1.zzzz + u_xlat16_1;
    u_xlatb7.xy = equal(vs_TEXCOORD2.xyxx, vec4(1.0, 1.0, 0.0, 0.0)).xy;
    u_xlatb7.x = u_xlatb7.y || u_xlatb7.x;
    if(u_xlatb7.x){
        u_xlat7.xy = (u_xlatb7.y) ? _CustomTex_TexelSize.xy : _MainTex_TexelSize.xy;
        u_xlat2.y = vs_TEXCOORD2.z + 0.5;
        u_xlat2.x = float(0.5);
        u_xlat16.y = float(0.0);
        u_xlat3.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy;
        u_xlat10_4 = texture2D(_GradientSettingsTex, u_xlat3.xy);
        u_xlatb21 = 0.0<u_xlat10_4.x;
        u_xlat16_17.xy = u_xlat10_4.zw + vec2(-0.5, -0.5);
        u_xlat16_17.xy = u_xlat16_17.xy + u_xlat16_17.xy;
        u_xlat4.xz = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
        u_xlat4.xz = u_xlat4.xz * vec2(2.0, 2.0) + (-u_xlat16_17.xy);
        u_xlat25 = dot(u_xlat4.xz, u_xlat4.xz);
        u_xlat25 = inversesqrt(u_xlat25);
        u_xlat5.xy = vec2(u_xlat25) * u_xlat4.xz;
        u_xlat25 = dot((-u_xlat16_17.xy), u_xlat5.xy);
        u_xlat16_17.x = dot(u_xlat16_17.xy, u_xlat16_17.xy);
        u_xlat17.x = (-u_xlat25) * u_xlat25 + u_xlat16_17.x;
        u_xlat17.x = (-u_xlat17.x) + 1.0;
        u_xlat17.x = sqrt(u_xlat17.x);
        u_xlat24 = (-u_xlat17.x) + u_xlat25;
        u_xlat17.x = u_xlat17.x + u_xlat25;
        u_xlat25 = min(u_xlat17.x, u_xlat24);
        u_xlatb19 = u_xlat25<0.0;
        u_xlat17.x = max(u_xlat17.x, u_xlat24);
        u_xlat17.x = (u_xlatb19) ? u_xlat17.x : u_xlat25;
        u_xlat17.xy = u_xlat17.xx * u_xlat5.xy;
        u_xlatb25 = 9.99999975e-05>=abs(u_xlat17.x);
        u_xlatb5 = 9.99999975e-05<abs(u_xlat17.y);
        u_xlat17.xy = u_xlat4.xz / u_xlat17.xy;
        u_xlat24 = u_xlatb5 ? u_xlat17.y : float(0.0);
        u_xlat12.x = (u_xlatb25) ? u_xlat24 : u_xlat17.x;
        u_xlat12.y = 0.0;
        u_xlat5.yz = (bool(u_xlatb21)) ? u_xlat12.xy : vs_TEXCOORD0.xy;
        u_xlat16_6.x = u_xlat10_4.y * 255.0;
        u_xlati21 = int(u_xlat16_6.x);
        u_xlatb17 = u_xlat5.y>=(-u_xlat5.y);
        u_xlat24 = fract(abs(u_xlat5.y));
        u_xlat17.x = (u_xlatb17) ? u_xlat24 : (-u_xlat24);
        u_xlat17.x = (u_xlati21 != 0) ? u_xlat5.y : u_xlat17.x;
        u_xlatb4.xy = equal(ivec4(u_xlati21), ivec4(1, 2, 0, 0)).xy;
        u_xlat21 = u_xlat17.x;
        u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
        u_xlat21 = (u_xlatb4.x) ? u_xlat21 : u_xlat17.x;
        u_xlat17.x = u_xlat21 * 0.5;
        u_xlatb24 = u_xlat17.x>=(-u_xlat17.x);
        u_xlat17.x = fract(abs(u_xlat17.x));
        u_xlat17.x = (u_xlatb24) ? u_xlat17.x : (-u_xlat17.x);
        u_xlat24 = u_xlat17.x + u_xlat17.x;
        u_xlatb17 = 0.5<u_xlat17.x;
        u_xlatb4.x = u_xlat24>=(-u_xlat24);
        u_xlat18 = fract(abs(u_xlat24));
        u_xlat4.x = (u_xlatb4.x) ? u_xlat18 : (-u_xlat18);
        u_xlat4.x = (-u_xlat4.x) + 1.0;
        u_xlat17.x = (u_xlatb17) ? u_xlat4.x : u_xlat24;
        u_xlat5.x = (u_xlatb4.y) ? u_xlat17.x : u_xlat21;
        u_xlat16.x = _GradientSettingsTex_TexelSize.x;
        u_xlat17.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy + u_xlat16.xy;
        u_xlat10_4 = texture2D(_GradientSettingsTex, u_xlat17.xy);
        u_xlat16_17.xy = u_xlat10_4.yw * vec2(255.0, 255.0);
        u_xlat16_6.xy = u_xlat10_4.xz * vec2(65025.0, 65025.0) + u_xlat16_17.xy;
        u_xlat16_17.xy = u_xlat16_6.xy + vec2(0.5, 0.5);
        u_xlat3.xy = u_xlat16.xy * vec2(2.0, 2.0) + u_xlat3.xy;
        u_xlat10_2 = texture2D(_GradientSettingsTex, u_xlat3.xy);
        u_xlat16_3.xy = u_xlat10_2.yw * vec2(255.0, 255.0);
        u_xlat16_6.xy = u_xlat10_2.xz * vec2(65025.0, 65025.0) + u_xlat16_3.xy;
        u_xlat3.xy = u_xlat7.xy * u_xlat16_17.xy;
        u_xlat7.xy = u_xlat7.xy * u_xlat16_6.xy;
        u_xlat7.xy = u_xlat5.xz * u_xlat7.xy + u_xlat3.xy;
        u_xlat10_2 = texture2D(_MainTex, u_xlat7.xy);
        u_xlat16_2 = u_xlat10_2 * vs_TEXCOORD2.xxxx + u_xlat16_1;
        u_xlat10_3 = texture2D(_CustomTex, u_xlat7.xy);
        u_xlat16_2 = u_xlat10_3 * vs_TEXCOORD2.yyyy + u_xlat16_2;
        u_xlat16_2 = u_xlat16_2;
    } else {
        u_xlat16_2 = u_xlat16_1;
    }
    SV_Target0.xyz = u_xlat16_2.xyz * vs_COLOR0.xyz;
    SV_Target0.w = u_xlat16_0 * u_xlat16_2.w;
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