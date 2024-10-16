/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_859525117]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 144]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_838590723_id19 => input_838590723
@C    input_3190580542_id20 => input_3190580542
@C    input_604331810_id21 => input_604331810
@C    input_3048901651_id22 => input_3048901651
@C    input_1625540269_id23 => input_1625540269
@C    input_1240486160_id24 => input_1240486160
@C    input_1080198210_id25 => input_1080198210
@C    input_2543536772_id26 => input_2543536772
@C    input_4134248578_id27 => input_4134248578
@C    input_3870733410_id28 => input_3870733410
@C    input_487394018_id29 => input_487394018
@C    input_3730159176_id30 => input_3730159176
@C    input_3676174834_id31 => input_3676174834
@C    input_4004714220_id32 => input_4004714220
***************************
******  Resources    ******
***************************
@R    SamplerInput_2333301458_id15 => SamplerInput_2333301458 [Stage: Compute, Slot: (0-0)]
@R    SamplerInput_3846580292_id16 => SamplerInput_3846580292 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_2957714998_id12 => TextureInput_2957714998 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_1224669504_id13 => TextureInput_1224669504 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_1288012844_id14 => TextureInput_1288012844 [Stage: Compute, Slot: (2-2)]
@R    TextureInput_1941307003_id17 => TextureInput_1941307003 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_1905746801_id18 => TextureInput_1905746801 [Stage: Compute, Slot: (1-1)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_859525117 => 4d982dd090826fab3c2218c90f6c21ad
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
***************************
*****     Stages      *****
***************************
@G    Compute => d92cbb7fd7ba2ab1d5a54036da1ad8dd
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
//   int3 input_838590723_id19;         // Offset:   16 Size:    12
//   float input_3190580542_id20;       // Offset:   28 Size:     4 [unused]
//   float3 input_604331810_id21;       // Offset:   32 Size:    12 [unused]
//   bool input_3048901651_id22;        // Offset:   44 Size:     4
//   float input_1625540269_id23;       // Offset:   48 Size:     4
//   float input_1240486160_id24;       // Offset:   52 Size:     4
//   int3 input_1080198210_id25;        // Offset:   64 Size:    12
//   int3 input_2543536772_id26;        // Offset:   80 Size:    12
//   float input_4134248578_id27;       // Offset:   92 Size:     4
//   float input_3870733410_id28;       // Offset:   96 Size:     4
//   float input_487394018_id29;        // Offset:  100 Size:     4
//   int3 input_3730159176_id30;        // Offset:  112 Size:    12
//   int3 input_3676174834_id31;        // Offset:  128 Size:    12
//   float input_4004714220_id32;       // Offset:  140 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// SamplerInput_2333301458_id15      sampler      NA          NA             s0      1 
// SamplerInput_3846580292_id16      sampler      NA          NA             s1      1 
// TextureInput_2957714998_id12      texture  float4          3d             t0      1 
// TextureInput_1224669504_id13      texture   float          3d             t1      1 
// TextureInput_1288012844_id14      texture   float          3d             t2      1 
// TextureInput_1941307003_id17          UAV  float4          3d             u0      1 
// TextureInput_1905746801_id18          UAV   float          3d             u1      1 
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
dcl_constantbuffer CB0[9], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture3d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_resource_texture3d (float,float,float,float) t2
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_uav_typed_texture3d (float,float,float,float) u1
dcl_input vThreadID.xyz
dcl_temps 3
dcl_thread_group 8, 8, 8
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 56 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_35bd7c0e7e5d56b51216bcd0f590de8f.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_3689940353; r0.y <- Assign_1627392202; r0.z <- Assign_1774890877

#line 57
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_1149744962

#line 62
if_z r0.x
  mov r0.xyz, vThreadID.xyzx
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.xyz, r0.xyzw, t0.xyzw  // r1.x <- velocity_2_977671682.x; r1.y <- velocity_2_977671682.y; r1.z <- velocity_2_977671682.z

#line 63
  ld_indexable(texture3d)(float,float,float,float) r0.x, r0.xyzw, t1.xyzw  // r0.x <- obstacle_2320042252

#line 71
  lt r0.x, l(0.000000), r0.x  // r0.x <- Assign_470705814

#line 72
  ine r0.y, cb0[2].w, l(0)
  or r0.x, r0.x, r0.y  // r0.x <- result_243935637

#line 73
  utof r0.yzw, vThreadID.xxyz

#line 75
  mul r1.w, cb0[3].y, cb0[3].x  // r1.w <- result_3683598015

#line 77
  mad r1.xyz, -r1.xyzx, r1.wwww, r0.yzwy  // r1.x <- result_1314148662.x; r1.y <- result_1314148662.y; r1.z <- result_1314148662.z

#line 78
  itof r2.xyz, cb0[4].xyzx

#line 79
  add r2.xyz, r2.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)  // r2.x <- result_3982417671.x; r2.y <- result_3982417671.y; r2.z <- result_3982417671.z

