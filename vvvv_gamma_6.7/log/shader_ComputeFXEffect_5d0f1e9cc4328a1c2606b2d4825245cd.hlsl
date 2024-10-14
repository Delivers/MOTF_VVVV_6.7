/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1790489273]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 224]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_1067223776_id13 => input_1067223776
@C    input_116220470_id14 => input_116220470
@C    input_2592216594_id15 => input_2592216594
@C    input_2546869765_id16 => input_2546869765
@C    input_2380613975_id17 => input_2380613975
@C    input_1783083959_id18 => input_1783083959
@C    input_3343700878_id19 => input_3343700878
@C    input_332168623_id20 => input_332168623
@C    input_835224589_id21 => input_835224589
@C    input_2312160263_id22 => input_2312160263
@C    input_2475383599_id23 => input_2475383599
@C    input_1068171476_id24 => input_1068171476
@C    input_507444731_id25 => input_507444731
@C    input_1794496102_id26 => input_1794496102
@C    input_3711684729_id27 => input_3711684729
@C    input_2725119257_id28 => input_2725119257
@C    input_278208779_id29 => input_278208779
@C    input_4087612161_id30 => input_4087612161
@C    input_773772299_id31 => input_773772299
***************************
******  Resources    ******
***************************
@R    DynamicBufferInput_4252052980_id12 => DynamicBufferInput_4252052980 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1790489273 => 17a767c1542996590ad40a575f814862
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
@S    FuseCoreMathPCG => e529e3d6e7220073ba1b2dacab9e88b2
***************************
*****     Stages      *****
***************************
@G    Compute => 0ac68a899d422f3b9493f6f8aae332da
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
//   int input_1067223776_id13;         // Offset:   12 Size:     4
//   float input_116220470_id14;        // Offset:   16 Size:     4 [unused]
//   float3 input_2592216594_id15;      // Offset:   20 Size:    12 [unused]
//   int input_2546869765_id16;         // Offset:   32 Size:     4
//   int input_2380613975_id17;         // Offset:   36 Size:     4
//   float input_1783083959_id18;       // Offset:   40 Size:     4
//   float3 input_3343700878_id19;      // Offset:   48 Size:    12
//   float3 input_332168623_id20;       // Offset:   64 Size:    12
//   int input_835224589_id21;          // Offset:   76 Size:     4
//   int input_2312160263_id22;         // Offset:   80 Size:     4
//   float4x4 input_2475383599_id23;    // Offset:   96 Size:    64
//   float3 input_1068171476_id24;      // Offset:  160 Size:    12
//   float input_507444731_id25;        // Offset:  172 Size:     4
//   float4 input_1794496102_id26;      // Offset:  176 Size:    16
//   float input_3711684729_id27;       // Offset:  192 Size:     4
//   float input_2725119257_id28;       // Offset:  196 Size:     4
//   int input_278208779_id29;          // Offset:  200 Size:     4
//   int input_4087612161_id30;         // Offset:  204 Size:     4
//   float3 input_773772299_id31;       // Offset:  208 Size:    12
//
// }
//
// Resource bind info for DynamicBufferInput_4252052980_id12
// {
//
//   struct Resource23513643
//   {
//       
//       float Age;                     // Offset:    0
//       float LifeTime;                // Offset:    4
//       int Id;                        // Offset:    8
//       float3 PPosition;              // Offset:   12
//       float3 Velocity;               // Offset:   24
//       float Size;                    // Offset:   36
//       float Mass;                    // Offset:   40
//       float4 PColor;                 // Offset:   44
//       int Cycle;                     // Offset:   60
//       float3 PLastPosition;          // Offset:   64
//       float3 AxisX;                  // Offset:   76
//       float3 AxisY;                  // Offset:   88
//       float3 AxisZ;                  // Offset:  100
//
//   } $Element;                        // Offset:    0 Size:   112
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// DynamicBufferInput_4252052980_id12        UAV  struct         r/w             u0      1 
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
dcl_constantbuffer CB0[14], immediateIndexed
dcl_uav_structured u0, 112
dcl_input vThreadID.x
dcl_temps 4
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 84 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_5d0f1e9cc4328a1c2606b2d4825245cd.hlsl"
ult r0.x, vThreadID.x, cb0[0].w
if_nz r0.x

