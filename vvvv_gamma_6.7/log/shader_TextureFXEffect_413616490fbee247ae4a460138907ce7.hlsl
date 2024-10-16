/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Kaleidoscope_Internal_TextureFX [{CellOffset = InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>}, {CellRotation = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}, {CellScale = InputFloat2<ShaderFX.InputValueFloat2.i2,PerUpdate>}, {Center = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}, {Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {ControlFactor = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {IterationZoom = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}, {Rotation = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}, {Zoom = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}]
@P IterationZoom: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Rotation: InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>
@P Zoom: InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>
@P CellRotation: InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>
@P ControlFactor: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
@P Center: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P CellOffset: InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>
@P CellScale: InputFloat2<ShaderFX.InputValueFloat2.i2,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 64]
@C    InputValue_id100 => ShaderFX.InputValueFloat4
@C    InputValue_id101 => ShaderFX.InputValueFloat2.i1
@C    InputValue_id102 => ShaderFX.InputValueFloat.i3
@C    InputValue_id103 => ShaderFX.InputValueFloat2.i2
@C    InputValue_id104 => ShaderFX.InputValueFloat2
@C    InputValue_id105 => ShaderFX.InputValueFloat
@C    InputValue_id106 => ShaderFX.InputValueFloat.i1
@C    InputValue_id107 => ShaderFX.InputValueFloat.i2
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
@C    Divisions_id88 => Kaleidoscope_Internal_TextureFX.Divisions
@C    Iterations_id89 => Kaleidoscope_Internal_TextureFX.Iterations
@C    Aspect_id98 => Kaleidoscope_Internal_TextureFX.Aspect
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Sampler1_id53 => Texturing.Sampler1 [Stage: Pixel, Slot: (1-1)]
@R    s0_id99 => Kaleidoscope_Internal_TextureFX.s0 [Stage: Pixel, Slot: (2-2)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    Kaleidoscope_Internal_TextureFX => 5d8f34827b05ca99e7c6e9a2628adbd6
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
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    InputFloat2 => d6238a7d677592382c8158617d803399
@S    DeclFloat2 => d5fe6f879293db53179d13cf4b1d1f3d
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
#line 255 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_413616490fbee247ae4a460138907ce7.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 259
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 0f855925d02556f1168de78dda6a8942
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
//   float2 InputValue_id103;           // Offset:   32 Size:     8
//   float2 InputValue_id104;           // Offset:   40 Size:     8
//   float InputValue_id105;            // Offset:   48 Size:     4
//   float InputValue_id106;            // Offset:   52 Size:     4
//   float InputValue_id107;            // Offset:   56 Size:     4
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
//   int Divisions_id88;                // Offset:   80 Size:     4
//      = 0x00000003 
//   int Iterations_id89;               // Offset:   84 Size:     4
//      = 0x00000005 
//   bool Aspect_id98;                  // Offset:   88 Size:     4
//      = 0xffffffff 
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
// s0_id99                           sampler      NA          NA             s2      1 
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 8
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 234 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_413616490fbee247ae4a460138907ce7.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 208
div r1.xy, cb1[1].xyxx, cb1[1].xxxx
movc r1.z, cb2[5].z, l(1.000000), l(0)
add r1.xy, r1.xyxx, l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r1.xy, r1.zzzz, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)  // r1.x <- asp.x; r1.y <- asp.y

#line 209
sample_l_indexable(texture2d)(float,float,float,float) r1.zw, v1.xyxx, t1.zwxy, s1, l(1.000000)  // r1.z <- mask.x; r1.w <- mask.y

#line 211
mul r2.x, r1.z, cb0[0].x

#line 210
mad r2.x, r2.x, l(3.000000), cb0[1].z  // r2.x <- cr

#line 211
mad r1.zw, cb0[0].zzzw, r1.zzzw, cb0[1].xxxy  // r1.z <- co.x; r1.w <- co.y

#line 212
itof r2.y, cb2[5].x  // r2.y <- sz

#line 221
mul r2.zw, cb0[3].yyyx, l(0.000000, 0.000000, 6.283185, 0.100000)

#line 213
mad r3.x, cb0[3].z, l(5.000000), l(-1.000000)
exp r3.x, r3.x  // r3.x <- zz

#line 214
sample_l_indexable(texture2d)(float,float,float,float) r3.y, v1.xyxx, t1.yxzw, s2, l(1.000000)
mul r3.y, r3.y, cb0[0].y
exp r3.y, r3.y
mul r3.x, r3.y, r3.x

#line 216
add r3.yz, v1.yyxy, cb0[2].wwzw
add r3.yz, r3.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
mul r3.yz, r1.yyxy, r3.yyzy

#line 157
sincos r4.x, r5.x, r2.z
mul r4.xy, r3.yzyy, r4.xxxx
mad r6.y, r5.x, r3.z, r4.x  // r6.y <- <r2d_id29 return value>.x
mad r6.x, r5.x, r3.y, -r4.y  // r6.x <- <r2d_id29 return value>.y

#line 216
mul r3.xy, r3.xxxx, r6.xyxx

#line 170
min r2.z, |r3.x|, |r3.y|
max r3.z, |r3.x|, |r3.y|
div r3.z, l(1.000000, 1.000000, 1.000000, 1.000000), r3.z
mul r2.z, r2.z, r3.z
mul r3.z, r2.z, r2.z
mad r3.w, r3.z, l(0.020835), l(-0.085133)
mad r3.w, r3.z, r3.w, l(0.180141)
mad r3.w, r3.z, r3.w, l(-0.330299)
mad r3.z, r3.z, r3.w, l(0.999866)
mul r3.w, r2.z, r3.z
lt r4.x, |r3.x|, |r3.y|
mad r3.w, r3.w, l(-2.000000), l(1.570796)
and r3.w, r4.x, r3.w
mad r2.z, r2.z, r3.z, r3.w
lt r3.z, -r3.x, r3.x
and r3.z, r3.z, l(0xc0490fdb)
add r2.z, r2.z, r3.z
min r3.z, -r3.x, r3.y
max r3.w, -r3.x, r3.y
lt r3.z, r3.z, -r3.z
ge r3.w, r3.w, -r3.w
and r3.z, r3.w, r3.z
movc r2.z, r3.z, -r2.z, r2.z
mad r2.z, r2.z, l(0.159155), l(0.500000)  // r2.z <- an

#line 171
mad r2.z, r2.z, r2.y, l(0.500000)
round_ni r2.z, r2.z
div r2.z, r2.z, r2.y

#line 156
mul r2.z, r2.z, l(6.283185)

#line 157
sincos r4.x, r5.x, r2.z
mul r3.zw, r3.xxxy, r4.xxxx
mad r2.z, r5.x, r3.y, r3.z  // r2.z <- <r2d_id29 return value>.x
mad r3.y, r5.x, r3.x, -r3.w  // r3.y <- <r2d_id29 return value>.y

#line 172
mov r3.x, |r2.z|  // r3.x <- xx.x

#line 173
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r3.y <- xx.y

#line 219
iadd r2.z, cb2[5].y, l(-1)
imin r2.z, r2.z, l(90)
itof r2.z, r2.z

#line 221
exp r2.w, r2.w

#line 219
mov r3.zw, r3.yyyx  // r3.z <- xx.y; r3.w <- xx.x
mov r4.x, l(0)  // r4.x <- i
loop 
  ge r4.y, r4.x, r2.z
  breakc_nz r4.y

#line 221
  mul r5.xy, r2.wwww, r3.wzww  // r5.x <- xx.x; r5.y <- xx.y

#line 222
  lt r4.y, l(1.000000), r5.y

#line 169
  mov r5.z, -r5.y
  add r4.zw, r5.zzzx, l(0.000000, 0.000000, 1.500000, -0.500000)  // r4.z <- dx.y; r4.w <- dx.x

#line 170
  min r5.z, |r4.z|, |r4.w|
  max r5.w, |r4.z|, |r4.w|
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w
  mul r5.z, r5.w, r5.z
  mul r5.w, r5.z, r5.z
  mad r6.x, r5.w, l(0.020835), l(-0.085133)
  mad r6.x, r5.w, r6.x, l(0.180141)
  mad r6.x, r5.w, r6.x, l(-0.330299)
  mad r5.w, r5.w, r6.x, l(0.999866)
  mul r6.x, r5.w, r5.z
  lt r6.y, |r4.z|, |r4.w|
  mad r6.x, r6.x, l(-2.000000), l(1.570796)
  and r6.x, r6.y, r6.x
  mad r5.z, r5.z, r5.w, r6.x
  lt r5.w, -r4.z, r4.z
  and r5.w, r5.w, l(0xc0490fdb)
  add r5.z, r5.w, r5.z
  min r5.w, -r4.z, r4.w
  max r6.x, -r4.z, r4.w
  lt r5.w, r5.w, -r5.w
  ge r6.x, r6.x, -r6.x
  and r5.w, r5.w, r6.x
  movc r5.z, r5.w, -r5.z, r5.z
  mad r5.z, r5.z, l(0.159155), l(0.500000)  // r5.z <- an

#line 171
  mad r5.z, r5.z, r2.y, l(0.500000)
  round_ni r5.z, r5.z
  div r5.z, r5.z, r2.y

#line 156
  mul r5.z, r5.z, l(6.283185)

#line 157
  sincos r6.x, r7.x, r5.z
  mul r5.zw, r4.zzzw, r6.xxxx
  mad r4.w, r7.x, r4.w, r5.z  // r4.w <- <r2d_id29 return value>.x
  mad r6.y, r7.x, r4.z, -r5.w  // r6.y <- <r2d_id29 return value>.y

#line 172
  mov r6.x, |r4.w|  // r6.x <- xx.x

#line 173
  add r4.zw, r6.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)  // r4.z <- xx.x; r4.w <- xx.y

