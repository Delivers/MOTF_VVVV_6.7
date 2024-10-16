/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Median_Internal_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}, {Pos = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]
@P Pos: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 32]
@C    InputValue_id90 => ShaderFX.InputValueFloat4
@C    InputValue_id91 => ShaderFX.InputValueFloat
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
@C    Radius_id88 => Median_Internal_TextureFX.Radius
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler0_id52 => Texturing.Sampler0 [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    Median_Internal_TextureFX => 4b0a5fba84cf0d60e52e2dd09ad3318a
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
#line 473 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_ed920cb888d47311547fae9cb2c96ef6.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 477
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 8218085739adeaa32ad8fc771f69acca
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
//   float InputValue_id91;             // Offset:   16 Size:     4
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
//   int Radius_id88;                   // Offset:   80 Size:     4
//      = 0x00000002 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 27
dcl_indexableTemp x0[25], 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 452 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_ed920cb888d47311547fae9cb2c96ef6.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 160
itof r1.x, cb2[5].x

#line 154
mov r1.y, l(-2)  // r1.y <- dX
loop 
  ilt r1.z, l(2), r1.y
  breakc_nz r1.z

#line 159
  itof r2.x, r1.y  // r2.x <- offset.x

#line 160
  imad r1.z, r1.y, l(5), l(10)

#line 157
  mov r1.w, l(-2)  // r1.w <- dY
  loop 
    ilt r2.z, l(2), r1.w
    breakc_nz r2.z

#line 159
    itof r2.y, r1.w  // r2.y <- offset.y

#line 160
    iadd r2.z, r1.z, r1.w
    iadd r2.z, r2.z, l(2)
    mul r2.yw, r1.xxxx, r2.xxxy
    div r2.yw, r2.yyyw, cb1[1].xxxy
    add r2.yw, r2.yyyw, v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.ywyy, t0.xyzw, s0, l(0.000000)
    mov x0[r2.z + 0].xyz, r3.xyzx

#line 161
    iadd r1.w, r1.w, l(1)
  endloop 

#line 162
  iadd r1.y, r1.y, l(1)
endloop 

#line 164
mov r1.xyz, x0[0].xyzx  // r1.x <- temp.x; r1.y <- temp.y; r1.z <- temp.z

#line 165
mov r2.xyz, x0[1].xyzx
min r3.xyz, r1.xyzx, r2.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 166
max r1.xyz, r1.xyzx, r2.xyzx  // r1.x <- temp.x; r1.y <- temp.y; r1.z <- temp.z

#line 167
mov r2.xyz, x0[3].xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 168
mov r4.xyz, x0[4].xyzx
min r5.xyz, r2.xyzx, r4.xyzx

#line 169
max r2.xyz, r2.xyzx, r4.xyzx

#line 170
mov r4.xyz, x0[2].xyzx  // r4.x <- temp.x; r4.y <- temp.y; r4.z <- temp.z

#line 171
min r6.xyz, r2.xyzx, r4.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 172
max r2.xyz, r2.xyzx, r4.xyzx

#line 174
min r4.xyz, r5.xyzx, r6.xyzx  // r4.x <- temp.x; r4.y <- temp.y; r4.z <- temp.z

#line 175
max r5.xyz, r5.xyzx, r6.xyzx  // r5.x <- temp.x; r5.y <- temp.y; r5.z <- temp.z

#line 176
mov r6.xyz, x0[6].xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 177
mov r7.xyz, x0[7].xyzx
min r8.xyz, r6.xyzx, r7.xyzx

#line 178
max r6.xyz, r6.xyzx, r7.xyzx

#line 179
mov r7.xyz, x0[5].xyzx  // r7.x <- temp.x; r7.y <- temp.y; r7.z <- temp.z

#line 180
min r9.xyz, r6.xyzx, r7.xyzx  // r9.x <- temp.x; r9.y <- temp.y; r9.z <- temp.z

#line 181
max r6.xyz, r6.xyzx, r7.xyzx

#line 183
min r7.xyz, r8.xyzx, r9.xyzx

#line 184
max r8.xyz, r8.xyzx, r9.xyzx

#line 185
mov r9.xyz, x0[9].xyzx

#line 186
min r10.xyz, r6.xyzx, r9.xyzx  // r10.x <- temp.x; r10.y <- temp.y; r10.z <- temp.z

#line 187
max r6.xyz, r6.xyzx, r9.xyzx

#line 189
min r9.xyz, r1.xyzx, r6.xyzx  // r9.x <- temp.x; r9.y <- temp.y; r9.z <- temp.z

#line 190
max r1.xyz, r1.xyzx, r6.xyzx

#line 192
min r6.xyz, r2.xyzx, r9.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 193
max r2.xyz, r2.xyzx, r9.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 194
mov r9.xyz, x0[12].xyzx  // r9.x <- temp.x; r9.y <- temp.y; r9.z <- temp.z

#line 195
mov r11.xyz, x0[13].xyzx
min r12.xyz, r9.xyzx, r11.xyzx

#line 196
max r9.xyz, r9.xyzx, r11.xyzx

#line 197
mov r11.xyz, x0[11].xyzx  // r11.x <- temp.x; r11.y <- temp.y; r11.z <- temp.z

#line 198
min r13.xyz, r9.xyzx, r11.xyzx  // r13.x <- temp.x; r13.y <- temp.y; r13.z <- temp.z

#line 199
max r9.xyz, r9.xyzx, r11.xyzx  // r9.x <- temp.x; r9.y <- temp.y; r9.z <- temp.z

#line 201
min r11.xyz, r12.xyzx, r13.xyzx  // r11.x <- temp.x; r11.y <- temp.y; r11.z <- temp.z

#line 202
max r12.xyz, r12.xyzx, r13.xyzx  // r12.x <- temp.x; r12.y <- temp.y; r12.z <- temp.z

#line 203
mov r13.xyz, x0[15].xyzx  // r13.x <- temp.x; r13.y <- temp.y; r13.z <- temp.z

#line 204
mov r14.xyz, x0[16].xyzx
min r15.xyz, r13.xyzx, r14.xyzx

#line 205
max r13.xyz, r13.xyzx, r14.xyzx

#line 206
mov r14.xyz, x0[14].xyzx  // r14.x <- temp.x; r14.y <- temp.y; r14.z <- temp.z

#line 207
min r16.xyz, r13.xyzx, r14.xyzx  // r16.x <- temp.x; r16.y <- temp.y; r16.z <- temp.z

#line 208
max r13.xyz, r13.xyzx, r14.xyzx

#line 210
min r14.xyz, r15.xyzx, r16.xyzx

#line 211
max r15.xyz, r15.xyzx, r16.xyzx

#line 212
mov r16.xyz, x0[18].xyzx

#line 213
mov r17.xyz, x0[19].xyzx
min r18.xyz, r16.xyzx, r17.xyzx

#line 214
max r16.xyz, r16.xyzx, r17.xyzx

#line 215
mov r17.xyz, x0[17].xyzx  // r17.x <- temp.x; r17.y <- temp.y; r17.z <- temp.z

#line 216
min r19.xyz, r16.xyzx, r17.xyzx  // r19.x <- temp.x; r19.y <- temp.y; r19.z <- temp.z

#line 217
max r16.xyz, r16.xyzx, r17.xyzx  // r16.x <- temp.x; r16.y <- temp.y; r16.z <- temp.z

#line 219
min r17.xyz, r18.xyzx, r19.xyzx  // r17.x <- temp.x; r17.y <- temp.y; r17.z <- temp.z

#line 220
max r18.xyz, r18.xyzx, r19.xyzx  // r18.x <- temp.x; r18.y <- temp.y; r18.z <- temp.z

#line 221
mov r19.xyz, x0[21].xyzx  // r19.x <- temp.x; r19.y <- temp.y; r19.z <- temp.z

#line 222
mov r20.xyz, x0[22].xyzx
min r21.xyz, r19.xyzx, r20.xyzx

#line 223
max r19.xyz, r19.xyzx, r20.xyzx

#line 224
mov r20.xyz, x0[20].xyzx  // r20.x <- temp.x; r20.y <- temp.y; r20.z <- temp.z

#line 225
min r22.xyz, r19.xyzx, r20.xyzx  // r22.x <- temp.x; r22.y <- temp.y; r22.z <- temp.z

#line 226
max r19.xyz, r19.xyzx, r20.xyzx

#line 228
min r20.xyz, r21.xyzx, r22.xyzx  // r20.x <- temp.x; r20.y <- temp.y; r20.z <- temp.z

#line 229
max r21.xyz, r21.xyzx, r22.xyzx  // r21.x <- temp.x; r21.y <- temp.y; r21.z <- temp.z

#line 230
mov r22.xyz, x0[23].xyzx  // r22.x <- temp.x; r22.y <- temp.y; r22.z <- temp.z

#line 231
mov r23.xyz, x0[24].xyzx
min r24.xyz, r22.xyzx, r23.xyzx

#line 232
max r22.xyz, r22.xyzx, r23.xyzx

#line 234
min r23.xyz, r4.xyzx, r7.xyzx  // r23.x <- temp.x; r23.y <- temp.y; r23.z <- temp.z

#line 235
max r4.xyz, r4.xyzx, r7.xyzx  // r4.x <- temp.x; r4.y <- temp.y; r4.z <- temp.z

#line 237
min r7.xyz, r5.xyzx, r8.xyzx

#line 238
max r5.xyz, r5.xyzx, r8.xyzx

#line 240
min r8.xyz, r3.xyzx, r5.xyzx  // r8.x <- temp.x; r8.y <- temp.y; r8.z <- temp.z

#line 241
max r3.xyz, r3.xyzx, r5.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 243
min r5.xyz, r7.xyzx, r8.xyzx  // r5.x <- temp.x; r5.y <- temp.y; r5.z <- temp.z

#line 244
max r7.xyz, r7.xyzx, r8.xyzx  // r7.x <- temp.x; r7.y <- temp.y; r7.z <- temp.z

#line 246
min r8.xyz, r1.xyzx, r2.xyzx

#line 247
max r1.xyz, r1.xyzx, r2.xyzx

#line 249
min r2.xyz, r1.xyzx, r6.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 250
max r1.xyz, r1.xyzx, r6.xyzx  // r1.x <- temp.x; r1.y <- temp.y; r1.z <- temp.z

#line 252
min r6.xyz, r8.xyzx, r2.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 253
max r2.xyz, r8.xyzx, r2.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 255
min r8.xyz, r11.xyzx, r14.xyzx

#line 256
max r11.xyz, r11.xyzx, r14.xyzx

#line 257
mov r14.xyz, x0[8].xyzx  // r14.x <- temp.x; r14.y <- temp.y; r14.z <- temp.z

#line 258
min r25.xyz, r11.xyzx, r14.xyzx  // r25.x <- temp.x; r25.y <- temp.y; r25.z <- temp.z

#line 259
max r11.xyz, r11.xyzx, r14.xyzx  // r11.x <- temp.x; r11.y <- temp.y; r11.z <- temp.z

#line 261
min r14.xyz, r8.xyzx, r25.xyzx  // r14.x <- temp.x; r14.y <- temp.y; r14.z <- temp.z

#line 262
max r8.xyz, r8.xyzx, r25.xyzx  // r8.x <- temp.x; r8.y <- temp.y; r8.z <- temp.z

#line 264
min r25.xyz, r12.xyzx, r15.xyzx

#line 265
max r12.xyz, r12.xyzx, r15.xyzx

#line 267
min r15.xyz, r10.xyzx, r12.xyzx  // r15.x <- temp.x; r15.y <- temp.y; r15.z <- temp.z

#line 268
max r10.xyz, r10.xyzx, r12.xyzx  // r10.x <- temp.x; r10.y <- temp.y; r10.z <- temp.z

#line 270
min r12.xyz, r25.xyzx, r15.xyzx  // r12.x <- temp.x; r12.y <- temp.y; r12.z <- temp.z

#line 271
max r15.xyz, r25.xyzx, r15.xyzx  // r15.x <- temp.x; r15.y <- temp.y; r15.z <- temp.z

#line 273
min r25.xyz, r9.xyzx, r13.xyzx

#line 274
max r9.xyz, r9.xyzx, r13.xyzx

#line 275
mov r13.xyz, x0[10].xyzx  // r13.x <- temp.x; r13.y <- temp.y; r13.z <- temp.z

#line 276
min r26.xyz, r9.xyzx, r13.xyzx  // r26.x <- temp.x; r26.y <- temp.y; r26.z <- temp.z

#line 277
max r9.xyz, r9.xyzx, r13.xyzx

#line 279
min r13.xyz, r25.xyzx, r26.xyzx  // r13.x <- temp.x; r13.y <- temp.y; r13.z <- temp.z

#line 280
max r25.xyz, r25.xyzx, r26.xyzx  // r25.x <- temp.x; r25.y <- temp.y; r25.z <- temp.z

#line 282
min r26.xyz, r20.xyzx, r24.xyzx

#line 283
max r20.xyz, r20.xyzx, r24.xyzx

#line 285
min r24.xyz, r17.xyzx, r20.xyzx  // r24.x <- temp.x; r24.y <- temp.y; r24.z <- temp.z

#line 286
max r17.xyz, r17.xyzx, r20.xyzx

#line 288
min r20.xyz, r26.xyzx, r24.xyzx

#line 289
max r24.xyz, r26.xyzx, r24.xyzx

#line 291
min r26.xyz, r21.xyzx, r22.xyzx

#line 292
max r21.xyz, r21.xyzx, r22.xyzx

#line 294
min r22.xyz, r18.xyzx, r21.xyzx  // r22.x <- temp.x; r22.y <- temp.y; r22.z <- temp.z

#line 295
max r18.xyz, r18.xyzx, r21.xyzx

#line 297
min r21.xyz, r26.xyzx, r22.xyzx

#line 298
max r22.xyz, r26.xyzx, r22.xyzx

#line 300
min r26.xyz, r16.xyzx, r19.xyzx

#line 301
max r16.xyz, r16.xyzx, r19.xyzx

#line 303
min r19.xyz, r14.xyzx, r20.xyzx
mov x0[8].xyz, r19.xyzx

#line 304
max r14.xyz, r14.xyzx, r20.xyzx

#line 306
min r19.xyz, r12.xyzx, r21.xyzx

#line 307
max r12.xyz, r12.xyzx, r21.xyzx

#line 309
min r20.xyz, r5.xyzx, r12.xyzx  // r20.x <- temp.x; r20.y <- temp.y; r20.z <- temp.z

#line 310
max r5.xyz, r5.xyzx, r12.xyzx

#line 312
min r12.xyz, r19.xyzx, r20.xyzx
mov x0[0].xyz, r12.xyzx

#line 313
max r12.xyz, r19.xyzx, r20.xyzx  // r12.x <- temp.x; r12.y <- temp.y; r12.z <- temp.z

#line 315
min r19.xyz, r13.xyzx, r26.xyzx

#line 316
max r13.xyz, r13.xyzx, r26.xyzx

#line 318
min r20.xyz, r6.xyzx, r13.xyzx  // r20.x <- temp.x; r20.y <- temp.y; r20.z <- temp.z

#line 319
max r6.xyz, r6.xyzx, r13.xyzx

#line 321
min r13.xyz, r19.xyzx, r20.xyzx
mov x0[1].xyz, r13.xyzx

#line 322
max r13.xyz, r19.xyzx, r20.xyzx

#line 324
min r19.xyz, r8.xyzx, r24.xyzx

#line 325
max r8.xyz, r8.xyzx, r24.xyzx

#line 327
min r20.xyz, r8.xyzx, r23.xyzx

#line 328
max r8.xyz, r8.xyzx, r23.xyzx

#line 330
min r21.xyz, r19.xyzx, r20.xyzx
mov x0[2].xyz, r21.xyzx

#line 331
max r19.xyz, r19.xyzx, r20.xyzx

#line 333
min r20.xyz, r15.xyzx, r22.xyzx

#line 334
max r15.xyz, r15.xyzx, r22.xyzx

#line 336
min r21.xyz, r7.xyzx, r15.xyzx  // r21.x <- temp.x; r21.y <- temp.y; r21.z <- temp.z

#line 337
max r7.xyz, r7.xyzx, r15.xyzx
mov x0[21].xyz, r7.xyzx

#line 339
min r7.xyz, r20.xyzx, r21.xyzx  // r7.x <- temp.x; r7.y <- temp.y; r7.z <- temp.z

#line 340
max r15.xyz, r20.xyzx, r21.xyzx

#line 342
min r20.xyz, r16.xyzx, r25.xyzx

#line 343
max r16.xyz, r16.xyzx, r25.xyzx

#line 345
min r21.xyz, r2.xyzx, r16.xyzx  // r21.x <- temp.x; r21.y <- temp.y; r21.z <- temp.z

#line 346
max r2.xyz, r2.xyzx, r16.xyzx
mov x0[22].xyz, r2.xyzx

#line 348
min r2.xyz, r20.xyzx, r21.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 349
max r16.xyz, r20.xyzx, r21.xyzx
mov x0[13].xyz, r16.xyzx

#line 351
min r16.xyz, r11.xyzx, r17.xyzx

#line 352
max r11.xyz, r11.xyzx, r17.xyzx

#line 354
min r17.xyz, r4.xyzx, r11.xyzx  // r17.x <- temp.x; r17.y <- temp.y; r17.z <- temp.z

#line 355
max r4.xyz, r4.xyzx, r11.xyzx
mov x0[23].xyz, r4.xyzx

#line 357
min r4.xyz, r16.xyzx, r17.xyzx  // r4.x <- temp.x; r4.y <- temp.y; r4.z <- temp.z

#line 358
max r11.xyz, r16.xyzx, r17.xyzx

#line 360
min r16.xyz, r10.xyzx, r18.xyzx

#line 361
max r10.xyz, r10.xyzx, r18.xyzx

#line 363
min r17.xyz, r3.xyzx, r10.xyzx  // r17.x <- temp.x; r17.y <- temp.y; r17.z <- temp.z

#line 364
max r3.xyz, r3.xyzx, r10.xyzx
mov x0[24].xyz, r3.xyzx

#line 366
min r3.xyz, r16.xyzx, r17.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 367
max r10.xyz, r16.xyzx, r17.xyzx
mov x0[15].xyz, r10.xyzx

#line 369
min r10.xyz, r1.xyzx, r9.xyzx  // r10.x <- temp.x; r10.y <- temp.y; r10.z <- temp.z

#line 370
max r1.xyz, r1.xyzx, r9.xyzx
mov x0[16].xyz, r1.xyzx

#line 372
min r1.xyz, r6.xyzx, r10.xyzx  // r1.x <- temp.x; r1.y <- temp.y; r1.z <- temp.z

#line 373
max r6.xyz, r6.xyzx, r10.xyzx
mov x0[19].xyz, r6.xyzx

#line 375
min r6.xyz, r19.xyzx, r7.xyzx
mov x0[3].xyz, r6.xyzx

#line 376
max r6.xyz, r19.xyzx, r7.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 378
min r7.xyz, r14.xyzx, r4.xyzx
mov x0[5].xyz, r7.xyzx

#line 379
max r4.xyz, r14.xyzx, r4.xyzx

#line 381
min r7.xyz, r4.xyzx, r6.xyzx
mov x0[11].xyz, r7.xyzx

#line 382
max r4.xyz, r4.xyzx, r6.xyzx

#line 384
min r6.xyz, r4.xyzx, r12.xyzx
mov x0[9].xyz, r6.xyzx

#line 385
max r4.xyz, r4.xyzx, r12.xyzx

#line 387
min r6.xyz, r13.xyzx, r2.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 388
max r2.xyz, r13.xyzx, r2.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 390
min r7.xyz, r15.xyzx, r3.xyzx

#line 391
max r3.xyz, r15.xyzx, r3.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 393
min r9.xyz, r11.xyzx, r1.xyzx

#line 394
max r1.xyz, r11.xyzx, r1.xyzx

#line 396
min r10.xyz, r6.xyzx, r7.xyzx  // r10.x <- temp.x; r10.y <- temp.y; r10.z <- temp.z

#line 397
max r6.xyz, r6.xyzx, r7.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 399
min r7.xyz, r9.xyzx, r10.xyzx
mov x0[4].xyz, r7.xyzx

#line 400
max r7.xyz, r9.xyzx, r10.xyzx

#line 402
min r9.xyz, r1.xyzx, r3.xyzx

#line 403
max r1.xyz, r1.xyzx, r3.xyzx

#line 405
min r3.xyz, r1.xyzx, r2.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 406
max r1.xyz, r1.xyzx, r2.xyzx
mov x0[14].xyz, r1.xyzx

#line 408
min r1.xyz, r6.xyzx, r7.xyzx  // r1.x <- temp.x; r1.y <- temp.y; r1.z <- temp.z

#line 409
max r2.xyz, r6.xyzx, r7.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 411
min r6.xyz, r9.xyzx, r3.xyzx

#line 412
max r3.xyz, r9.xyzx, r3.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 414
min r7.xyz, r1.xyzx, r6.xyzx  // r7.x <- temp.x; r7.y <- temp.y; r7.z <- temp.z

#line 415
max r1.xyz, r1.xyzx, r6.xyzx

#line 417
min r6.xyz, r4.xyzx, r7.xyzx
mov x0[6].xyz, r6.xyzx

#line 418
max r4.xyz, r4.xyzx, r7.xyzx

#line 420
min r6.xyz, r3.xyzx, r4.xyzx  // r6.x <- temp.x; r6.y <- temp.y; r6.z <- temp.z

#line 421
max r3.xyz, r3.xyzx, r4.xyzx

#line 423
min r4.xyz, r2.xyzx, r3.xyzx  // r4.x <- temp.x; r4.y <- temp.y; r4.z <- temp.z

#line 424
max r2.xyz, r2.xyzx, r3.xyzx
mov x0[17].xyz, r2.xyzx

#line 426
min r2.xyz, r1.xyzx, r4.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 427
max r1.xyz, r1.xyzx, r4.xyzx  // r1.x <- temp.x; r1.y <- temp.y; r1.z <- temp.z

#line 429
min r3.xyz, r5.xyzx, r6.xyzx

#line 430
max r4.xyz, r5.xyzx, r6.xyzx

#line 432
min r5.xyz, r2.xyzx, r3.xyzx
mov x0[7].xyz, r5.xyzx

#line 433
max r2.xyz, r2.xyzx, r3.xyzx  // r2.x <- temp.x; r2.y <- temp.y; r2.z <- temp.z

#line 435
min r3.xyz, r1.xyzx, r4.xyzx  // r3.x <- temp.x; r3.y <- temp.y; r3.z <- temp.z

#line 436
max r1.xyz, r1.xyzx, r4.xyzx
mov x0[18].xyz, r1.xyzx

#line 438
min r1.xyz, r8.xyzx, r2.xyzx

#line 439
max r2.xyz, r8.xyzx, r2.xyzx

#line 441
min r4.xyz, r2.xyzx, r3.xyzx  // r4.x <- temp.x; r4.y <- temp.y; r4.z <- temp.z

#line 442
max r2.xyz, r2.xyzx, r3.xyzx
mov x0[20].xyz, r2.xyzx

#line 444
min r2.xyz, r1.xyzx, r4.xyzx
mov x0[10].xyz, r2.xyzx

#line 445
max r1.xyz, r1.xyzx, r4.xyzx
mov x0[12].xyz, r1.xyzx

#line 447
mul r1.x, cb0[1].x, l(23.976000)
round_ne r1.x, r1.x
min r1.x, r1.x, l(24.000000)
max r1.x, r1.x, l(0.000000)
ftou r1.x, r1.x
mov r1.xyz, x0[r1.x + 0].xyzx  // r1.x <- col.x; r1.y <- col.y; r1.z <- col.z

#line 457
add r1.xyz, -r0.xyzx, r1.xyzx
mov r1.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 466
ret 
// Approximately 272 instruction slots used
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
    float InputValue_id91;
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
    int Radius_id88 = 2;
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
float Compute_id31()
{
    return InputValue_id91;
}
float4 Compute_id30()
{
    return InputValue_id90;
}
float4 Filter_id29(inout PS_STREAMS streams, float4 tex0col)
{
    float2 uv = streams.TexCoord_id62;
    float2 R = ViewSize_id77;
    float3 v[25];

    for (int dX = -2; dX <= 2; ++dX)
    {

        for (int dY = -2; dY <= 2; ++dY)
        {
            float2 offset = float2(float(dX), float(dY));
            v[(dX + 2) * 5 + (dY + 2)] = Texture0_id14.SampleLevel(Sampler0_id52, uv + Radius_id88 * offset / R, 0).rgb;
        }
    }
    float3 temp;
    temp = v[0];
    v[0] = min(v[0], v[1]);
    v[1] = max(temp, v[1]);
    temp = v[3];
    v[3] = min(v[3], v[4]);
    v[4] = max(temp, v[4]);
    temp = v[2];
    v[2] = min(v[2], v[4]);
    v[4] = max(temp, v[4]);
    temp = v[2];
    v[2] = min(v[2], v[3]);
    v[3] = max(temp, v[3]);
    temp = v[6];
    v[6] = min(v[6], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[5];
    v[5] = min(v[5], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[5];
    v[5] = min(v[5], v[6]);
    v[6] = max(temp, v[6]);
    temp = v[9];
    v[9] = min(v[9], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[1];
    v[1] = min(v[1], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[1];
    v[1] = min(v[1], v[4]);
    v[4] = max(temp, v[4]);
    temp = v[12];
    v[12] = min(v[12], v[13]);
    v[13] = max(temp, v[13]);
    temp = v[11];
    v[11] = min(v[11], v[13]);
    v[13] = max(temp, v[13]);
    temp = v[11];
    v[11] = min(v[11], v[12]);
    v[12] = max(temp, v[12]);
    temp = v[15];
    v[15] = min(v[15], v[16]);
    v[16] = max(temp, v[16]);
    temp = v[14];
    v[14] = min(v[14], v[16]);
    v[16] = max(temp, v[16]);
    temp = v[14];
    v[14] = min(v[14], v[15]);
    v[15] = max(temp, v[15]);
    temp = v[18];
    v[18] = min(v[18], v[19]);
    v[19] = max(temp, v[19]);
    temp = v[17];
    v[17] = min(v[17], v[19]);
    v[19] = max(temp, v[19]);
    temp = v[17];
    v[17] = min(v[17], v[18]);
    v[18] = max(temp, v[18]);
    temp = v[21];
    v[21] = min(v[21], v[22]);
    v[22] = max(temp, v[22]);
    temp = v[20];
    v[20] = min(v[20], v[22]);
    v[22] = max(temp, v[22]);
    temp = v[20];
    v[20] = min(v[20], v[21]);
    v[21] = max(temp, v[21]);
    temp = v[23];
    v[23] = min(v[23], v[24]);
    v[24] = max(temp, v[24]);
    temp = v[2];
    v[2] = min(v[2], v[5]);
    v[5] = max(temp, v[5]);
    temp = v[3];
    v[3] = min(v[3], v[6]);
    v[6] = max(temp, v[6]);
    temp = v[0];
    v[0] = min(v[0], v[6]);
    v[6] = max(temp, v[6]);
    temp = v[0];
    v[0] = min(v[0], v[3]);
    v[3] = max(temp, v[3]);
    temp = v[4];
    v[4] = min(v[4], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[1];
    v[1] = min(v[1], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[1];
    v[1] = min(v[1], v[4]);
    v[4] = max(temp, v[4]);
    temp = v[11];
    v[11] = min(v[11], v[14]);
    v[14] = max(temp, v[14]);
    temp = v[8];
    v[8] = min(v[8], v[14]);
    v[14] = max(temp, v[14]);
    temp = v[8];
    v[8] = min(v[8], v[11]);
    v[11] = max(temp, v[11]);
    temp = v[12];
    v[12] = min(v[12], v[15]);
    v[15] = max(temp, v[15]);
    temp = v[9];
    v[9] = min(v[9], v[15]);
    v[15] = max(temp, v[15]);
    temp = v[9];
    v[9] = min(v[9], v[12]);
    v[12] = max(temp, v[12]);
    temp = v[13];
    v[13] = min(v[13], v[16]);
    v[16] = max(temp, v[16]);
    temp = v[10];
    v[10] = min(v[10], v[16]);
    v[16] = max(temp, v[16]);
    temp = v[10];
    v[10] = min(v[10], v[13]);
    v[13] = max(temp, v[13]);
    temp = v[20];
    v[20] = min(v[20], v[23]);
    v[23] = max(temp, v[23]);
    temp = v[17];
    v[17] = min(v[17], v[23]);
    v[23] = max(temp, v[23]);
    temp = v[17];
    v[17] = min(v[17], v[20]);
    v[20] = max(temp, v[20]);
    temp = v[21];
    v[21] = min(v[21], v[24]);
    v[24] = max(temp, v[24]);
    temp = v[18];
    v[18] = min(v[18], v[24]);
    v[24] = max(temp, v[24]);
    temp = v[18];
    v[18] = min(v[18], v[21]);
    v[21] = max(temp, v[21]);
    temp = v[19];
    v[19] = min(v[19], v[22]);
    v[22] = max(temp, v[22]);
    temp = v[8];
    v[8] = min(v[8], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[9];
    v[9] = min(v[9], v[18]);
    v[18] = max(temp, v[18]);
    temp = v[0];
    v[0] = min(v[0], v[18]);
    v[18] = max(temp, v[18]);
    temp = v[0];
    v[0] = min(v[0], v[9]);
    v[9] = max(temp, v[9]);
    temp = v[10];
    v[10] = min(v[10], v[19]);
    v[19] = max(temp, v[19]);
    temp = v[1];
    v[1] = min(v[1], v[19]);
    v[19] = max(temp, v[19]);
    temp = v[1];
    v[1] = min(v[1], v[10]);
    v[10] = max(temp, v[10]);
    temp = v[11];
    v[11] = min(v[11], v[20]);
    v[20] = max(temp, v[20]);
    temp = v[2];
    v[2] = min(v[2], v[20]);
    v[20] = max(temp, v[20]);
    temp = v[2];
    v[2] = min(v[2], v[11]);
    v[11] = max(temp, v[11]);
    temp = v[12];
    v[12] = min(v[12], v[21]);
    v[21] = max(temp, v[21]);
    temp = v[3];
    v[3] = min(v[3], v[21]);
    v[21] = max(temp, v[21]);
    temp = v[3];
    v[3] = min(v[3], v[12]);
    v[12] = max(temp, v[12]);
    temp = v[13];
    v[13] = min(v[13], v[22]);
    v[22] = max(temp, v[22]);
    temp = v[4];
    v[4] = min(v[4], v[22]);
    v[22] = max(temp, v[22]);
    temp = v[4];
    v[4] = min(v[4], v[13]);
    v[13] = max(temp, v[13]);
    temp = v[14];
    v[14] = min(v[14], v[23]);
    v[23] = max(temp, v[23]);
    temp = v[5];
    v[5] = min(v[5], v[23]);
    v[23] = max(temp, v[23]);
    temp = v[5];
    v[5] = min(v[5], v[14]);
    v[14] = max(temp, v[14]);
    temp = v[15];
    v[15] = min(v[15], v[24]);
    v[24] = max(temp, v[24]);
    temp = v[6];
    v[6] = min(v[6], v[24]);
    v[24] = max(temp, v[24]);
    temp = v[6];
    v[6] = min(v[6], v[15]);
    v[15] = max(temp, v[15]);
    temp = v[7];
    v[7] = min(v[7], v[16]);
    v[16] = max(temp, v[16]);
    temp = v[7];
    v[7] = min(v[7], v[19]);
    v[19] = max(temp, v[19]);
    temp = v[3];
    v[3] = min(v[3], v[11]);
    v[11] = max(temp, v[11]);
    temp = v[5];
    v[5] = min(v[5], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[11];
    v[11] = min(v[11], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[9];
    v[9] = min(v[9], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[4];
    v[4] = min(v[4], v[10]);
    v[10] = max(temp, v[10]);
    temp = v[6];
    v[6] = min(v[6], v[12]);
    v[12] = max(temp, v[12]);
    temp = v[7];
    v[7] = min(v[7], v[14]);
    v[14] = max(temp, v[14]);
    temp = v[4];
    v[4] = min(v[4], v[6]);
    v[6] = max(temp, v[6]);
    temp = v[4];
    v[4] = min(v[4], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[12];
    v[12] = min(v[12], v[14]);
    v[14] = max(temp, v[14]);
    temp = v[10];
    v[10] = min(v[10], v[14]);
    v[14] = max(temp, v[14]);
    temp = v[6];
    v[6] = min(v[6], v[7]);
    v[7] = max(temp, v[7]);
    temp = v[10];
    v[10] = min(v[10], v[12]);
    v[12] = max(temp, v[12]);
    temp = v[6];
    v[6] = min(v[6], v[10]);
    v[10] = max(temp, v[10]);
    temp = v[6];
    v[6] = min(v[6], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[12];
    v[12] = min(v[12], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[7];
    v[7] = min(v[7], v[17]);
    v[17] = max(temp, v[17]);
    temp = v[7];
    v[7] = min(v[7], v[10]);
    v[10] = max(temp, v[10]);
    temp = v[12];
    v[12] = min(v[12], v[18]);
    v[18] = max(temp, v[18]);
    temp = v[7];
    v[7] = min(v[7], v[12]);
    v[12] = max(temp, v[12]);
    temp = v[10];
    v[10] = min(v[10], v[18]);
    v[18] = max(temp, v[18]);
    temp = v[12];
    v[12] = min(v[12], v[20]);
    v[20] = max(temp, v[20]);
    temp = v[10];
    v[10] = min(v[10], v[20]);
    v[20] = max(temp, v[20]);
    temp = v[10];
    v[10] = min(v[10], v[12]);
    v[12] = max(temp, v[12]);
    float4 col = Texture0_id14.SampleLevel(Sampler0_id52, uv, 0);
    col.rgb = v[max(0, min(24, round(Compute_id31() * 24 * .999)))];
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
