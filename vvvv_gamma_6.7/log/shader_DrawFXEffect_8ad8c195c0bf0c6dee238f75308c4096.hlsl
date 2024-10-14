/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DrawFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin DisplayBuffer_Advanced_Internal_DrawFX
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
@C    Texture0TexelSize_id45 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id47 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id49 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id51 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id53 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id55 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id57 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id59 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id61 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id63 => Texturing.Texture9TexelSize
@C    Reso_id102 => DisplayBuffer_Advanced_Internal_DrawFX.Reso
@C    pixSize_id103 => DisplayBuffer_Advanced_Internal_DrawFX.pixSize
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    sbInput_id104 => DisplayBuffer_Advanced_Internal_DrawFX.sbInput [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    DisplayBuffer_Advanced_Internal_DrawFX => 00aff2f0dc32c335c61b8d9768560c38
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    ColorBase => b8b78679285939723aa5d9647437398b
@S    AddonShaderUtils => 0d3496ddd24bfcbde4abd1deae724f64
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
//   v1.x <- __input__.TexCoord_id92.x; v1.y <- __input__.TexCoord_id92.y; 
//   o1.x <- <VSMain return value>.TexCoord_id92.x; o1.y <- <VSMain return value>.TexCoord_id92.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 163 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_DrawFXEffect_8ad8c195c0bf0c6dee238f75308c4096.hlsl"
dp4 o0.x, v0.xyzw, cb0[20].xyzw
dp4 o0.y, v0.xyzw, cb0[21].xyzw
dp4 o0.z, v0.xyzw, cb0[22].xyzw
dp4 o0.w, v0.xyzw, cb0[23].xyzw

#line 167
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 922673d20737cd190f86b848ae08d16b
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id45;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id47;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id49;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id51;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id53;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id55;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id57;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id59;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id61;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id63;     // Offset:   72 Size:     8 [unused]
//   float2 Reso_id102;                 // Offset:   80 Size:     8
//   int pixSize_id103;                 // Offset:   88 Size:     4
//      = 0x00000008 
//
// }
//
// Resource bind info for sbInput_id104
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// sbInput_id104                     texture  struct         r/o             t0      1 
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
dcl_resource_structured t0, 16
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id92.x; v1.y <- __input__.TexCoord_id92.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 151 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_DrawFXEffect_8ad8c195c0bf0c6dee238f75308c4096.hlsl"
mul r0.xy, v1.xyxx, cb0[5].xyxx
round_ni r0.xy, r0.xyxx
ftoi r0.y, r0.y  // r0.y <- iuv.y

#line 152
min r0.x, r0.x, cb0[5].x
udiv r0.y, null, r0.y, cb0[5].z
utof r0.y, r0.y
mad r0.x, r0.y, cb0[5].x, r0.x
ftou r0.x, r0.x
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) o0.xyzw, r0.x, l(0), t0.xyzw

#line 156
ret 
// Approximately 10 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id92;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id92 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float2 TexCoord_id92;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id92 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
    float2 TexCoord_id92 : TEXCOORD0;
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
    float2 Texture0TexelSize_id45;
    float2 Texture1TexelSize_id47;
    float2 Texture2TexelSize_id49;
    float2 Texture3TexelSize_id51;
    float2 Texture4TexelSize_id53;
    float2 Texture5TexelSize_id55;
    float2 Texture6TexelSize_id57;
    float2 Texture7TexelSize_id59;
    float2 Texture8TexelSize_id61;
    float2 Texture9TexelSize_id63;
    float2 Reso_id102;
    int pixSize_id103 = 8;
};
Texture2D Texture0_id44;
Texture2D Texture1_id46;
Texture2D Texture2_id48;
Texture2D Texture3_id50;
Texture2D Texture4_id52;
Texture2D Texture5_id54;
Texture2D Texture6_id56;
Texture2D Texture7_id58;
Texture2D Texture8_id60;
Texture2D Texture9_id62;
TextureCube TextureCube0_id64;
TextureCube TextureCube1_id65;
TextureCube TextureCube2_id66;
TextureCube TextureCube3_id67;
Texture3D Texture3D0_id68;
Texture3D Texture3D1_id69;
Texture3D Texture3D2_id70;
Texture3D Texture3D3_id71;
SamplerState Sampler_id72;
SamplerState PointSampler_id73 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id74 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id75 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id76 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id77 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id78 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id79 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id80 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id81 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id82;
SamplerState Sampler1_id83;
SamplerState Sampler2_id84;
SamplerState Sampler3_id85;
SamplerState Sampler4_id86;
SamplerState Sampler5_id87;
SamplerState Sampler6_id88;
SamplerState Sampler7_id89;
SamplerState Sampler8_id90;
SamplerState Sampler9_id91;
StructuredBuffer<float4> sbInput_id104;
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id92 = __input__.TexCoord_id92;
    float4 c = 0.1;
    int2 iuv = floor((streams.TexCoord_id92 * Reso_id102));
    c = sbInput_id104[min(iuv, Reso_id102).x + floor(iuv.y / (uint)pixSize_id103) * Reso_id102.x];
    streams.ColorTarget_id2 = c;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    streams.TexCoord_id92 = __input__.TexCoord_id92;
    streams.ShadingPosition_id0 = mul(streams.Position_id14, WorldViewProjection_id34);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id92 = streams.TexCoord_id92;
    return __output__;
}