#line 225
  movc r3.zw, r4.yyyy, r4.wwwz, r5.yyyx  // r3.z <- xx.y; r3.w <- xx.x

#line 226
  add r4.x, r4.x, l(1.000000)
endloop 

#line 227
add r2.yz, r3.zzwz, l(0.000000, -0.500000, -0.500000, 0.000000)
add r2.x, r2.x, -cb0[3].y

#line 156
mul r2.x, r2.x, l(6.283185)

#line 157
sincos r2.x, r3.x, r2.x
mul r2.xw, r2.yyyz, r2.xxxx
mad r4.x, r3.x, r2.z, r2.x  // r4.x <- <r2d_id29 return value>.x
mad r4.y, r3.x, r2.y, -r2.w  // r4.y <- <r2d_id29 return value>.y

#line 227
div r1.xy, r4.xyxx, r1.xyxx
add r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r1.x <- xx.x; r1.y <- xx.y

#line 228
mad r1.xy, r1.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), r1.xyxx

#line 229
add r1.xy, r1.xyxx, l(-1.500000, -1.500000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, cb0[2].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r1.x <- xx.x; r1.y <- xx.y

#line 230
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t0.xyzw, s2, l(0.000000)  // r1.x <- <Filter_id31 return value>.x; r1.y <- <Filter_id31 return value>.y; r1.z <- <Filter_id31 return value>.z; r1.w <- <Filter_id31 return value>.w

#line 239
add r1.xyzw, -r0.xyzw, r1.xyzw
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 248
ret 
// Approximately 125 instruction slots used
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
    float2 InputValue_id103;
    float2 InputValue_id104;
    float InputValue_id105;
    float InputValue_id106;
    float InputValue_id107;
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
    int Divisions_id88 = 3;
    int Iterations_id89 = 5;
    bool Aspect_id98 = true;
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
SamplerState s0_id99 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = MIRROR;
    AddressV = MIRROR;
};
float2 r2d_id29(float2 x, float a)
{
    a *= acos(-1) * 2;
    return float2(cos(a) * x.x + sin(a) * x.y, cos(a) * x.y - sin(a) * x.x);
}
float2 Compute_id40()
{
    return InputValue_id103;
}
float Compute_id37()
{
    return InputValue_id105;
}
float2 kal_id30(float2 x, float sz)
{
    float2 dx = (x - .5);
    float an = atan2(dx.x, -dx.y) / acos(-1) / 2 + .5;
    float2 xx = r2d_id29(dx, floor(an * sz + .5) / sz);
    xx.x = abs(xx.x);
    xx += .5;
    return xx;
}
float Compute_id36()
{
    return InputValue_id106;
}
float2 Compute_id39()
{
    return InputValue_id104;
}
float Compute_id35()
{
    return InputValue_id107;
}
float2 Compute_id38()
{
    return InputValue_id101;
}
float Compute_id34()
{
    return InputValue_id102;
}
float4 Compute_id33()
{
    return InputValue_id100;
}
float4 Compute_id32()
{
    return InputValue_id100;
}
float4 Filter_id31(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float4 controlFactor = Compute_id33();
    float2 asp = lerp(1, ViewSize_id77 / ViewSize_id77.x, Aspect_id98);
    float4 mask = Texture1_id16.SampleLevel(Sampler1_id53, uv, 1);
    float cr = Compute_id34() + controlFactor.x * 3 * mask.r;
    float2 co = Compute_id38() + mask.xy * controlFactor.zw;
    float sz = Divisions_id88;
    float zz = pow(2, Compute_id35() * 5.0 - 1.0);
    zz *= pow(2, controlFactor.y * (Texture1_id16.SampleLevel(s0_id99, uv, 1).r));
    float2 Off = Compute_id39();
    float2 dx = r2d_id29((uv - 0.5 + Off) * asp, Compute_id36()) * zz + 0.5;
    float2 xx = kal_id30(dx, sz);

    for (float i = 0; i < min(Iterations_id89 - 1, 90); i++)
    {
        xx *= pow(2, Compute_id37() * 0.1);
        if (xx.y > 1)
        {
            xx = kal_id30(float2(xx.x, 2.0 - xx.y), sz);
        }
    }
    xx = r2d_id29(xx - 0.5, cr - Compute_id36()) / asp + 0.5;
    xx += co * 2.0 - 1.0;
    xx = (xx - 0.5) * Compute_id40() + 0.5;
    return Texture0_id14.SampleLevel(s0_id99, xx, 0);
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id31(streams, col), Compute_id32());
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
