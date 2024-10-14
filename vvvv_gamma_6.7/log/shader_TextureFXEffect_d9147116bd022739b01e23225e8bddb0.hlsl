/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin HSCB_TextureFX [{Brightness = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_5> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}]]}]}, {Value = GetVarFloat<Input_5>}]}, {Contrast = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_4> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_4>}]}, {Control = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_6> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_6>}]}, {Hue = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_0> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_0>}]}, {HueCycles = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_1> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_1>}]}, {Saturation = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}]]}]}, {Value = GetVarFloat<Input_2>}]}, {SaturationBalance = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_3> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_3>}]}]
@P Hue: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_0> [{Value = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_0>}]
@P HueCycles: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_1> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_1>}]
@P Saturation: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}]]}]}, {Value = GetVarFloat<Input_2>}]
@P SaturationBalance: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_3> [{Value = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_3>}]
@P Contrast: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Default_4> [{Value = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}]]}]}, {Value = GetVarFloat<Default_4>}]
@P Brightness: mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_5> [{Value = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}]]}]}, {Value = GetVarFloat<Input_5>}]
@P Control: mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Default_6> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]]}]}, {Value = GetVarFloat4<Default_6>}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 48]
@C    InputValue_id95 => ShaderFX.InputValueFloat4
@C    InputValue_id101 => ShaderFX.InputValueFloat.i5
@C    InputValue_id107 => ShaderFX.InputValueFloat.i4
@C    InputValue_id113 => ShaderFX.InputValueFloat
@C    InputValue_id119 => ShaderFX.InputValueFloat.i1
@C    InputValue_id125 => ShaderFX.InputValueFloat.i2
@C    InputValue_id131 => ShaderFX.InputValueFloat.i3
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    HSCB_TextureFX => 1303cbb4615010fdd7dcaf1ba5cc3468
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
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
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
#line 385 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_d9147116bd022739b01e23225e8bddb0.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 389
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => e7076a1d7cd32d93a13a5bbd3f3eefcf
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
//   float InputValue_id101;            // Offset:   16 Size:     4
//   float InputValue_id107;            // Offset:   20 Size:     4
//   float InputValue_id113;            // Offset:   24 Size:     4
//   float InputValue_id119;            // Offset:   28 Size:     4
//   float InputValue_id125;            // Offset:   32 Size:     4
//   float InputValue_id131;            // Offset:   36 Size:     4
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 284 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_d9147116bd022739b01e23225e8bddb0.hlsl"
mov r0.zw, l(0,0,-1.000000,0.666667)
mov r1.zw, l(0,0,0,-0.333333)

#line 364
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r2.x <- <InTex0_id26 return value>.x; r2.y <- <InTex0_id26 return value>.y; r2.z <- <InTex0_id26 return value>.z; r2.w <- <InTex0_id26 return value>.w

#line 284
mov r0.xy, r2.zyzz
mov r1.xy, r0.yxyy
lt r3.x, r0.y, r2.z
movc r0.xyzw, r3.xxxx, r0.xyzw, r1.xyzw  // r0.x <- P.x; r0.y <- P.y; r0.z <- P.z; r0.w <- P.w

#line 285
lt r1.x, r2.x, r0.x
mov r3.xyz, r0.xywx
mov r3.w, r2.x
mov r0.xyw, r3.wywx
movc r0.xyzw, r1.xxxx, r3.xyzw, r0.xyzw  // r0.x <- Q.x; r0.y <- Q.y; r0.z <- Q.z; r0.w <- Q.w

#line 287
add r1.x, -r0.y, r0.w

#line 286
min r0.y, r0.y, r0.w
add r0.y, -r0.y, r0.x  // r0.y <- C

#line 287
mad r0.w, r0.y, l(6.000000), l(0.000000)
div r0.w, r1.x, r0.w
add r0.z, r0.z, r0.w

#line 340
mad r0.x, -r0.y, l(0.500000), r0.x  // r0.x <- L

#line 355
add r0.w, |r0.z|, cb0[1].z

#line 357
min r0.z, |r0.z|, l(1.000000)

#line 355
frc r0.w, r0.w

#line 356
add r1.x, r0.w, l(-1.000000)

#line 355
mul r0.w, r0.w, cb0[1].w

#line 232
frc r0.w, r0.w  // r0.w <- H

#line 235
mad r1.yzw, r0.wwww, l(0.000000, 6.000000, 6.000000, 6.000000), l(0.000000, -3.000000, -2.000000, -4.000000)

#line 236
mad_sat r1.yzw, |r1.yyzw|, l(0.000000, 1.000000, -1.000000, -1.000000), l(0.000000, -1.000000, 2.000000, 2.000000)  // r1.y <- <HUEtoRGB_id8 return value>.x; r1.z <- <HUEtoRGB_id8 return value>.y; r1.w <- <HUEtoRGB_id8 return value>.z