#line 85
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r0.xy, vThreadID.x, l(0), u0.xyxx  // r0.x <- getBuffer_3291917120.Age; r0.y <- getBuffer_3291917120.LifeTime
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r0.z, vThreadID.x, l(60), u0.xxxx  // r0.z <- getBuffer_3291917120.Cycle

#line 67
  imul null, r1.x, vThreadID.x, l(0x0019660d)
  imul null, r1.yz, cb0[2].xxyx, l(0, 0x0019660d, 0x0019660d, 0)
  iadd r1.xyz, r1.xyzx, l(0x3c6ef35f, 0x3c6ef35f, 0x3c6ef35f, 0)  // r1.x <- v.x; r1.y <- v.y; r1.z <- v.z

#line 68
  imad r2.x, r1.y, r1.z, r1.x  // r2.x <- v.x

#line 69
  imad r2.y, r1.z, r2.x, r1.y  // r2.y <- v.y

#line 70
  imad r2.z, r2.x, r2.y, r1.z  // r2.z <- v.z

#line 71
  ushr r1.xyz, r2.xyzx, l(16, 16, 16, 0)
  xor r1.xyz, r1.xyzx, r2.xyzx  // r1.x <- v.x; r1.y <- v.y; r1.z <- v.z

#line 72
  imad r0.w, r1.y, r1.z, r1.x  // r0.w <- v.x

#line 75
  utof r0.w, r0.w
  mul r0.w, r0.w, l(0.000000)  // r0.w <- <pcg3d_id5 return value>.x

#line 105
  lt r0.w, r0.w, cb0[2].z  // r0.w <- Assign_1777685337

#line 106
  lt r1.x, l(0.000000), r0.x  // r1.x <- Assign_415419675

#line 107
  ge r0.x, r0.y, r0.x  // r0.x <- Assign_1997602681

#line 108
  and r0.x, r0.x, r1.x  // r0.x <- result_3668255861

#line 109
  not r0.x, r0.x  // r0.x <- not_2794307785

#line 110
  and r0.x, r0.x, r0.w  // r0.x <- result_1614427070

#line 116
  if_nz r0.x

#line 67
    imul null, r1.x, vThreadID.x, l(0x0019660d)
    imul null, r1.y, cb0[4].w, l(0x0019660d)
    imul null, r1.z, cb0[5].x, l(0x0019660d)
    iadd r0.xyw, r1.xyxz, l(0x3c6ef35f, 0x3c6ef35f, 0, 0x3c6ef35f)  // r0.x <- v.x; r0.y <- v.y; r0.w <- v.z

#line 68
    imad r1.x, r0.y, r0.w, r0.x  // r1.x <- v.x

#line 69
    imad r1.y, r0.w, r1.x, r0.y  // r1.y <- v.y

#line 70
    imad r1.z, r1.x, r1.y, r0.w  // r1.z <- v.z

#line 71
    ushr r0.xyw, r1.xyxz, l(16, 16, 0, 16)
    xor r0.xyw, r0.xyxw, r1.xyxz  // r0.x <- v.x; r0.y <- v.y; r0.w <- v.z

#line 72
    imad r0.x, r0.y, r0.w, r0.x

#line 73
    imad r0.y, r0.w, r0.x, r0.y

#line 74
    imad r0.w, r0.x, r0.y, r0.w

#line 75
    utof r1.xyz, r0.xywx
    mul r0.xyw, r1.xyxz, l(0.000000, 0.000000, 0.000000, 0.000000)  // r0.x <- <pcg3d_id5 return value>.x; r0.y <- <pcg3d_id5 return value>.y; r0.w <- <pcg3d_id5 return value>.z

#line 121
    add r1.xyz, -cb0[3].xyzx, cb0[4].xyzx
    mad r1.xyz, r0.xywx, r1.xyzx, cb0[3].xyzx  // r1.x <- lerp_1372237461.x; r1.y <- lerp_1372237461.y; r1.z <- lerp_1372237461.z

#line 123
    mov r1.w, l(1.000000)
    dp4 r2.w, r1.xyzw, cb0[6].xyzw  // r2.w <- mul_243491201.x
    dp4 r3.x, r1.xyzw, cb0[7].xyzw  // r3.x <- mul_243491201.y
    dp4 r3.y, r1.xyzw, cb0[8].xyzw  // r3.y <- mul_243491201.z

