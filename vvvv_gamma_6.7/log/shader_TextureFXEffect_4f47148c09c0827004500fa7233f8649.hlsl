/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin CRT_Internal_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {HardPix = InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>}, {HardScan = InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>}, {MaskDark = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}, {MaskLight = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}, {Resolution = InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>}, {Warp = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}]
@P MaskDark: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P MaskLight: InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>
@P HardScan: InputFloat<ShaderFX.InputValueFloat.i2,PerUpdate>
@P HardPix: InputFloat<ShaderFX.InputValueFloat.i3,PerUpdate>
@P Warp: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P Resolution: InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 48]
@C    InputValue_id94 => ShaderFX.InputValueFloat4
@C    InputValue_id95 => ShaderFX.InputValueFloat.i3
@C    InputValue_id96 => ShaderFX.InputValueFloat.i2
@C    InputValue_id97 => ShaderFX.InputValueFloat
@C    InputValue_id98 => ShaderFX.InputValueFloat.i1
@C    InputValue_id99 => ShaderFX.InputValueFloat2.i1
@C    InputValue_id100 => ShaderFX.InputValueFloat2
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
@S    CRT_Internal_TextureFX => a8e359c10d18a2604b41ca28124d3216
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
#line 286 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_4f47148c09c0827004500fa7233f8649.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 290
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 22eaf5518c9ba051db1b127a86b111ca
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id94;            // Offset:    0 Size:    16
//   float InputValue_id95;             // Offset:   16 Size:     4
//   float InputValue_id96;             // Offset:   20 Size:     4
//   float InputValue_id97;             // Offset:   24 Size:     4
//   float InputValue_id98;             // Offset:   28 Size:     4
//   float2 InputValue_id99;            // Offset:   32 Size:     8
//   float2 InputValue_id100;           // Offset:   40 Size:     8
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 8
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 247 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_4f47148c09c0827004500fa7233f8649.hlsl"
mad r0.xyzw, v1.xyxy, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)  // r0.z <- pos.x; r0.w <- pos.y

#line 248
mul r1.xyzw, r0.wzwz, r0.wzwz
mad r1.xyzw, r1.xyzw, cb0[2].zwzw, l(1.000000, 1.000000, 1.000000, 1.000000)
mul r0.xyzw, r0.xyzw, r1.xyzw

#line 249
mad r0.xyzw, r0.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000), l(0.500000, 0.500000, 0.500000, 0.500000)  // r0.z <- <Warper_id36 return value>.x; r0.w <- <Warper_id36 return value>.y

#line 165
mul r1.xy, r0.zwzz, cb0[2].xyxx
round_ni r1.xyz, r1.xxyx
div r1.yw, r1.yyyz, cb0[2].xxxy  // r1.y <- pos.x; r1.w <- pos.y; r1.y <- pos.x; r1.w <- pos.y

#line 160
mad r1.xz, r0.zzwz, cb0[2].xxyx, -r1.xxzx
add r1.xz, r1.xxzx, l(-0.500000, 0.000000, -0.500000, 0.000000)

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.ywyy, t0.xyzw, s0, l(0.000000)  // r2.x <- <Fetch_id29 return value>.x; r2.y <- <Fetch_id29 return value>.y; r2.z <- <Fetch_id29 return value>.z; r2.w <- <Fetch_id29 return value>.w; r2.x <- <Fetch_id29 return value>.x; r2.y <- <Fetch_id29 return value>.y; r2.z <- <Fetch_id29 return value>.z; r2.w <- <Fetch_id29 return value>.w

