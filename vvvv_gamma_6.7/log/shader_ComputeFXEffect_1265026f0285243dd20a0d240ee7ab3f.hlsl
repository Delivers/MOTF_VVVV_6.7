/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1952346975]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 176]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_4027469542_id23 => input_4027469542
@C    input_3052392843_id24 => input_3052392843
@C    input_1480067607_id25 => input_1480067607
@C    input_1012078570_id26 => input_1012078570
@C    input_232003860_id27 => input_232003860
@C    input_2278877338_id28 => input_2278877338
@C    input_2256738866_id29 => input_2256738866
@C    input_1531169005_id30 => input_1531169005
***************************
******  Resources    ******
***************************
@R    TextureInput_1028777020_id22 => TextureInput_1028777020 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1952346975 => 70d142c4377c5973c57ee6de5ddf2da1
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
@S    FuseCommonSDF => fd4404bbb9c85d9cbb82982e21c1e34b
@S    FuseCoreMath => b5527ab1f8082f68a6dcc7c3959ee99a
@S    FuseCoreTransform => b43eea1eed94d0f94cf8f317663a8207
@S    FuseCommonTypes => 6c2f0b095ce5f1d9e2781b56961676cd
@S    FuseCoreDomain => c1f7878dfca3e7c2b893bc77be2f5c29
@S    FuseCoreMathMap => a3c63d7e99620b0750ae90d499eee2ad
***************************
*****     Stages      *****
***************************
@G    Compute => 111a917ffff5afaf1a52cab3bc22bf7a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDispatch
// {
//
//   int3 ThreadGroupCountGlobal_id10;  // Offset:    0 Size:    12 [unused]
//   int3 input_4027469542_id23;        // Offset:   16 Size:    12
//   float input_3052392843_id24;       // Offset:   28 Size:     4 [unused]
//   float3 input_1480067607_id25;      // Offset:   32 Size:    12 [unused]
//   int3 input_1012078570_id26;        // Offset:   48 Size:    12
//   float3 input_232003860_id27;       // Offset:   64 Size:    12 [unused]
//   float4x4 input_2278877338_id28;    // Offset:   80 Size:    64
//   float3 input_2256738866_id29;      // Offset:  144 Size:    12
//   float3 input_1531169005_id30;      // Offset:  160 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_1028777020_id22          UAV   float          3d             u0      1 
// PerDispatch                       cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 2
dcl_thread_group 8, 8, 8
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 58 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_1265026f0285243dd20a0d240ee7ab3f.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_2669607774; r0.y <- Assign_2401786989; r0.z <- Assign_3128971616

#line 59
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_2293831901

#line 64
if_z r0.x

#line 71
  utof r0.xyz, vThreadID.xyzx

#line 72
  add r0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- result_2355344935.x; r0.y <- result_2355344935.y; r0.z <- result_2355344935.z

#line 73
  itof r1.xyz, cb0[3].xyzx

#line 74
  div r0.xyz, r0.xyzx, r1.xyzx  // r0.x <- result_215630840.x; r0.y <- result_215630840.y; r0.z <- result_215630840.z

#line 75
  add r0.xyz, r0.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)  // r0.x <- result_3749910302.x; r0.y <- result_3749910302.y; r0.z <- result_3749910302.z

#line 80
  mov r0.w, l(1.000000)
  dp4 r1.x, r0.xyzw, cb0[5].xyzw  // r1.x <- mul_1671377284.x
  dp4 r1.y, r0.xyzw, cb0[6].xyzw  // r1.y <- mul_1671377284.y
  dp4 r1.z, r0.xyzw, cb0[7].xyzw  // r1.z <- mul_1671377284.z

#line 82
  add r0.xyz, r1.xyzx, -cb0[9].xyzx  // r0.x <- result_525910540.x; r0.y <- result_525910540.y; r0.z <- result_525910540.z

#line 42
  mad r0.xyz, -cb0[10].xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), |r0.xyzx|
  add r0.xyz, r0.xyzx, l(8.000000, 8.000000, 8.000000, 0.000000)
  max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  dp3 r0.x, r0.xyzx, r0.xyzx
  sqrt r0.x, r0.x
  add r0.x, r0.x, l(-8.000000)  // r0.x <- <fRBox_id75 return value>

#line 85
  lt r0.x, l(0.100000), r0.x  // r0.x <- Assign_1028206575

#line 86
  and r0.x, r0.x, l(0x3f800000)

#line 88
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xxxx
endif 

