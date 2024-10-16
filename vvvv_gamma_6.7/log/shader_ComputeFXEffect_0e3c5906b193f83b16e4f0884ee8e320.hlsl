/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1679603711]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 64]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_2286105837_id15 => input_2286105837
@C    input_1561772486_id16 => input_1561772486
@C    input_1209214834_id17 => input_1209214834
@C    input_2286998846_id18 => input_2286998846
@C    input_974475000_id19 => input_974475000
@C    input_1949839616_id20 => input_1949839616
@C    input_3388234353_id21 => input_3388234353
***************************
******  Resources    ******
***************************
@R    TextureInput_2669864248_id12 => TextureInput_2669864248 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_1691598668_id13 => TextureInput_1691598668 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_1226110717_id14 => TextureInput_1226110717 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1679603711 => 570612ff043f8db2ca096d2a0337adcc
***************************
*****     Stages      *****
***************************
@G    Compute => 450c556e78d8ff2f1227f91c3ee1d01c
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
//   float input_1561772486_id16;       // Offset:   28 Size:     4 [unused]
//   float3 input_1209214834_id17;      // Offset:   32 Size:    12 [unused]
//   float input_2286998846_id18;       // Offset:   44 Size:     4
//   float input_974475000_id19;        // Offset:   48 Size:     4
//   float input_1949839616_id20;       // Offset:   52 Size:     4
//   float input_3388234353_id21;       // Offset:   56 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_2669864248_id12      texture  float4          3d             t0      1 
// TextureInput_1691598668_id13      texture  float4          3d             t1      1 
// TextureInput_1226110717_id14          UAV  float4          3d             u0      1 
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_resource_texture3d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_uav_typed_texture3d (float,float,float,float) u0
dcl_input vThreadID.xyz
dcl_temps 4
dcl_thread_group 8, 8, 8
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 41 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_0e3c5906b193f83b16e4f0884ee8e320.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_536001411; r0.y <- Assign_3859735600; r0.z <- Assign_42903651

#line 42
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_1581015312

#line 47
if_z r0.x
  mov r0.xyz, vThreadID.xyzx
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.xyzw, r0.xyzw, t0.xyzw  // r1.x <- velocity_169094072.x; r1.y <- velocity_169094072.y; r1.z <- velocity_169094072.z; r1.w <- velocity_169094072.w

#line 48
  ld_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzw, t1.xyzw  // r0.x <- vorticity_480588738.x; r0.y <- vorticity_480588738.y; r0.z <- vorticity_480588738.z

#line 55
  iadd r2.xyz, vThreadID.xyzx, l(1, 0, 0, 0)  // r2.x <- result_2134823026.x; r2.y <- result_2134823026.y; r2.z <- result_2134823026.z

#line 56
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r2.xyzw, r2.xyzw, t1.xyzw  // r2.x <- getTextureValue_1418610570.x; r2.y <- getTextureValue_1418610570.y; r2.z <- getTextureValue_1418610570.z; r2.w <- getTextureValue_1418610570.w

#line 57
  dp4 r0.w, r2.xyzw, r2.xyzw
  sqrt r0.w, r0.w  // r0.w <- length_3866555292

#line 58
  iadd r2.xyz, vThreadID.xyzx, l(-1, 0, 0, 0)  // r2.x <- result_731223323.x; r2.y <- result_731223323.y; r2.z <- result_731223323.z

#line 59
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r2.xyzw, r2.xyzw, t1.xyzw  // r2.x <- getTextureValue_2286687507.x; r2.y <- getTextureValue_2286687507.y; r2.z <- getTextureValue_2286687507.z; r2.w <- getTextureValue_2286687507.w

#line 60
  dp4 r2.x, r2.xyzw, r2.xyzw
  sqrt r2.x, r2.x  // r2.x <- length_3562148572

#line 61
  add r2.y, r0.w, -r2.x  // r2.y <- result_3555378679

#line 62
  iadd r3.xyz, vThreadID.xyzx, l(0, 1, 0, 0)  // r3.x <- result_479528578.x; r3.y <- result_479528578.y; r3.z <- result_479528578.z

#line 63
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_134971782.x; r3.y <- getTextureValue_134971782.y; r3.z <- getTextureValue_134971782.z; r3.w <- getTextureValue_134971782.w

#line 64
  dp4 r0.w, r3.xyzw, r3.xyzw
  sqrt r0.w, r0.w  // r0.w <- length_764928700

#line 65
  iadd r3.xyz, vThreadID.xyzx, l(0, -1, 0, 0)  // r3.x <- result_122190707.x; r3.y <- result_122190707.y; r3.z <- result_122190707.z

#line 66
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_2279150203.x; r3.y <- getTextureValue_2279150203.y; r3.z <- getTextureValue_2279150203.z; r3.w <- getTextureValue_2279150203.w

#line 67
  dp4 r2.w, r3.xyzw, r3.xyzw
  sqrt r2.w, r2.w  // r2.w <- length_2174273232

#line 68
  add r2.z, r0.w, -r2.w  // r2.z <- result_2089417597

#line 69
  iadd r3.xyz, vThreadID.xyzx, l(0, 0, 1, 0)  // r3.x <- result_3320893956.x; r3.y <- result_3320893956.y; r3.z <- result_3320893956.z

#line 70
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_338823592.x; r3.y <- getTextureValue_338823592.y; r3.z <- getTextureValue_338823592.z; r3.w <- getTextureValue_338823592.w

