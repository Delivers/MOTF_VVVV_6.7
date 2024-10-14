/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Hexagonize_Internal_TextureFX [{CellSize = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}, {Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {Morph = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]
@P CellSize: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P Morph: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 32]
@C    InputValue_id90 => ShaderFX.InputValueFloat4
@C    InputValue_id91 => ShaderFX.InputValueFloat2
@C    InputValue_id92 => ShaderFX.InputValueFloat
cbuffer PerView [Size: 32]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (1-1)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    Hexagonize_Internal_TextureFX => 9807d4f7e7769eca8198843a7dddbe90
@S    FilterBase => 5bd9cb7e7eb80aa436e148c74d845c07
@S    TextureFX => 27bb4f1f808a5eedf6dfeaa75c669c29
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    ComputeFloat4 => f871947e9f604da432ea9fc3c9cb4363
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    InputFloat2 => d6238a7d677592382c8158617d803399
@S    DeclFloat2 => d5fe6f879293db53179d13cf4b1d1f3d
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 193 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_44607dce5b85c9642d19e5bfdd338a9b.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 197
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 9c2a5f2aaf39860ba705394fb52a3580
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id90;            // Offset:    0 Size:    16
//   float2 InputValue_id91;            // Offset:   16 Size:     8
//   float InputValue_id92;             // Offset:   24 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float NearClipPlane_id74;          // Offset:    0 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id75;           // Offset:    4 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id76;           // Offset:    8 Size:     8 [unused]
//   float2 ViewSize_id77;              // Offset:   16 Size:     8
//   float AspectRatio_id78;            // Offset:   24 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id44                sampler      NA          NA             s0      1 
// Sampler0_id52                     sampler      NA          NA             s1      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 160 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_44607dce5b85c9642d19e5bfdd338a9b.hlsl"
div r0.xy, l(0.500000, 0.500000, 0.000000, 0.000000), cb1[1].xyxx
max r0.xy, r0.xyxx, cb0[1].xyxx
min r0.xy, r0.xyxx, cb1[1].xyxx
div r0.xy, cb1[1].xyxx, r0.xyxx
mul r0.xy, r0.xyxx, l(1.000000, 0.577000, 0.000000, 0.000000)  // r0.x <- sz.x; r0.y <- sz.y

#line 161
add r0.zw, v1.xxxy, l(0.000000, 0.000000, -0.500000, -0.500000)
mul r1.xy, r0.xyxx, r0.zwzz

#line 163
mad r2.xyz, r0.zwwz, r0.xyyx, l(-0.500000, -0.500000, 0.500000, 0.000000)

#line 162
round_ne r0.zw, r1.xxxy

#line 163
frc r1.x, r1.x
add r1.x, r1.x, l(-0.500000)
add r1.x, |r1.x|, l(-0.250000)
mad r1.x, r1.x, l(0.333333), l(0.250000)

#line 162
div r0.zw, r0.zzzw, r0.xxxy
add r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r0.zwzz, t0.wxyz, s0, l(0.000000)  // r1.y <- m2.x; r1.z <- m2.y; r1.w <- m2.z

#line 161
round_ne r2.xy, r2.xyxx

#line 163
frc r2.z, r2.z

#line 161
add r2.xyz, r2.xyzx, l(0.500000, 0.500000, -0.500000, 0.000000)

#line 163
ge r1.x, r1.x, |r2.z|
and r1.x, r1.x, l(0x3f800000)

#line 161
div r0.xy, r2.xyxx, r0.xyxx
add r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r0.xyxx, t0.xyzw, s0, l(0.000000)  // r2.x <- m1.x; r2.y <- m1.y; r2.z <- m1.z

#line 162
add r0.xyzw, r0.xyzw, -v1.xyxy

#line 163
add r1.yzw, r1.yyzw, -r2.xxyz
mad r1.yzw, r1.xxxx, r1.yyzw, r2.xxyz  // r1.y <- m.x; r1.z <- m.y; r1.w <- m.z

#line 142
dp3 r1.y, r1.yzwy, l(0.321211, 0.574286, 0.107070, 0.000000)  // r1.y <- c.x

#line 165
mul r1.y, r1.y, cb0[1].z

#line 166
mad r0.zw, r1.yyyy, r0.zzzw, v1.xxxy

#line 165
mad r0.xy, r1.yyyy, r0.xyxx, v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t0.xyzw, s0, l(0.000000)  // r2.x <- c1.x; r2.y <- c1.y; r2.z <- c1.z; r2.w <- c1.w

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t0.xyzw, s0, l(0.000000)  // r0.x <- c2.x; r0.y <- c2.y; r0.z <- c2.z; r0.w <- c2.w

#line 167
add r0.xyzw, -r2.xyzw, r0.xyzw
mad r0.xyzw, r1.xxxx, r0.xyzw, r2.xyzw  // r0.x <- c.x; r0.y <- c.y; r0.z <- c.z; r0.w <- c.w

#line 172
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s1, l(0.000000)  // r1.x <- <InTex0_id26 return value>.x; r1.y <- <InTex0_id26 return value>.y; r1.z <- <InTex0_id26 return value>.z; r1.w <- <InTex0_id26 return value>.w

#line 177
add r0.xyzw, r0.xyzw, -r1.xyzw
mad o0.xyzw, cb0[0].xyzw, r0.xyzw, r1.xyzw

#line 186
ret 
// Approximately 39 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer PerUpdate 
{
    float4 InputValue_id90;
    float2 InputValue_id91;
    float InputValue_id92;
};
cbuffer PerView 
{
    float NearClipPlane_id74 = 1.0f;
    float FarClipPlane_id75 = 100.0f;
    float2 ZProjection_id76;
    float2 ViewSize_id77;
    float AspectRatio_id78;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
float4 lm_id29(float4 c)
{
    c.rgb = dot(c.rgb, normalize(float3(0.33, 0.59, 0.11)) / 1.5);
    return c;
}
float Compute_id33()
{
    return InputValue_id92;
}
float2 Compute_id32()
{
    return InputValue_id91;
}
float4 Compute_id31()
{
    return InputValue_id90;
}
float4 Filter_id30(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float2 sz = ViewSize_id77 / min(max(0.5 / ViewSize_id77, Compute_id32()), ViewSize_id77) * float2(1, 0.577);
    float4 m1 = Texture0_id14.SampleLevel(LinearSampler_id44, lerp(uv, (round((uv - 0.5) * sz - 0.5) + 0.5) / sz + 0.5, 1), 0);
    float4 m2 = Texture0_id14.SampleLevel(LinearSampler_id44, lerp(uv, (round((uv - 0.5) * sz)) / sz + 0.5, 1), 0);
    float4 m = lerp(m1, m2, step(abs(frac((uv.y - 0.5) * sz.y + 0.5) - 0.5), 0.25 + (abs(frac((uv.x - 0.5) * sz.x + .5 + .5) - .5) - 0.25) / 3.0));
    float morph = Compute_id33();
    float4 c1 = Texture0_id14.SampleLevel(LinearSampler_id44, lerp(uv, (round((uv - 0.5) * sz - 0.5) + 0.5) / sz + 0.5, morph * lm_id29(m).x), 0);
    float4 c2 = Texture0_id14.SampleLevel(LinearSampler_id44, lerp(uv, (round((uv - 0.5) * sz)) / sz + 0.5, morph * lm_id29(m).x), 0);
    float4 c = lerp(c1, c2, step(abs(frac((uv.y - 0.5) * sz.y + 0.5) - 0.5), 0.25 + (abs(frac((uv.x - 0.5) * sz.x + 0.5 + 0.5) - 0.5) - 0.25) / 3.0));
    return c;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id30(streams, col), Compute_id31());
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id28(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}
