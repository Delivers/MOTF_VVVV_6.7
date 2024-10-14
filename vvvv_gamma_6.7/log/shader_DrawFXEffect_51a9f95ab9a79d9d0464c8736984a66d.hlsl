/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DrawFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Fluid_BoundaryConditions_Advanced_Internal_DrawFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer Globals [Size: 96]
@C    Texture0TexelSize_id38 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id40 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id42 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id44 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id46 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id48 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id50 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id52 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id54 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id56 => Texturing.Texture9TexelSize
@C    vFlowDims_id95 => Fluid_BoundaryConditions_Advanced_Internal_DrawFX.vFlowDims
@C    scale_id96 => Fluid_BoundaryConditions_Advanced_Internal_DrawFX.scale
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id67 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id37 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    Fluid_BoundaryConditions_Advanced_Internal_DrawFX => b3ecf1eccbc9ebf32693a459d11073bb
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
***************************
*****     Stages      *****
***************************
@G    Vertex => ff98e50ffc6413f837f5851b40eab595
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[24], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id14.x; v0.y <- __input__.Position_id14.y; v0.z <- __input__.Position_id14.z; v0.w <- __input__.Position_id14.w; 
//   v1.x <- __input__.TexCoord_id85.x; v1.y <- __input__.TexCoord_id85.y; 
//   o1.x <- <VSMain return value>.TexCoord_id85.x; o1.y <- <VSMain return value>.TexCoord_id85.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 170 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_DrawFXEffect_51a9f95ab9a79d9d0464c8736984a66d.hlsl"
dp4 o0.x, v0.xyzw, cb0[20].xyzw
dp4 o0.y, v0.xyzw, cb0[21].xyzw
dp4 o0.z, v0.xyzw, cb0[22].xyzw
dp4 o0.w, v0.xyzw, cb0[23].xyzw

#line 174
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => e2bf56a53fe7d1ffd5d77556cc74ab66
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id38;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id40;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id42;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id44;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id46;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id48;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id50;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id52;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id54;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id56;     // Offset:   72 Size:     8 [unused]
//   float vFlowDims_id95;              // Offset:   80 Size:     4
//   float scale_id96;                  // Offset:   84 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id67                sampler      NA          NA             s0      1 
// Texture0_id37                     texture  float4          2d             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id85.x; v1.y <- __input__.TexCoord_id85.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 154 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_DrawFXEffect_51a9f95ab9a79d9d0464c8736984a66d.hlsl"
add r0.x, cb0[5].x, l(-1.000000)
div r0.x, r0.x, cb0[5].x

#line 156
lt r0.xy, r0.xxxx, v1.xyxx
not r0.zw, r0.xxxy

#line 150
div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[5].x

#line 152
lt r1.yz, v1.xxyx, r1.xxxx
not r2.xy, r1.yzyy
and r1.w, r2.y, r2.x

#line 154
and r0.z, r0.z, r1.w

#line 156
and r0.z, r0.w, r0.z

#line 159
discard_nz r0.z

#line 157
add r2.xy, -r1.xxxx, v1.xyxx  // r2.x <- tc.x; r2.y <- tc.y

#line 153
add r3.xy, r1.xxxx, v1.xyxx  // r3.x <- tc.x; r3.y <- tc.y

#line 159
movc r4.y, r0.y, r2.y, v1.y  // r4.y <- tc.y
mov r2.z, v1.y
mov r4.x, v1.x
movc r0.xy, r0.xxxx, r2.xzxx, r4.xyxx  // r0.x <- tc.x; r0.y <- tc.y
mov r3.zw, v1.xxxy
movc r0.xy, r1.zzzz, r3.zyzz, r0.xyxx
movc r0.xy, r1.yyyy, r3.xwxx, r0.xyxx

#line 160
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s0
mul o0.xyzw, r0.xyzw, cb0[5].yyyy

#line 163
ret 
// Approximately 23 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id85;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id85 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float2 TexCoord_id85;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id85 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
    float2 TexCoord_id85 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id38;
    float2 Texture1TexelSize_id40;
    float2 Texture2TexelSize_id42;
    float2 Texture3TexelSize_id44;
    float2 Texture4TexelSize_id46;
    float2 Texture5TexelSize_id48;
    float2 Texture6TexelSize_id50;
    float2 Texture7TexelSize_id52;
    float2 Texture8TexelSize_id54;
    float2 Texture9TexelSize_id56;
    float vFlowDims_id95;
    float scale_id96;
};
Texture2D Texture0_id37;
Texture2D Texture1_id39;
Texture2D Texture2_id41;
Texture2D Texture3_id43;
Texture2D Texture4_id45;
Texture2D Texture5_id47;
Texture2D Texture6_id49;
Texture2D Texture7_id51;
Texture2D Texture8_id53;
Texture2D Texture9_id55;
TextureCube TextureCube0_id57;
TextureCube TextureCube1_id58;
TextureCube TextureCube2_id59;
TextureCube TextureCube3_id60;
Texture3D Texture3D0_id61;
Texture3D Texture3D1_id62;
Texture3D Texture3D2_id63;
Texture3D Texture3D3_id64;
SamplerState Sampler_id65;
SamplerState PointSampler_id66 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id67 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id68 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id69 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id70 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id71 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id72 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id73 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id74 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id75;
SamplerState Sampler1_id76;
SamplerState Sampler2_id77;
SamplerState Sampler3_id78;
SamplerState Sampler4_id79;
SamplerState Sampler5_id80;
SamplerState Sampler6_id81;
SamplerState Sampler7_id82;
SamplerState Sampler8_id83;
SamplerState Sampler9_id84;
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id85 = __input__.TexCoord_id85;
    float2 tc = streams.TexCoord_id85;
    if (tc.x < 1.0f / vFlowDims_id95)
        tc.x += 1.0 / vFlowDims_id95;
    else if (tc.y < 1.0f / vFlowDims_id95)
        tc.y += 1.0f / vFlowDims_id95;
    else if (tc.x > (vFlowDims_id95 - 1.0f) / vFlowDims_id95)
        tc.x -= 1.f / vFlowDims_id95.x;
    else if (tc.y > (vFlowDims_id95 - 1.0f) / vFlowDims_id95)
        tc.y -= 1.f / vFlowDims_id95;
    else
        clip(-1.);
    streams.ColorTarget_id2 = scale_id96 * Texture0_id37.Sample(LinearSampler_id67, tc);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    streams.TexCoord_id85 = __input__.TexCoord_id85;
    streams.ShadingPosition_id0 = mul(streams.Position_id14, WorldViewProjection_id34);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id85 = streams.TexCoord_id85;
    return __output__;
}