#line 80
  max r1.xyz, r1.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  min r1.xyz, r2.xyzx, r1.xyzx  // r1.x <- clamp_1700420768.x; r1.y <- clamp_1700420768.y; r1.z <- clamp_1700420768.z

#line 81
  add r1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r1.x <- result_801915664.x; r1.y <- result_801915664.y; r1.z <- result_801915664.z

#line 82
  itof r2.xyz, cb0[5].xyzx

#line 83
  div r1.xyz, r1.xyzx, r2.xyzx  // r1.x <- result_2154358058.x; r1.y <- result_2154358058.y; r1.z <- result_2154358058.z

#line 84
  sample_l_indexable(texture3d)(float,float,float,float) r2.xyzw, r1.xyzx, t0.xyzw, s0, l(0.000000)  // r2.x <- textureNode_1773112515.x; r2.y <- textureNode_1773112515.y; r2.z <- textureNode_1773112515.z; r2.w <- textureNode_1773112515.w

#line 86
  mul r1.x, r1.w, cb0[5].w  // r1.x <- result_3205144756

#line 88
  mad r1.xyzw, -r2.xyzw, r1.xxxx, r2.xyzw  // r1.x <- result_2029095014.x; r1.y <- result_2029095014.y; r1.z <- result_2029095014.z; r1.w <- result_2029095014.w

#line 93
  movc r1.xyzw, r0.xxxx, l(0,0,0,0), r1.xyzw  // r1.x <- output_1983103275.x; r1.y <- output_1983103275.y; r1.z <- output_1983103275.z; r1.w <- output_1983103275.w

#line 99
  mul r2.x, cb0[6].y, cb0[6].x  // r2.x <- result_2323963605

#line 101
  mad r0.yzw, -r1.xxyz, r2.xxxx, r0.yyzw  // r0.y <- result_2459566740.x; r0.z <- result_2459566740.y; r0.w <- result_2459566740.z

#line 102
  itof r2.yzw, cb0[7].xxyz

#line 103
  add r2.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)  // r2.y <- result_3657410665.x; r2.z <- result_3657410665.y; r2.w <- result_3657410665.z

#line 104
  max r0.yzw, r0.yyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  min r0.yzw, r2.yyzw, r0.yyzw  // r0.y <- clamp_3297080958.x; r0.z <- clamp_3297080958.y; r0.w <- clamp_3297080958.z

#line 105
  add r0.yzw, r0.yyzw, l(0.000000, 0.500000, 0.500000, 0.500000)  // r0.y <- result_4257631062.x; r0.z <- result_4257631062.y; r0.w <- result_4257631062.z

#line 106
  itof r2.yzw, cb0[8].xxyz

#line 107
  div r0.yzw, r0.yyzw, r2.yyzw  // r0.y <- result_2256417396.x; r0.z <- result_2256417396.y; r0.w <- result_2256417396.z

#line 108
  sample_l_indexable(texture3d)(float,float,float,float) r0.y, r0.yzwy, t2.yxzw, s1, l(0.000000)  // r0.y <- textureNode_1311355945

#line 110
  mul r0.z, r2.x, cb0[8].w  // r0.z <- result_2947268410

#line 112
  mad r0.y, -r0.y, r0.z, r0.y  // r0.y <- result_1841881328

#line 117
  movc r0.x, r0.x, l(0), r0.y  // r0.x <- output_970525381

#line 119
  store_uav_typed u0.xyzw, vThreadID.xyzz, r1.xyzw

#line 120
  store_uav_typed u1.xyzw, vThreadID.xyzz, r0.xxxx
endif 