#line 67
    imul null, r1.x, vThreadID.x, l(0x0019660d)
    imul null, r1.yz, cb0[12].zzwz, l(0, 0x0019660d, 0x0019660d, 0)
    iadd r0.xyw, r1.xyxz, l(0x3c6ef35f, 0x3c6ef35f, 0, 0x3c6ef35f)  // r0.x <- v.x; r0.y <- v.y; r0.w <- v.z

#line 68
    imad r1.x, r0.y, r0.w, r0.x  // r1.x <- v.x

#line 69
    imad r1.y, r0.w, r1.x, r0.y  // r1.y <- v.y

#line 70
    imad r1.z, r1.x, r1.y, r0.w  // r1.z <- v.z

#line 71
    ushr r0.xyw, r1.xyxz, l(16, 16, 0, 16)
    xor r0.xyw, r0.xyxw, r1.xyxz  // r0.x <- v.x; r0.y <- v.y; r0.w <- v.z

#line 72
    imad r0.x, r0.y, r0.w, r0.x

#line 75
    utof r0.x, r0.x
    mul r0.x, r0.x, l(0.000000)  // r0.x <- <pcg3d_id5 return value>.x

#line 133
    add r0.y, -cb0[12].x, cb0[12].y
    mad r2.y, r0.x, r0.y, cb0[12].x  // r2.y <- lerp_1487147635

#line 136
    iadd r0.w, r0.z, l(1)  // r0.w <- result_2355258989

#line 149
    mov r2.x, l(0.000010)
    mov r2.z, vThreadID.x
    store_structured u0.xyzw, vThreadID.x, l(0), r2.xyzw
    mov r3.zw, cb0[10].xxxy
    store_structured u0.xyzw, vThreadID.x, l(16), r3.xyzw
    mov r1.xy, cb0[10].zwzz
    mov r1.z, l(1.000000)
    mov r1.w, cb0[11].x
    store_structured u0.xyzw, vThreadID.x, l(32), r1.xyzw
    mov r0.xyz, cb0[11].yzwy
    store_structured u0.xyzw, vThreadID.x, l(48), r0.xyzw
    store_structured u0.xyz, vThreadID.x, l(64), cb0[13].xyzx
  endif 
endif 

