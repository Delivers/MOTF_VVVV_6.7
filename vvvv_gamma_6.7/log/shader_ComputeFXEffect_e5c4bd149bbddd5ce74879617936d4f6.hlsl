/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_958442397]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 48]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_2286105837_id15 => input_2286105837
@C    input_3744050999_id16 => input_3744050999
@C    input_4259181203_id17 => input_4259181203
***************************
******  Resources    ******
***************************
@R    TextureInput_2669864248_id13 => TextureInput_2669864248 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_247845137_id14 => TextureInput_247845137 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_958442397 => f712ffbb69cf8f1501c3588d00b70288
***************************
*****     Stages      *****
***************************
@G    Compute => b3186f18a34d44b38b94c0bc456d73e8
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
//   int3 input_2286105837_id15;        // Offset:   16 Size:    12
//   float input_3744050999_id16;       // Offset:   28 Size:     4 [unused]
//   float3 input_4259181203_id17;      // Offset:   32 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_2669864248_id13      texture  float4          3d             t0      1 
// TextureInput_247845137_id14           UAV  float4          3d             u0      1 
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
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 3
dcl_thread_group 8, 8, 8
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 37 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_e5c4bd149bbddd5ce74879617936d4f6.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_536001411; r0.y <- Assign_3859735600; r0.z <- Assign_42903651

#line 38
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_1581015312

#line 43
if_z r0.x

#line 51
  iadd r0.xyz, vThreadID.xyzx, l(0, 1, 0, 0)  // r0.x <- result_695962898.x; r0.y <- result_695962898.y; r0.z <- result_695962898.z

#line 52
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.xy, r0.xyzw, t0.xzyw  // r0.x <- getTextureValue_2641901494.x; r0.y <- getTextureValue_2641901494.z

#line 54
  iadd r1.xyz, vThreadID.xyzx, l(0, -1, 0, 0)  // r1.x <- result_251997955.x; r1.y <- result_251997955.y; r1.z <- result_251997955.z

#line 55
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.zw, r1.xyzw, t0.ywxz  // r0.z <- getTextureValue_609868203.x; r0.w <- getTextureValue_609868203.z

#line 82
  add r0.xy, -r0.wzww, r0.yxyy  // r0.x <- result_3094884351; r0.y <- result_4172171355

#line 58
  iadd r1.xyz, vThreadID.xyzx, l(0, 0, 1, 0)  // r1.x <- result_2597932500.x; r1.y <- result_2597932500.y; r1.z <- result_2597932500.z

#line 59
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.zw, r1.xyzw, t0.zwxy  // r0.z <- getTextureValue_970248856.x; r0.w <- getTextureValue_970248856.y

#line 61
  iadd r1.xyz, vThreadID.xyzx, l(0, 0, -1, 0)  // r1.x <- result_1032110043.x; r1.y <- result_1032110043.y; r1.z <- result_1032110043.z

#line 62
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.xy, r1.xyzw, t0.xyzw  // r1.x <- getTextureValue_3823450259.x; r1.y <- getTextureValue_3823450259.y

#line 68
  add r0.zw, r0.wwwz, -r1.yyyx  // r0.z <- result_3849486730; r0.w <- result_4038205351

#line 65
  add r1.x, -r0.z, r0.x  // r1.x <- result_4038026494

#line 69
  iadd r2.xyz, vThreadID.xyzx, l(1, 0, 0, 0)  // r2.x <- result_736052322.x; r2.y <- result_736052322.y; r2.z <- result_736052322.z

#line 70
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.xz, r2.xyzw, t0.yxzw  // r0.x <- getTextureValue_3457293146.y; r0.z <- getTextureValue_3457293146.z

#line 72
  iadd r2.xyz, vThreadID.xyzx, l(-1, 0, 0, 0)  // r2.x <- result_467406955.x; r2.y <- result_467406955.y; r2.z <- result_467406955.z

#line 73
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r2.xy, r2.xyzw, t0.yzxw  // r2.x <- getTextureValue_4029391491.y; r2.y <- getTextureValue_4029391491.z

#line 79
  add r0.xz, r0.zzxz, -r2.yyxy  // r0.x <- result_4098683087; r0.z <- result_3937913381

#line 76
  add r1.yz, -r0.xxyx, r0.wwzw  // r1.y <- result_2209458316; r1.z <- result_3519418074

#line 85
  mul r0.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- result_765791603.x; r0.y <- result_765791603.y; r0.z <- result_765791603.z

#line 88
  mov r0.w, l(0)
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
endif 

