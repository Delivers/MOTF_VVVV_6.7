/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Frost_Internal_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {Frequency = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}, {Pixel = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}]
@P Pixel: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P Frequency: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 32]
@C    InputValue_id97 => ShaderFX.InputValueFloat4
@C    InputValue_id98 => ShaderFX.InputValueFloat
@C    InputValue_id99 => ShaderFX.InputValueFloat2
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
@R    LinearMirrorSampler_id96 => Frost_Internal_TextureFX.LinearMirrorSampler [Stage: Pixel, Slot: (2-2)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    Frost_Internal_TextureFX => f4680bbeebfd2f2c133be48878b3d7da
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
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
@S    InputFloat => f487ac725dafb0434d14d0273ee628a8
@S    DeclFloat => 75bf7e6f5246ed3d7aa33ab3c7183aa4
@S    InputFloat2 => d6238a7d677592382c8158617d803399
@S    DeclFloat2 => d5fe6f879293db53179d13cf4b1d1f3d
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
#line 277 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_68f62db6fae5398ae66777b28226d958.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 281
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 766ab2d8451c14dc7c26ab58d2dd3d7c
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id97;            // Offset:    0 Size:    16
//   float InputValue_id98;             // Offset:   16 Size:     4
//   float2 InputValue_id99;            // Offset:   20 Size:     8
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
// LinearMirrorSampler_id96          sampler      NA          NA             s2      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Texture1_id16                     texture  float4          2d             t1      1 
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
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 256 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_68f62db6fae5398ae66777b28226d958.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s1, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 234
div r1.xy, cb0[1].yzyy, cb1[1].xyxx  // r1.x <- DeltaX; r1.y <- DeltaY

#line 237
mov r1.z, l(0)

#line 242
add r2.xyzw, -r1.zyxz, v1.xyxy  // r2.x <- PP.x; r2.y <- PP.y

#line 238
add r3.xy, -r1.xzxx, r2.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyxx, t0.xyzw, s0, l(0.000000)  // r3.x <- C00.x; r3.y <- C00.y; r3.z <- C00.z; r3.w <- C00.w

#line 239
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t0.xyzw, s0, l(0.000000)  // r4.x <- C01.x; r4.y <- C01.y; r4.z <- C01.z; r4.w <- C01.w

#line 240
add r2.xy, r1.xzxx, r2.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r2.xyxx, t0.xyzw, s0, l(0.000000)  // r5.x <- C02.x; r5.y <- C02.y; r5.z <- C02.z; r5.w <- C02.w

#line 242
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t0.xyzw, s0, l(0.000000)  // r2.x <- C10.x; r2.y <- C10.y; r2.z <- C10.z; r2.w <- C10.w

#line 243
sample_l_indexable(texture2d)(float,float,float,float) r6.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r6.x <- C11.x; r6.y <- C11.y; r6.z <- C11.z; r6.w <- C11.w

#line 245
add r7.xyzw, r1.xzzy, v1.xyxy  // r7.z <- PP.x; r7.w <- PP.y

#line 244
sample_l_indexable(texture2d)(float,float,float,float) r8.xyzw, r7.xyxx, t0.xyzw, s0, l(0.000000)  // r8.x <- C12.x; r8.y <- C12.y; r8.z <- C12.z; r8.w <- C12.w

#line 246
add r1.yw, -r1.xxxz, r7.zzzw
sample_l_indexable(texture2d)(float,float,float,float) r9.xyzw, r1.ywyy, t0.xyzw, s0, l(0.000000)  // r9.x <- C20.x; r9.y <- C20.y; r9.z <- C20.z; r9.w <- C20.w

#line 247
sample_l_indexable(texture2d)(float,float,float,float) r10.xyzw, r7.zwzz, t0.xyzw, s0, l(0.000000)  // r10.x <- C21.x; r10.y <- C21.y; r10.z <- C21.z; r10.w <- C21.w

#line 248
add r1.xy, r1.xzxx, r7.zwzz
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t0.xyzw, s0, l(0.000000)  // r1.x <- C22.x; r1.y <- C22.y; r1.z <- C22.z; r1.w <- C22.w

#line 249
mul r7.xy, v1.xyxx, cb0[1].xxxx

#line 214
sample_l_indexable(texture2d)(float,float,float,float) r7.xyz, r7.xyxx, t1.xyzw, s2, l(0.000000)  // r7.x <- <NOISE2D_id69 return value>.x; r7.y <- <NOISE2D_id69 return value>.y; r7.z <- <NOISE2D_id69 return value>.z

#line 210
dp3 r7.x, l(0.212656, 0.715158, 0.072186, 0.000000), r7.xyzx  // r7.x <- <GetLuminance_id34 return value>

#line 250
mul r7.y, r7.x, l(0.111111)
ge r7.y, r7.y, -r7.y
movc r7.yz, r7.yyyy, l(0,0.111111,9.000009,0), l(0,-0.111111,-9.000009,0)
mul r7.x, r7.z, r7.x
frc r7.x, r7.x
mul r7.x, r7.x, r7.y

#line 158
mul r7.y, r7.x, l(72.000069)  // r7.y <- tmp

#line 159
ge r11.x, l(0.013889), r7.x
if_nz r11.x

#line 161
  mad r11.x, -r7.x, l(72.000069), l(1.000000)  // r11.x <- w1

#line 163
  mov r11.yzw, l(0,0,0,0)  // r11.y <- w3; r11.z <- w4; r11.w <- w5
  mov r12.xyzw, l(0,0,0,0)  // r12.x <- w6; r12.y <- w7; r12.z <- w8; r12.w <- w9
else 

#line 184
  mad r13.xyzw, r7.xxxx, l(72.000069, 72.000069, 72.000069, 72.000069), l(-1.000000, -2.000000, -3.000000, -4.000000)  // r13.w <- tmp

#line 182
  ge r14.xyzw, l(0.027778, 0.041667, 0.055556, 0.069444), r7.xxxx

#line 185
  add r15.xy, -r13.wxww, l(1.000000, 1.000000, 0.000000, 0.000000)  // r15.y <- w2; r15.x <- w5

#line 202
  mad r16.xyz, r7.xxxx, l(72.000069, 72.000069, 72.000069, 0.000000), l(-5.000000, -6.000000, -7.000000, 0.000000)  // r16.y <- tmp

#line 194
  ge r15.zw, l(0.000000, 0.000000, 0.083333, 0.097222), r7.xxxx

#line 202
  max r17.w, r16.z, l(0.000000)  // r17.w <- tmp

#line 205
  mad r16.yz, r16.yyyy, l(0.000000, -1.000000, 1.000000, 0.000000), l(0.000000, 1.000000, 0.000000, 0.000000)
  mov r16.w, l(0)
  mov r17.xy, l(0,0,0,0)
  add r17.z, -r17.w, l(1.000000)
  movc r17.yzw, r15.wwww, r16.yyzw, r17.yyzw  // r17.y <- w7; r17.z <- w8; r17.w <- w9
  mad r16.xy, r16.xxxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, 0.000000, 0.000000, 0.000000)
  mov r16.zw, l(0,0,0,0)
  movc r16.xyzw, r15.zzzz, r16.xyzw, r17.xyzw  // r16.x <- w6; r16.y <- w7; r16.z <- w8; r16.w <- w9
  mov r17.x, r13.w
  mov r17.yzw, l(0,0,0,0)
  movc r16.xyzw, r14.wwww, r17.xyzw, r16.xyzw
  and r7.yz, r14.xxwx, r15.yyxy  // r7.y <- w2; r7.z <- w5
  mad r15.xyzw, r13.zzyy, l(-1.000000, 1.000000, -1.000000, 1.000000), l(1.000000, 0.000000, 1.000000, 0.000000)
  mov r7.w, l(0)
  movc r17.xy, r14.zzzz, r15.xyxx, r7.wzww  // r17.x <- w4; r17.y <- w5
  mov r17.z, l(0)
  movc r7.xz, r14.yyyy, r15.zzwz, r17.zzxz  // r7.x <- w3; r7.z <- w4
  movc r11.y, r14.x, r13.x, r7.x  // r11.y <- w3
  movc r11.z, r14.x, l(0), r7.z  // r11.z <- w4
  or r7.xz, r14.yyxy, r14.zzyz
  movc r11.w, r7.z, l(0), r17.y  // r11.w <- w5
  or r7.x, r14.x, r7.x
  movc r12.xyzw, r7.xxxx, l(0,0,0,0), r16.xyzw  // r12.x <- w6; r12.y <- w7; r12.z <- w8; r12.w <- w9
  mov r11.x, l(0)  // r11.x <- w1
