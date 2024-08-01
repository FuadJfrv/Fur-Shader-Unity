Shader "Custom/Fur"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
    	[Normal]_NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0,1)) = 0.0
        _Glossiness ("Smoothness", Range(0,1)) = 0.5
        
        _Length ("Length", Float) = 0.1
        _Thickness ("Thickness", Float) = 5
        _Density ("Density", Float) = 10000
        _GravityStrength ("Gravity Strength", Float) = 0
    }
    SubShader
    {
        Tags { "RenderType"="TransparentCutout" "Queue"="Transparent" }
        LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Standard fullforwardshadows addshadow

        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 5.0

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        half _Glossiness;
        fixed4 _Color;

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
            o.Albedo = c.rgb * 0.1;
            o.Smoothness = _Glossiness;
            o.Alpha = 1;
        }
        ENDCG
        
 //32 Shells
CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.03125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.0625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.09375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.15625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.1875
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.21875
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.25
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.28125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.3125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.34375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.40625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.4375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.46875
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.5
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.53125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.5625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.59375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.65625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.6875
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.71875
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.75
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.78125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.8125
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.84375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.875
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.90625
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.9375
#include "FurPass.cginc"
ENDCG

CGPROGRAM
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#define NORMALIZED_SHELL_INDEX 0.96875
#include "FurPass.cginc"
ENDCG


}
    FallBack "Diffuse"
}