#line 165
mad r3.xyzw, r0.zwzw, cb0[2].xyxy, l(1.000000, -1.000000, -2.000000, 0.000000)
round_ni r3.xyzw, r3.xyzw
div r3.xyzw, r3.xyzw, cb0[2].xyxy  // r3.z <- pos.x; r3.w <- pos.y; r3.z <- pos.x; r3.w <- pos.y

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.zwzz, t0.xyzw, s0, l(0.000000)  // r4.x <- <Fetch_id29 return value>.x; r4.y <- <Fetch_id29 return value>.y; r4.z <- <Fetch_id29 return value>.z; r4.w <- <Fetch_id29 return value>.w; r4.x <- <Fetch_id29 return value>.x; r4.y <- <Fetch_id29 return value>.y; r4.z <- <Fetch_id29 return value>.z; r4.w <- <Fetch_id29 return value>.w
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyxx, t0.xyzw, s0, l(0.000000)  // r3.x <- <Fetch_id29 return value>.x; r3.y <- <Fetch_id29 return value>.y; r3.z <- <Fetch_id29 return value>.z; r3.w <- <Fetch_id29 return value>.w; r3.x <- <Fetch_id29 return value>.x; r3.y <- <Fetch_id29 return value>.y; r3.z <- <Fetch_id29 return value>.z; r3.w <- <Fetch_id29 return value>.w

#line 165
mad r5.xyzw, r0.zwzw, cb0[2].xyxy, l(-1.000000, 0.000000, 1.000000, 0.000000)
round_ni r5.xyzw, r5.xyzw
div r5.xyzw, r5.xyzw, cb0[2].xyxy  // r5.z <- pos.x; r5.w <- pos.y; r5.z <- pos.x; r5.w <- pos.y

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r6.xyzw, r5.xyxx, t0.xyzw, s0, l(0.000000)  // r6.x <- <Fetch_id29 return value>.x; r6.y <- <Fetch_id29 return value>.y; r6.z <- <Fetch_id29 return value>.z; r6.w <- <Fetch_id29 return value>.w; r6.x <- <Fetch_id29 return value>.x; r6.y <- <Fetch_id29 return value>.y; r6.z <- <Fetch_id29 return value>.z; r6.w <- <Fetch_id29 return value>.w; r6.x <- <Fetch_id29 return value>.x; r6.y <- <Fetch_id29 return value>.y; r6.z <- <Fetch_id29 return value>.z; r6.w <- <Fetch_id29 return value>.w
sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r5.zwzz, t0.xyzw, s0, l(0.000000)  // r5.x <- <Fetch_id29 return value>.x; r5.y <- <Fetch_id29 return value>.y; r5.z <- <Fetch_id29 return value>.z; r5.w <- <Fetch_id29 return value>.w; r5.x <- <Fetch_id29 return value>.x; r5.y <- <Fetch_id29 return value>.y; r5.z <- <Fetch_id29 return value>.z; r5.w <- <Fetch_id29 return value>.w

#line 199
add r7.xyzw, -r1.xxxx, l(-1.000000, 1.000000, -2.000000, 2.000000)

#line 150
mul r7.xyzw, r7.xyzw, r7.xyzw
mul r7.xyzw, r7.xyzw, cb0[1].xxxx
exp r7.xyzw, r7.xyzw  // r7.w <- <Gaus_id31 return value>

#line 200
mul r6.xyzw, r6.xyzw, r7.xxxx
mad r4.xyzw, r4.xyzw, r7.zzzz, r6.xyzw

#line 150
mul r1.xy, r1.xzxx, r1.xzxx

#line 183
add r1.zw, -r1.zzzz, l(0.000000, 0.000000, -1.000000, 1.000000)  // r1.w <- pos

#line 150
mul r1.zw, r1.zzzw, r1.zzzw
mul r1.xyzw, r1.xyzw, cb0[1].xyyy
exp r1.zw, r1.zzzw  // r1.w <- <Gaus_id31 return value>; r1.w <- <Gaus_id31 return value>
exp r1.xy, r1.xyxx  // r1.y <- <Gaus_id31 return value>

#line 200
mad r2.xyzw, r2.xyzw, r1.xxxx, r4.xyzw
mad r2.xyzw, r5.xyzw, r7.yyyy, r2.xyzw

