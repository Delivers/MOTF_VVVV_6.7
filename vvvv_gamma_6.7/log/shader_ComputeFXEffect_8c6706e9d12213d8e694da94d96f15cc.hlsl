/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_954452137]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 48]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_838590723_id15 => input_838590723
@C    input_2706722321_id16 => input_2706722321
@C    input_2381315533_id17 => input_2381315533
***************************
******  Resources    ******
***************************
@R    TextureInput_2957714998_id13 => TextureInput_2957714998 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_2004650343_id14 => TextureInput_2004650343 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_954452137 => 34187bca963c31ab6985ec07e0faf075
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
//   int3 input_838590723_id15;         // Offset:   16 Size:    12
//   float input_2706722321_id16;       // Offset:   28 Size:     4 [unused]
//   float3 input_2381315533_id17;      // Offset:   32 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_2957714998_id13      texture  float4          3d             t0      1 
// TextureInput_2004650343_id14          UAV  float4          3d             u0      1 
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
#line 37 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_8c6706e9d12213d8e694da94d96f15cc.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_3689940353; r0.y <- Assign_1627392202; r0.z <- Assign_1774890877

#line 38
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_1149744962

#line 43
if_z r0.x

#line 51
  iadd r0.xyz, vThreadID.xyzx, l(0, 1, 0, 0)  // r0.x <- result_3598992564.x; r0.y <- result_3598992564.y; r0.z <- result_3598992564.z

#line 52
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.xy, r0.xyzw, t0.xzyw  // r0.x <- getTextureValue_3190195868.x; r0.y <- getTextureValue_3190195868.z

#line 54
  iadd r1.xyz, vThreadID.xyzx, l(0, -1, 0, 0)  // r1.x <- result_3926534125.x; r1.y <- result_3926534125.y; r1.z <- result_3926534125.z

#line 55
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.zw, r1.xyzw, t0.ywxz  // r0.z <- getTextureValue_896263353.x; r0.w <- getTextureValue_896263353.z

#line 82
  add r0.xy, -r0.wzww, r0.yxyy  // r0.x <- result_418062653; r0.y <- result_621724725

#line 58
  iadd r1.xyz, vThreadID.xyzx, l(0, 0, 1, 0)  // r1.x <- result_3506302430.x; r1.y <- result_3506302430.y; r1.z <- result_3506302430.z

#line 59
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.zw, r1.xyzw, t0.zwxy  // r0.z <- getTextureValue_983400582.x; r0.w <- getTextureValue_983400582.y

#line 61
  iadd r1.xyz, vThreadID.xyzx, l(0, 0, -1, 0)  // r1.x <- result_998928905.x; r1.y <- result_998928905.y; r1.z <- result_998928905.z

#line 62
  mov r1.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.xy, r1.xyzw, t0.xyzw  // r1.x <- getTextureValue_2230790109.x; r1.y <- getTextureValue_2230790109.y

#line 68
  add r0.zw, r0.wwwz, -r1.yyyx  // r0.z <- result_1167775944; r0.w <- result_890855557

#line 65
  add r1.x, -r0.z, r0.x  // r1.x <- result_2279069012

#line 69
  iadd r2.xyz, vThreadID.xyzx, l(1, 0, 0, 0)  // r2.x <- result_2753168024.x; r2.y <- result_2753168024.y; r2.z <- result_2753168024.z

#line 70
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r0.xz, r2.xyzw, t0.yxzw  // r0.x <- getTextureValue_1196728492.y; r0.z <- getTextureValue_1196728492.z

#line 72
  iadd r2.xyz, vThreadID.xyzx, l(-1, 0, 0, 0)  // r2.x <- result_3582329933.x; r2.y <- result_3582329933.y; r2.z <- result_3582329933.z

#line 73
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r2.xy, r2.xyzw, t0.yzxw  // r2.x <- getTextureValue_3951260329.y; r2.y <- getTextureValue_3951260329.z

#line 79
  add r0.xz, r0.zzxz, -r2.yyxy  // r0.x <- result_2582537977; r0.z <- result_2176940311

#line 76
  add r1.yz, -r0.xxyx, r0.wwzw  // r1.y <- result_2979459310; r1.z <- result_1792280748

