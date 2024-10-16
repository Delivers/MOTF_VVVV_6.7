/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1540186473]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 48]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_1703154449_id16 => input_1703154449
@C    input_1821113096_id17 => input_1821113096
@C    input_1247643276_id18 => input_1247643276
***************************
******  Resources    ******
***************************
@R    TextureInput_2694680050_id13 => TextureInput_2694680050 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_3751006716_id14 => TextureInput_3751006716 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_3143710687_id15 => TextureInput_3143710687 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1540186473 => 5ba3af612e9d01ffe48d48502a40ab26
***************************
*****     Stages      *****
***************************
@G    Compute => 4378cfef6bc04ddc720459207b95b0b5
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
//   int3 input_1703154449_id16;        // Offset:   16 Size:    12
//   float input_1821113096_id17;       // Offset:   28 Size:     4 [unused]
//   float3 input_1247643276_id18;      // Offset:   32 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_2694680050_id13      texture   float          3d             t0      1 
// TextureInput_3751006716_id14      texture  float4          3d             t1      1 
// TextureInput_3143710687_id15          UAV   float          3d             u0      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_resource_texture3d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 2
dcl_thread_group 8, 8, 8
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 38 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_0a6a919fefd317c13cd462d58385420f.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_1403220339; r0.y <- Assign_1745898688; r0.z <- Assign_4076023683

#line 39
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_2861774432

#line 44
if_z r0.x

#line 53
  iadd r0.xyz, vThreadID.xyzx, l(1, 0, 0, 0)  // r0.x <- result_1953125348.x; r0.y <- result_1953125348.y; r0.z <- result_1953125348.z

#line 54
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.x, r0.xyzw, t0.xyzw  // r1.x <- getTextureValue_3632277600

#line 55
  lt r1.x, l(0.000000), r1.x  // r1.x <- Assign_1768942297

#line 57
  ld_indexable(texture3d)(float,float,float,float) r0.x, r0.xyzw, t1.xyzw  // r0.x <- getTextureValue_1429639562.x

#line 62
  movc r0.x, r1.x, l(0), r0.x  // r0.x <- output_2892397232.x

#line 64
  iadd r1.xyz, vThreadID.xyzx, l(-1, 0, 0, 0)  // r1.x <- result_1093057905.x; r1.y <- result_1093057905.y; r1.z <- result_1093057905.z

#line 65
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.y, r1.xyzw, t0.yxzw  // r0.y <- getTextureValue_1073800325

#line 66
  lt r0.y, l(0.000000), r0.y  // r0.y <- Assign_2878540108

#line 68
  ld_indexable(texture3d)(float,float,float,float) r0.z, r1.xyzw, t1.yzxw  // r0.z <- getTextureValue_3114648651.x

#line 75
  movc r0.y, r0.y, l(-0.000000), -r0.z
  add r0.x, r0.y, r0.x  // r0.x <- result_1935379430

#line 76
  iadd r1.xyz, vThreadID.xyzx, l(0, 1, 0, 0)  // r1.x <- result_905927828.x; r1.y <- result_905927828.y; r1.z <- result_905927828.z

#line 77
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.y, r1.xyzw, t0.yxzw  // r0.y <- getTextureValue_3424077372

#line 78
  lt r0.y, l(0.000000), r0.y  // r0.y <- Assign_26625505

#line 80
  ld_indexable(texture3d)(float,float,float,float) r0.z, r1.xyzw, t1.xzyw  // r0.z <- getTextureValue_4203189670.y

#line 85
  movc r0.y, r0.y, l(0), r0.z  // r0.y <- output_3935875994.y

#line 87
  iadd r1.xyz, vThreadID.xyzx, l(0, -1, 0, 0)  // r1.x <- result_3690185697.x; r1.y <- result_3690185697.y; r1.z <- result_3690185697.z

#line 88
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.z, r1.xyzw, t0.yzxw  // r0.z <- getTextureValue_319622597

#line 89
  lt r0.z, l(0.000000), r0.z  // r0.z <- Assign_622725891

