/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_370230148]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 144]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_1030675547_id13 => input_1030675547
@C    input_1632925280_id14 => input_1632925280
@C    input_383234772_id15 => input_383234772
@C    input_3138587855_id16 => input_3138587855
@C    input_3216021573_id17 => input_3216021573
@C    input_2463430719_id18 => input_2463430719
@C    input_3921094188_id19 => input_3921094188
@C    input_2931190119_id20 => input_2931190119
@C    input_1569019293_id21 => input_1569019293
@C    input_1227424539_id22 => input_1227424539
@C    input_447518577_id23 => input_447518577
@C    input_4280945230_id24 => input_4280945230
@C    input_2707868841_id25 => input_2707868841
@C    input_1239074111_id26 => input_1239074111
@C    input_3832474532_id27 => input_3832474532
@C    input_2575196331_id28 => input_2575196331
@C    input_2087071721_id29 => input_2087071721
***************************
******  Resources    ******
***************************
@R    DynamicBufferInput_1282521623_id12 => DynamicBufferInput_1282521623 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_370230148 => 698e841b2c1de404585ff6cb02aaa638
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
@S    FuseCoreMathPCG => e529e3d6e7220073ba1b2dacab9e88b2
***************************
*****     Stages      *****
***************************
@G    Compute => 1bf2ab20544bb94e9308b078175ddc1a
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
//   int input_1030675547_id13;         // Offset:   12 Size:     4
//   float input_1632925280_id14;       // Offset:   16 Size:     4 [unused]
//   float3 input_383234772_id15;       // Offset:   20 Size:    12 [unused]
//   int input_3138587855_id16;         // Offset:   32 Size:     4
//   int input_3216021573_id17;         // Offset:   36 Size:     4
//   float input_2463430719_id18;       // Offset:   40 Size:     4
//   float3 input_3921094188_id19;      // Offset:   48 Size:    12
//   float3 input_2931190119_id20;      // Offset:   64 Size:    12
//   int input_1569019293_id21;         // Offset:   76 Size:     4
//   int input_1227424539_id22;         // Offset:   80 Size:     4
//   float3 input_447518577_id23;       // Offset:   84 Size:    12
//   float input_4280945230_id24;       // Offset:   96 Size:     4
//   float4 input_2707868841_id25;      // Offset:  112 Size:    16
//   float input_1239074111_id26;       // Offset:  128 Size:     4
//   float input_3832474532_id27;       // Offset:  132 Size:     4
//   int input_2575196331_id28;         // Offset:  136 Size:     4
//   int input_2087071721_id29;         // Offset:  140 Size:     4
//
// }
//
// Resource bind info for DynamicBufferInput_1282521623_id12
// {
//
//   struct Resource28156802
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
//       float3 Target;                 // Offset:   64
//       float3 AxisX;                  // Offset:   76
//       float3 AxisY;                  // Offset:   88
//       float3 AxisZ;                  // Offset:  100
//       float3 Size3;                  // Offset:  112
//
//   } $Element;                        // Offset:    0 Size:   124
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// DynamicBufferInput_1282521623_id12        UAV  struct         r/w             u0      1 
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
dcl_uav_structured u0, 124
dcl_input vThreadID.x
dcl_temps 3
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 83 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_bf61e8506961cbfea18482bdfa8c2e35.hlsl"
ult r0.x, vThreadID.x, cb0[0].w
if_nz r0.x

#line 84
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r0.xy, vThreadID.x, l(0), u0.xyxx  // r0.x <- getBuffer_3372248743.Age; r0.y <- getBuffer_3372248743.LifeTime
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r0.z, vThreadID.x, l(60), u0.xxxx  // r0.z <- getBuffer_3372248743.Cycle

#line 66
  imul null, r1.x, vThreadID.x, l(0x0019660d)
  imul null, r1.yz, cb0[2].xxyx, l(0, 0x0019660d, 0x0019660d, 0)
  iadd r1.xyz, r1.xyzx, l(0x3c6ef35f, 0x3c6ef35f, 0x3c6ef35f, 0)  // r1.x <- v.x; r1.y <- v.y; r1.z <- v.z

#line 67
  imad r2.x, r1.y, r1.z, r1.x  // r2.x <- v.x

#line 68
  imad r2.y, r1.z, r2.x, r1.y  // r2.y <- v.y

#line 69
  imad r2.z, r2.x, r2.y, r1.z  // r2.z <- v.z

#line 70
  ushr r1.xyz, r2.xyzx, l(16, 16, 16, 0)
  xor r1.xyz, r1.xyzx, r2.xyzx  // r1.x <- v.x; r1.y <- v.y; r1.z <- v.z

#line 71
  imad r0.w, r1.y, r1.z, r1.x  // r0.w <- v.x

#line 74
  utof r0.w, r0.w
  mul r0.w, r0.w, l(0.000000)  // r0.w <- <pcg3d_id5 return value>.x

#line 104
  lt r0.w, r0.w, cb0[2].z  // r0.w <- Assign_962073743