#line 165
mad r4.xyzw, r0.zwzw, cb0[2].xyxy, l(2.000000, 0.000000, -1.000000, 1.000000)
round_ni r4.xyzw, r4.xyzw
div r4.xyzw, r4.xyzw, cb0[2].xyxy  // r4.z <- pos.x; r4.w <- pos.y; r4.z <- pos.x; r4.w <- pos.y

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyxx, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.zwzz, t0.xyzw, s0, l(0.000000)  // r4.x <- <Fetch_id29 return value>.x; r4.y <- <Fetch_id29 return value>.y; r4.z <- <Fetch_id29 return value>.z; r4.w <- <Fetch_id29 return value>.w; r4.x <- <Fetch_id29 return value>.x; r4.y <- <Fetch_id29 return value>.y; r4.z <- <Fetch_id29 return value>.z; r4.w <- <Fetch_id29 return value>.w

#line 200
mad r2.xyzw, r5.xyzw, r7.wwww, r2.xyzw
add r5.x, r7.x, r7.z
add r5.x, r1.x, r5.x
add r5.x, r7.y, r5.x
add r5.x, r7.w, r5.x
div r2.xyzw, r2.xyzw, r5.xxxx  // r2.x <- <Horz5_id33 return value>.x; r2.y <- <Horz5_id33 return value>.y; r2.z <- <Horz5_id33 return value>.z; r2.w <- <Horz5_id33 return value>.w

#line 242
mul r2.xyzw, r1.yyyy, r2.xyzw

#line 165
mad r5.xyzw, r0.zwzw, cb0[2].xyxy, l(-1.000000, -1.000000, 0.000000, -1.000000)
mad r0.xyzw, r0.xyzw, cb0[2].xyxy, l(0.000000, 1.000000, 1.000000, 1.000000)
round_ni r0.xyzw, r0.xyzw
div r0.xyzw, r0.xyzw, cb0[2].xyxy  // r0.z <- pos.x; r0.w <- pos.y; r0.z <- pos.x; r0.w <- pos.y; r0.z <- pos.x; r0.w <- pos.y
round_ni r5.xyzw, r5.xyzw
div r5.xyzw, r5.xyzw, cb0[2].xyxy  // r5.z <- pos.x; r5.w <- pos.y; r5.z <- pos.x; r5.w <- pos.y; r5.z <- pos.x; r5.w <- pos.y

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r6.xyzw, r5.zwzz, t0.xyzw, s0, l(0.000000)  // r6.x <- <Fetch_id29 return value>.x; r6.y <- <Fetch_id29 return value>.y; r6.z <- <Fetch_id29 return value>.z; r6.w <- <Fetch_id29 return value>.w; r6.x <- <Fetch_id29 return value>.x; r6.y <- <Fetch_id29 return value>.y; r6.z <- <Fetch_id29 return value>.z; r6.w <- <Fetch_id29 return value>.w; r6.x <- <Fetch_id29 return value>.x; r6.y <- <Fetch_id29 return value>.y; r6.z <- <Fetch_id29 return value>.z; r6.w <- <Fetch_id29 return value>.w
sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r5.xyxx, t0.xyzw, s0, l(0.000000)  // r5.x <- <Fetch_id29 return value>.x; r5.y <- <Fetch_id29 return value>.y; r5.z <- <Fetch_id29 return value>.z; r5.w <- <Fetch_id29 return value>.w; r5.x <- <Fetch_id29 return value>.x; r5.y <- <Fetch_id29 return value>.y; r5.z <- <Fetch_id29 return value>.z; r5.w <- <Fetch_id29 return value>.w

#line 213
mul r6.xyzw, r1.xxxx, r6.xyzw
mad r5.xyzw, r5.xyzw, r7.xxxx, r6.xyzw
mad r3.xyzw, r3.xyzw, r7.yyyy, r5.xyzw
add r1.y, r1.x, r7.x
add r1.y, r7.y, r1.y
div r3.xyzw, r3.xyzw, r1.yyyy  // r3.x <- <Horz3_id32 return value>.x; r3.y <- <Horz3_id32 return value>.y; r3.z <- <Horz3_id32 return value>.z; r3.w <- <Horz3_id32 return value>.w; r3.x <- <Horz3_id32 return value>.x; r3.y <- <Horz3_id32 return value>.y; r3.z <- <Horz3_id32 return value>.z; r3.w <- <Horz3_id32 return value>.w