#line 315
add r1.yzw, r1.yyzw, l(0.000000, -0.500000, -0.500000, -0.500000)

#line 356
mul r0.w, r1.x, cb0[1].w  // r0.w <- HSL.x

#line 232
frc r0.w, r0.w  // r0.w <- H

#line 235
mad r3.xyz, r0.wwww, l(6.000000, 6.000000, 6.000000, 0.000000), l(-3.000000, -2.000000, -4.000000, 0.000000)

#line 236
mad_sat r3.xyz, |r3.xyzx|, l(1.000000, -1.000000, -1.000000, 0.000000), l(-1.000000, 2.000000, 2.000000, 0.000000)  // r3.x <- <HUEtoRGB_id8 return value>.x; r3.y <- <HUEtoRGB_id8 return value>.y; r3.z <- <HUEtoRGB_id8 return value>.z

#line 315
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)

#line 341
mad r0.w, r0.x, l(2.000000), l(-1.000000)
add r0.w, -|r0.w|, l(1.000000)
div r0.y, r0.y, r0.w  // r0.y <- S

#line 353
log r0.y, r0.y
exp r1.x, cb0[2].y
mul r0.y, r0.y, r1.x
exp r0.y, r0.y
mul_sat r0.y, r0.y, cb0[2].x  // r0.y <- h.y

#line 314
mul r0.y, r0.y, r0.w  // r0.y <- C; r0.y <- C

#line 315
mad r3.xyz, r3.xyzx, r0.yyyy, r0.xxxx  // r3.x <- <HSLtoRGB_id10 return value>.x; r3.y <- <HSLtoRGB_id10 return value>.y; r3.z <- <HSLtoRGB_id10 return value>.z; r3.x <- <HSLtoRGB_id10 return value>.x; r3.y <- <HSLtoRGB_id10 return value>.y; r3.z <- <HSLtoRGB_id10 return value>.z
mad r0.xyw, r1.yzyw, r0.yyyy, r0.xxxx  // r0.x <- <HSLtoRGB_id10 return value>.x; r0.y <- <HSLtoRGB_id10 return value>.y; r0.w <- <HSLtoRGB_id10 return value>.z

