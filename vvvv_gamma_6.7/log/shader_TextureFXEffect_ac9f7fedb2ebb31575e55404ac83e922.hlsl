/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Bump_Internal_TextureFX [{AmbientColor = InputFloat4<ShaderFX.InputValueFloat4_Color,PerUpdate>}, {BumpAmount = InputFloat<ShaderFX.InputValueFloat.i6,PerUpdate>}, {Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {DiffuseColor = InputFloat4<ShaderFX.InputValueFloat4_Color.i1,PerUpdate>}, {LightAttenuation0 = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}, {LightAttenuation1 = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}, {LightAttenuation2 = InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>}, {LightPower = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}, {LightRange = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}, {SmoothSpot = InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>}, {SpecularColor = InputFloat4<ShaderFX.InputValueFloat4_Color.i2,PerUpdate>}]
@P AmbientColor: InputFloat4<ShaderFX.InputValueFloat4_Color,PerUpdate>
@P DiffuseColor: InputFloat4<ShaderFX.InputValueFloat4_Color.i1,PerUpdate>
@P SpecularColor: InputFloat4<ShaderFX.InputValueFloat4_Color.i2,PerUpdate>
@P LightPower: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P LightRange: InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>
@P LightAttenuation0: InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>
@P LightAttenuation1: InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>
@P LightAttenuation2: InputFloat<ShaderFX.InputValueFloat.i4,PerUpdate>
@P SmoothSpot: InputFloat<ShaderFX.InputValueFloat.i5,PerUpdate>
@P BumpAmount: InputFloat<ShaderFX.InputValueFloat.i6,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 112]
@C    InputValue_id100 => ShaderFX.InputValueFloat4
@C    InputValue_id101 => ShaderFX.InputValueFloat4_Color
@C    InputValue_id102 => ShaderFX.InputValueFloat.i6
@C    InputValue_id103 => ShaderFX.InputValueFloat4_Color.i1
@C    InputValue_id104 => ShaderFX.InputValueFloat.i2
@C    InputValue_id105 => ShaderFX.InputValueFloat.i3
@C    InputValue_id106 => ShaderFX.InputValueFloat.i4
@C    InputValue_id107 => ShaderFX.InputValueFloat
@C    InputValue_id108 => ShaderFX.InputValueFloat.i1
@C    InputValue_id109 => ShaderFX.InputValueFloat.i5
@C    InputValue_id110 => ShaderFX.InputValueFloat4_Color.i2
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
@C    Type_id88 => Bump_Internal_TextureFX.Type
@C    LightDirection_id89 => Bump_Internal_TextureFX.LightDirection
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
@S    Bump_Internal_TextureFX => 7aae43bbce73e6fb0a4267cf8a0eec16
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
#line 287 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_ac9f7fedb2ebb31575e55404ac83e922.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 291
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => e03ffcafefc1f88dd348b6fd7d043a38
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
//   float4 InputValue_id101;           // Offset:   16 Size:    16
//   float InputValue_id102;            // Offset:   32 Size:     4
//   float4 InputValue_id103;           // Offset:   48 Size:    16
//   float InputValue_id104;            // Offset:   64 Size:     4
//   float InputValue_id105;            // Offset:   68 Size:     4
//   float InputValue_id106;            // Offset:   72 Size:     4
//   float InputValue_id107;            // Offset:   76 Size:     4
//   float InputValue_id108;            // Offset:   80 Size:     4
//   float InputValue_id109;            // Offset:   84 Size:     4
//   float4 InputValue_id110;           // Offset:   96 Size:    16
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
//   int Type_id88;                     // Offset:   80 Size:     4
//   float3 LightDirection_id89;        // Offset:   84 Size:    12
//      = 0x3e800000 0xbf000000 0x3dcccccd 
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
dcl_constantbuffer CB0[7], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 266 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_ac9f7fedb2ebb31575e55404ac83e922.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 251
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, v1.xyxx, t1.xyzw, s1, l(0.000000)  // r1.x <- nmap.x; r1.y <- nmap.y

#line 252
and r1.z, cb2[5].x, l(1)
switch r1.z

#line 255
  case l(0)

