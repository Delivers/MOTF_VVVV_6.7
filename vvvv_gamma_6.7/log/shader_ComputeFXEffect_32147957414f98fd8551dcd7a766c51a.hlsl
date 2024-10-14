/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:8 Y:8 Z:8
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1823222890]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 64]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_838590723_id15 => input_838590723
@C    input_1837847856_id16 => input_1837847856
@C    input_3771182012_id17 => input_3771182012
@C    input_1515412032_id18 => input_1515412032
@C    input_177013619_id19 => input_177013619
***************************
******  Resources    ******
***************************
@R    TextureInput_2957714998_id12 => TextureInput_2957714998 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_3021058338_id13 => TextureInput_3021058338 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_1941307003_id14 => TextureInput_1941307003 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1823222890 => ea609d94a6db5b23540678c152c9cced
***************************
*****     Stages      *****
***************************
@G    Compute => 1453ea2cac5f325640835b02e70ca165
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
//   float input_1837847856_id16;       // Offset:   28 Size:     4 [unused]
//   float3 input_3771182012_id17;      // Offset:   32 Size:    12 [unused]
//   float input_1515412032_id18;       // Offset:   44 Size:     4
//   float input_177013619_id19;        // Offset:   48 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// TextureInput_2957714998_id12      texture  float4          3d             t0      1 
// TextureInput_3021058338_id13      texture  float4          3d             t1      1 
// TextureInput_1941307003_id14          UAV  float4          3d             u0      1 
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
#line 39 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_32147957414f98fd8551dcd7a766c51a.hlsl"
ige r0.xyz, vThreadID.xyzx, cb0[1].xyzx  // r0.x <- Assign_3689940353; r0.y <- Assign_1627392202; r0.z <- Assign_1774890877

#line 40
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x  // r0.x <- result_1149744962

#line 45
if_z r0.x
  mov r0.xyz, vThreadID.xyzx
  mov r0.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r1.xyzw, r0.xyzw, t0.xyzw  // r1.x <- velocity_977671682.x; r1.y <- velocity_977671682.y; r1.z <- velocity_977671682.z; r1.w <- velocity_977671682.w

#line 46
  ld_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzw, t1.xyzw  // r0.x <- vorticity_2320042252.x; r0.y <- vorticity_2320042252.y; r0.z <- vorticity_2320042252.z

#line 53
  iadd r2.xyz, vThreadID.xyzx, l(1, 0, 0, 0)  // r2.x <- result_3100541704.x; r2.y <- result_3100541704.y; r2.z <- result_3100541704.z

#line 54
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r2.xyzw, r2.xyzw, t1.xyzw  // r2.x <- getTextureValue_1888568572.x; r2.y <- getTextureValue_1888568572.y; r2.z <- getTextureValue_1888568572.z; r2.w <- getTextureValue_1888568572.w

#line 55
  dp4 r0.w, r2.xyzw, r2.xyzw
  sqrt r0.w, r0.w  // r0.w <- length_4258135974

#line 56
  iadd r2.xyz, vThreadID.xyzx, l(-1, 0, 0, 0)  // r2.x <- result_2680994845.x; r2.y <- result_2680994845.y; r2.z <- result_2680994845.z

#line 57
  mov r2.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r2.xyzw, r2.xyzw, t1.xyzw  // r2.x <- getTextureValue_706441881.x; r2.y <- getTextureValue_706441881.y; r2.z <- getTextureValue_706441881.z; r2.w <- getTextureValue_706441881.w

#line 58
  dp4 r2.x, r2.xyzw, r2.xyzw
  sqrt r2.x, r2.x  // r2.x <- length_4263677466

#line 59
  add r2.y, r0.w, -r2.x  // r2.y <- result_2255783605

#line 60
  iadd r3.xyz, vThreadID.xyzx, l(0, 1, 0, 0)  // r3.x <- result_258846788.x; r3.y <- result_258846788.y; r3.z <- result_258846788.z

#line 61
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_1194638540.x; r3.y <- getTextureValue_1194638540.y; r3.z <- getTextureValue_1194638540.z; r3.w <- getTextureValue_1194638540.w

#line 62
  dp4 r0.w, r3.xyzw, r3.xyzw
  sqrt r0.w, r0.w  // r0.w <- length_252698046

#line 63
  iadd r3.xyz, vThreadID.xyzx, l(0, -1, 0, 0)  // r3.x <- result_1983548797.x; r3.y <- result_1983548797.y; r3.z <- result_1983548797.z

#line 64
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_3342088425.x; r3.y <- getTextureValue_3342088425.y; r3.z <- getTextureValue_3342088425.z; r3.w <- getTextureValue_3342088425.w

#line 65
  dp4 r2.w, r3.xyzw, r3.xyzw
  sqrt r2.w, r2.w  // r2.w <- length_2670324302

#line 66
  add r2.z, r0.w, -r2.w  // r2.z <- result_677888043

#line 67
  iadd r3.xyz, vThreadID.xyzx, l(0, 0, 1, 0)  // r3.x <- result_702148910.x; r3.y <- result_702148910.y; r3.z <- result_702148910.z

#line 68
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_3116798198.x; r3.y <- getTextureValue_3116798198.y; r3.z <- getTextureValue_3116798198.z; r3.w <- getTextureValue_3116798198.w

#line 69
  dp4 r0.w, r3.xyzw, r3.xyzw
  sqrt r0.w, r0.w  // r0.w <- length_1085391341

