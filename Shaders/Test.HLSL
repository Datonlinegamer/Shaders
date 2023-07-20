
float iTime;
float Scale;
float2 OffSet = 33;
float Intensity;
float Time;
float speed;

float4 main(in float2 uv
            : TEXCOORD0) : SV_Target
{
    uv.x += iTime * speed;
    float x;
    x = pow(saturate(1.0 - abs(sin(uv.x * Scale + OffSet.x) - (uv.y * Scale + OffSet.y))), Intensity);
    return float4(0, x, 0, 1);
}