#line 71
  dp4 r0.w, r3.xyzw, r3.xyzw
  sqrt r0.w, r0.w  // r0.w <- length_2399789263

#line 72
  iadd r3.xyz, vThreadID.xyzx, l(0, 0, -1, 0)  // r3.x <- result_3661328811.x; r3.y <- result_3661328811.y; r3.z <- result_3661328811.z

#line 73
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_1048011011.x; r3.y <- getTextureValue_1048011011.y; r3.z <- getTextureValue_1048011011.z; r3.w <- getTextureValue_1048011011.w

#line 74
  dp4 r2.w, r3.xyzw, r3.xyzw
  sqrt r2.w, r2.w  // r2.w <- length_1670843129

#line 75
  add r2.x, r0.w, -r2.w  // r2.x <- result_1962107878

#line 78
  mad r2.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.001000, 0.001000, 0.001000, 0.000000)  // r2.x <- result_4136039928.z; r2.y <- result_4136039928.x; r2.z <- result_4136039928.y

#line 79
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- normalize_2835012010.z; r2.y <- normalize_2835012010.x; r2.z <- normalize_2835012010.y

#line 81
  mul r3.xyz, r0.yzxy, r2.xyzx
  mad r0.xyz, r2.zxyz, r0.zxyz, -r3.xyzx  // r0.x <- cross_838299972.x; r0.y <- cross_838299972.y; r0.z <- cross_838299972.z

#line 82
  add r0.w, -cb0[3].x, cb0[3].y
  mad r0.w, cb0[3].z, r0.w, cb0[3].x  // r0.w <- lerp_2714959381

#line 83
  mul r0.w, r0.w, cb0[2].w  // r0.w <- result_4166656009

#line 84
  mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- result_403634546.x; r0.y <- result_403634546.y; r0.z <- result_403634546.z

#line 86
  mov r0.w, l(0)
  add r0.xyzw, r0.xyzw, r1.xyzw  // r0.x <- result_2341366059.x; r0.y <- result_2341366059.y; r0.z <- result_2341366059.z; r0.w <- result_2341366059.w

#line 88
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
endif 

#line 114
ret 
// Approximately 56 instruction slots used
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
    float input_1561772486_id16;
    float3 input_1209214834_id17;
    float input_2286998846_id18;
    float input_974475000_id19;
    float input_1949839616_id20;
    float input_3388234353_id21;
};
Texture3D<float4> TextureInput_2669864248_id12;
Texture3D<float4> TextureInput_1691598668_id13;
RWTexture3D<float4> TextureInput_1226110717_id14;
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
    float4 velocity_169094072 = TextureInput_2669864248_id12[streams.DispatchThreadId_id1];
    float4 vorticity_480588738 = TextureInput_1691598668_id13[streams.DispatchThreadId_id1];
    float deltatime_471132417 = 0;
    deltatime_471132417 = input_1561772486_id16;
    int3 index_246205766 = int3(0, 0, 0);
    index_246205766 = streams.DispatchThreadId_id1;
    float3 resourcescale_4291230731 = float3(0, 0, 0);
    resourcescale_4291230731 = input_1209214834_id17;
    int3 result_2134823026 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float4 getTextureValue_1418610570 = TextureInput_1691598668_id13[result_2134823026];
    float length_3866555292 = length(getTextureValue_1418610570);
    int3 result_731223323 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float4 getTextureValue_2286687507 = TextureInput_1691598668_id13[result_731223323];
    float length_3562148572 = length(getTextureValue_2286687507);
    float result_3555378679 = (length_3866555292 - length_3562148572);
    int3 result_479528578 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float4 getTextureValue_134971782 = TextureInput_1691598668_id13[result_479528578];
    float length_764928700 = length(getTextureValue_134971782);
    int3 result_122190707 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float4 getTextureValue_2279150203 = TextureInput_1691598668_id13[result_122190707];
    float length_2174273232 = length(getTextureValue_2279150203);
    float result_2089417597 = (length_764928700 - length_2174273232);
    int3 result_3320893956 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float4 getTextureValue_338823592 = TextureInput_1691598668_id13[result_3320893956];
    float length_2399789263 = length(getTextureValue_338823592);
    int3 result_3661328811 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float4 getTextureValue_1048011011 = TextureInput_1691598668_id13[result_3661328811];
    float length_1670843129 = length(getTextureValue_1048011011);
    float result_1962107878 = (length_2399789263 - length_1670843129);
    float3 Float3Join_1425677148 = float3(result_3555378679, result_2089417597, result_1962107878);
    float3 result_4066094573 = (Float3Join_1425677148 * 0.5);
    float3 result_4136039928 = (result_4066094573 + 0.001);
    float3 normalize_2835012010 = normalize(result_4136039928);
    float3 VorticityXyz_1834946861 = vorticity_480588738.xyz;
    float3 cross_838299972 = cross(normalize_2835012010, VorticityXyz_1834946861);
    float lerp_2714959381 = lerp(input_974475000_id19, input_1949839616_id20, input_3388234353_id21);
    float result_4166656009 = (input_2286998846_id18 * lerp_2714959381);
    float3 result_403634546 = (cross_838299972 * result_4166656009);
    float4 join_1551209276 = float4(result_403634546, 0);
    float4 result_2341366059 = (velocity_169094072 + join_1551209276);
    velocity_169094072 = result_2341366059;
    TextureInput_1226110717_id14[streams.DispatchThreadId_id1] = velocity_169094072;
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