#line 114
ret 
// Approximately 32 instruction slots used
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
    int3 input_2286105837_id15;
    float input_3744050999_id16;
    float3 input_4259181203_id17;
};
Texture3D<float4> TextureInput_1691598668_id12;
Texture3D<float4> TextureInput_2669864248_id13;
RWTexture3D<float4> TextureInput_247845137_id14;
void Compute_id4(inout CS_STREAMS streams)
{
    int DispatchThreadIdX_2247141374 = streams.DispatchThreadId_id1.x;
    int inputX_1046803885 = input_2286105837_id15.x;
    bool Assign_536001411 = DispatchThreadIdX_2247141374 >= inputX_1046803885;
    int DispatchThreadIdY_717330578 = streams.DispatchThreadId_id1.y;
    int inputY_3027621359 = input_2286105837_id15.y;
    bool Assign_3859735600 = DispatchThreadIdY_717330578 >= inputY_3027621359;
    int DispatchThreadIdZ_2793580973 = streams.DispatchThreadId_id1.z;
    int inputZ_1984482882 = input_2286105837_id15.z;
    bool Assign_42903651 = DispatchThreadIdZ_2793580973 >= inputZ_1984482882;
    bool result_1581015312 = (Assign_536001411 || Assign_3859735600 || Assign_42903651);
    if (result_1581015312)
    {
        return;
    }
    float4 vorticity_169094072 = TextureInput_1691598668_id12[streams.DispatchThreadId_id1];
    float4 velocity_480588738 = TextureInput_2669864248_id13[streams.DispatchThreadId_id1];
    float deltatime_1719533446 = 0;
    deltatime_1719533446 = input_3744050999_id16;
    int3 index_3027499009 = int3(0, 0, 0);
    index_3027499009 = streams.DispatchThreadId_id1;
    float3 resourcescale_2531369616 = float3(0, 0, 0);
    resourcescale_2531369616 = input_4259181203_id17;
    int3 result_695962898 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float4 getTextureValue_2641901494 = TextureInput_2669864248_id13[result_695962898];
    float getTextureValueZ_2372774863 = getTextureValue_2641901494.z;
    int3 result_251997955 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float4 getTextureValue_609868203 = TextureInput_2669864248_id13[result_251997955];
    float getTextureValueZ_3815405846 = getTextureValue_609868203.z;
    float result_3094884351 = (getTextureValueZ_2372774863 - getTextureValueZ_3815405846);
    int3 result_2597932500 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float4 getTextureValue_970248856 = TextureInput_2669864248_id13[result_2597932500];
    float getTextureValueY_1818597842 = getTextureValue_970248856.y;
    int3 result_1032110043 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float4 getTextureValue_3823450259 = TextureInput_2669864248_id13[result_1032110043];
    float getTextureValueY_2679692449 = getTextureValue_3823450259.y;
    float result_3849486730 = (getTextureValueY_1818597842 - getTextureValueY_2679692449);
    float result_4038026494 = (result_3094884351 - result_3849486730);
    float getTextureValueX_3335791602 = getTextureValue_970248856.x;
    float getTextureValueX_1198051297 = getTextureValue_3823450259.x;
    float result_4038205351 = (getTextureValueX_3335791602 - getTextureValueX_1198051297);
    int3 result_736052322 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float4 getTextureValue_3457293146 = TextureInput_2669864248_id13[result_736052322];
    float getTextureValueZ_996360847 = getTextureValue_3457293146.z;
    int3 result_467406955 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float4 getTextureValue_4029391491 = TextureInput_2669864248_id13[result_467406955];
    float getTextureValueZ_2202108629 = getTextureValue_4029391491.z;
    float result_4098683087 = (getTextureValueZ_996360847 - getTextureValueZ_2202108629);
    float result_2209458316 = (result_4038205351 - result_4098683087);
    float getTextureValueY_1867380475 = getTextureValue_3457293146.y;
    float getTextureValueY_2823491537 = getTextureValue_4029391491.y;
    float result_3937913381 = (getTextureValueY_1867380475 - getTextureValueY_2823491537);
    float getTextureValueX_922596607 = getTextureValue_2641901494.x;
    float getTextureValueX_4268136840 = getTextureValue_609868203.x;
    float result_4172171355 = (getTextureValueX_922596607 - getTextureValueX_4268136840);
    float result_3519418074 = (result_3937913381 - result_4172171355);
    float3 Float3Join_1397302581 = float3(result_4038026494, result_2209458316, result_3519418074);
    float3 result_765791603 = (Float3Join_1397302581 * 0.5);
    float4 join_1768424636 = float4(result_765791603, 0);
    vorticity_169094072 = join_1768424636;
    TextureInput_247845137_id14[streams.DispatchThreadId_id1] = vorticity_169094072;
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