#line 91
  ld_indexable(texture3d)(float,float,float,float) r0.w, r1.xyzw, t1.xzwy  // r0.w <- getTextureValue_2361829755.y

#line 98
  movc r0.z, r0.z, l(-0.000000), -r0.w
  add r0.y, r0.z, r0.y  // r0.y <- result_938236523

#line 99
  iadd r1.xyz, vThreadID.xyzx, l(0, 0, 1, 0)  // r1.x <- result_3085634254.x; r1.y <- result_3085634254.y; r1.z <- result_3085634254.z

#line 100
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.z, r1.xyzw, t0.yzxw  // r0.z <- getTextureValue_2334697110

#line 101
  lt r0.z, l(0.000000), r0.z  // r0.z <- Assign_708100020

#line 103
  ld_indexable(texture3d)(float,float,float,float) r0.w, r1.xyzw, t1.xywz  // r0.w <- getTextureValue_4263638632.z

#line 108
  movc r0.z, r0.z, l(0), r0.w  // r0.z <- output_4080875841.z

#line 110
  iadd r1.xyz, vThreadID.xyzx, l(0, 0, -1, 0)  // r1.x <- result_2880659413.x; r1.y <- result_2880659413.y; r1.z <- result_2880659413.z

#line 111
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.w, r1.xyzw, t0.yzwx  // r0.w <- getTextureValue_978247313

#line 112
  lt r0.w, l(0.000000), r0.w  // r0.w <- Assign_3173732882

#line 114
  ld_indexable(texture3d)(float,float,float,float) r1.x, r1.xyzw, t1.zxyw  // r1.x <- getTextureValue_773418003.z

#line 121
  movc r0.w, r0.w, l(-0.000000), -r1.x
  add r0.xz, r0.yywy, r0.xxzx  // r0.z <- result_3513239719

#line 122
  add r0.x, r0.z, r0.x  // r0.x <- result_2318446697

#line 123
  mul r0.x, r0.x, l(0.500000)  // r0.x <- result_187017431

#line 125
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xxxx
endif 