#line 105
  lt r1.x, l(0.000000), r0.x  // r1.x <- Assign_1508034137

#line 106
  ge r0.x, r0.y, r0.x  // r0.x <- Assign_2194287971

#line 107
  and r0.x, r0.x, r1.x  // r0.x <- result_3451282511

#line 108
  not r0.x, r0.x  // r0.x <- not_1413474491

#line 109
  and r0.x, r0.x, r0.w  // r0.x <- result_808202500

#line 115
  if_nz r0.x

#line 66
    imul null, r1.x, vThreadID.x, l(0x0019660d)
    imul null, r1.y, cb0[4].w, l(0x0019660d)
    imul null, r1.z, cb0[5].x, l(0x0019660d)
    iadd r0.xyw, r1.xyxz, l(0x3c6ef35f, 0x3c6ef35f, 0, 0x3c6ef35f)  // r0.x <- v.x; r0.y <- v.y; r0.w <- v.z

#line 67
    imad r1.x, r0.y, r0.w, r0.x  // r1.x <- v.x

#line 68
    imad r1.y, r0.w, r1.x, r0.y  // r1.y <- v.y

#line 69
    imad r1.z, r1.x, r1.y, r0.w  // r1.z <- v.z

#line 70
    ushr r0.xyw, r1.xyxz, l(16, 16, 0, 16)
    xor r0.xyw, r0.xyxw, r1.xyxz  // r0.x <- v.x; r0.y <- v.y; r0.w <- v.z

#line 71
    imad r0.x, r0.y, r0.w, r0.x

#line 72
    imad r0.y, r0.w, r0.x, r0.y

#line 73
    imad r0.w, r0.x, r0.y, r0.w

#line 74
    utof r1.xyz, r0.xywx
    mul r0.xyw, r1.xyxz, l(0.000000, 0.000000, 0.000000, 0.000000)  // r0.x <- <pcg3d_id5 return value>.x; r0.y <- <pcg3d_id5 return value>.y; r0.w <- <pcg3d_id5 return value>.z

#line 120
    add r1.xyz, -cb0[3].xyzx, cb0[4].xyzx
    mad r0.xyw, r0.xyxw, r1.xyxz, cb0[3].xyxz  // r0.x <- lerp_1521249789.x; r0.y <- lerp_1521249789.y; r0.w <- lerp_1521249789.z

#line 66
    imul null, r1.x, vThreadID.x, l(0x0019660d)
    imul null, r1.yz, cb0[8].zzwz, l(0, 0x0019660d, 0x0019660d, 0)
    iadd r1.xyz, r1.xyzx, l(0x3c6ef35f, 0x3c6ef35f, 0x3c6ef35f, 0)  // r1.y <- v.y; r1.z <- v.z; r1.x <- v.x

#line 67
    imad r2.x, r1.y, r1.z, r1.x  // r2.x <- v.x

#line 68
    imad r2.y, r1.z, r2.x, r1.y  // r2.y <- v.y

#line 69
    imad r2.z, r2.x, r2.y, r1.z  // r2.z <- v.z

#line 70
    ushr r1.xyz, r2.xyzx, l(16, 16, 16, 0)
    xor r1.xyz, r1.xyzx, r2.xyzx  // r1.y <- v.y; r1.z <- v.z; r1.x <- v.x

#line 71
    imad r1.x, r1.y, r1.z, r1.x

#line 74
    utof r1.x, r1.x
    mul r1.x, r1.x, l(0.000000)  // r1.x <- <pcg3d_id5 return value>.x

#line 129
    add r1.y, -cb0[8].x, cb0[8].y
    mad r1.y, r1.x, r1.y, cb0[8].x  // r1.y <- lerp_1949126363

#line 132
    iadd r2.w, r0.z, l(1)  // r2.w <- result_1126587770

#line 145
    mov r1.x, l(0.000010)
    mov r1.z, vThreadID.x
    mov r1.w, r0.x
    store_structured u0.xyzw, vThreadID.x, l(0), r1.xyzw
    mov r1.xy, r0.ywyy
    mov r1.zw, cb0[5].yyyz
    store_structured u0.xyzw, vThreadID.x, l(16), r1.xyzw
    mov r1.x, cb0[5].w
    mov r1.y, cb0[6].x
    mov r1.z, l(1.000000)
    mov r1.w, cb0[7].x
    store_structured u0.xyzw, vThreadID.x, l(32), r1.xyzw
    mov r2.xyz, cb0[7].yzwy
    store_structured u0.xyzw, vThreadID.x, l(48), r2.xyzw
    store_structured u0.xyz, vThreadID.x, l(64), r0.xywx
  endif 
endif 

