#ifndef FUR_PASS

		#define FUR_PASS

		#pragma target 5.0

        sampler2D _MainTex;
        sampler2D _NormalMap;

        struct Input
        {
            float2 uv_MainTex;
            float4 worldPos;
            float3 normal : TEXCOORD2;
        };

        half _Glossiness;
        fixed4 _Color;
        float _Length;
        float _Thickness;
        float _Density;
        float _GravityStrength;
		float _NormalIntensity;

		float hash(uint n) {
			// integer hash copied from Hugo Elias
			n = (n << 13U) ^ n;
			n = n * (n * n * 15731U + 0x789221U) + 0x1376312589U;
			return float(n & uint(0x7fffffffU)) / float(0x7fffffff);
		}
        
        void vert(inout appdata_full v, out Input o)
        {
		    UNITY_INITIALIZE_OUTPUT(Input, o);
		    v.vertex.xyz += v.normal.xyz * NORMALIZED_SHELL_INDEX * _Length; //main thing - extrude
			v.vertex.xyz += float3(0,-1,0) * NORMALIZED_SHELL_INDEX * _GravityStrength; //gravity; make strands point down
		    o.normal = normalize(UnityObjectToWorldNormal(v.normal));
        }

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed4 tex = tex2D (_MainTex, IN.uv_MainTex) * _Color;
            float3 col;

			float2 newUV = IN.uv_MainTex * _Density;
            float2 localSpace = frac(newUV) * 2 - 1;
            uint2 tid = newUV;
			uint seed = tid.x + 100 * tid.y + 100 * 10;
            float rng = hash(seed);
            
            
            col = clamp(tex.rgb * NORMALIZED_SHELL_INDEX, 0.1, 1); // no pitch black
            int outsideThickness = (length(localSpace)) > (_Thickness * (rng - NORMALIZED_SHELL_INDEX));
			if (outsideThickness) discard;
            
            o.Albedo = col;
			o.Normal = UnpackNormalWithScale(tex2D(_NormalMap, IN.uv_MainTex), _NormalIntensity);
            o.Smoothness = _Glossiness;
            o.Alpha = 1;
        }

#endif