#line 85
  mul r0.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- result_798028489.x; r0.y <- result_798028489.y; r0.z <- result_798028489.z

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
    int3 input_838590723_id15;
    float input_2706722321_id16;
    float3 input_2381315533_id17;
};
Texture3D<float4> TextureInput_3021058338_id12;
Texture3D<float4> TextureInput_2957714998_id13;
RWTexture3D<float4> TextureInput_2004650343_id14;
void Compute_id4(inout CS_STREAMS streams)
{
    int DispatchThreadIdX_2062887072 = streams.DispatchThreadId_id1.x;
    int inputX_181602231 = input_838590723_id15.x;
    bool Assign_3689940353 = DispatchThreadIdX_2062887072 >= inputX_181602231;
    int DispatchThreadIdY_1977333336 = streams.DispatchThreadId_id1.y;
    int inputY_3191009213 = input_838590723_id15.y;
    bool Assign_1627392202 = DispatchThreadIdY_1977333336 >= inputY_3191009213;
    int DispatchThreadIdZ_1073105291 = streams.DispatchThreadId_id1.z;
    int inputZ_1725069496 = input_838590723_id15.z;
    bool Assign_1774890877 = DispatchThreadIdZ_1073105291 >= inputZ_1725069496;
    bool result_1149744962 = (Assign_3689940353 || Assign_1627392202 || Assign_1774890877);
    if (result_1149744962)
    {
        return;
    }
    float4 vorticity_977671682 = TextureInput_3021058338_id12[streams.DispatchThreadId_id1];
    float4 velocity_2320042252 = TextureInput_2957714998_id13[streams.DispatchThreadId_id1];
    float deltatime_2038492004 = 0;
    deltatime_2038492004 = input_2706722321_id16;
    int3 index_3026438879 = int3(0, 0, 0);
    index_3026438879 = streams.DispatchThreadId_id1;
    float3 resourcescale_3952928878 = float3(0, 0, 0);
    resourcescale_3952928878 = input_2381315533_id17;
    int3 result_3598992564 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float4 getTextureValue_3190195868 = TextureInput_2957714998_id13[result_3598992564];
    float getTextureValueZ_1838137705 = getTextureValue_3190195868.z;
    int3 result_3926534125 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float4 getTextureValue_896263353 = TextureInput_2957714998_id13[result_3926534125];
    float getTextureValueZ_4045034592 = getTextureValue_896263353.z;
    float result_418062653 = (getTextureValueZ_1838137705 - getTextureValueZ_4045034592);
    int3 result_3506302430 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float4 getTextureValue_983400582 = TextureInput_2957714998_id13[result_3506302430];
    float getTextureValueY_796129196 = getTextureValue_983400582.y;
    int3 result_998928905 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float4 getTextureValue_2230790109 = TextureInput_2957714998_id13[result_998928905];
    float getTextureValueY_2695295147 = getTextureValue_2230790109.y;
    float result_1167775944 = (getTextureValueY_796129196 - getTextureValueY_2695295147);
    float result_2279069012 = (result_418062653 - result_1167775944);
    float getTextureValueX_3323027208 = getTextureValue_983400582.x;
    float getTextureValueX_2774567143 = getTextureValue_2230790109.x;
    float result_890855557 = (getTextureValueX_3323027208 - getTextureValueX_2774567143);
    int3 result_2753168024 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float4 getTextureValue_1196728492 = TextureInput_2957714998_id13[result_2753168024];
    float getTextureValueZ_3431188177 = getTextureValue_1196728492.z;
    int3 result_3582329933 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float4 getTextureValue_3951260329 = TextureInput_2957714998_id13[result_3582329933];
    float getTextureValueZ_2252896759 = getTextureValue_3951260329.z;
    float result_2582537977 = (getTextureValueZ_3431188177 - getTextureValueZ_2252896759);
    float result_2979459310 = (result_890855557 - result_2582537977);
    float getTextureValueY_3783309373 = getTextureValue_1196728492.y;
    float getTextureValueY_2395419059 = getTextureValue_3951260329.y;
    float result_2176940311 = (getTextureValueY_3783309373 - getTextureValueY_2395419059);
    float getTextureValueX_687484949 = getTextureValue_3190195868.x;
    float getTextureValueX_2290392526 = getTextureValue_896263353.x;
    float result_621724725 = (getTextureValueX_687484949 - getTextureValueX_2290392526);
    float result_1792280748 = (result_2176940311 - result_621724725);
    float3 Float3Join_329034447 = float3(result_2279069012, result_2979459310, result_1792280748);
    float3 result_798028489 = (Float3Join_329034447 * 0.5);
    float4 join_754100802 = float4(result_798028489, 0);
    vorticity_977671682 = join_754100802;
    TextureInput_2004650343_id14[streams.DispatchThreadId_id1] = vorticity_977671682;
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
