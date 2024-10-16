/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_392050869]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 48]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_1703154449_id16 => input_1703154449
@C    input_748933429_id17 => input_748933429
@C    input_1352615937_id18 => input_1352615937
***************************
******  Resources    ******
***************************
@R    TextureInput_3751006716_id12 => TextureInput_3751006716 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_2229373571_id13 => TextureInput_2229373571 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_2694680050_id14 => TextureInput_2694680050 [Stage: Compute, Slot: (2-2)]
@R    TextureInput_3468441537_id15 => TextureInput_3468441537 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_392050869 => f26af428eaf154778ffff0027e957aff
***************************
*****     Stages      *****
***************************
@G    Compute => 870bc176bdd2c713da6f19e950256362
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
//   float input_748933429_id17;        // Offset:   28 Size:     4 [unused]
//   float3 input_1352615937_id18;      // Offset:   32 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_3751006716_id12      texture  float4          3d             t0      1 
// TextureInput_2229373571_id13      texture   float          3d             t1      1 
// TextureInput_2694680050_id14      texture   float          3d             t2      1 
// TextureInput_3468441537_id15          UAV  float4          3d             u0      1 
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
dcl_resource_texture3d (float,float,float,float) t2
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 6
dcl_thread_group 8, 8, 8
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 38 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_9f6ac0ca90a7210534e5a47810599992.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_1403220339; r0.y <- Assign_1745898688; r0.z <- Assign_4076023683

#line 39
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_2861774432

#line 44
if_z r0.x
  mov r0.xyz, vThreadID.xyzx
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.xyz, r0.xyzw, t0.xyzw  // r1.x <- velocity_2109589880.x; r1.y <- velocity_2109589880.y; r1.z <- velocity_2109589880.z

#line 45
  ld_indexable(texture3d)(float,float,float,float) r0.x, r0.xyzw, t1.xyzw  // r0.x <- pressure_3389810030

#line 54
  iadd r2.xyz, vThreadID.xyzx, l(1, 0, 0, 0)  // r2.x <- result_3031099642.x; r2.y <- result_3031099642.y; r2.z <- result_3031099642.z

#line 55
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.w, r2.xyzw, t2.yzwx  // r1.w <- getTextureValue_91158594

#line 56
  lt r1.w, l(0.000000), r1.w  // r1.w <- Assign_3364256328

#line 58
  ld_indexable(texture3d)(float,float,float,float) r0.z, r2.xyzw, t1.yzxw  // r0.z <- getTextureValue_3756608341

#line 65
  mov r0.yw, l(0,0,0,1.000000)
  movc r0.zw, r1.wwww, r0.xxxy, r0.zzzw  // r0.z <- output_343053514; r0.w <- output_2126812517

#line 66
  iadd r2.xyz, vThreadID.xyzx, l(-1, 0, 0, 0)  // r2.x <- result_4029666835.x; r2.y <- result_4029666835.y; r2.z <- result_4029666835.z

#line 67
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.w, r2.xyzw, t2.yzwx  // r1.w <- getTextureValue_2089424859

#line 68
  lt r1.w, l(0.000000), r1.w  // r1.w <- Assign_3399790474

#line 70
  ld_indexable(texture3d)(float,float,float,float) r2.x, r2.xyzw, t1.xyzw  // r2.x <- getTextureValue_3979053520

#line 90
  mov r2.yw, l(0,1.000000,0,1.000000)

#line 77
  movc r2.xy, r1.wwww, r0.xyxx, r2.xyxx  // r2.x <- output_306526688; r2.y <- output_915682747

#line 78
  add r3.x, r0.z, -r2.x  // r3.x <- result_2690487195

#line 79
  iadd r4.xyz, vThreadID.xyzx, l(0, 1, 0, 0)  // r4.x <- result_2431684406.x; r4.y <- result_2431684406.y; r4.z <- result_2431684406.z

#line 80
  mov r4.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.z, r4.xyzw, t2.yzxw  // r0.z <- getTextureValue_529440914

#line 81
  lt r0.z, l(0.000000), r0.z  // r0.z <- Assign_646678992

#line 83
  ld_indexable(texture3d)(float,float,float,float) r2.z, r4.xyzw, t1.yzxw  // r2.z <- getTextureValue_1175451079

#line 90
  movc r2.xz, r0.zzzz, r0.xxyx, r2.zzwz  // r2.x <- output_3338033618; r2.z <- output_883798637

