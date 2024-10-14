/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Sharpen_Internal_TextureFX [{Amount = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}, {Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {Gamma = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}, {Radius = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}, {Saturation = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}]
@P Amount: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Radius: InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>
@P Saturation: InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>
@P Gamma: InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 32]
@C    InputValue_id92 => ShaderFX.InputValueFloat4
@C    InputValue_id93 => ShaderFX.InputValueFloat
@C    InputValue_id94 => ShaderFX.InputValueFloat.i3
@C    InputValue_id95 => ShaderFX.InputValueFloat.i1
@C    InputValue_id96 => ShaderFX.InputValueFloat.i2
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
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    Sharpen_Internal_TextureFX => d64471f68c5c7c77838fd6066b91bc95
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
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
#line 199 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_0a2c094f7c7adf3cfc45db20c92c7cbc.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 203
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => f8d8a5790fb6987403fddab3430edcc1
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id92;            // Offset:    0 Size:    16
//   float InputValue_id93;             // Offset:   16 Size:     4
//   float InputValue_id94;             // Offset:   20 Size:     4
//   float InputValue_id95;             // Offset:   24 Size:     4
//   float InputValue_id96;             // Offset:   28 Size:     4
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
// Sampler0_id52                     sampler      NA          NA             s0      1 
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
#line 169 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_0a2c094f7c7adf3cfc45db20c92c7cbc.hlsl"
mov_sat r0.x, cb0[1].z

#line 166
max r0.y, cb1[1].y, cb1[1].x
log r0.z, r0.y  // r0.z <- maxl

#line 169
div r0.y, cb0[1].z, r0.y
mul r0.w, r0.x, r0.z
mad r0.x, r0.z, r0.x, l(1.000000)
mul r0.z, r0.z, cb0[1].z
exp r0.z, r0.z
mul r0.y, r0.z, r0.y
exp r0.y, r0.y
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0, r0.x
sample_l_indexable(texture2d)(float,float,float,float) r0.xzw, v1.xyxx, t0.xwyz, s0, r0.w
add r0.xzw, -r1.xxyz, r0.xxzw
mul r0.xzw, r0.xxzw, cb0[1].xxxx
mul r0.xzw, r0.xxzw, l(128.000000, 0.000000, 128.000000, 128.000000)
div r0.xyz, r0.xzwx, r0.yyyy  // r0.x <- sh.x; r0.y <- sh.y; r0.z <- sh.z

#line 170
dp3 r0.w, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r0.xyz, -r0.wwww, l(0.333333, 0.333333, 0.333333, 0.000000), r0.xyzx
mul r0.w, r0.w, l(0.333333)
mad r0.xyz, cb0[1].wwww, r0.xyzx, r0.wwww  // r0.x <- sh.x; r0.y <- sh.y; r0.z <- sh.z

#line 171
lt r1.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
lt r2.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r0.xyz, |r0.xyzx|, l(5.000000, 5.000000, 5.000000, 0.000000)
log r0.xyz, r0.xyzx
iadd r1.xyz, -r1.xyzx, r2.xyzx
itof r1.xyz, r1.xyzx
add r0.w, cb0[1].y, cb0[1].y
exp r0.w, r0.w
mul r0.xyz, r0.xyzx, r0.wwww
exp r0.xyz, r0.xyzx
mul r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, l(0.200000, 0.200000, 0.200000, 0.000000)  // r0.x <- sh.x; r0.y <- sh.y; r0.z <- sh.z

#line 178
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r1.x <- <InTex0_id26 return value>.x; r1.y <- <InTex0_id26 return value>.y; r1.z <- <InTex0_id26 return value>.z; r1.w <- <InTex0_id26 return value>.w

#line 172
add r2.xyz, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
div r0.xyz, r0.xyzx, r2.xyzx

#line 173
exp r0.xyz, r0.xyzx

#line 183
mad r0.xyz, r1.xyzx, r0.xyzx, -r1.xyzx
mov r0.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r0.xyzw, r1.xyzw

#line 192
ret 
// Approximately 40 instruction slots used
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
    float4 InputValue_id92;
    float InputValue_id93;
    float InputValue_id94;
    float InputValue_id95;
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
float Compute_id34()
{
    return InputValue_id94;
}
float Compute_id33()
{
    return InputValue_id96;
}
float Compute_id32()
{
    return InputValue_id93;
}
float Compute_id31()
{
    return InputValue_id95;
}
float4 Compute_id30()
{
    return InputValue_id92;
}
float4 Filter_id29(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float4 col = Texture0_id14.SampleLevel(Sampler0_id52, uv, 0);
    float maxl = log2(max(ViewSize_id77.x, ViewSize_id77.y));
    float4 sh = 0;
    float radius = Compute_id31();
    sh.rgb += (Texture0_id14.SampleLevel(Sampler0_id52, uv, 0 + maxl * saturate(radius)) - Texture0_id14.SampleLevel(Sampler0_id52, uv, 1 + maxl * saturate(radius))) * 128 * Compute_id32() / pow(2, radius / max(ViewSize_id77.x, ViewSize_id77.y) * pow(2, maxl * radius));
    sh.rgb = lerp(dot(sh.rgb, 1.0) / 3.0, sh.rgb, Compute_id33());
    sh.rgb = sign(sh.rgb) * pow(abs(sh.rgb) * 5.0, pow(2, Compute_id34() * 2.0)) / 5.0;
    sh /= 1 + col;
    col.rgb *= pow(2, sh);
    return col;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id29(streams, col), Compute_id30());
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