#line 151
ret 
// Approximately 48 instruction slots used
***************************
*************************/
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
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int3 input_1703154449_id16;
    float input_1821113096_id17;
    float3 input_1247643276_id18;
};
Texture3D<float> TextureInput_4017298458_id12;
Texture3D<float> TextureInput_2694680050_id13;
Texture3D<float4> TextureInput_3751006716_id14;
RWTexture3D<float> TextureInput_3143710687_id15;
void Compute_id4(inout CS_STREAMS streams)
{
    int DispatchThreadIdX_622466782 = streams.DispatchThreadId_id1.x;
    int inputX_793017481 = input_1703154449_id16.x;
    bool Assign_1403220339 = DispatchThreadIdX_622466782 >= inputX_793017481;
    int DispatchThreadIdY_909295366 = streams.DispatchThreadId_id1.y;
    int inputY_4159513183 = input_1703154449_id16.y;
    bool Assign_1745898688 = DispatchThreadIdY_909295366 >= inputY_4159513183;
    int DispatchThreadIdZ_281173665 = streams.DispatchThreadId_id1.z;
    int inputZ_1973991986 = input_1703154449_id16.z;
    bool Assign_4076023683 = DispatchThreadIdZ_281173665 >= inputZ_1973991986;
    bool result_2861774432 = (Assign_1403220339 || Assign_1745898688 || Assign_4076023683);
    if (result_2861774432)
    {
        return;
    }
    float divergence_2109589880 = TextureInput_4017298458_id12[streams.DispatchThreadId_id1];
    float obstacle_3389810030 = TextureInput_2694680050_id13[streams.DispatchThreadId_id1];
    float4 velocity_3460948108 = TextureInput_3751006716_id14[streams.DispatchThreadId_id1];
    float deltatime_3072079699 = 0;
    deltatime_3072079699 = input_1821113096_id17;
    int3 index_3064295192 = int3(0, 0, 0);
    index_3064295192 = streams.DispatchThreadId_id1;
    float3 resourcescale_4188527689 = float3(0, 0, 0);
    resourcescale_4188527689 = input_1247643276_id18;
    int3 result_1953125348 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float getTextureValue_3632277600 = TextureInput_2694680050_id13[result_1953125348];
    bool Assign_1768942297 = getTextureValue_3632277600 > 0;
    int3 result_657607522 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float4 getTextureValue_1429639562 = TextureInput_3751006716_id14[result_657607522];
    float4 output_2892397232 = getTextureValue_1429639562;
    if (Assign_1768942297)
    {
        output_2892397232 = float4(0, 0, 0, 0);
    }
    float AddOutputX_294137985 = output_2892397232.x;
    int3 result_1093057905 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float getTextureValue_1073800325 = TextureInput_2694680050_id13[result_1093057905];
    bool Assign_2878540108 = getTextureValue_1073800325 > 0;
    int3 result_4097960323 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float4 getTextureValue_3114648651 = TextureInput_3751006716_id14[result_4097960323];
    float4 output_3812204043 = getTextureValue_3114648651;
    if (Assign_2878540108)
    {
        output_3812204043 = float4(0, 0, 0, 0);
    }
    float AddOutputX_2568279934 = output_3812204043.x;
    float result_1935379430 = (AddOutputX_294137985 - AddOutputX_2568279934);
    int3 result_905927828 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float getTextureValue_3424077372 = TextureInput_2694680050_id13[result_905927828];
    bool Assign_26625505 = getTextureValue_3424077372 > 0;
    int3 result_3131034706 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float4 getTextureValue_4203189670 = TextureInput_3751006716_id14[result_3131034706];
    float4 output_3935875994 = getTextureValue_4203189670;
    if (Assign_26625505)
    {
        output_3935875994 = float4(0, 0, 0, 0);
    }
    float AddOutputY_3005673680 = output_3935875994.y;
    int3 result_3690185697 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float getTextureValue_319622597 = TextureInput_2694680050_id13[result_3690185697];
    bool Assign_622725891 = getTextureValue_319622597 > 0;
    int3 result_1647895427 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float4 getTextureValue_2361829755 = TextureInput_3751006716_id14[result_1647895427];
    float4 output_1364697952 = getTextureValue_2361829755;
    if (Assign_622725891)
    {
        output_1364697952 = float4(0, 0, 0, 0);
    }
    float AddOutputY_3093482290 = output_1364697952.y;
    float result_938236523 = (AddOutputY_3005673680 - AddOutputY_3093482290);
    int3 result_3085634254 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float getTextureValue_2334697110 = TextureInput_2694680050_id13[result_3085634254];
    bool Assign_708100020 = getTextureValue_2334697110 > 0;
    int3 result_3284003668 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float4 getTextureValue_4263638632 = TextureInput_3751006716_id14[result_3284003668];
    float4 output_4080875841 = getTextureValue_4263638632;
    if (Assign_708100020)
    {
        output_4080875841 = float4(0, 0, 0, 0);
    }
    float AddOutputZ_1524849495 = output_4080875841.z;
    int3 result_2880659413 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float getTextureValue_978247313 = TextureInput_2694680050_id13[result_2880659413];
    bool Assign_3173732882 = getTextureValue_978247313 > 0;
    int3 result_435856043 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float4 getTextureValue_773418003 = TextureInput_3751006716_id14[result_435856043];
    float4 output_1591599293 = getTextureValue_773418003;
    if (Assign_3173732882)
    {
        output_1591599293 = float4(0, 0, 0, 0);
    }
    float AddOutputZ_671243140 = output_1591599293.z;
    float result_3513239719 = (AddOutputZ_1524849495 - AddOutputZ_671243140);
    float result_2318446697 = (result_1935379430 + result_938236523 + result_3513239719);
    float result_187017431 = (result_2318446697 * 0.5);
    divergence_2109589880 = result_187017431;
    TextureInput_3143710687_id15[streams.DispatchThreadId_id1] = divergence_2109589880;
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