endif 

#line 206
mul r4.xyzw, r4.xyzw, r7.yyyy
mad r3.xyzw, r11.xxxx, r3.xyzw, r4.xyzw
mad r3.xyzw, r11.yyyy, r5.xyzw, r3.xyzw
mad r2.xyzw, r11.zzzz, r2.xyzw, r3.xyzw
mad r2.xyzw, r11.wwww, r6.xyzw, r2.xyzw
mad r2.xyzw, r12.xxxx, r8.xyzw, r2.xyzw
mad r2.xyzw, r12.yyyy, r9.xyzw, r2.xyzw
mad r2.xyzw, r12.zzzz, r10.xyzw, r2.xyzw
mad r1.xyzw, r12.wwww, r1.xyzw, r2.xyzw  // r1.x <- <spline_id70 return value>.x; r1.y <- <spline_id70 return value>.y; r1.z <- <spline_id70 return value>.z; r1.w <- <spline_id70 return value>.w

#line 261
add r1.xyzw, -r0.xyzw, r1.xyzw
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 270
ret 
// Approximately 77 instruction slots used
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
    float4 InputValue_id97;
    float InputValue_id98;
    float2 InputValue_id99;
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
SamplerState LinearMirrorSampler_id96 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Mirror;
    AddressV = Mirror;
};
float4 spline_id70(float x, float4 c1, float4 c2, float4 c3, float4 c4, float4 c5, float4 c6, float4 c7, float4 c8, float4 c9)
{
    float w1, w2, w3, w4, w5, w6, w7, w8, w9;
    w1 = 0.0;
    w2 = 0.0;
    w3 = 0.0;
    w4 = 0.0;
    w5 = 0.0;
    w6 = 0.0;
    w7 = 0.0;
    w8 = 0.0;
    w9 = 0.0;
    float tmp = x * 8.0;
    if (tmp <= 1.0)
    {
        w1 = 1.0 - tmp;
        w2 = tmp;
    }
    else if (tmp <= 2.0)
    {
        tmp = tmp - 1.0;
        w2 = 1.0 - tmp;
        w3 = tmp;
    }
    else if (tmp <= 3.0)
    {
        tmp = tmp - 2.0;
        w3 = 1.0 - tmp;
        w4 = tmp;
    }
    else if (tmp <= 4.0)
    {
        tmp = tmp - 3.0;
        w4 = 1.0 - tmp;
        w5 = tmp;
    }
    else if (tmp <= 5.0)
    {
        tmp = tmp - 4.0;
        w5 = 1.0 - tmp;
        w6 = tmp;
    }
    else if (tmp <= 6.0)
    {
        tmp = tmp - 5.0;
        w6 = 1.0 - tmp;
        w7 = tmp;
    }
    else if (tmp <= 7.0)
    {
        tmp = tmp - 6.0;
        w7 = 1.0 - tmp;
        w8 = tmp;
    }
    else
    {
        tmp = clamp(tmp - 7.0, 0.0, 1.0);
        w8 = 1.0 - tmp;
        w9 = tmp;
    }
    return w1 * c1 + w2 * c2 + w3 * c3 + w4 * c4 + w5 * c5 + w6 * c6 + w7 * c7 + w8 * c8 + w9 * c9;
}
float GetLuminance_id34(float3 rgb)
{
    return dot(float3(0.212656f, 0.715158f, 0.072186f), rgb);
}
float3 NOISE2D_id69(float2 p)
{
    return Texture1_id16.SampleLevel(LinearMirrorSampler_id96, p, 0).xyz;
}
float Compute_id74()
{
    return InputValue_id98;
}
float2 Compute_id73()
{
    return InputValue_id99;
}
float4 Compute_id72()
{
    return InputValue_id97;
}
float4 Filter_id71(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float3 tc = float3(1.0, 0.0, 0.0);
    float2 pixel = Compute_id73();
    float DeltaX = pixel.x / ViewSize_id77.x;
    float DeltaY = pixel.y / ViewSize_id77.y;
    float2 ox = float2(DeltaX, 0.0);
    float2 oy = float2(0.0, DeltaY);
    float2 PP = uv - oy;
    float4 C00 = Texture0_id14.SampleLevel(LinearSampler_id44, PP - ox, 0);
    float4 C01 = Texture0_id14.SampleLevel(LinearSampler_id44, PP, 0);
    float4 C02 = Texture0_id14.SampleLevel(LinearSampler_id44, PP + ox, 0);
    PP = uv;
    float4 C10 = Texture0_id14.SampleLevel(LinearSampler_id44, PP - ox, 0);
    float4 C11 = Texture0_id14.SampleLevel(LinearSampler_id44, PP, 0);
    float4 C12 = Texture0_id14.SampleLevel(LinearSampler_id44, PP + ox, 0);
    PP = uv + oy;
    float4 C20 = Texture0_id14.SampleLevel(LinearSampler_id44, PP - ox, 0);
    float4 C21 = Texture0_id14.SampleLevel(LinearSampler_id44, PP, 0);
    float4 C22 = Texture0_id14.SampleLevel(LinearSampler_id44, PP + ox, 0);
    float n = GetLuminance_id34(NOISE2D_id69(Compute_id74() * uv));
    n = (n % 0.111111) / 0.111111;
    float4 result = spline_id70(n, C00, C01, C02, C10, C11, C12, C20, C21, C22);
    return result;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id71(streams, col), Compute_id72());
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