#line 235
  dp3 r1.z, -cb2[5].yzwy, -cb2[5].yzwy
  rsq r1.z, r1.z
  mul r3.xyz, r1.zzzz, -cb2[5].yzwy  // r3.x <- LightDirV.x; r3.y <- LightDirV.y; r3.z <- LightDirV.z

#line 237
  add r4.xy, r1.yxyy, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 236
  mov r4.z, -r4.x  // r4.z <- NormV.y

#line 237
  mov r4.w, l(0)
  mad r4.xyz, cb0[2].xxxx, r4.yzwy, l(0.000000, 0.000000, -1.000000, 0.000000)  // r4.x <- NormV.x; r4.y <- NormV.y; r4.z <- NormV.z

#line 238
  dp3 r1.z, r4.xyzx, r4.xyzx
  rsq r1.z, r1.z
  mul r4.xyz, r1.zzzz, r4.xyzx

#line 239
  mad r1.zw, v1.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)
  mov r5.xw, l(1.000000,0,0,-1.000000)
  mov r5.yz, cb1[1].yyxy
  mul r1.zw, r1.zzzw, r5.xxxy
  mul r1.zw, r5.zzzw, r1.zzzw
  div r5.xy, r1.zwzz, cb1[1].xxxx
  mov r5.z, l(11.100000)
  dp3 r1.z, r5.xyzx, r5.xyzx
  rsq r1.z, r1.z
  mul r5.xyz, r1.zzzz, r5.xyzx

#line 215
  dp3 r1.z, r4.xyzx, r3.xyzx
  max r1.w, r1.z, l(0.000000)  // r1.w <- shades.y

#line 218
  add r1.z, r1.z, r1.z
  mad r3.xyz, r1.zzzz, r4.xyzx, -r3.xyzx
  dp3 r1.z, r3.xyzx, r3.xyzx
  rsq r1.z, r1.z
  mul r3.xyz, r1.zzzz, r3.xyzx  // r3.x <- R.x; r3.y <- R.y; r3.z <- R.z

#line 219
  dp3 r1.z, -r5.xyzx, -r5.xyzx
  rsq r1.z, r1.z
  mul r4.xyz, r1.zzzz, -r5.xyzx  // r4.x <- V.x; r4.y <- V.y; r4.z <- V.z

#line 220
  dp3 r1.z, r3.xyzx, r4.xyzx
  max r1.z, r1.z, l(0.000000)
  mul r2.w, cb0[4].w, l(0.200000)
  log r1.z, r1.z
  mul r1.z, r1.z, r2.w
  exp r1.z, r1.z

#line 221
  mad r3.xyz, cb0[3].xyzx, r1.wwww, cb0[1].xyzx
  mad r3.xyz, r1.zzzz, cb0[6].xyzx, r3.xyzx  // r3.x <- <PhongDirectional_id29 return value>.x; r3.y <- <PhongDirectional_id29 return value>.y; r3.z <- <PhongDirectional_id29 return value>.z

#line 256
  mul r2.xyz, r0.xyzx, r3.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 257
  break 

#line 258
  case l(1)

#line 226
  add r1.xy, r1.yxyy, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 225
  mov r1.z, -r1.x  // r1.z <- NormV.y

#line 226
  mov r1.w, l(0)
  mad r1.xyz, cb0[2].xxxx, r1.yzwy, l(0.000000, 0.000000, -1.000000, 0.000000)  // r1.x <- NormV.x; r1.y <- NormV.y; r1.z <- NormV.z

#line 227
  dp3 r1.w, r1.xyzx, r1.xyzx
  rsq r1.w, r1.w
  mul r1.xyz, r1.wwww, r1.xyzx

#line 228
  mad r3.xy, v1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
  mov r4.xw, l(1.000000,0,0,-1.000000)
  mov r4.yz, cb1[1].yyxy
  mul r3.xy, r3.xyxx, r4.xyxx
  mul r3.xy, r4.zwzz, r3.xyxx
  div r3.xy, r3.xyxx, cb1[1].xxxx
  mov r3.z, l(1.000000)
  dp3 r1.w, r3.xyzx, r3.xyzx
  rsq r1.w, r1.w
  mul r4.xyz, r1.wwww, r3.xyzx

#line 229
  mul r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r3.x <- PosW.x; r3.y <- PosW.y