#line 171
ret 
// Approximately 70 instruction slots used
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
struct Resource28156802 
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
    float3 Target;
    float3 AxisX;
    float3 AxisY;
    float3 AxisZ;
    float3 Size3;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int input_1030675547_id13;
    float input_1632925280_id14;
    float3 input_383234772_id15;
    int input_3138587855_id16;
    int input_3216021573_id17;
    float input_2463430719_id18;
    float3 input_3921094188_id19;
    float3 input_2931190119_id20;
    int input_1569019293_id21;
    int input_1227424539_id22;
    float3 input_447518577_id23;
    float input_4280945230_id24;
    float4 input_2707868841_id25;
    float input_1239074111_id26;
    float input_3832474532_id27;
    int input_2575196331_id28;
    int input_2087071721_id29;
};
RWStructuredBuffer<Resource28156802> DynamicBufferInput_1282521623_id12;
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
    bool Assign_1566953907 = streams.DispatchThreadId_id1.x >= input_1030675547_id13;
    if (Assign_1566953907)
    {
        return;
    }
    int IndexX_3709646900 = streams.DispatchThreadId_id1.x;
    Resource28156802 getBuffer_3372248743 = DynamicBufferInput_1282521623_id12[IndexX_3709646900];
    float age_1580414045 = getBuffer_3372248743.Age;
    float lifetime_833068859 = getBuffer_3372248743.LifeTime;
    int id_3336201457 = getBuffer_3372248743.Id;
    float3 pposition_2863421903 = getBuffer_3372248743.PPosition;
    float3 velocity_2503948290 = getBuffer_3372248743.Velocity;
    float size_1015797888 = getBuffer_3372248743.Size;
    float mass_3067277566 = getBuffer_3372248743.Mass;
    float4 pcolor_1579127164 = getBuffer_3372248743.PColor;
    int cycle_2042071050 = getBuffer_3372248743.Cycle;
    float3 target_2352362865 = getBuffer_3372248743.Target;
    float deltatime_1595968923 = 0;
    deltatime_1595968923 = input_1632925280_id14;
    int3 index_2106435840 = int3(0, 0, 0);
    index_2106435840 = streams.DispatchThreadId_id1;
    float3 resourcescale_2580970705 = float3(0, 0, 0);
    resourcescale_2580970705 = input_383234772_id15;
    int3 Int3Join_489054330 = int3(streams.DispatchThreadId_id1.x, input_3138587855_id16, input_3216021573_id17);
    float3 pcg3d_430976190 = pcg3d_id5(Int3Join_489054330);
    float cast13_2455292732 = cast13_id6(pcg3d_430976190);
    bool Assign_962073743 = cast13_2455292732 < input_2463430719_id18;
    bool Assign_1508034137 = age_1580414045 > 0;
    bool Assign_2194287971 = age_1580414045 <= lifetime_833068859;
    bool result_3451282511 = (Assign_1508034137 && Assign_2194287971);
    bool not_1413474491 = !result_3451282511;
    bool result_808202500 = (Assign_962073743 && not_1413474491);
    bool not_810912586 = !result_808202500;
    if (not_810912586)
    {
        return;
    }
    age_1580414045 = 1E-05;
    id_3336201457 = streams.DispatchThreadId_id1.x;
    int3 Int3Join_2345207514 = int3(streams.DispatchThreadId_id1.x, input_1569019293_id21, input_1227424539_id22);
    float3 pcg3d_1182270002 = pcg3d_id5(Int3Join_2345207514);
    float3 cast33_3499935600 = cast33_id7(pcg3d_1182270002);
    float3 lerp_1521249789 = lerp(input_3921094188_id19, input_2931190119_id20, cast33_3499935600);
    pposition_2863421903 = lerp_1521249789;
    velocity_2503948290 = input_447518577_id23;
    size_1015797888 = input_4280945230_id24;
    mass_3067277566 = 1;
    pcolor_1579127164 = input_2707868841_id25;
    int3 Int3Join_3098721724 = int3(streams.DispatchThreadId_id1.x, input_2575196331_id28, input_2087071721_id29);
    float3 pcg3d_1718665920 = pcg3d_id5(Int3Join_3098721724);
    float cast13_2888878590 = cast13_id6(pcg3d_1718665920);
    float lerp_1949126363 = lerp(input_1239074111_id26, input_3832474532_id27, cast13_2888878590);
    lifetime_833068859 = lerp_1949126363;
    age_1580414045 = 1E-05;
    int result_1126587770 = (cycle_2042071050 + 1);
    cycle_2042071050 = result_1126587770;
    target_2352362865 = lerp_1521249789;
    getBuffer_3372248743.Age = age_1580414045;
    getBuffer_3372248743.LifeTime = lifetime_833068859;
    getBuffer_3372248743.Id = id_3336201457;
    getBuffer_3372248743.PPosition = pposition_2863421903;
    getBuffer_3372248743.Velocity = velocity_2503948290;
    getBuffer_3372248743.Size = size_1015797888;
    getBuffer_3372248743.Mass = mass_3067277566;
    getBuffer_3372248743.PColor = pcolor_1579127164;
    getBuffer_3372248743.Cycle = cycle_2042071050;
    getBuffer_3372248743.Target = target_2352362865;
    DynamicBufferInput_1282521623_id12[IndexX_3709646900] = getBuffer_3372248743;
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
