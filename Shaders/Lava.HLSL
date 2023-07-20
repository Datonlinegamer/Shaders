float3 Raystep = viewDir * -1;
float3 MovementDir = float3(0.24, 0.0, 0.0);
float4 InputTex = Texture2DSample(texObject, texObjectSampler, uv);


float timeFactor = 2 ;

for (int i = 0; i < 25; i++)
{
   if (InputTex.r < 0.1 && InputTex.g < 0.1 && InputTex.b < 0.1)
   {
         return float3(i, 0, 0);
   }

   Raystep += MovementDir * 1;
   
   
   uv += MovementDir * (1 + timeFactor * i);
   InputTex = Texture2DSample(texObject, texObjectSampler, uv.xy);  
}

return InputTex.xyz;