#line 114
ret 
// Approximately 25 instruction slots used
***************************
*************************/
static const float PI_id12 = 3.1415926535897;
struct CS_STREAMS 
{
    uint3 GroupId_id0;
    uint3 DispatchThreadId_id1;
    int ThreadCountX_id7;
    int ThreadCountY_id8;
    int ThreadCountZ_id9;
    uint ThreadCountPerGroup_id5;
    uint3 ThreadGroupCount_id4;
    uint ThreadGroupIndex_id6;
};
struct CS_INPUT 
{
    uint3 GroupId_id0 : SV_GroupID;
    uint3 DispatchThreadId_id1 : SV_DispatchThreadID;
};
struct Matrix4x4 
{
    float4x4 Matrix;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int3 input_4027469542_id23;
    float input_3052392843_id24;
    float3 input_1480067607_id25;
    int3 input_1012078570_id26;
    float3 input_232003860_id27;
    float4x4 input_2278877338_id28;
    float3 input_2256738866_id29;
    float3 input_1531169005_id30;
};
Texture3D<float> TextureInput_2990988801_id21;
RWTexture3D<float> TextureInput_1028777020_id22;
float cast11_id76(float p)
{
    return p;
}
float fRBox_id75(float3 p, float3 b, float rad)
{
    return length(max(abs(p) - b + rad, 0.0)) - rad;
}
float3 cast33_id74(float3 p)
{
    return p;
}
void Compute_id4(inout CS_STREAMS streams)
{
    int DispatchThreadIdX_1705848389 = streams.DispatchThreadId_id1.x;
    int inputX_3964728810 = input_4027469542_id23.x;
    bool Assign_2669607774 = DispatchThreadIdX_1705848389 >= inputX_3964728810;
    int DispatchThreadIdY_1152064971 = streams.DispatchThreadId_id1.y;
    int inputY_3132258850 = input_4027469542_id23.y;
    bool Assign_2401786989 = DispatchThreadIdY_1152064971 >= inputY_3132258850;
    int DispatchThreadIdZ_1595855846 = streams.DispatchThreadId_id1.z;
    int inputZ_47154949 = input_4027469542_id23.z;
    bool Assign_3128971616 = DispatchThreadIdZ_1595855846 >= inputZ_47154949;
    bool result_2293831901 = (Assign_2669607774 || Assign_2401786989 || Assign_3128971616);
    if (result_2293831901)
    {
        return;
    }
    float obstacle_2773640457 = TextureInput_2990988801_id21[streams.DispatchThreadId_id1];
    float deltatime_94523296 = 0;
    deltatime_94523296 = input_3052392843_id24;
    int3 index_2921290085 = int3(0, 0, 0);
    index_2921290085 = streams.DispatchThreadId_id1;
    float3 resourcescale_1736425514 = float3(0, 0, 0);
    resourcescale_1736425514 = input_1480067607_id25;
    float3 cast33_296091988 = cast33_id74(streams.DispatchThreadId_id1);
    float3 result_2355344935 = (cast33_296091988 + float3(0.5, 0.5, 0.5));
    float3 cast33_511782692 = cast33_id74(input_1012078570_id26);
    float3 result_215630840 = (result_2355344935 / cast33_511782692);
    float3 result_3749910302 = (result_215630840 - 0.5);
    float3 result_764794655 = (float3(0.5, 0.5, 0.5) - float3(0.5, 0.5, 0.5));
    float3 result_1892463062 = (result_764794655 * input_232003860_id27);
    float3 result_889024446 = (result_3749910302 + result_1892463062);
    float4 join_1303793799 = float4(result_889024446, 1);
    float4 mul_1671377284 = mul(join_1303793799, input_2278877338_id28);
    float3 mulXyz_1670754205 = mul_1671377284.xyz;
    float3 result_525910540 = (mulXyz_1670754205 - input_2256738866_id29);
    float3 result_2272632254 = (input_1531169005_id30 * 0.5);
    float fRBox_1421299648 = fRBox_id75(result_525910540, result_2272632254, 8);
    bool Assign_1028206575 = fRBox_1421299648 > 0.1;
    float cast11_2164106472 = cast11_id76(Assign_1028206575);
    obstacle_2773640457 = cast11_2164106472;
    TextureInput_1028777020_id22[streams.DispatchThreadId_id1] = obstacle_2773640457;
}
void Compute_id3(inout CS_STREAMS streams)
{

    {
        Compute_id4(streams);
    }
}
void Compute_id2(inout CS_STREAMS streams)
{
    Compute_id3(streams);
}
[numthreads(8, 8, 8)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 8;
    streams.ThreadCountY_id8 = 8;
    streams.ThreadCountZ_id9 = 8;
    streams.ThreadCountPerGroup_id5 = 8 * 8 * 8;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id2(streams);
}