#line 242
mad r2.xyzw, r3.xyzw, r1.zzzz, r2.xyzw

#line 166
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.xyxx, t0.xyzw, s0, l(0.000000)  // r3.x <- <Fetch_id29 return value>.x; r3.y <- <Fetch_id29 return value>.y; r3.z <- <Fetch_id29 return value>.z; r3.w <- <Fetch_id29 return value>.w; r3.x <- <Fetch_id29 return value>.x; r3.y <- <Fetch_id29 return value>.y; r3.z <- <Fetch_id29 return value>.z; r3.w <- <Fetch_id29 return value>.w
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t0.xyzw, s0, l(0.000000)  // r0.x <- <Fetch_id29 return value>.x; r0.y <- <Fetch_id29 return value>.y; r0.z <- <Fetch_id29 return value>.z; r0.w <- <Fetch_id29 return value>.w

#line 213
mul r3.xyzw, r1.xxxx, r3.xyzw
mad r3.xyzw, r4.xyzw, r7.xxxx, r3.xyzw
mad r0.xyzw, r0.xyzw, r7.yyyy, r3.xyzw
div r0.xyzw, r0.xyzw, r1.yyyy  // r0.x <- <Horz3_id32 return value>.x; r0.y <- <Horz3_id32 return value>.y; r0.z <- <Horz3_id32 return value>.z; r0.w <- <Horz3_id32 return value>.w

#line 242
mad r0.xyzw, r0.xyzw, r1.wwww, r2.xyzw  // r0.x <- <Tri_id35 return value>.x; r0.y <- <Tri_id35 return value>.y; r0.z <- <Tri_id35 return value>.z; r0.w <- <Tri_id35 return value>.w

#line 260
div r1.xy, v1.xyxx, cb1[1].xyxx

#line 223
mad r1.x, r1.y, l(3.000000), r1.x

#line 225
mul r1.x, r1.x, l(0.166667)
frc r1.x, r1.x  // r1.x <- pos.x

#line 228
lt r1.xy, r1.xxxx, l(0.333000, 0.666000, 0.000000, 0.000000)

#line 231
movc r2.yz, r1.yyyy, cb0[1].wwzw, cb0[1].zzwz  // r2.y <- mask.y; r2.z <- mask.z
mov r2.x, cb0[1].z
movc r1.xyz, r1.xxxx, cb0[1].wzzw, r2.xyzx  // r1.x <- mask.x; r1.y <- mask.y; r1.z <- mask.z

#line 260
mov r1.w, l(1.000000)

#line 265
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t0.xyzw, s1, l(0.000000)  // r2.x <- <InTex0_id26 return value>.x; r2.y <- <InTex0_id26 return value>.y; r2.z <- <InTex0_id26 return value>.z; r2.w <- <InTex0_id26 return value>.w

#line 270
mad r0.xyzw, r0.xyzw, r1.xyzw, -r2.xyzw
mad o0.xyzw, cb0[0].xyzw, r0.xyzw, r2.xyzw