#line 175
ret 
// Approximately 71 instruction slots used
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
struct Resource23513643 
{
    float Age;
    float LifeTime;
    int Id;
    float3 PPosition;
    float3 Velocity;
    float Size;
    float Mass;
    float4 PColor;
    int Cycle;
    float3 PLastPosition;
    float3 AxisX;
    float3 AxisY;
    float3 AxisZ;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int input_1067223776_id13;
    float input_116220470_id14;
    float3 input_2592216594_id15;
    int input_2546869765_id16;
    int input_2380613975_id17;
    float input_1783083959_id18;
    float3 input_3343700878_id19;
    float3 input_332168623_id20;
    int input_835224589_id21;
    int input_2312160263_id22;
    float4x4 input_2475383599_id23;
    float3 input_1068171476_id24;
    float input_507444731_id25;
    float4 input_1794496102_id26;
    float input_3711684729_id27;
    float input_2725119257_id28;
    int input_278208779_id29;
    int input_4087612161_id30;
    float3 input_773772299_id31;
};
RWStructuredBuffer<Resource23513643> DynamicBufferInput_4252052980_id12;
float3 cast33_id7(float3 p)
{
    return p;
}
float cast13_id6(float3 p)
{
    return p.x;
}
float3 pcg3d_id5(uint3 v)
{
    v = v * 1664525 + 1013904223;
    v.x += v.y * v.z;
    v.y += v.z * v.x;
    v.z += v.x * v.y;
    v = v ^ (v >> 16);
    v.x += v.y * v.z;
    v.y += v.z * v.x;
    v.z += v.x * v.y;
    return float3(v) * (1.0 / float(0xffffffff));
}
void Compute_id4(inout CS_STREAMS streams)
{
    bool Assign_693619862 = streams.DispatchThreadId_id1.x >= input_1067223776_id13;
    if (Assign_693619862)
    {
        return;
    }
    int IndexX_2632966837 = streams.DispatchThreadId_id1.x;
    Resource23513643 getBuffer_3291917120 = DynamicBufferInput_4252052980_id12[IndexX_2632966837];
    float age_3619452298 = getBuffer_3291917120.Age;
    float lifetime_3960716716 = getBuffer_3291917120.LifeTime;
    int id_4288251894 = getBuffer_3291917120.Id;
    float3 pposition_393991784 = getBuffer_3291917120.PPosition;
    float3 velocity_2794962745 = getBuffer_3291917120.Velocity;
    float size_3368298683 = getBuffer_3291917120.Size;
    float mass_891911997 = getBuffer_3291917120.Mass;
    float4 pcolor_1465247935 = getBuffer_3291917120.PColor;
    int cycle_2463125313 = getBuffer_3291917120.Cycle;
    float3 plastposition_2211841000 = getBuffer_3291917120.PLastPosition;
    float deltatime_3101394561 = 0;
    deltatime_3101394561 = input_116220470_id14;
    int3 index_187446054 = int3(0, 0, 0);
    index_187446054 = streams.DispatchThreadId_id1;
    float3 resourcescale_87753675 = float3(0, 0, 0);
    resourcescale_87753675 = input_2592216594_id15;
    int3 Int3Join_1329993720 = int3(streams.DispatchThreadId_id1.x, input_2546869765_id16, input_2380613975_id17);
    float3 pcg3d_3360499744 = pcg3d_id5(Int3Join_1329993720);
    float cast13_960251778 = cast13_id6(pcg3d_3360499744);
    bool Assign_1777685337 = cast13_960251778 < input_1783083959_id18;
    bool Assign_415419675 = age_3619452298 > 0;
    bool Assign_1997602681 = age_3619452298 <= lifetime_3960716716;
    bool result_3668255861 = (Assign_415419675 && Assign_1997602681);
    bool not_2794307785 = !result_3668255861;
    bool result_1614427070 = (Assign_1777685337 && not_2794307785);
    bool not_342920840 = !result_1614427070;
    if (not_342920840)
    {
        return;
    }
    age_3619452298 = 1E-05;
    id_4288251894 = streams.DispatchThreadId_id1.x;
    int3 Int3Join_1107105976 = int3(streams.DispatchThreadId_id1.x, input_835224589_id21, input_2312160263_id22);
    float3 pcg3d_3272207968 = pcg3d_id5(Int3Join_1107105976);
    float3 cast33_2148174138 = cast33_id7(pcg3d_3272207968);
    float3 lerp_1372237461 = lerp(input_3343700878_id19, input_332168623_id20, cast33_2148174138);
    float4 join_2041663172 = float4(lerp_1372237461, 1);
    float4 mul_243491201 = mul(join_2041663172, input_2475383599_id23);
    float3 mulXyz_210407474 = mul_243491201.xyz;
    pposition_393991784 = mulXyz_210407474;
    velocity_2794962745 = input_1068171476_id24;
    size_3368298683 = input_507444731_id25;
    mass_891911997 = 1;
    pcolor_1465247935 = input_1794496102_id26;
    int3 Int3Join_1047998052 = int3(streams.DispatchThreadId_id1.x, input_278208779_id29, input_4087612161_id30);
    float3 pcg3d_1262506728 = pcg3d_id5(Int3Join_1047998052);
    float cast13_2449406222 = cast13_id6(pcg3d_1262506728);
    float lerp_1487147635 = lerp(input_3711684729_id27, input_2725119257_id28, cast13_2449406222);
    lifetime_3960716716 = lerp_1487147635;
    age_3619452298 = 1E-05;
    int result_2355258989 = (cycle_2463125313 + 1);
    cycle_2463125313 = result_2355258989;
    plastposition_2211841000 = input_773772299_id31;
    getBuffer_3291917120.Age = age_3619452298;
    getBuffer_3291917120.LifeTime = lifetime_3960716716;
    getBuffer_3291917120.Id = id_4288251894;
    getBuffer_3291917120.PPosition = pposition_393991784;
    getBuffer_3291917120.Velocity = velocity_2794962745;
    getBuffer_3291917120.Size = size_3368298683;
    getBuffer_3291917120.Mass = mass_891911997;
    getBuffer_3291917120.PColor = pcolor_1465247935;
    getBuffer_3291917120.Cycle = cycle_2463125313;
    getBuffer_3291917120.PLastPosition = plastposition_2211841000;
    DynamicBufferInput_4252052980_id12[IndexX_2632966837] = getBuffer_3291917120;
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
[numthreads(64, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 64;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 64 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id2(streams);
}