#line 230
  mov r3.z, l(0)
  add r5.xyz, -r3.xyzx, cb2[5].yzwy
  dp3 r1.w, r5.xyzx, r5.xyzx
  rsq r1.w, r1.w
  mul r5.xyz, r1.wwww, r5.xyzx  // r5.x <- LightDirV.x; r5.y <- LightDirV.y; r5.z <- LightDirV.z

#line 189
  add r3.xyz, r3.xyzx, -cb2[5].yzwy
  dp3 r1.w, r3.xyzx, r3.xyzx
  sqrt r2.w, r1.w  // r2.w <- d

#line 191
  lt r3.x, r2.w, cb0[5].x

#line 193
  mov_sat r3.yzw, cb0[4].xxyz
  mad r3.y, r3.z, r2.w, r3.y
  mad r1.w, r3.w, r1.w, r3.y
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w  // r1.w <- atten

#line 194
  and r1.w, r1.w, r3.x

#line 198
  dp3 r3.x, r1.xyzx, r5.xyzx
  max r3.y, r3.x, l(0.000000)  // r3.y <- shades.y

#line 199
  mul r3.yzw, r3.yyyy, cb0[3].xxyz
  mul r3.yzw, r1.wwww, r3.yyzw  // r3.y <- diff.x; r3.z <- diff.y; r3.w <- diff.z

#line 201
  add r3.x, r3.x, r3.x
  mad r1.xyz, r3.xxxx, r1.xyzx, -r5.xyzx
  dp3 r3.x, r1.xyzx, r1.xyzx
  rsq r3.x, r3.x
  mul r1.xyz, r1.xyzx, r3.xxxx  // r1.x <- R.x; r1.y <- R.y; r1.z <- R.z

#line 202
  dp3 r3.x, -r4.xyzx, -r4.xyzx
  rsq r3.x, r3.x
  mul r4.xyz, r3.xxxx, -r4.xyzx  // r4.x <- V.x; r4.y <- V.y; r4.z <- V.z

#line 203
  dp3 r1.x, r1.xyzx, r4.xyzx
  max r1.x, r1.x, l(0.000000)
  mul r1.y, cb0[4].w, l(0.200000)
  log r1.x, r1.x
  mul r1.x, r1.x, r1.y
  exp r1.x, r1.x

#line 204
  mad r1.yzw, cb0[1].xxyz, r1.wwww, r3.yyzw
  mad r1.xyz, r1.xxxx, cb0[6].xyzx, r1.yzwy
  max r1.w, cb0[5].y, l(0.000000)
  mul r1.w, r1.w, l(0.999990)
  div r2.w, r2.w, cb0[5].x
  add r2.w, r2.w, l(-1.000000)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), -r1.w
  mul_sat r1.w, r1.w, r2.w
  mad r2.w, r1.w, l(-2.000000), l(3.000000)
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, r2.w
  mul r1.xyz, r1.wwww, r1.xyzx  // r1.x <- <PhongPoint_id31 return value>.x; r1.y <- <PhongPoint_id31 return value>.y; r1.z <- <PhongPoint_id31 return value>.z

#line 259
  mul r2.xyz, r0.xyzx, r1.xyzx  // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 260
  break   // r1.x <- nmap.x; r1.y <- nmap.y

#line 261
endswitch   // r2.x <- col.x; r2.y <- col.y; r2.z <- col.z