#line 91
  iadd r4.xyz, vThreadID.xyzx, l(0, -1, 0, 0)  // r4.x <- result_571525611.x; r4.y <- result_571525611.y; r4.z <- result_571525611.z

#line 92
  mov r4.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.z, r4.xyzw, t2.yzxw  // r0.z <- getTextureValue_4227468099

#line 93
  lt r0.z, l(0.000000), r0.z  // r0.z <- Assign_712328388

#line 95
  ld_indexable(texture3d)(float,float,float,float) r4.x, r4.xyzw, t1.xyzw  // r4.x <- getTextureValue_88484698

#line 115
  mov r4.yw, l(0,1.000000,0,1.000000)

#line 102
  movc r4.xy, r0.zzzz, r0.xyxx, r4.xyxx  // r4.x <- output_4258740886; r4.y <- output_210644081

#line 103
  add r3.y, r2.x, -r4.x  // r3.y <- result_3338686432

#line 104
  iadd r5.xyz, vThreadID.xyzx, l(0, 0, 1, 0)  // r5.x <- result_1385619832.x; r5.y <- result_1385619832.y; r5.z <- result_1385619832.z

#line 105
  mov r5.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.z, r5.xyzw, t2.yzxw  // r0.z <- getTextureValue_3648500980

#line 106
  lt r0.z, l(0.000000), r0.z  // r0.z <- Assign_1050418603

#line 108
  ld_indexable(texture3d)(float,float,float,float) r4.z, r5.xyzw, t1.yzxw  // r4.z <- getTextureValue_1669468075

#line 115
  movc r2.xw, r0.zzzz, r0.xxxy, r4.zzzw  // r2.x <- output_2015396011; r2.w <- output_1629963718

#line 116
  iadd r5.xyz, vThreadID.xyzx, l(0, 0, -1, 0)  // r5.x <- result_3589939763.x; r5.y <- result_3589939763.y; r5.z <- result_3589939763.z

#line 117
  mov r5.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.z, r5.xyzw, t2.yzxw  // r0.z <- getTextureValue_112473915

#line 118
  lt r0.z, l(0.000000), r0.z  // r0.z <- Assign_2683845923

#line 120
  ld_indexable(texture3d)(float,float,float,float) r4.x, r5.xyzw, t1.xzyw  // r4.x <- getTextureValue_3542087942

#line 127
  mov r4.z, l(1.000000)
  movc r0.xy, r0.zzzz, r0.xyxx, r4.xzxx  // r0.x <- output_1122528307; r0.y <- output_1203888216

#line 128
  add r3.z, -r0.x, r2.x  // r3.z <- result_3561424584

#line 131
  mad r1.xyz, -r3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r1.xyzx  // r1.x <- result_1402446924.x; r1.y <- result_1402446924.y; r1.z <- result_1402446924.z

#line 132
  min r3.x, r0.w, r2.y  // r3.x <- min_3769259755

#line 133
  min r3.y, r2.z, r4.y  // r3.y <- min_1622894639

#line 134
  min r3.z, r2.w, r0.y  // r3.z <- min_854140689

#line 136
  mul r0.xyz, r1.xyzx, r3.xyzx  // r0.x <- result_2680789227.x; r0.y <- result_2680789227.y; r0.z <- result_2680789227.z

#line 139
  mov r0.w, l(0)
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
endif 

