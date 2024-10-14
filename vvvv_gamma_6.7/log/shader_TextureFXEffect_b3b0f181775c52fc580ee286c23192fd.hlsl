/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin MapColor_Internal_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {End = InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>}, {MapSmooth = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}, {Start = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}]
@P Start: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P End: InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>
@P MapSmooth: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 48]
@C    InputValue_id98 => ShaderFX.InputValueFloat4
@C    InputValue_id99 => ShaderFX.InputValueFloat2.i1
@C    InputValue_id100 => ShaderFX.InputValueFloat
@C    InputValue_id101 => ShaderFX.InputValueFloat2
cbuffer PerView [Size: 32]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
cbuffer Globals [Size: 96]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    Type_id94 => MapColor_Internal_TextureFX.Type
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Sampler1_id53 => Texturing.Sampler1 [Stage: Pixel, Slot: (1-1)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    MapColor_Internal_TextureFX => 2f30f27ddb5b21ede300da75084396ad
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
#line 323 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_b3b0f181775c52fc580ee286c23192fd.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 327
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 443dc9e73688b5b588cb78ce005abe8c
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id98;            // Offset:    0 Size:    16
//   float2 InputValue_id99;            // Offset:   16 Size:     8
//   float InputValue_id100;            // Offset:   24 Size:     4
//   float2 InputValue_id101;           // Offset:   32 Size:     8
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
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   int Type_id94;                     // Offset:   80 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler0_id52                     sampler      NA          NA             s0      1 
// Sampler1_id53                     sampler      NA          NA             s1      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Texture1_id16                     texture  float4          2d             t1      1 
// PerUpdate                         cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
// Globals                           cbuffer      NA          NA            cb2      1 
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
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 302 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_b3b0f181775c52fc580ee286c23192fd.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 263
udiv null, r1.x, cb2[5].x, l(10)
switch r1.x

#line 266
  case l(0)

#line 252
  dp3 r2.x, r0.xyzx, l(0.330000, 0.590000, 0.110000, 0.000000)  // r2.x <- f

#line 158
  max r2.y, cb1[1].y, cb1[1].x
  log r2.y, r2.y  // r2.y <- <Lod_id29 return value>

#line 178
  mul r2.y, r2.y, cb0[1].z  // r2.y <- lod

#line 179
  mad r2.xz, cb0[1].xxyx, r2.xxxx, cb0[2].xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xzxx, t1.xyzw, s1, r2.y  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 268
  break 

#line 269
  case l(1)

#line 162
  lt r2.x, r0.y, r0.z
  mov r3.xy, r0.zyzz
  mov r3.zw, l(0,0,-1.000000,0.666667)
  mov r4.xy, r3.yxyy
  mov r4.zw, l(0,0,0,-0.333333)
  movc r2.xyzw, r2.xxxx, r3.xyzw, r4.xyzw  // r2.x <- P.x; r2.y <- P.y; r2.z <- P.z; r2.w <- P.w

#line 163
  lt r3.x, r0.x, r2.x
  mov r4.xyz, r2.xywx
  mov r4.w, r0.x
  mov r2.xyw, r4.wywx
  movc r2.xyzw, r3.xxxx, r4.xyzw, r2.xyzw  // r2.x <- Q.x; r2.y <- Q.y; r2.z <- Q.z; r2.w <- Q.w

#line 164
  min r3.x, r2.y, r2.w
  add r2.x, r2.x, -r3.x  // r2.x <- C

#line 165
  add r2.y, -r2.y, r2.w
  mad r2.x, r2.x, l(6.000000), l(0.000000)
  div r2.x, r2.y, r2.x
  add r2.x, r2.z, r2.x

#line 158
  max r2.y, cb1[1].y, cb1[1].x
  log r2.y, r2.y  // r2.y <- <Lod_id29 return value>

#line 178
  mul r2.y, r2.y, cb0[1].z  // r2.y <- lod

#line 179
  mad r2.xz, cb0[1].xxyx, |r2.xxxx|, cb0[2].xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xzxx, t1.xyzw, s1, r2.y  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 271
  break 

#line 272
  case l(2)

#line 162
  lt r2.x, r0.y, r0.z
  movc r2.xy, r2.xxxx, r0.zyzz, r0.yzyy  // r2.x <- P.x; r2.y <- P.y

#line 163
  lt r2.w, r0.x, r2.x
  mov r2.z, r0.x
  movc r2.xyz, r2.wwww, r2.xyzx, r2.zyxz  // r2.x <- Q.x; r2.y <- Q.y; r2.z <- Q.w

#line 164
  min r2.y, r2.y, r2.z
  add r2.y, -r2.y, r2.x  // r2.y <- C

#line 196
  mad r2.x, -r2.y, l(0.500000), r2.x  // r2.x <- L

#line 197
  mad r2.x, r2.x, l(2.000000), l(-1.000000)
  add r2.x, -|r2.x|, l(1.000000)
  div r2.x, r2.y, r2.x  // r2.x <- S

#line 158
  max r2.y, cb1[1].y, cb1[1].x
  log r2.y, r2.y  // r2.y <- <Lod_id29 return value>

#line 178
  mul r2.y, r2.y, cb0[1].z  // r2.y <- lod

#line 179
  mad r2.xz, cb0[1].xxyx, r2.xxxx, cb0[2].xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xzxx, t1.xyzw, s1, r2.y  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 274
  break 

#line 275
  case l(3)

#line 162
  max r2.x, r0.z, r0.y  // r2.x <- P.x

#line 163
  max r2.x, r0.x, r2.x  // r2.x <- Q.x

#line 158
  max r2.y, cb1[1].y, cb1[1].x
  log r2.y, r2.y  // r2.y <- <Lod_id29 return value>

#line 178
  mul r2.y, r2.y, cb0[1].z  // r2.y <- lod

#line 179
  mad r2.xz, cb0[1].xxyx, r2.xxxx, cb0[2].xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xzxx, t1.xyzw, s1, r2.y  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 277
  break 

#line 278
  case l(4)

#line 162
  lt r2.x, r0.y, r0.z
  mov r3.xy, r0.zyzz
  mov r3.zw, l(0,0,-1.000000,0.666667)
  mov r4.xy, r3.yxyy
  mov r4.zw, l(0,0,0,-0.333333)
  movc r2.xyzw, r2.xxxx, r3.xyzw, r4.xyzw  // r2.x <- P.x; r2.y <- P.y; r2.z <- P.z; r2.w <- P.w

#line 163
  lt r3.x, r0.x, r2.x
  mov r4.xyz, r2.xywx
  mov r4.w, r0.x
  mov r2.xyw, r4.wywx
  movc r2.xyzw, r3.xxxx, r4.xyzw, r2.xyzw  // r2.x <- Q.x; r2.y <- Q.y; r2.z <- Q.z; r2.w <- Q.w

#line 164
  min r3.x, r2.y, r2.w
  add r3.x, r2.x, -r3.x  // r3.x <- C

#line 165
  add r2.y, -r2.y, r2.w
  mad r2.w, r3.x, l(6.000000), l(0.000000)
  div r2.y, r2.y, r2.w
  add r2.y, r2.z, r2.y
  mov r4.x, |r2.y|  // r4.x <- H

#line 184
  add r2.x, r2.x, l(0.000000)
  div r4.y, r3.x, r2.x  // r4.y <- S

#line 158
  max r2.x, cb1[1].y, cb1[1].x
  log r2.x, r2.x  // r2.x <- <Lod_id29 return value>

#line 178
  mul r2.x, r2.x, cb0[1].z  // r2.x <- lod

#line 179
  mad r2.yz, cb0[1].xxyx, r4.xxyx, cb0[2].xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.yzyy, t1.xyzw, s1, r2.x  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 280
  break 

#line 281
  case l(5)

#line 162
  lt r2.x, r0.y, r0.z
  mov r3.xy, r0.zyzz
  mov r3.zw, l(0,0,-1.000000,0.666667)
  mov r4.xy, r3.yxyy
  mov r4.zw, l(0,0,0,-0.333333)
  movc r2.xyzw, r2.xxxx, r3.xyzw, r4.xyzw  // r2.x <- P.x; r2.y <- P.y; r2.z <- P.z; r2.w <- P.w

#line 163
  lt r3.x, r0.x, r2.x
  mov r4.xyz, r2.xywx
  mov r4.w, r0.x
  mov r2.xyw, r4.wywx
  movc r2.xyzw, r3.xxxx, r4.yxzw, r2.yxzw  // r2.x <- Q.y; r2.y <- Q.x; r2.z <- Q.z; r2.w <- Q.w

#line 164
  min r3.x, r2.x, r2.w
  add r3.x, r2.y, -r3.x  // r3.x <- C

#line 165
  add r2.w, -r2.x, r2.w
  mad r3.x, r3.x, l(6.000000), l(0.000000)
  div r2.w, r2.w, r3.x
  add r2.z, r2.z, r2.w
  mov r2.x, |r2.z|  // r2.x <- H

#line 158
  max r2.z, cb1[1].y, cb1[1].x
  log r2.z, r2.z  // r2.z <- <Lod_id29 return value>

#line 178
  mul r2.z, r2.z, cb0[1].z  // r2.z <- lod

#line 179
  mad r2.xy, cb0[1].xyxx, r2.xyxx, cb0[2].xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xyxx, t1.xyzw, s1, r2.z  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 283
  break 

#line 284
  case l(6)

#line 170
  lt r2.x, r0.y, r0.z
  movc r2.yz, r2.xxxx, r0.zzyz, r0.yyzy  // r2.y <- P.x; r2.z <- P.y

#line 171
  lt r2.x, r0.x, r2.y
  mov r2.w, r0.x
  movc r2.yzw, r2.xxxx, r2.yyzw, r2.wwzy  // r2.y <- Q.x; r2.z <- Q.y; r2.w <- Q.w

#line 172
  min r2.z, r2.z, r2.w
  add r2.z, -r2.z, r2.y  // r2.z <- C

#line 190
  add r2.w, r2.y, l(0.000000)
  div r2.x, r2.z, r2.w  // r2.x <- S

#line 158
  max r2.z, cb1[1].y, cb1[1].x
  log r2.z, r2.z  // r2.z <- <Lod_id29 return value>

#line 178
  mul r2.z, r2.z, cb0[1].z  // r2.z <- lod

#line 179
  mad r2.xy, cb0[1].xyxx, r2.xyxx, cb0[2].xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xyxx, t1.xyzw, s1, r2.z  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 286
  break 

#line 287
  case l(7)

#line 162
  lt r2.x, r0.y, r0.z
  mov r3.xy, r0.zyzz
  mov r3.zw, l(0,0,-1.000000,0.666667)
  mov r4.xy, r3.yxyy
  mov r4.zw, l(0,0,0,-0.333333)
  movc r2.xyzw, r2.xxxx, r3.xyzw, r4.xyzw  // r2.x <- P.x; r2.y <- P.y; r2.z <- P.z; r2.w <- P.w

#line 163
  lt r3.x, r0.x, r2.x
  mov r4.xyz, r2.xywx
  mov r4.w, r0.x
  mov r2.xyw, r4.wywx
  movc r2.xyzw, r3.xxxx, r4.xyzw, r2.xyzw  // r2.x <- Q.x; r2.y <- Q.y; r2.z <- Q.z; r2.w <- Q.w

#line 164
  min r3.x, r2.y, r2.w
  add r2.x, r2.x, -r3.x  // r2.x <- C

#line 165
  add r2.y, -r2.y, r2.w
  mad r2.x, r2.x, l(6.000000), l(0.000000)
  div r2.x, r2.y, r2.x
  add r2.x, r2.z, r2.x

#line 216
  add r2.xy, |r2.xxxx|, l(0.250000, 0.000000, 0.000000, 0.000000)
  mul r2.xy, r2.xyxx, l(6.283185, 6.283185, 0.000000, 0.000000)
  sincos r2.xy, null, r2.xyxx  // r2.x <- col.x; r2.y <- col.y

#line 158
  max r2.z, cb1[1].y, cb1[1].x
  log r2.z, r2.z  // r2.z <- <Lod_id29 return value>

#line 178
  mul r2.z, r2.z, cb0[1].z  // r2.z <- lod

#line 179
  mad r2.xy, cb0[1].xyxx, r2.xyxx, cb0[2].xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xyxx, t1.xyzw, s1, r2.z  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 289
  break 

#line 290
  case l(8)

#line 210
  add r2.xy, -r0.yyyy, r0.xzxx  // r2.x <- f.x; r2.y <- f.y

#line 158
  max r2.z, cb1[1].y, cb1[1].x
  log r2.z, r2.z  // r2.z <- <Lod_id29 return value>

#line 178
  mul r2.z, r2.z, cb0[1].z  // r2.z <- lod

#line 179
  mad r2.xy, cb0[1].xyxx, r2.xyxx, cb0[2].xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xyxx, t1.xyzw, s1, r2.z  // r1.x <- <Ramp_id69 return value>.x; r1.y <- <Ramp_id69 return value>.y; r1.z <- <Ramp_id69 return value>.z; r1.w <- <Ramp_id69 return value>.w

#line 292
  break 

#line 293
  case l(9)

#line 158
  max r2.x, cb1[1].y, cb1[1].x
  log r2.x, r2.x  // r2.x <- <Lod_id29 return value>

#line 178
  mul r2.x, r2.x, cb0[1].z  // r2.x <- lod

#line 179
  mad r3.xyzw, cb0[1].xyxy, r0.xxyy, cb0[2].xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.x, r3.xyxx, t1.xyzw, s1, r2.x  // r1.x <- <Ramp_id69 return value>.x; r1.x <- <Ramp_id69 return value>.x
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r3.zwzz, t1.xyzw, s1, r2.x  // r1.y <- <Ramp_id69 return value>.y
  mad r3.xyzw, cb0[1].xyxy, r0.zzww, cb0[2].xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.z, r3.xyxx, t1.xyzw, s1, r2.x  // r1.z <- <Ramp_id69 return value>.z; r1.z <- <Ramp_id69 return value>.z
  sample_l_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t1.xyzw, s1, r2.x  // r1.w <- <Ramp_id69 return value>.w

#line 295
  break 

#line 296
endswitch   // r1.x <- col.x; r1.y <- col.y; r1.z <- col.z; r1.w <- col.w

#line 297
mul r1.w, r0.w, r1.w

#line 307
add r1.xyzw, -r0.xyzw, r1.xyzw
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 316
ret 
// Approximately 181 instruction slots used
***************************
*************************/
static const float Epsilon_id83 = 0.0000000596;
static const float Epsilon_id92 = 0.0000000596;
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
    float4 InputValue_id98;
    float2 InputValue_id99;
    float InputValue_id100;
    float2 InputValue_id101;
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
    int Type_id94;
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
float2 Compute_id84()
{
    return InputValue_id99;
}
float2 Compute_id83()
{
    return InputValue_id101;
}
float Compute_id82()
{
    return InputValue_id100;
}
float Lod_id29(float2 viewSize)
{
    return log2(max(viewSize.x, viewSize.y));
}
float3 RGBtoHCV_id45(in float3 RGB)
{
    float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
    float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
    float C = Q.x - min(Q.w, Q.y);
    float H = abs((Q.w - Q.y) / (6 * C + Epsilon_id92) + Q.z);
    return float3(H, C, Q.x);
}
float3 RGBtoHCV_id11(in float3 RGB)
{
    float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
    float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
    float C = Q.x - min(Q.w, Q.y);
    float H = abs((Q.w - Q.y) / (6 * C + Epsilon_id83) + Q.z);
    return float3(H, C, Q.x);
}
float4 Ramp_id69(float2 f)
{
    float lod = Lod_id29(ViewSize_id77) * Compute_id82();
    return Texture1_id16.SampleLevel(Sampler1_id53, Compute_id83() + Compute_id84() * f, lod);
}
float3 RGBtoHSV_id46(in float3 RGB)
{
    float3 HCV = RGBtoHCV_id45(RGB);
    float S = HCV.y / (HCV.z + Epsilon_id92);
    return float3(HCV.x, S, HCV.z);
}
float3 RGBtoHSV_id12(in float3 RGB)
{
    float3 HCV = RGBtoHCV_id11(RGB);
    float S = HCV.y / (HCV.z + Epsilon_id83);
    return float3(HCV.x, S, HCV.z);
}
float3 RGBtoHSL_id47(in float3 RGB)
{
    float3 HCV = RGBtoHCV_id45(RGB);
    float L = HCV.z - HCV.y * 0.5;
    float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon_id92);
    return float3(HCV.x, S, L);
}
float4 MapRGBA_id75(float4 col)
{
    col.r = Ramp_id69(col.r).r;
    col.g = Ramp_id69(col.g).g;
    col.b = Ramp_id69(col.b).b;
    col.a = Ramp_id69(col.a).a;
    return col;
}
float4 MapRedBlue_id74(float4 col)
{
    float2 f = col.rb - col.g;
    return Ramp_id69(f);
}
float4 MapTone_id77(float4 col)
{
    float3 h = RGBtoHSV_id46(col.rgb);
    col.rg = sin((h.x + float2(.25, 0)) * acos(-1) * 2);
    float2 f = col.rg;
    return Ramp_id69(f);
}
float4 MapSaturationValue_id76(float4 col)
{
    float2 f = RGBtoHSV_id12(col.rgb).yz;
    return Ramp_id69(f);
}
float4 MapHueValue_id72(float4 col)
{
    float2 f = RGBtoHSV_id46(col.rgb).xz;
    return Ramp_id69(f);
}
float4 MapHueSaturation_id71(float4 col)
{
    float2 f = RGBtoHSV_id46(col.rgb).xy;
    return Ramp_id69(f);
}
float4 MapValue_id78(float4 col)
{
    float f = RGBtoHSV_id46(col.rgb).z;
    return Ramp_id69(f);
}
float4 MapSaturation_id79(float4 col)
{
    float f = RGBtoHSL_id47(col.rgb).y;
    return Ramp_id69(f);
}
float4 MapHue_id70(float4 col)
{
    float f = RGBtoHSV_id46(col.rgb).x;
    return Ramp_id69(f);
}
float4 MapLuma_id73(float4 col)
{
    float f = dot(col.rgb, float3(.33, .59, .11));
    return Ramp_id69(f);
}
float4 Compute_id81()
{
    return InputValue_id98;
}
float4 Filter_id80(float4 tex0col)
{
    float4 col = tex0col;
    float pa = col.a;
    switch ((uint)Type_id94 % 10)

    {
        case 0:
            col = MapLuma_id73(col);
            break;
        case 1:
            col = MapHue_id70(col);
            break;
        case 2:
            col = MapSaturation_id79(col);
            break;
        case 3:
            col = MapValue_id78(col);
            break;
        case 4:
            col = MapHueSaturation_id71(col);
            break;
        case 5:
            col = MapHueValue_id72(col);
            break;
        case 6:
            col = MapSaturationValue_id76(col);
            break;
        case 7:
            col = MapTone_id77(col);
            break;
        case 8:
            col = MapRedBlue_id74(col);
            break;
        case 9:
            col = MapRGBA_id75(col);
            break;
    }
    col.a *= pa;
    return col;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id80(col), Compute_id81());
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
