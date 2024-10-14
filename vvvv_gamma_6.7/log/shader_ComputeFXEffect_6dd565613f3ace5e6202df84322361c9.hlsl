/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin BitonicSort_MatrixTranspose_ComputeFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer cb [Size: 16]
@C    _Width_id11 => BitonicSort_MatrixTranspose_ComputeFX._Width
@C    _Height_id12 => BitonicSort_MatrixTranspose_ComputeFX._Height
***************************
******  Resources    ******
***************************
@R    Input0_id13 => BitonicSort_MatrixTranspose_ComputeFX.Input0 [Stage: Compute, Slot: (0-0)]
@R    Data0_id14 => BitonicSort_MatrixTranspose_ComputeFX.Data0 [Stage: Compute, Slot: (0-0)]
@R    cb => cb [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    BitonicSort_MatrixTranspose_ComputeFX => bdb6e9c041437caf37061a6b1c3dfa5a
***************************
*****     Stages      *****
***************************
@G    Compute => b28c59ee10a6d35aa78386a619ff36e4
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer cb
// {
//
//   uint _Width_id11;                  // Offset:    0 Size:     4
//   uint _Height_id12;                 // Offset:    4 Size:     4
//
// }
//
// Resource bind info for Input0_id13
// {
//
//   float2 $Element;                   // Offset:    0 Size:     8
//
// }
//
// Resource bind info for Data0_id14
// {
//
//   float2 $Element;                   // Offset:    0 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Input0_id13                       texture  struct         r/o             t0      1 
// Data0_id14                            UAV  struct         r/w             u0      1 
// cb                                cbuffer      NA          NA            cb0      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_resource_structured t0, 8
dcl_uav_structured u0, 8
dcl_input vThreadID.xy
dcl_temps 1
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z; 
//   vThreadIDInGroup.x <- __input__.GroupThreadId_id2.x; vThreadIDInGroup.y <- __input__.GroupThreadId_id2.y; vThreadIDInGroup.z <- __input__.GroupThreadId_id2.z; 
//   vThreadIDInGroupFlattened.x <- __input__.GroupIndex_id3
//
#line 44 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_6dd565613f3ace5e6202df84322361c9.hlsl"
imad r0.xy, vThreadID.yxyy, cb0[0].xyxx, vThreadID.xyxx

#line 41
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xz, r0.x, l(0), t0.xxyx

#line 44
store_structured u0.xy, r0.y, l(0), r0.xzxx

#line 61
ret 
// Approximately 4 instruction slots used
***************************
*************************/
struct CS_STREAMS 
{
    uint3 GroupId_id0;
    uint3 DispatchThreadId_id1;
    uint3 GroupThreadId_id2;
    uint GroupIndex_id3;
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
    uint3 GroupThreadId_id2 : SV_GroupThreadID;
    uint GroupIndex_id3 : SV_GroupIndex;
};
cbuffer cb 
{
    uint _Width_id11;
    uint _Height_id12;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
};
cbuffer Globals 
{
    groupshared float2 transpose_shared_data_id15[16 * 16];
};
StructuredBuffer<float2> Input0_id13;
RWStructuredBuffer<float2> Data0_id14;
void Compute_id2(inout CS_STREAMS streams)
{
    uint3 DTid = streams.DispatchThreadId_id1;
    uint3 GTid = streams.GroupThreadId_id2;
    uint GI = streams.GroupIndex_id3;
    transpose_shared_data_id15[GI] = Input0_id13[DTid.y * _Width_id11 + DTid.x];
    GroupMemoryBarrierWithGroupSync();
    uint2 XY = DTid.yx - GTid.yx + GTid.xy;
    Data0_id14[XY.y * _Height_id12 + XY.x] = transpose_shared_data_id15[GTid.x * 16 + GTid.y];
}
[numthreads(1, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.GroupThreadId_id2 = __input__.GroupThreadId_id2;
    streams.GroupIndex_id3 = __input__.GroupIndex_id3;
    streams.ThreadCountX_id7 = 1;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 1 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id2(streams);
}