#line 165
ret 
// Approximately 60 instruction slots used
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
    float input_748933429_id17;
    float3 input_1352615937_id18;
};
Texture3D<float4> TextureInput_3751006716_id12;
Texture3D<float> TextureInput_2229373571_id13;
Texture3D<float> TextureInput_2694680050_id14;
RWTexture3D<float4> TextureInput_3468441537_id15;
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
    float4 velocity_2109589880 = TextureInput_3751006716_id12[streams.DispatchThreadId_id1];
    float pressure_3389810030 = TextureInput_2229373571_id13[streams.DispatchThreadId_id1];
    float obstacle_3460948108 = TextureInput_2694680050_id14[streams.DispatchThreadId_id1];
    float deltatime_2686637874 = 0;
    deltatime_2686637874 = input_748933429_id17;
    int3 index_2835779063 = int3(0, 0, 0);
    index_2835779063 = streams.DispatchThreadId_id1;
    float3 resourcescale_3085505064 = float3(0, 0, 0);
    resourcescale_3085505064 = input_1352615937_id18;
    float3 VelocityXyz_4170856391 = velocity_2109589880.xyz;
    int3 result_3031099642 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float getTextureValue_91158594 = TextureInput_2694680050_id14[result_3031099642];
    bool Assign_3364256328 = getTextureValue_91158594 > 0;
    int3 result_3575616057 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float getTextureValue_3756608341 = TextureInput_2229373571_id13[result_3575616057];
    float output_343053514 = getTextureValue_3756608341;
    float output_2126812517 = 1;
    if (Assign_3364256328)
    {
        output_343053514 = pressure_3389810030;
        output_2126812517 = 0;
    }
    int3 result_4029666835 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float getTextureValue_2089424859 = TextureInput_2694680050_id14[result_4029666835];
    bool Assign_3399790474 = getTextureValue_2089424859 > 0;
    int3 result_3261953756 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float getTextureValue_3979053520 = TextureInput_2229373571_id13[result_3261953756];
    float output_306526688 = getTextureValue_3979053520;
    float output_915682747 = 1;
    if (Assign_3399790474)
    {
        output_306526688 = pressure_3389810030;
        output_915682747 = 0;
    }
    float result_2690487195 = (output_343053514 - output_306526688);
    int3 result_2431684406 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float getTextureValue_529440914 = TextureInput_2694680050_id14[result_2431684406];
    bool Assign_646678992 = getTextureValue_529440914 > 0;
    int3 result_820684863 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float getTextureValue_1175451079 = TextureInput_2229373571_id13[result_820684863];
    float output_3338033618 = getTextureValue_1175451079;
    float output_883798637 = 1;
    if (Assign_646678992)
    {
        output_3338033618 = pressure_3389810030;
        output_883798637 = 0;
    }
    int3 result_571525611 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float getTextureValue_4227468099 = TextureInput_2694680050_id14[result_571525611];
    bool Assign_712328388 = getTextureValue_4227468099 > 0;
    int3 result_41742998 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float getTextureValue_88484698 = TextureInput_2229373571_id13[result_41742998];
    float output_4258740886 = getTextureValue_88484698;
    float output_210644081 = 1;
    if (Assign_712328388)
    {
        output_4258740886 = pressure_3389810030;
        output_210644081 = 0;
    }
    float result_3338686432 = (output_3338033618 - output_4258740886);
    int3 result_1385619832 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float getTextureValue_3648500980 = TextureInput_2694680050_id14[result_1385619832];
    bool Assign_1050418603 = getTextureValue_3648500980 > 0;
    int3 result_1632701187 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float getTextureValue_1669468075 = TextureInput_2229373571_id13[result_1632701187];
    float output_2015396011 = getTextureValue_1669468075;
    float output_1629963718 = 1;
    if (Assign_1050418603)
    {
        output_2015396011 = pressure_3389810030;
        output_1629963718 = 0;
    }
    int3 result_3589939763 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float getTextureValue_112473915 = TextureInput_2694680050_id14[result_3589939763];
    bool Assign_2683845923 = getTextureValue_112473915 > 0;
    int3 result_1286183978 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float getTextureValue_3542087942 = TextureInput_2229373571_id13[result_1286183978];
    float output_1122528307 = getTextureValue_3542087942;
    float output_1203888216 = 1;
    if (Assign_2683845923)
    {
        output_1122528307 = pressure_3389810030;
        output_1203888216 = 0;
    }
    float result_3561424584 = (output_2015396011 - output_1122528307);
    float3 Float3Join_964588253 = float3(result_2690487195, result_3338686432, result_3561424584);
    float3 result_2795830460 = (Float3Join_964588253 * 0.5);
    float3 result_1402446924 = (VelocityXyz_4170856391 - result_2795830460);
    float min_3769259755 = min(output_915682747, output_2126812517);
    float min_1622894639 = min(output_210644081, output_883798637);
    float min_854140689 = min(output_1203888216, output_1629963718);
    float3 Float3Join_1602446201 = float3(min_3769259755, min_1622894639, min_854140689);
    float3 result_2680789227 = (result_1402446924 * Float3Join_1602446201);
    float4 join_2911544258 = float4(result_2680789227, 0);
    velocity_2109589880 = join_2911544258;
    TextureInput_3468441537_id15[streams.DispatchThreadId_id1] = velocity_2109589880;
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