#line 70
  iadd r3.xyz, vThreadID.xyzx, l(0, 0, -1, 0)  // r3.x <- result_1117984057.x; r3.y <- result_1117984057.y; r3.z <- result_1117984057.z

#line 71
  mov r3.w, l(0)
  ld_indexable(texture3d)(float,float,float,float) r3.xyzw, r3.xyzw, t1.xyzw  // r3.x <- getTextureValue_134356333.x; r3.y <- getTextureValue_134356333.y; r3.z <- getTextureValue_134356333.z; r3.w <- getTextureValue_134356333.w

#line 72
  dp4 r2.w, r3.xyzw, r3.xyzw
  sqrt r2.w, r2.w  // r2.w <- length_3329230315

#line 73
  add r2.x, r0.w, -r2.w  // r2.x <- result_2370853016

#line 76
  mad r2.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.001000, 0.001000, 0.001000, 0.000000)  // r2.x <- result_130854134.z; r2.y <- result_130854134.x; r2.z <- result_130854134.y

#line 77
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx  // r2.x <- normalize_2091835908.z; r2.y <- normalize_2091835908.x; r2.z <- normalize_2091835908.y

#line 79
  mul r3.xyz, r0.yzxy, r2.xyzx
  mad r0.xyz, r2.zxyz, r0.zxyz, -r3.xyzx  // r0.x <- cross_3693052906.x; r0.y <- cross_3693052906.y; r0.z <- cross_3693052906.z

#line 80
  mul r0.w, cb0[2].w, cb0[3].x  // r0.w <- result_842272139

#line 81
  mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- result_53324812.x; r0.y <- result_53324812.y; r0.z <- result_53324812.z

#line 83
  mov r0.w, l(0)
  add r0.xyzw, r0.xyzw, r1.xyzw  // r0.x <- result_1345730205.x; r0.y <- result_1345730205.y; r0.z <- result_1345730205.z; r0.w <- result_1345730205.w

#line 85
  store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
endif 

#line 111
ret 
// Approximately 54 instruction slots used
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
    float input_1837847856_id16;
    float3 input_3771182012_id17;
    float input_1515412032_id18;
    float input_177013619_id19;
};
Texture3D<float4> TextureInput_2957714998_id12;
Texture3D<float4> TextureInput_3021058338_id13;
RWTexture3D<float4> TextureInput_1941307003_id14;
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
    float4 velocity_977671682 = TextureInput_2957714998_id12[streams.DispatchThreadId_id1];
    float4 vorticity_2320042252 = TextureInput_3021058338_id13[streams.DispatchThreadId_id1];
    float deltatime_3300053807 = 0;
    deltatime_3300053807 = input_1837847856_id16;
    int3 index_2559293684 = int3(0, 0, 0);
    index_2559293684 = streams.DispatchThreadId_id1;
    float3 resourcescale_2426114361 = float3(0, 0, 0);
    resourcescale_2426114361 = input_3771182012_id17;
    int3 result_3100541704 = (streams.DispatchThreadId_id1 + int3(1, 0, 0));
    float4 getTextureValue_1888568572 = TextureInput_3021058338_id13[result_3100541704];
    float length_4258135974 = length(getTextureValue_1888568572);
    int3 result_2680994845 = (streams.DispatchThreadId_id1 + int3(-1, 0, 0));
    float4 getTextureValue_706441881 = TextureInput_3021058338_id13[result_2680994845];
    float length_4263677466 = length(getTextureValue_706441881);
    float result_2255783605 = (length_4258135974 - length_4263677466);
    int3 result_258846788 = (streams.DispatchThreadId_id1 + int3(0, 1, 0));
    float4 getTextureValue_1194638540 = TextureInput_3021058338_id13[result_258846788];
    float length_252698046 = length(getTextureValue_1194638540);
    int3 result_1983548797 = (streams.DispatchThreadId_id1 + int3(0, -1, 0));
    float4 getTextureValue_3342088425 = TextureInput_3021058338_id13[result_1983548797];
    float length_2670324302 = length(getTextureValue_3342088425);
    float result_677888043 = (length_252698046 - length_2670324302);
    int3 result_702148910 = (streams.DispatchThreadId_id1 + int3(0, 0, 1));
    float4 getTextureValue_3116798198 = TextureInput_3021058338_id13[result_702148910];
    float length_1085391341 = length(getTextureValue_3116798198);
    int3 result_1117984057 = (streams.DispatchThreadId_id1 + int3(0, 0, -1));
    float4 getTextureValue_134356333 = TextureInput_3021058338_id13[result_1117984057];
    float length_3329230315 = length(getTextureValue_134356333);
    float result_2370853016 = (length_1085391341 - length_3329230315);
    float3 Float3Join_1326296278 = float3(result_2255783605, result_677888043, result_2370853016);
    float3 result_1015282875 = (Float3Join_1326296278 * 0.5);
    float3 result_130854134 = (result_1015282875 + 0.001);
    float3 normalize_2091835908 = normalize(result_130854134);
    float3 VorticityXyz_3813857307 = vorticity_2320042252.xyz;
    float3 cross_3693052906 = cross(normalize_2091835908, VorticityXyz_3813857307);
    float result_842272139 = (input_1515412032_id18 * input_177013619_id19);
    float3 result_53324812 = (cross_3693052906 * result_842272139);
    float4 join_788177218 = float4(result_53324812, 0);
    float4 result_1345730205 = (velocity_977671682 + join_788177218);
    velocity_977671682 = result_1345730205;
    TextureInput_1941307003_id14[streams.DispatchThreadId_id1] = velocity_977671682;
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