#line 357
add r1.xyz, -r0.xywx, r3.xyzx
mad r1.w, r0.z, l(-2.000000), l(3.000000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r1.w
mul r0.z, r0.z, r0.z
mad r0.xyz, r0.zzzz, r1.xyzx, r0.xywx  // r0.x <- c.x; r0.y <- c.y; r0.z <- c.z

#line 358
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r1.x, r0.w
sqrt r0.w, r0.w
mul r0.w, r0.w, l(0.577350)
log r0.w, r0.w
mul r0.xyz, r0.xyzx, r1.xxxx
mul r0.xyz, r0.xyzx, l(1.732051, 1.732051, 1.732051, 0.000000)

#line 359
exp r1.xy, cb0[1].yxyy

#line 358
mul r0.w, r0.w, r1.x
exp r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- c.x; r0.y <- c.y; r0.z <- c.z

#line 369
mad r0.xyz, r0.xyzx, r1.yyyy, -r2.xyzx
mov r0.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r0.xyzw, r2.xyzw

#line 378
ret 
// Approximately 65 instruction slots used
***************************
*************************/
static const float Epsilon_id83 = 0.0000000596;
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float Default_3_id130;
    float Input_2_id124;
    float Default_0_id112;
    float Default_1_id118;
    float Default_4_id106;
    float Input_5_id100;
    float4 Default_6_id94;
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
    float InputValue_id101;
    float InputValue_id107;
    float InputValue_id113;
    float InputValue_id119;
    float InputValue_id125;
    float InputValue_id131;
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
float Compute_id37()
{
    return InputValue_id101;
}
float Compute_id46()
{
    return InputValue_id107;
}
float Compute_id73()
{
    return InputValue_id119;
}
float Compute_id64()
{
    return InputValue_id113;
}
float Compute_id82()
{
    return InputValue_id125;
}
float Compute_id91()
{
    return InputValue_id131;
}
float4 Compute_id55()
{
    return InputValue_id95;
}
void Compute_id40(inout PS_STREAMS streams)
{
    streams.Input_5_id100 = Compute_id37();
}
void Compute_id49(inout PS_STREAMS streams)
{
    streams.Default_4_id106 = Compute_id46();
}
void Compute_id76(inout PS_STREAMS streams)
{
    streams.Default_1_id118 = Compute_id73();
}
void Compute_id67(inout PS_STREAMS streams)
{
    streams.Default_0_id112 = Compute_id64();
}
void Compute_id85(inout PS_STREAMS streams)
{
    streams.Input_2_id124 = Compute_id82();
}
void Compute_id94(inout PS_STREAMS streams)
{
    streams.Default_3_id130 = Compute_id91();
}
void Compute_id58(inout PS_STREAMS streams)
{
    streams.Default_6_id94 = Compute_id55();
}
float Compute_id43(inout PS_STREAMS streams)
{
    return streams.Input_5_id100;
}
void Compute_id42(inout PS_STREAMS streams)
{

    {
        Compute_id40(streams);
    }
}
float Compute_id52(inout PS_STREAMS streams)
{
    return streams.Default_4_id106;
}
void Compute_id51(inout PS_STREAMS streams)
{

    {
        Compute_id49(streams);
    }
}
float3 HUEtoRGB_id8(in float H)
{
    H = frac(H);
    float R = abs(H * 6 - 3) - 1;
    float G = 2 - abs(H * 6 - 2);
    float B = 2 - abs(H * 6 - 4);
    return saturate(float3(R, G, B));
}
float Compute_id79(inout PS_STREAMS streams)
{
    return streams.Default_1_id118;
}
void Compute_id78(inout PS_STREAMS streams)
{

    {
        Compute_id76(streams);
    }
}
float Compute_id70(inout PS_STREAMS streams)
{
    return streams.Default_0_id112;
}
void Compute_id69(inout PS_STREAMS streams)
{

    {
        Compute_id67(streams);
    }
}
float Compute_id88(inout PS_STREAMS streams)
{
    return streams.Input_2_id124;
}
void Compute_id87(inout PS_STREAMS streams)
{

    {
        Compute_id85(streams);
    }
}
float Compute_id97(inout PS_STREAMS streams)
{
    return streams.Default_3_id130;
}
void Compute_id96(inout PS_STREAMS streams)
{

    {
        Compute_id94(streams);
    }
}
float3 RGBtoHCV_id11(in float3 RGB)
{
    float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
    float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
    float C = Q.x - min(Q.w, Q.y);
    float H = abs((Q.w - Q.y) / (6 * C + Epsilon_id83) + Q.z);
    return float3(H, C, Q.x);
}
float4 Compute_id61(inout PS_STREAMS streams)
{
    return streams.Default_6_id94;
}
void Compute_id60(inout PS_STREAMS streams)
{

    {
        Compute_id58(streams);
    }
}
float Compute_id36(inout PS_STREAMS streams)
{
    Compute_id42(streams);
    return Compute_id43(streams);
}
float Compute_id35(inout PS_STREAMS streams)
{
    Compute_id51(streams);
    return Compute_id52(streams);
}
float3 HSLtoRGB_id10(in float3 HSL)
{
    float3 RGB = HUEtoRGB_id8(HSL.x);
    float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
    return (RGB - 0.5) * C + HSL.z;
}
float Compute_id34(inout PS_STREAMS streams)
{
    Compute_id78(streams);
    return Compute_id79(streams);
}
float Compute_id33(inout PS_STREAMS streams)
{
    Compute_id69(streams);
    return Compute_id70(streams);
}
float Compute_id32(inout PS_STREAMS streams)
{
    Compute_id87(streams);
    return Compute_id88(streams);
}
float Compute_id31(inout PS_STREAMS streams)
{
    Compute_id96(streams);
    return Compute_id97(streams);
}
float3 RGBtoHSL_id13(in float3 RGB)
{
    float3 HCV = RGBtoHCV_id11(RGB);
    float L = HCV.z - HCV.y * 0.5;
    float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon_id83);
    return float3(HCV.x, S, L);
}
float4 Compute_id30(inout PS_STREAMS streams)
{
    Compute_id60(streams);
    return Compute_id61(streams);
}
float4 Filter_id29(inout PS_STREAMS streams, float4 tex0col)
{
    float4 c = tex0col;
    float3 h = RGBtoHSL_id13(c.rgb);
    h.y = pow(h.y, pow(2, Compute_id31(streams))) * Compute_id32(streams);
    h.y = saturate(h.y);
    float3 k0 = HSLtoRGB_id10(float3((frac(h.x + Compute_id33(streams)) - 0) * Compute_id34(streams), h.y, h.z));
    float3 k1 = HSLtoRGB_id10(float3((frac(h.x + Compute_id33(streams)) - 1) * Compute_id34(streams), h.y, h.z));
    c.rgb = lerp(k0, k1, pow(smoothstep(0, 1, h.x), 2));
    c.rgb = normalize(c.rgb) * sqrt(3) * pow(length(c.rgb) / sqrt(3), pow(2, Compute_id35(streams)));
    c.rgb *= pow(2, Compute_id36(streams));
    return c;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id29(streams, col), Compute_id30(streams));
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