#line 146
ret 
// Approximately 42 instruction slots used
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
    int3 input_838590723_id19;
    float input_3190580542_id20;
    float3 input_604331810_id21;
    bool input_3048901651_id22;
    float input_1625540269_id23;
    float input_1240486160_id24;
    int3 input_1080198210_id25;
    int3 input_2543536772_id26;
    float input_4134248578_id27;
    float input_3870733410_id28;
    float input_487394018_id29;
    int3 input_3730159176_id30;
    int3 input_3676174834_id31;
    float input_4004714220_id32;
};
Texture3D<float4> TextureInput_2957714998_id12;
Texture3D<float> TextureInput_1224669504_id13;
Texture3D<float> TextureInput_1288012844_id14;
SamplerState SamplerInput_2333301458_id15;
SamplerState SamplerInput_3846580292_id16;
RWTexture3D<float4> TextureInput_1941307003_id17;
RWTexture3D<float> TextureInput_1905746801_id18;
float3 cast33_id5(float3 p)
{
    return p;
}
void Compute_id4(inout CS_STREAMS streams)
{
    int DispatchThreadIdX_2062887072 = streams.DispatchThreadId_id1.x;
    int inputX_181602231 = input_838590723_id19.x;
    bool Assign_3689940353 = DispatchThreadIdX_2062887072 >= inputX_181602231;
    int DispatchThreadIdY_1977333336 = streams.DispatchThreadId_id1.y;
    int inputY_3191009213 = input_838590723_id19.y;
    bool Assign_1627392202 = DispatchThreadIdY_1977333336 >= inputY_3191009213;
    int DispatchThreadIdZ_1073105291 = streams.DispatchThreadId_id1.z;
    int inputZ_1725069496 = input_838590723_id19.z;
    bool Assign_1774890877 = DispatchThreadIdZ_1073105291 >= inputZ_1725069496;
    bool result_1149744962 = (Assign_3689940353 || Assign_1627392202 || Assign_1774890877);
    if (result_1149744962)
    {
        return;
    }
    float4 velocity_2_977671682 = TextureInput_2957714998_id12[streams.DispatchThreadId_id1];
    float obstacle_2320042252 = TextureInput_1224669504_id13[streams.DispatchThreadId_id1];
    float density_271962606 = TextureInput_1288012844_id14[streams.DispatchThreadId_id1];
    float deltatime_618409973 = 0;
    deltatime_618409973 = input_3190580542_id20;
    int3 index_3451952986 = int3(0, 0, 0);
    index_3451952986 = streams.DispatchThreadId_id1;
    float3 resourcescale_42076971 = float3(0, 0, 0);
    resourcescale_42076971 = input_604331810_id21;
    bool Assign_470705814 = obstacle_2320042252 > 0;
    bool result_243935637 = (input_3048901651_id22 || Assign_470705814);
    float3 cast33_382948329 = cast33_id5(streams.DispatchThreadId_id1);
    float3 VelocityXyz_153692535 = velocity_2_977671682.xyz;
    float result_3683598015 = (input_1625540269_id23 * input_1240486160_id24);
    float3 result_1897432805 = (VelocityXyz_153692535 * result_3683598015);
    float3 result_1314148662 = (cast33_382948329 - result_1897432805);
    float3 cast33_456793438 = cast33_id5(input_1080198210_id25);
    float3 result_3982417671 = (cast33_456793438 - float3(1, 1, 1));
    float3 clamp_1700420768 = clamp(result_1314148662, float3(0, 0, 0), result_3982417671);
    float3 result_801915664 = (clamp_1700420768 + float3(0.5, 0.5, 0.5));
    float3 cast33_110656878 = cast33_id5(input_2543536772_id26);
    float3 result_2154358058 = (result_801915664 / cast33_110656878);
    float4 textureNode_1773112515 = TextureInput_2957714998_id12.SampleLevel(SamplerInput_2333301458_id15, result_2154358058, 0);
    float4 result_411372688 = (float4(0, 0, 0, 0) - textureNode_1773112515);
    float result_3205144756 = (input_4134248578_id27 * result_3683598015);
    float4 result_2659012344 = (result_411372688 * result_3205144756);
    float4 result_2029095014 = (textureNode_1773112515 + result_2659012344);
    float4 output_1983103275 = result_2029095014;
    if (result_243935637)
    {
        output_1983103275 = float4(0, 0, 0, 0);
    }
    velocity_2_977671682 = output_1983103275;
    bool Assign_1567535156 = obstacle_2320042252 > 0;
    bool result_2963308787 = (input_3048901651_id22 || Assign_1567535156);
    float3 cast33_1703070519 = cast33_id5(streams.DispatchThreadId_id1);
    float3 VelocityXyz_1407470557 = velocity_2_977671682.xyz;
    float result_2323963605 = (input_3870733410_id28 * input_487394018_id29);
    float3 result_2101301443 = (VelocityXyz_1407470557 * result_2323963605);
    float3 result_2459566740 = (cast33_1703070519 - result_2101301443);
    float3 cast33_1423337868 = cast33_id5(input_3730159176_id30);
    float3 result_3657410665 = (cast33_1423337868 - float3(1, 1, 1));
    float3 clamp_3297080958 = clamp(result_2459566740, float3(0, 0, 0), result_3657410665);
    float3 result_4257631062 = (clamp_3297080958 + float3(0.5, 0.5, 0.5));
    float3 cast33_2371544180 = cast33_id5(input_3676174834_id31);
    float3 result_2256417396 = (result_4257631062 / cast33_2371544180);
    float textureNode_1311355945 = TextureInput_1288012844_id14.SampleLevel(SamplerInput_3846580292_id16, result_2256417396, 0);
    float result_1888546798 = (0 - textureNode_1311355945);
    float result_2947268410 = (input_4004714220_id32 * result_2323963605);
    float result_2206554666 = (result_1888546798 * result_2947268410);
    float result_1841881328 = (textureNode_1311355945 + result_2206554666);
    float output_970525381 = result_1841881328;
    if (result_2963308787)
    {
        output_970525381 = 0;
    }
    density_271962606 = output_970525381;
    TextureInput_1941307003_id17[streams.DispatchThreadId_id1] = velocity_2_977671682;
    TextureInput_1905746801_id18[streams.DispatchThreadId_id1] = density_271962606;
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
