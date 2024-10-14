/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin AddonBlurPass3_Internal_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {Strength = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]
@P Strength: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 32]
@C    InputValue_id95 => ShaderFX.InputValueFloat4
@C    InputValue_id96 => ShaderFX.InputValueFloat
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
@S    AddonBlurPass3_Internal_TextureFX => f14e61f23e84f1e0edb0d2631fe1fe48
@S    AddonBlurPassBase => e62919ab5968621bedfcf4543db49aed
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
@S    BlurUtils => 607b7a7c40ad67a8ef684db78a369c42
@S    AddonShaderUtils => 0d3496ddd24bfcbde4abd1deae724f64
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
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
#line 204 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_f05bae1bb7f0b93a12e3661ffac9c9fd.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 208
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 3bcfc046c38478e2cf12d6b36a072f7e
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id95;            // Offset:    0 Size:    16
//   float InputValue_id96;             // Offset:   16 Size:     4
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
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 162 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_f05bae1bb7f0b93a12e3661ffac9c9fd.hlsl"
div r0.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000), cb1[1].xyxy

#line 141
max r1.x, cb1[1].y, cb1[1].x
log r1.x, r1.x  // r1.x <- <Lod_id29 return value>

#line 161
mul r1.x, r1.x, cb0[1].x
mul r1.y, r1.x, l(0.750000)  // r1.y <- lod

#line 163
mad r1.x, r1.x, l(0.750000), l(-3.000000)  // r1.x <- lod

#line 162
exp r1.z, r1.y
mov_sat r1.y, r1.y
mul r0.xyzw, r0.xyzw, r1.zzzz

#line 147
mad r1.zw, r0.zzzw, r1.yyyy, v1.xxxy
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.zwzz, t0.xyzw, s0, r1.x

#line 146
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, v1.xyxx, t0.xyzw, s0, r1.x  // r3.x <- c.x; r3.y <- c.y; r3.z <- c.z; r3.w <- c.w

#line 147
add r2.xyzw, r2.xyzw, r3.xyzw  // r2.x <- c.x; r2.y <- c.y; r2.z <- c.z; r2.w <- c.w

#line 162
mul r3.xyzw, r1.yyyy, r0.xyzw  // r3.z <- off.x; r3.w <- off.y

#line 149
mad r0.xy, -r0.zwzz, r1.yyyy, v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s0, r1.x

#line 150
mad r4.xyzw, r3.zwzw, l(1.000000, -1.000000, -1.000000, 1.000000), v1.xyxy

#line 148
sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyxx, t0.xyzw, s0, r1.x

#line 150
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.zwzz, t0.xyzw, s0, r1.x

#line 148
add r2.xyzw, r2.xyzw, r5.xyzw

#line 149
add r0.xyzw, r0.xyzw, r2.xyzw  // r0.x <- c.x; r0.y <- c.y; r0.z <- c.z; r0.w <- c.w

#line 150
add r0.xyzw, r4.xyzw, r0.xyzw

#line 153
mad r2.xyzw, r3.zwzw, l(0.000000, 1.860000, 0.000000, -1.860000), v1.xyxy

#line 155
mad r3.xyzw, r3.xyzw, l(-1.860000, 0.000000, 1.860000, 0.000000), v1.xyxy

#line 152
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t0.xyzw, s0, r1.x

#line 153
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0, r1.x

#line 152
add r0.xyzw, r0.xyzw, r4.xyzw

#line 153
add r0.xyzw, r2.xyzw, r0.xyzw

#line 154
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r3.xyxx, t0.xyzw, s0, r1.x

#line 155
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r3.zwzz, t0.xyzw, s0, r1.x

#line 154
add r0.xyzw, r0.xyzw, r2.xyzw

#line 155
add r0.xyzw, r1.xyzw, r0.xyzw

#line 183
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s1, l(0.000000)  // r1.x <- <InTex0_id26 return value>.x; r1.y <- <InTex0_id26 return value>.y; r1.z <- <InTex0_id26 return value>.z; r1.w <- <InTex0_id26 return value>.w

#line 188
mad r0.xyzw, r0.xyzw, l(0.111111, 0.111111, 0.111111, 0.111111), -r1.xyzw
mad o0.xyzw, cb0[0].xyzw, r0.xyzw, r1.xyzw

#line 197
ret 
// Approximately 36 instruction slots used
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
    float4 InputValue_id95;
    float InputValue_id96;
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
float Lod_id29(float2 viewSize)
{
    return log2(max(viewSize.x, viewSize.y));
}
float4 BlurPass_id70(Texture2D tex, SamplerState s0, float2 texCoord, float2 off, float lod)
{
    float4 c = 0;
    c += tex.SampleLevel(s0, texCoord + float2(0, 0) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(1, 1) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(1, -1) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(-1, -1) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(-1, 1) * off, lod);
    off *= 1.86;
    c += tex.SampleLevel(s0, texCoord + float2(0, 1) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(0, -1) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(-1, 0) * off, lod);
    c += tex.SampleLevel(s0, texCoord + float2(1, 0) * off, lod);
    c /= 9;
    return c;
}
void ClacLodAndOffset_id72(float2 viewSize, float strength, out float lod, out float2 off)
{
    lod = strength * Lod_id29(viewSize) * 0.75;
    off = 0.5 / viewSize * pow(2, lod) * saturate(lod);
    lod -= 3;
}
float Compute_id74()
{
    return InputValue_id96;
}
float4 Compute_id73()
{
    return InputValue_id95;
}
float4 Filter_id71(inout PS_STREAMS streams, float4 tex0col)
{
    float lod;
    float2 off;
    float strength = Compute_id74();
    ClacLodAndOffset_id72(ViewSize_id77, strength, lod, off);
    return BlurPass_id70(Texture0_id14, LinearSampler_id44, streams.TexCoord_id62, off, lod);
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id71(streams, col), Compute_id73());
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
