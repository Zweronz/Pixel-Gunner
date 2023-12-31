Shader "CBG/Dissolve/Mobile/MobileDissolveUnlit" {
Properties {
 _DissolvePower ("Dissolve Power", Range(0.65,-0.5)) = 0.2
 _DissolveEmissionColor ("Dissolve Emission Color", Color) = (1,1,1,1)
 _MainTex ("Main Texture", 2D) = "white" { }
 _DissolveTex ("Dissolve Texture", 2D) = "white" { }
}
	//DummyShaderTextExporter
	
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard fullforwardshadows
#pragma target 3.0
		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
		}
		ENDCG
	}
}