#line 279
ret 
// Approximately 82 instruction slots used
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
    float4 InputValue_id94;
    float InputValue_id95;
    float InputValue_id96;
    float InputValue_id97;
    float InputValue_id98;
    float2 InputValue_id99;
    float2 InputValue_id100;
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
float2 Compute_id40()
{
    return InputValue_id99;
}
float Gaus_id31(float pos, float scale)
{
    return exp2(scale * pos * pos);
}
float Compute_id43()
{
    return InputValue_id96;
}
float2 Dist_id30(float2 pos)
{
    float2 res = Compute_id40();
    pos = pos * res;
    return -((pos - floor(pos)) - float2(0.5, 0.5));
}
float4 Fetch_id29(float2 pos, float2 off)
{
    float2 res = Compute_id40();
    pos = floor(pos * res + off) / res;
    return Texture0_id14.SampleLevel(LinearSampler_id44, pos.xy, 0);
}
float Compute_id42()
{
    return InputValue_id95;
}
float Compute_id45()
{
    return InputValue_id97;
}
float Compute_id44()
{
    return InputValue_id98;
}
float Scan_id34(float2 pos, float off)
{
    float dst = Dist_id30(pos).y;
    return Gaus_id31(dst + off, Compute_id43());
}
float4 Horz5_id33(float2 pos, float off)
{
    float hardPix = Compute_id42();
    float4 a = Fetch_id29(pos, float2(-2.0, off));
    float4 b = Fetch_id29(pos, float2(-1.0, off));
    float4 c = Fetch_id29(pos, float2(0.0, off));
    float4 d = Fetch_id29(pos, float2(1.0, off));
    float4 e = Fetch_id29(pos, float2(2.0, off));
    float dst = Dist_id30(pos).x;
    float scale = hardPix;
    float wa = Gaus_id31(dst - 2.0, scale);
    float wb = Gaus_id31(dst - 1.0, scale);
    float wc = Gaus_id31(dst + 0.0, scale);
    float wd = Gaus_id31(dst + 1.0, scale);
    float we = Gaus_id31(dst + 2.0, scale);
    return (a * wa + b * wb + c * wc + d * wd + e * we) / (wa + wb + wc + wd + we);
}
float4 Horz3_id32(float2 pos, float off)
{
    float hardPix = Compute_id42();
    float4 b = Fetch_id29(pos, float2(-1.0, off));
    float4 c = Fetch_id29(pos, float2(0.0, off));
    float4 d = Fetch_id29(pos, float2(1.0, off));
    float dst = Dist_id30(pos).x;
    float scale = hardPix;
    float wb = Gaus_id31(dst - 1.0, scale);
    float wc = Gaus_id31(dst + 0.0, scale);
    float wd = Gaus_id31(dst + 1.0, scale);
    return (b * wb + c * wc + d * wd) / (wb + wc + wd);
}
float2 Compute_id41()
{
    return InputValue_id100;
}
float4 Mask_id37(float2 pos)
{
    float maskLight = Compute_id44();
    float maskDark = Compute_id45();
    pos.x += pos.y * 3.0;
    float4 mask = float4(maskDark, maskDark, maskDark, 1.0);
    pos.x = frac(pos.x / 6.0);
    if (pos.x < 0.333)
        mask.r = maskLight;
    else if (pos.x < 0.666)
        mask.g = maskLight;
    else
        mask.b = maskLight;
    return mask;
}
float4 Tri_id35(float2 pos)
{
    float4 a = Horz3_id32(pos, -1.0);
    float4 b = Horz5_id33(pos, 0.0);
    float4 c = Horz3_id32(pos, 1.0);
    float wa = Scan_id34(pos, -1.0);
    float wb = Scan_id34(pos, 0.0);
    float wc = Scan_id34(pos, 1.0);
    return a * wa + b * wb + c * wc;
}
float2 Warper_id36(float2 pos)
{
    float2 warp = Compute_id41();
    pos = pos * 2.0 - 1.0;
    pos *= float2(1.0 + (pos.y * pos.y) * warp.x, 1.0 + (pos.x * pos.x) * warp.y);
    return pos * 0.5 + 0.5;
}
float4 Compute_id39()
{
    return InputValue_id94;
}
float4 Filter_id38(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float4 color = 0;
    float2 pos = Warper_id36(uv.xy);
    color = Tri_id35(pos) * Mask_id37(uv / ViewSize_id77);
    return color;
}
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    float4 col = InTex0_id26(streams);
    return lerp(col, Filter_id38(streams, col), Compute_id39());
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