#line 271
add r1.xyz, -r0.xyzx, r2.xyzx
mov r1.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 280
ret 
// Approximately 115 instruction slots used
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
    float4 InputValue_id101;
    float InputValue_id102;
    float4 InputValue_id103;
    float InputValue_id104;
    float InputValue_id105;
    float InputValue_id106;
    float InputValue_id107;
    float InputValue_id108;
    float InputValue_id109;
    float4 InputValue_id110;
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
    int Type_id88;
    float3 LightDirection_id89 = float3(0.25f, -0.5f, 0.1f);
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
float Compute_id44()
{
    return InputValue_id109;
}
float4 Compute_id37()
{
    return InputValue_id110;
}
float4 Compute_id36()
{
    return InputValue_id103;
}
float4 Compute_id35()
{
    return InputValue_id101;
}
float Compute_id43()
{
    return InputValue_id106;
}
float Compute_id42()
{
    return InputValue_id105;
}
float Compute_id41()
{
    return InputValue_id104;
}
float Compute_id40()
{
    return InputValue_id108;
}
float Compute_id38()
{
    return InputValue_id107;
}
float4 PhongPoint_id31(float3 PosW, float3 NormV, float3 ViewDirV, float3 LightDirV)
{
    float lightPower = Compute_id38();
    float d = distance(PosW, LightDirection_id89);
    float atten = 0;
    if (d < Compute_id40())
    {
        atten = 1 / (saturate(Compute_id41()) + saturate(Compute_id42()) * d + saturate(Compute_id43()) * pow(d, 2));
    }
    float4 amb = Compute_id35() * atten;
    amb.a = 1;
    float3 H = normalize(ViewDirV + LightDirV);
    float4 shades = lit(dot(NormV, LightDirV), dot(NormV, H), lightPower);
    float4 diff = Compute_id36() * shades.y * atten;
    diff.a = 1;
    float3 R = normalize(2 * dot(NormV, LightDirV) * NormV - LightDirV);
    float3 V = normalize(ViewDirV);
    float4 spec = pow(max(dot(R, V), 0), lightPower * .2) * Compute_id37();
    return ((amb + diff) + spec) * smoothstep(1, 1 - max(0, Compute_id44()) * 0.99999, d / Compute_id40());
}
float Compute_id39()
{
    return InputValue_id102;
}
float4 PhongDirectional_id29(float3 NormV, float3 ViewDirV, float3 LightDirV)
{
    float lightPower = Compute_id38();
    float4 amb = float4(Compute_id35().rgb, 1);
    float3 H = normalize(ViewDirV + LightDirV);
    float3 shades = lit(dot(NormV, LightDirV), dot(NormV, H), lightPower).xyz;
    float4 diff = Compute_id36() * shades.y;
    diff.a = 1;
    float3 R = normalize(2 * dot(NormV, LightDirV) * NormV - LightDirV);
    float3 V = normalize(ViewDirV);
    float4 spec = pow(max(dot(R, V), 0), lightPower * .2) * Compute_id37();
    return (amb + diff) + spec;
}
float3 BumpPoint_id32(float4 nmap, float2 uv, float2 R)
{
    float3 NormV = float3(nmap.x - 0.5, -(nmap.y - 0.5), -1);
    NormV = lerp(float3(0, 0, -1), NormV, Compute_id39());
    NormV = normalize(NormV);
    float3 ViewDirV = -normalize(float3((uv.xy * 2 - 1) * float2(1, -1) * R / R.x, 1));
    float3 PosW = float3((uv.xy * 2 - 1) * float2(1, -1) * R / R.x * 0.5, 0);
    float3 LightDirV = normalize(LightDirection_id89 - PosW);
    return PhongPoint_id31(PosW, NormV, ViewDirV, LightDirV).rgb;
}
float3 BumpDirectional_id30(float4 nmap, float2 uv, float2 R)
{
    float3 LightDirV = normalize(-LightDirection_id89);
    float3 NormV = float3(nmap.x - 0.5, -(nmap.y - 0.5), -1);
    NormV = lerp(float3(0, 0, -1), NormV, Compute_id39());
    NormV = normalize(NormV);
    float3 ViewDirV = -normalize(float3((uv.xy * 2 - 1) * float2(1, -1) * R / R.x, 11.1));
    return PhongDirectional_id29(NormV, ViewDirV, LightDirV).rgb;
}
float4 Compute_id34()
{
    return InputValue_id100;
}
float4 Filter_id33(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float2 R = ViewSize_id77;
    float4 col = Texture0_id14.SampleLevel(Sampler0_id52, uv, 0);
    float4 nmap = Texture1_id16.SampleLevel(Sampler1_id53, uv, 0);
    switch ((uint)Type_id88 % 2)

    {
        case 0:
            col.rgb *= BumpDirectional_id30(nmap, uv, R);
            break;
        case 1:
            col.rgb *= BumpPoint_id32(nmap, uv, R);
            break;
    }
    return col;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id33(streams, col), Compute_id34());
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
