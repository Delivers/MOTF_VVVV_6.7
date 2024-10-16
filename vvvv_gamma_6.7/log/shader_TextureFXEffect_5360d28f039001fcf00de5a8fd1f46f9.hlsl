/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin AngularFlow_Internal_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {Direction = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}, {Progress = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}, {Scale = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}, {SquareSize = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]
@P SquareSize: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Progress: InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>
@P Scale: InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>
@P Direction: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 48]
@C    InputValue_id100 => ShaderFX.InputValueFloat4
@C    InputValue_id101 => ShaderFX.InputValueFloat2
@C    InputValue_id102 => ShaderFX.InputValueFloat.i1
@C    InputValue_id103 => ShaderFX.InputValueFloat.i2
@C    InputValue_id104 => ShaderFX.InputValueFloat
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (1-1)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    Texture2_id18 => Texturing.Texture2 [Stage: Pixel, Slot: (2-2)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    AngularFlow_Internal_TextureFX => 013fba075aa7e1114be2fc1b709eeaf7
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
@S    AddonShaderUtils => 0d3496ddd24bfcbde4abd1deae724f64
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    InputFloat2 => d6238a7d677592382c8158617d803399
@S    DeclFloat2 => d5fe6f879293db53179d13cf4b1d1f3d
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
#line 216 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_5360d28f039001fcf00de5a8fd1f46f9.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 220
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => eca0e0565aca0e2585b9d209181fe8dd
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id100;           // Offset:    0 Size:    16
//   float2 InputValue_id101;           // Offset:   16 Size:     8
//   float InputValue_id102;            // Offset:   24 Size:     4
//   float InputValue_id103;            // Offset:   28 Size:     4
//   float InputValue_id104;            // Offset:   32 Size:     4
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
// Texture1_id16                     texture  float4          2d             t1      1 
// Texture2_id18                     texture  float4          2d             t2      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 167 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_5360d28f039001fcf00de5a8fd1f46f9.hlsl"
mul r0.xy, v1.xyxx, cb0[2].xxxx
round_ne r0.xy, r0.xyxx
div r0.xy, r0.xyxx, cb0[2].xxxx  // r0.x <- newUV.x; r0.y <- newUV.y

#line 168
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r0.xyxx, t2.xyzw, s0, l(0.000000)  // r0.x <- pixelTexture.x; r0.y <- pixelTexture.y

#line 171
lt r0.x, l(0.500000), r0.x

#line 179
lt r0.y, r0.y, l(0.500000)

#line 187
mul r0.z, cb0[1].w, l(0.010000)  // r0.z <- scale

#line 178
movc r1.xy, r0.xyxx, r0.zzzz, -r0.zzzz  // r1.x <- offset.x; r1.y <- offset.y

#line 187
mad r0.xy, cb0[1].xyxx, l(0.010000, 0.010000, 0.000000, 0.000000), r1.xyxx  // r0.x <- offset.x; r0.y <- offset.y

#line 189
add r0.xy, r0.xyxx, v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t1.xyzw, s0, l(0.000000)  // r0.x <- to.x; r0.y <- to.y; r0.z <- to.z; r0.w <- to.w

#line 188
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r1.x <- from.x; r1.y <- from.y; r1.z <- from.z; r1.w <- from.w

#line 190
add r0.xyzw, r0.xyzw, -r1.xyzw
mov_sat r2.x, cb0[1].z
mad r0.xyzw, r2.xxxx, r0.xyzw, r1.xyzw  // r0.x <- c.x; r0.y <- c.y; r0.z <- c.z; r0.w <- c.w

#line 195
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s1, l(0.000000)  // r1.x <- <InTex0_id26 return value>.x; r1.y <- <InTex0_id26 return value>.y; r1.z <- <InTex0_id26 return value>.z; r1.w <- <InTex0_id26 return value>.w

#line 200
add r0.xyzw, r0.xyzw, -r1.xyzw
mad o0.xyzw, cb0[0].xyzw, r0.xyzw, r1.xyzw

#line 209
ret 
// Approximately 19 instruction slots used
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
    float4 InputValue_id100;
    float2 InputValue_id101;
    float InputValue_id102;
    float InputValue_id103;
    float InputValue_id104;
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
    float2 Offset_id98;
    float2 OffsetScale_id99;
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
float Compute_id73()
{
    return InputValue_id102;
}
float2 Compute_id74()
{
    return InputValue_id101;
}
float Compute_id72()
{
    return InputValue_id103;
}
float Compute_id71()
{
    return InputValue_id104;
}
float4 Compute_id70()
{
    return InputValue_id100;
}
float4 Filter_id69(inout PS_STREAMS streams, float4 tex0col)
{
    float pixels = Compute_id71();
    float2 newUV = round(streams.TexCoord_id62 * pixels) / pixels;
    float4 pixelTexture = Texture2_id18.SampleLevel(LinearSampler_id44, newUV, 0);
    float2 offset = float2(0, 0);
    float scale = Compute_id72() * 0.01;
    if (pixelTexture.r > 0.5)
    {
        offset.x += scale;
    }
    else
    {
        offset.x -= scale;
    }
    if (pixelTexture.g < 0.5)
    {
        offset.y += scale;
    }
    else
    {
        offset.y -= scale;
    }
    offset += Compute_id74() * 0.01;
    float4 from = Texture0_id14.SampleLevel(LinearSampler_id44, streams.TexCoord_id62, 0);
    float4 to = Texture1_id16.SampleLevel(LinearSampler_id44, streams.TexCoord_id62 + offset.xy, 0);
    float4 c = lerp(from, to, saturate(Compute_id73()));
    return c;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id69(streams, col), Compute_id70());
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
