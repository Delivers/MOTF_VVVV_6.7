/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1764097760]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 848]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_1067223776_id33 => input_1067223776
@C    input_414949164_id34 => input_414949164
@C    input_3978116912_id35 => input_3978116912
@C    input_2270905566_id36 => input_2270905566
@C    input_3589571716_id37 => input_3589571716
@C    input_4182566138_id38 => input_4182566138
@C    input_2521338413_id39 => input_2521338413
@C    input_549255203_id40 => input_549255203
@C    input_1439714211_id41 => input_1439714211
@C    input_2639425994_id42 => input_2639425994
@C    input_680229214_id43 => input_680229214
@C    input_2_2270905566_id44 => input_2_2270905566
@C    input_2_3589571716_id45 => input_2_3589571716
@C    input_2104023961_id46 => input_2104023961
@C    input_2002269468_id47 => input_2002269468
@C    input_2706649897_id48 => input_2706649897
@C    input_3946938824_id49 => input_3946938824
@C    input_4122493167_id50 => input_4122493167
@C    input_1706087998_id51 => input_1706087998
@C    input_355239877_id52 => input_355239877
@C    input_143464447_id53 => input_143464447
@C    input_4228705964_id54 => input_4228705964
@C    input_1824390269_id55 => input_1824390269
@C    input_3019906543_id56 => input_3019906543
@C    input_1141140613_id57 => input_1141140613
@C    input_2346509339_id58 => input_2346509339
@C    input_2805697509_id59 => input_2805697509
@C    input_1164889030_id60 => input_1164889030
@C    input_3874002053_id61 => input_3874002053
@C    input_2038054552_id62 => input_2038054552
@C    input_1987684313_id63 => input_1987684313
@C    input_1357817973_id64 => input_1357817973
@C    input_4007967435_id65 => input_4007967435
@C    input_3120343483_id66 => input_3120343483
@C    input_3535115215_id67 => input_3535115215
@C    input_695841267_id68 => input_695841267
@C    input_1008064003_id69 => input_1008064003
@C    input_3700879862_id70 => input_3700879862
@C    input_604386247_id71 => input_604386247
@C    input_193934842_id72 => input_193934842
@C    input_3329313432_id73 => input_3329313432
@C    input_1451664569_id74 => input_1451664569
@C    input_509500895_id75 => input_509500895
@C    input_2180229162_id76 => input_2180229162
@C    input_4098193511_id77 => input_4098193511
@C    input_2262484760_id78 => input_2262484760
@C    input_3385045261_id79 => input_3385045261
@C    input_3683262863_id80 => input_3683262863
@C    input_3772323133_id81 => input_3772323133
@C    input_2263168456_id82 => input_2263168456
@C    input_331533052_id83 => input_331533052
@C    input_1083042877_id84 => input_1083042877
@C    input_4186378469_id85 => input_4186378469
@C    input_1014718271_id86 => input_1014718271
@C    input_933104051_id87 => input_933104051
@C    input_2001762637_id88 => input_2001762637
@C    input_3651455082_id89 => input_3651455082
@C    input_3170358738_id90 => input_3170358738
@C    input_2739775380_id91 => input_2739775380
@C    input_2080889478_id92 => input_2080889478
@C    input_313365650_id93 => input_313365650
@C    input_3684474273_id94 => input_3684474273
@C    input_3129090577_id95 => input_3129090577
@C    input_1985879382_id96 => input_1985879382
@C    input_3971464655_id97 => input_3971464655
@C    input_2067352129_id98 => input_2067352129
@C    input_3412309918_id99 => input_3412309918
@C    input_194834079_id100 => input_194834079
@C    input_896789008_id101 => input_896789008
@C    input_2934057289_id102 => input_2934057289
@C    input_2287782403_id103 => input_2287782403
@C    input_2303944410_id104 => input_2303944410
@C    input_2865710374_id105 => input_2865710374
@C    input_4131403277_id106 => input_4131403277
@C    input_3651171392_id107 => input_3651171392
@C    input_4197071625_id108 => input_4197071625
@C    input_2059121621_id109 => input_2059121621
@C    input_2471692652_id110 => input_2471692652
@C    input_786684384_id111 => input_786684384
@C    input_2467882504_id112 => input_2467882504
@C    input_1327967329_id113 => input_1327967329
***************************
******  Resources    ******
***************************
@R    SamplerInput_2924552678_id25 => SamplerInput_2924552678 [Stage: Compute, Slot: (0-0)]
@R    SamplerInput_2_2924552678_id26 => SamplerInput_2_2924552678 [Stage: Compute, Slot: (1-1)]
@R    SamplerInput_494671780_id28 => SamplerInput_494671780 [Stage: Compute, Slot: (2-2)]
@R    SamplerInput_1323902017_id30 => SamplerInput_1323902017 [Stage: Compute, Slot: (3-3)]
@R    SamplerInput_3411142183_id32 => SamplerInput_3411142183 [Stage: Compute, Slot: (4-4)]
@R    TextureInput_383085057_id24 => TextureInput_383085057 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_3601353252_id27 => TextureInput_3601353252 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_2118481169_id29 => TextureInput_2118481169 [Stage: Compute, Slot: (2-2)]
@R    TextureInput_3959990167_id31 => TextureInput_3959990167 [Stage: Compute, Slot: (3-3)]
@R    DynamicBufferInput_4252052980_id23 => DynamicBufferInput_4252052980 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1764097760 => 3dc1b8afc5186cb97cd3d43fe68fd825
@S    FuseCoreColor => 624cbdd22df76682ced5fac46493655a
@S    FuseCoreMathMap => a3c63d7e99620b0750ae90d499eee2ad
@S    FuseCoreMath => b5527ab1f8082f68a6dcc7c3959ee99a
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
***************************
*****     Stages      *****
***************************
@G    Compute => 6b6a8afc527fc9f1c65b69a73d7747c2
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDispatch
// {
//
//   int3 ThreadGroupCountGlobal_id10;  // Offset:    0 Size:    12 [unused]
//   int input_1067223776_id33;         // Offset:   12 Size:     4
//   float input_414949164_id34;        // Offset:   16 Size:     4 [unused]
//   float3 input_3978116912_id35;      // Offset:   20 Size:    12 [unused]
//   float4x4 input_2270905566_id36;    // Offset:   32 Size:    64
//   float4x4 input_3589571716_id37;    // Offset:   96 Size:    64
//   float input_4182566138_id38;       // Offset:  160 Size:     4
//   int input_2521338413_id39;         // Offset:  164 Size:     4
//   float input_549255203_id40;        // Offset:  168 Size:     4
//   float input_1439714211_id41;       // Offset:  172 Size:     4
//   float input_2639425994_id42;       // Offset:  176 Size:     4
//   float input_680229214_id43;        // Offset:  180 Size:     4
//   float4x4 input_2_2270905566_id44;  // Offset:  192 Size:    64
//   float4x4 input_2_3589571716_id45;  // Offset:  256 Size:    64
//   float input_2104023961_id46;       // Offset:  320 Size:     4
//   float4x4 input_2002269468_id47;    // Offset:  336 Size:    64
//   float input_2706649897_id48;       // Offset:  400 Size:     4
//   float input_3946938824_id49;       // Offset:  404 Size:     4
//   float input_4122493167_id50;       // Offset:  408 Size:     4
//   float input_1706087998_id51;       // Offset:  412 Size:     4
//   float input_355239877_id52;        // Offset:  416 Size:     4
//   float4x4 input_143464447_id53;     // Offset:  432 Size:    64
//   float input_4228705964_id54;       // Offset:  496 Size:     4
//   float input_1824390269_id55;       // Offset:  500 Size:     4
//   float input_3019906543_id56;       // Offset:  504 Size:     4
//   float input_1141140613_id57;       // Offset:  508 Size:     4
//   float input_2346509339_id58;       // Offset:  512 Size:     4
//   float4x4 input_2805697509_id59;    // Offset:  528 Size:    64
//   float input_1164889030_id60;       // Offset:  592 Size:     4
//   float input_3874002053_id61;       // Offset:  596 Size:     4
//   float input_2038054552_id62;       // Offset:  600 Size:     4
//   float input_1987684313_id63;       // Offset:  604 Size:     4
//   float input_1357817973_id64;       // Offset:  608 Size:     4
//   float input_4007967435_id65;       // Offset:  612 Size:     4
//   float input_3120343483_id66;       // Offset:  616 Size:     4
//   float input_3535115215_id67;       // Offset:  620 Size:     4
//   float input_695841267_id68;        // Offset:  624 Size:     4
//   float input_1008064003_id69;       // Offset:  628 Size:     4
//   float input_3700879862_id70;       // Offset:  632 Size:     4
//   float input_604386247_id71;        // Offset:  636 Size:     4
//   float input_193934842_id72;        // Offset:  640 Size:     4
//   float input_3329313432_id73;       // Offset:  644 Size:     4
//   float input_1451664569_id74;       // Offset:  648 Size:     4
//   float input_509500895_id75;        // Offset:  652 Size:     4
//   float input_2180229162_id76;       // Offset:  656 Size:     4
//   float input_4098193511_id77;       // Offset:  660 Size:     4
//   float input_2262484760_id78;       // Offset:  664 Size:     4
//   float input_3385045261_id79;       // Offset:  668 Size:     4
//   float input_3683262863_id80;       // Offset:  672 Size:     4
//   float input_3772323133_id81;       // Offset:  676 Size:     4
//   float input_2263168456_id82;       // Offset:  680 Size:     4
//   float input_331533052_id83;        // Offset:  684 Size:     4
//   float input_1083042877_id84;       // Offset:  688 Size:     4
//   float input_4186378469_id85;       // Offset:  692 Size:     4
//   float input_1014718271_id86;       // Offset:  696 Size:     4
//   float input_933104051_id87;        // Offset:  700 Size:     4
//   float input_2001762637_id88;       // Offset:  704 Size:     4
//   float input_3651455082_id89;       // Offset:  708 Size:     4
//   float input_3170358738_id90;       // Offset:  712 Size:     4
//   float input_2739775380_id91;       // Offset:  716 Size:     4
//   float input_2080889478_id92;       // Offset:  720 Size:     4
//   float input_313365650_id93;        // Offset:  724 Size:     4
//   float3 input_3684474273_id94;      // Offset:  736 Size:    12
//   float input_3129090577_id95;       // Offset:  748 Size:     4
//   float input_1985879382_id96;       // Offset:  752 Size:     4
//   float input_3971464655_id97;       // Offset:  756 Size:     4
//   float input_2067352129_id98;       // Offset:  760 Size:     4
//   float input_3412309918_id99;       // Offset:  764 Size:     4
//   float input_194834079_id100;       // Offset:  768 Size:     4
//   float input_896789008_id101;       // Offset:  772 Size:     4
//   float input_2934057289_id102;      // Offset:  776 Size:     4
//   float input_2287782403_id103;      // Offset:  780 Size:     4
//   float input_2303944410_id104;      // Offset:  784 Size:     4
//   float input_2865710374_id105;      // Offset:  788 Size:     4
//   float input_4131403277_id106;      // Offset:  792 Size:     4
//   float input_3651171392_id107;      // Offset:  796 Size:     4
//   float input_4197071625_id108;      // Offset:  800 Size:     4
//   float input_2059121621_id109;      // Offset:  804 Size:     4
//   float input_2471692652_id110;      // Offset:  808 Size:     4
//   float3 input_786684384_id111;      // Offset:  816 Size:    12
//   float3 input_2467882504_id112;     // Offset:  832 Size:    12
//   bool input_1327967329_id113;       // Offset:  844 Size:     4
//
// }
//
// Resource bind info for DynamicBufferInput_4252052980_id23
// {
//
//   struct Resource41270715
//   {
//       
//       float Age;                     // Offset:    0
//       float LifeTime;                // Offset:    4
//       int Id;                        // Offset:    8
//       float3 PPosition;              // Offset:   12
//       float3 Velocity;               // Offset:   24
//       float Size;                    // Offset:   36
//       float Mass;                    // Offset:   40
//       float4 PColor;                 // Offset:   44
//       int Cycle;                     // Offset:   60
//       float3 PLastPosition;          // Offset:   64
//       float3 AxisX;                  // Offset:   76
//       float3 AxisY;                  // Offset:   88
//       float3 AxisZ;                  // Offset:  100
//
//   } $Element;                        // Offset:    0 Size:   112
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// SamplerInput_2924552678_id25      sampler      NA          NA             s0      1 
// SamplerInput_2_2924552678_id26    sampler      NA          NA             s1      1 
// SamplerInput_494671780_id28       sampler      NA          NA             s2      1 
// SamplerInput_1323902017_id30      sampler      NA          NA             s3      1 
// SamplerInput_3411142183_id32      sampler      NA          NA             s4      1 
// TextureInput_383085057_id24       texture  float4          1d             t0      1 
// TextureInput_3601353252_id27      texture  float4          3d             t1      1 
// TextureInput_2118481169_id29      texture  float4          3d             t2      1 
// TextureInput_3959990167_id31      texture  float4          3d             t3      1 
// DynamicBufferInput_4252052980_id23        UAV  struct         r/w             u0      1 
// PerDispatch                       cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[53], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture1d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_resource_texture3d (float,float,float,float) t2
dcl_resource_texture3d (float,float,float,float) t3
dcl_uav_structured u0, 112
dcl_input vThreadID.x
dcl_temps 10
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 178 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_bfd6155d648e9d2d340a9ab499eeefa2.hlsl"
ult r0.x, vThreadID.x, cb0[0].w
if_nz r0.x

#line 179
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r0.xy, vThreadID.x, l(0), u0.xyxx  // r0.x <- getBuffer_3291917120.Age; r0.y <- getBuffer_3291917120.LifeTime
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r1.xyz, vThreadID.x, l(12), u0.xyzx  // r1.x <- getBuffer_3291917120.PPosition.x; r1.y <- getBuffer_3291917120.PPosition.y; r1.z <- getBuffer_3291917120.PPosition.z
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r0.z, vThreadID.x, l(40), u0.xxxx  // r0.z <- getBuffer_3291917120.Mass

#line 197
  mov r1.w, l(1.000000)
  dp4 r0.w, r1.xyzw, cb0[2].xyzw  // r0.w <- mul_1341085824.x

#line 199
  add r0.w, r0.w, l(0.500000)  // r0.w <- result_226465574.x

#line 200
  sample_l_indexable(texture1d)(float,float,float,float) r2.xyz, r0.w, t0.xyzw, s0, l(0.000000)  // r2.x <- textureNode_3686992883.x; r2.y <- textureNode_3686992883.y; r2.z <- textureNode_3686992883.z

#line 202
  dp3 r3.x, r2.xyzx, cb0[6].xyzx  // r3.x <- mul_2249702037.x
  dp3 r3.y, r2.xyzx, cb0[7].xyzx  // r3.y <- mul_2249702037.y
  dp3 r3.z, r2.xyzx, cb0[8].xyzx  // r3.z <- mul_2249702037.z

#line 203
  mul r2.xyz, r3.xyzx, cb0[10].xxxx  // r2.x <- result_975865680.x; r2.y <- result_975865680.y; r2.z <- result_975865680.z

#line 204
  div r2.xyz, r2.xyzx, r0.zzzz  // r2.x <- result_505103462.x; r2.y <- result_505103462.y; r2.z <- result_505103462.z

#line 206
  div_sat r0.w, r0.x, r0.y  // r0.w <- saturate_4065685935

#line 208
  add r0.w, -r0.w, l(1.000000)  // r0.w <- result_4149870993

#line 210
  add r1.w, -cb0[11].x, cb0[11].y
  mad r0.w, r0.w, r1.w, cb0[11].x  // r0.w <- lerp_1677598148

#line 211
  mul r0.w, r0.w, cb0[10].w  // r0.w <- result_3176519653

#line 213
  switch cb0[10].y

#line 216
    case l(0)

#line 218
    mov r0.w, cb0[10].z  // r0.w <- numericSwitch_3959844037
    break   // r0.w <- result_3176519653

#line 219
    case l(1)

#line 221
    break 

#line 222
    default 

#line 224
    break 

#line 225
  endswitch   // r0.w <- numericSwitch_3959844037

#line 226
  mul r0.w, r0.w, l(0.500000)  // r0.w <- result_3638920519

#line 228
  mad r3.xyz, r2.xyzx, r0.wwww, r1.xyzx  // r3.x <- result_4275707880.x; r3.y <- result_4275707880.y; r3.z <- result_4275707880.z

#line 230
  mov r3.w, l(1.000000)
  dp4 r1.w, r3.xyzw, cb0[12].xyzw  // r1.w <- mul_2_1341085824.x

#line 232
  add r1.w, r1.w, l(0.500000)  // r1.w <- result_2_226465574.x

#line 233
  sample_l_indexable(texture1d)(float,float,float,float) r3.xyz, r1.w, t0.xyzw, s1, l(0.000000)  // r3.x <- textureNode_2_3686992883.x; r3.y <- textureNode_2_3686992883.y; r3.z <- textureNode_2_3686992883.z

#line 235
  dp3 r4.x, r3.xyzx, cb0[16].xyzx  // r4.x <- mul_2_2249702037.x
  dp3 r4.y, r3.xyzx, cb0[17].xyzx  // r4.y <- mul_2_2249702037.y
  dp3 r4.z, r3.xyzx, cb0[18].xyzx  // r4.z <- mul_2_2249702037.z

#line 236
  mul r3.xyz, r4.xyzx, cb0[10].xxxx  // r3.x <- result_2_975865680.x; r3.y <- result_2_975865680.y; r3.z <- result_2_975865680.z

#line 237
  div r3.xyz, r3.xyzx, r0.zzzz  // r3.x <- result_684534461.x; r3.y <- result_684534461.y; r3.z <- result_684534461.z

#line 238
  add r2.xyz, r2.xyzx, r3.xyzx  // r2.x <- result_631811966.x; r2.y <- result_631811966.y; r2.z <- result_631811966.z

#line 241
  mad r1.xyz, r2.xyzx, r0.wwww, r1.xyzx  // r1.x <- result_2029474668.x; r1.y <- result_2029474668.y; r1.z <- result_2029474668.z

#line 243
  lt r0.z, l(0.000000), r0.x  // r0.z <- Assign_24080986

#line 244
  ge r0.w, r0.y, r0.x  // r0.w <- Assign_4078663286

#line 245
  and r0.z, r0.w, r0.z  // r0.z <- result_3894186768

#line 246
  add r0.x, r0.x, cb0[20].x  // r0.x <- result_3478848721

#line 247
  and r0.x, r0.x, r0.z  // r0.x <- expression_2496360979

#line 249
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.w, r0.z
  mul r3.xyz, r0.wwww, r2.yzxy  // r3.x <- normalize_1574171915.y; r3.y <- normalize_1574171915.z; r3.z <- normalize_1574171915.x

#line 250
  mul r4.xyz, r3.yzxy, l(1.000000, 0.000000, 0.000000, 0.000000)
  mad r4.xyz, r3.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000), -r4.xyzx  // r4.x <- cross_1156953529.x; r4.y <- cross_1156953529.y; r4.z <- cross_1156953529.z

#line 251
  dp2 r0.w, r4.xzxx, r4.xzxx  // r0.w <- dot_3800371539

#line 252
  lt r4.w, r0.w, l(0.000010)  // r4.w <- Assign_943206676

#line 253
  rsq r0.w, r0.w
  mul r4.xyz, r0.wwww, r4.xyzx  // r4.x <- normalize_3649514105.x; r4.y <- normalize_3649514105.y; r4.z <- normalize_3649514105.z

#line 254
  movc r4.xyz, r4.wwww, l(1.000000,0,0,0), r4.xyzx  // r4.x <- expression_3288962285.x; r4.y <- expression_3288962285.y; r4.z <- expression_3288962285.z

#line 257
  mul r5.xyz, r3.xyzx, r4.zxyz
  mad r5.xyz, r4.yzxy, r3.yzxy, -r5.xyzx  // r5.x <- cross_2451843228.x; r5.y <- cross_2451843228.y; r5.z <- cross_2451843228.z

#line 260
  mov r1.w, l(1.000000)
  dp4 r6.x, r1.xyzw, cb0[21].xyzw  // r6.x <- mul_2703289878.x
  dp4 r6.y, r1.xyzw, cb0[22].xyzw  // r6.y <- mul_2703289878.y
  dp4 r6.z, r1.xyzw, cb0[23].xyzw  // r6.z <- mul_2703289878.z

#line 262
  add r6.xyz, r6.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r6.x <- result_1116403132.x; r6.y <- result_1116403132.y; r6.z <- result_1116403132.z

#line 263
  sample_l_indexable(texture3d)(float,float,float,float) r6.xyzw, r6.xyzx, t1.xyzw, s2, l(0.000000)  // r6.x <- textureNode_163187453.x; r6.y <- textureNode_163187453.y; r6.z <- textureNode_163187453.z; r6.w <- textureNode_163187453.w

#line 264
  dp4 r0.w, r6.xyzw, r6.xyzw  // r0.w <- result_3078259009
  sqrt r5.w, r0.w  // r5.w <- length_4075610147

#line 265
  mul_sat r6.x, r5.w, cb0[25].x  // r6.x <- saturate_1817182026

#line 167
  add r6.y, -cb0[25].y, cb0[25].z  // r6.y <- range

#line 168
  add r6.x, r6.x, -cb0[25].y
  div r6.x, r6.x, r6.y  // r6.x <- normalized

#line 169
  add r6.y, -cb0[25].w, cb0[26].x
  mad r6.x, r6.x, r6.y, cb0[25].w  // r6.x <- <map_id16 return value>

#line 269
  dp4 r7.x, r1.xyzw, cb0[27].xyzw  // r7.x <- mul_1533991091.x
  dp4 r7.y, r1.xyzw, cb0[28].xyzw  // r7.y <- mul_1533991091.y
  dp4 r7.z, r1.xyzw, cb0[29].xyzw  // r7.z <- mul_1533991091.z

#line 271
  add r6.yzw, r7.xxyz, l(0.000000, 0.500000, 0.500000, 0.500000)  // r6.y <- result_3006956111.x; r6.z <- result_3006956111.y; r6.w <- result_3006956111.z

#line 272
  sample_l_indexable(texture3d)(float,float,float,float) r7.xyzw, r6.yzwy, t2.xyzw, s3, l(0.000000)  // r7.x <- textureNode_2855179728.x; r7.y <- textureNode_2855179728.y; r7.z <- textureNode_2855179728.z; r7.w <- textureNode_2855179728.w

#line 273
  dp4 r6.y, r7.xyzw, r7.xyzw
  sqrt r6.y, r6.y  // r6.y <- length_1238601441

#line 157
  add r6.z, -cb0[31].y, cb0[31].z  // r6.z <- range

#line 158
  mad r6.w, r6.y, cb0[31].x, -cb0[31].y
  div r6.z, r6.w, r6.z  // r6.z <- normalized

#line 159
  add r6.w, -cb0[31].w, cb0[32].x
  mad r6.z, r6.z, r6.w, cb0[31].w  // r6.z <- output

#line 160
  min r6.w, cb0[31].w, cb0[32].x  // r6.w <- minV

#line 161
  max r7.x, cb0[31].w, cb0[32].x  // r7.x <- maxV

#line 162
  max r6.z, r6.w, r6.z
  min r6.z, r7.x, r6.z  // r6.z <- output

#line 277
  dp4 r7.x, r1.xyzw, cb0[33].xyzw  // r7.x <- mul_3402475513.x
  dp4 r7.y, r1.xyzw, cb0[34].xyzw  // r7.y <- mul_3402475513.y
  dp4 r7.z, r1.xyzw, cb0[35].xyzw  // r7.z <- mul_3402475513.z

#line 279
  add r7.xyz, r7.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r7.x <- result_4081769685.x; r7.y <- result_4081769685.y; r7.z <- result_4081769685.z

#line 280
  sample_l_indexable(texture3d)(float,float,float,float) r7.xyzw, r7.xyzx, t3.xyzw, s4, l(0.000000)  // r7.x <- textureNode_4158959786.x; r7.y <- textureNode_4158959786.y; r7.z <- textureNode_4158959786.z; r7.w <- textureNode_4158959786.w

#line 281
  dp4 r1.w, r7.xyzw, r7.xyzw
  sqrt r1.w, r1.w  // r1.w <- length_1577170341

#line 282
  mul r1.w, r1.w, r6.y  // r1.w <- result_3070338228

#line 284
  mad_sat r1.w, r1.w, cb0[37].x, cb0[37].y  // r1.w <- saturate_4021787249

#line 157
  add r6.y, -cb0[37].z, cb0[37].w  // r6.y <- range

#line 158
  add r1.w, r1.w, -cb0[37].z
  div r1.w, r1.w, r6.y  // r1.w <- normalized

#line 159
  add r6.y, -cb0[38].x, cb0[38].y
  mad r1.w, r1.w, r6.y, cb0[38].x  // r1.w <- output

#line 160
  min r6.y, cb0[38].y, cb0[38].x  // r6.y <- minV

#line 161
  max r6.w, cb0[38].y, cb0[38].x  // r6.w <- maxV

#line 162
  max r1.w, r1.w, r6.y
  min r1.w, r6.w, r1.w  // r1.w <- output

#line 131
  frc r6.x, r6.x  // r6.x <- H

#line 134
  mad r6.xyw, r6.xxxx, l(6.000000, 6.000000, 0.000000, 6.000000), l(-3.000000, -2.000000, 0.000000, -4.000000)

#line 135
  mad_sat r6.xyw, |r6.xyxw|, l(1.000000, -1.000000, 0.000000, -1.000000), l(-1.000000, 2.000000, 0.000000, 2.000000)  // r6.x <- <HUEtoRGB_id5 return value>.x; r6.y <- <HUEtoRGB_id5 return value>.y; r6.w <- <HUEtoRGB_id5 return value>.z

#line 151
  mul r7.xyz, r6.xywx, r6.xywx
  mad r6.xyw, -r6.xyxw, l(2.000000, 2.000000, 0.000000, 2.000000), l(3.000000, 3.000000, 0.000000, 3.000000)

#line 152
  mad r7.w, r1.w, l(2.000000), l(-1.000000)
  add r7.w, -|r7.w|, l(1.000000)
  mul r6.z, r6.z, r7.w  // r6.z <- C

#line 153
  mad r6.xyw, r7.xyxz, r6.xyxw, l(-0.500000, -0.500000, 0.000000, -0.500000)
  mad r6.xyz, r6.xywx, r6.zzzz, r1.wwww  // r6.x <- <HSLtoRGB_smooth_id21 return value>.x; r6.y <- <HSLtoRGB_smooth_id21 return value>.y; r6.z <- <HSLtoRGB_smooth_id21 return value>.z

#line 294
  mad_sat r0.w, r0.w, cb0[38].w, cb0[39].x  // r0.w <- saturate_3360737052

#line 157
  add r1.w, -cb0[39].y, cb0[39].z  // r1.w <- range

#line 158
  add r0.w, r0.w, -cb0[39].y
  div r0.w, r0.w, r1.w  // r0.w <- normalized

#line 159
  add r1.w, -cb0[39].w, cb0[40].x
  mad r0.w, r0.w, r1.w, cb0[39].w  // r0.w <- output

#line 160
  min r1.w, cb0[39].w, cb0[40].x  // r1.w <- minV

#line 161
  max r7.x, cb0[39].w, cb0[40].x  // r7.x <- maxV

#line 162
  max r0.w, r0.w, r1.w
  min r7.x, r7.x, r0.w  // r7.x <- output

#line 157
  add r0.w, -cb0[40].z, cb0[40].w  // r0.w <- range

#line 158
  mad r1.w, r5.w, cb0[40].y, -cb0[40].z
  div r0.w, r1.w, r0.w  // r0.w <- normalized

#line 159
  add r1.w, -cb0[41].x, cb0[41].y
  mad r0.w, r0.w, r1.w, cb0[41].x  // r0.w <- output

#line 160
  min r1.w, cb0[41].y, cb0[41].x  // r1.w <- minV

#line 161
  max r7.w, cb0[41].y, cb0[41].x  // r7.w <- maxV

#line 162
  max r0.w, r0.w, r1.w
  min r0.w, r7.w, r0.w  // r0.w <- output

#line 300
  mul_sat r1.w, r5.w, cb0[41].z  // r1.w <- saturate_1481345448

#line 157
  add r5.w, -cb0[41].w, cb0[42].x  // r5.w <- range

#line 158
  add r1.w, r1.w, -cb0[41].w
  div r1.w, r1.w, r5.w  // r1.w <- normalized

#line 159
  add r5.w, -cb0[42].y, cb0[42].z
  mad r1.w, r1.w, r5.w, cb0[42].y  // r1.w <- output

#line 160
  min r5.w, cb0[42].z, cb0[42].y  // r5.w <- minV

#line 161
  max r7.w, cb0[42].z, cb0[42].y

#line 162
  max r1.w, r1.w, r5.w
  min r1.w, r7.w, r1.w  // r1.w <- output

#line 303
  add r1.w, r1.w, cb0[42].w  // r1.w <- result_3296918969

#line 308
  div r1.w, r1.w, cb0[43].x  // r1.w <- result_4063967057

#line 309
  mul r1.w, r1.w, l(6.283185)  // r1.w <- result_1415966503

#line 310
  sincos r8.x, r9.x, r1.w  // r8.x <- sin_911735339; r9.x <- cos_3698647168

#line 315
  mov r8.z, r8.x
  mov r8.y, r9.x
  mul r8.xy, r0.wwww, r8.yzyy  // r8.x <- result_234683059.y; r8.y <- result_234683059.x

#line 317
  div r8.xy, r8.xyxx, cb0[43].yyyy
  mul r7.yz, r8.xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)  // r7.y <- result_3849602047.y; r7.z <- result_3849602047.x

#line 140
  dp3 r8.x, r7.xyzx, l(1.000000, 0.396338, 0.215804, 0.000000)  // r8.x <- lms.x
  dp3 r8.y, r7.xyzx, l(1.000000, -0.105561, -0.063854, 0.000000)  // r8.y <- lms.y
  dp3 r8.z, r7.xyzx, l(1.000000, -0.089484, -1.291486, 0.000000)  // r8.z <- lms.z

#line 142
  mul r7.xyz, r8.xyzx, r8.xyzx
  mul r7.xyz, r8.xyzx, r7.xyzx
  dp3 r8.x, r7.xyzx, l(4.076725, -3.307217, 0.230759, 0.000000)  // r8.x <- <OKLabToRGB_id23 return value>.x
  dp3 r8.y, r7.xyzx, l(-1.268144, 2.609332, -0.341134, 0.000000)  // r8.y <- <OKLabToRGB_id23 return value>.y
  dp3 r8.z, r7.xyzx, l(-0.004112, -0.703476, 1.706863, 0.000000)  // r8.z <- <OKLabToRGB_id23 return value>.z

#line 325
  mov r6.w, cb0[38].z
  mov r8.w, l(1.000000)
  add r7.xyzw, -r6.xyzw, r8.xyzw
  mad r6.xyzw, cb0[43].zzzz, r7.xyzw, r6.xyzw  // r6.x <- lerp_3038437069.x; r6.y <- lerp_3038437069.y; r6.z <- lerp_3038437069.z; r6.w <- lerp_3038437069.w

#line 326
  mul r6.xyzw, r6.xyzw, cb0[43].wwww  // r6.x <- result_2182240072.x; r6.y <- result_2182240072.y; r6.z <- result_2182240072.z; r6.w <- result_2182240072.w

#line 328
  div_sat r0.y, r0.x, r0.y  // r0.y <- saturate_1887875297

#line 158
  div_sat r0.w, r0.y, cb0[44].x  // r0.w <- output

#line 157
  add r1.w, cb0[44].y, l(-1.000000)  // r1.w <- range

#line 158
  add r0.y, r0.y, l(-1.000000)
  div_sat r0.y, r0.y, r1.w  // r0.y <- output

#line 332
  min r0.y, r0.y, r0.w  // r0.y <- min_2185411288

#line 333
  add r7.xyz, -r1.xyzx, cb0[46].xyzx
  dp3 r0.w, r7.xyzx, r7.xyzx

#line 339
  sqrt r0.zw, r0.zzzw  // r0.w <- distance_2415509112; r0.z <- length_1022335614

#line 334
  add r1.w, -cb0[45].x, cb0[45].y
  add r0.w, r0.w, -cb0[45].x
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
  mul_sat r0.w, r0.w, r1.w
  mad r1.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, r1.w  // r0.w <- smoothstep_1585323637

#line 335
  add r1.w, -cb0[44].z, cb0[44].w
  mad r0.w, r0.w, r1.w, cb0[44].z  // r0.w <- lerp_2320811104

#line 337
  add r1.w, -cb0[46].w, cb0[47].x
  add r5.w, r1.z, -cb0[46].w
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
  mul_sat r1.w, r1.w, r5.w
  mad r5.w, r1.w, l(-2.000000), l(3.000000)
  mul r1.w, r1.w, r1.w

#line 338
  mad r1.w, -r5.w, r1.w, l(1.000000)  // r1.w <- result_2883507347

#line 340
  mul r0.z, r0.z, cb0[47].y  // r0.z <- result_862319903

#line 341
  max r0.z, r0.z, cb0[47].z
  min r0.z, r0.z, cb0[47].w  // r0.z <- clamp_153354414

#line 342
  mul r0.y, r0.w, r0.y
  mul r0.y, r1.w, r0.y
  mul r0.y, r0.z, r0.y  // r0.y <- result_1345839498

#line 343
  mul r0.y, r0.y, cb0[48].x  // r0.y <- result_2975329979

#line 345
  add r0.z, -cb0[48].y, cb0[48].z

#line 349
  add r7.xy, r1.zxzz, -cb0[48].ywyy

#line 345
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r7.x
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 346
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_3072832327

#line 347
  mul r0.y, r0.z, r0.y  // r0.y <- result_2757071385

#line 349
  add r0.z, -cb0[48].w, cb0[49].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r7.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 350
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_4173917605

#line 351
  add r0.w, -cb0[49].y, cb0[49].z

#line 356
  add r7.xy, r1.xyxx, -cb0[49].ywyy

#line 351
  div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
  mul_sat r0.w, r0.w, r7.x
  mad r1.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w

#line 352
  mad r0.w, -r1.w, r0.w, l(1.000000)  // r0.w <- result_3551675522

#line 353
  mul r0.z, r0.w, r0.z  // r0.z <- result_3593816453

#line 354
  mul r0.y, r0.z, r0.y  // r0.y <- result_677430697

#line 356
  add r0.z, -cb0[49].w, cb0[50].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r7.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 357
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_3670480286

#line 358
  add r0.w, -cb0[50].y, cb0[50].z
  add r1.w, r1.y, -cb0[50].y
  div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
  mul_sat r0.w, r0.w, r1.w
  mad r1.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w

#line 359
  mad r0.w, -r1.w, r0.w, l(1.000000)  // r0.w <- result_2005526145

#line 360
  mul r0.z, r0.w, r0.z  // r0.z <- result_2185281037

#line 361
  mul r2.w, r0.z, r0.y  // r2.w <- result_2086181959

#line 365
  max r0.yzw, r1.xxyz, cb0[51].xxyz
  min r0.yzw, r0.yyzw, cb0[52].xxyz  // r0.y <- clamp_1022294621.x; r0.z <- clamp_1022294621.y; r0.w <- clamp_1022294621.z

#line 367
  movc r1.xyz, cb0[52].wwww, r0.yzwy, r1.xyzx  // r1.x <- pposition_3960716716.x; r1.y <- pposition_3960716716.y; r1.z <- pposition_3960716716.z

#line 376
  store_structured u0.x, vThreadID.x, l(0), r0.x
  mov r1.w, r2.x
  store_structured u0.xyzw, vThreadID.x, l(12), r1.xyzw
  store_structured u0.xyz, vThreadID.x, l(28), r2.yzwy
  store_structured u0.xyzw, vThreadID.x, l(44), r6.xyzw
  mov r4.w, r3.z
  store_structured u0.xyzw, vThreadID.x, l(76), r4.xyzw
  mov r3.zw, r5.xxxy
  store_structured u0.xyzw, vThreadID.x, l(92), r3.xyzw
  store_structured u0.x, vThreadID.x, l(108), r5.z
endif 

#line 402
ret 
// Approximately 252 instruction slots used
***************************
*************************/
static const float PI_id14 = 3.1415926535897;
struct CS_STREAMS 
{
    uint3 GroupId_id0;
    uint3 DispatchThreadId_id1;
    int ThreadCountX_id7;
    int ThreadCountY_id8;
    int ThreadCountZ_id9;
    uint ThreadCountPerGroup_id5;
    uint3 ThreadGroupCount_id4;
    uint ThreadGroupIndex_id6;
};
struct CS_INPUT 
{
    uint3 GroupId_id0 : SV_GroupID;
    uint3 DispatchThreadId_id1 : SV_DispatchThreadID;
};
struct Resource41270715 
{
    float Age;
    float LifeTime;
    int Id;
    float3 PPosition;
    float3 Velocity;
    float Size;
    float Mass;
    float4 PColor;
    int Cycle;
    float3 PLastPosition;
    float3 AxisX;
    float3 AxisY;
    float3 AxisZ;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int input_1067223776_id33;
    float input_414949164_id34;
    float3 input_3978116912_id35;
    float4x4 input_2270905566_id36;
    float4x4 input_3589571716_id37;
    float input_4182566138_id38;
    int input_2521338413_id39;
    float input_549255203_id40;
    float input_1439714211_id41;
    float input_2639425994_id42;
    float input_680229214_id43;
    float4x4 input_2_2270905566_id44;
    float4x4 input_2_3589571716_id45;
    float input_2104023961_id46;
    float4x4 input_2002269468_id47;
    float input_2706649897_id48;
    float input_3946938824_id49;
    float input_4122493167_id50;
    float input_1706087998_id51;
    float input_355239877_id52;
    float4x4 input_143464447_id53;
    float input_4228705964_id54;
    float input_1824390269_id55;
    float input_3019906543_id56;
    float input_1141140613_id57;
    float input_2346509339_id58;
    float4x4 input_2805697509_id59;
    float input_1164889030_id60;
    float input_3874002053_id61;
    float input_2038054552_id62;
    float input_1987684313_id63;
    float input_1357817973_id64;
    float input_4007967435_id65;
    float input_3120343483_id66;
    float input_3535115215_id67;
    float input_695841267_id68;
    float input_1008064003_id69;
    float input_3700879862_id70;
    float input_604386247_id71;
    float input_193934842_id72;
    float input_3329313432_id73;
    float input_1451664569_id74;
    float input_509500895_id75;
    float input_2180229162_id76;
    float input_4098193511_id77;
    float input_2262484760_id78;
    float input_3385045261_id79;
    float input_3683262863_id80;
    float input_3772323133_id81;
    float input_2263168456_id82;
    float input_331533052_id83;
    float input_1083042877_id84;
    float input_4186378469_id85;
    float input_1014718271_id86;
    float input_933104051_id87;
    float input_2001762637_id88;
    float input_3651455082_id89;
    float input_3170358738_id90;
    float input_2739775380_id91;
    float input_2080889478_id92;
    float input_313365650_id93;
    float3 input_3684474273_id94;
    float input_3129090577_id95;
    float input_1985879382_id96;
    float input_3971464655_id97;
    float input_2067352129_id98;
    float input_3412309918_id99;
    float input_194834079_id100;
    float input_896789008_id101;
    float input_2934057289_id102;
    float input_2287782403_id103;
    float input_2303944410_id104;
    float input_2865710374_id105;
    float input_4131403277_id106;
    float input_3651171392_id107;
    float input_4197071625_id108;
    float input_2059121621_id109;
    float input_2471692652_id110;
    float3 input_786684384_id111;
    float3 input_2467882504_id112;
    bool input_1327967329_id113;
};
RWStructuredBuffer<Resource41270715> DynamicBufferInput_4252052980_id23;
Texture1D TextureInput_383085057_id24;
SamplerState SamplerInput_2924552678_id25;
SamplerState SamplerInput_2_2924552678_id26;
Texture3D<float4> TextureInput_3601353252_id27;
SamplerState SamplerInput_494671780_id28;
Texture3D<float4> TextureInput_2118481169_id29;
SamplerState SamplerInput_1323902017_id30;
Texture3D<float4> TextureInput_3959990167_id31;
SamplerState SamplerInput_3411142183_id32;
float3 HUEtoRGB_id5(float H)
{
    H = frac(H);
    float R = abs(H * 6 - 3) - 1;
    float G = 2 - abs(H * 6 - 2);
    float B = 2 - abs(H * 6 - 4);
    return saturate(float3(R, G, B));
}
float3 OKLabToRGB_id23(float3 okLab)
{
    const float3x3 ToLMS = float3x3(1.0, 1.0, 1.0, 0.3963377774, -0.1055613458, -0.0894841775, 0.2158037573, -0.0638541728, -1.2914855480);
    float3 lms = mul(okLab, ToLMS);
    const float3x3 kLMStoCONE = float3x3(4.0767245293, -1.2681437731, -0.0041119885, -3.3072168827, 2.6093323231, -0.7034763098, 0.2307590544, -0.3411344290, 1.7068625689);
    return mul((lms * lms * lms), kLMStoCONE);
}
float2 cast21_id22(float p)
{
    return p.xx;
}
float3 HSLtoRGB_smooth_id21(float3 HSL)
{
    float3 RGB = HUEtoRGB_id5(HSL.x);
    RGB = RGB * RGB * (3.0 - 2.0 * RGB);
    float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
    return (RGB - 0.5) * C + HSL.z;
}
float mapClamp_id17(float input, float InMin, float InMax, float OutMin, float OutMax)
{
    float range = InMax - InMin;
    float normalized = (input - InMin) / range;
    float output = OutMin + normalized * (OutMax - OutMin);
    float minV = min(OutMin, OutMax);
    float maxV = max(OutMin, OutMax);
    output = min(max(output, minV), maxV);
    return output;
}
float map_id16(float input, float InMin, float InMax, float OutMin, float OutMax)
{
    float range = InMax - InMin;
    float normalized = (input - InMin) / range;
    return OutMin + normalized * (OutMax - OutMin);
}
void Compute_id4(inout CS_STREAMS streams)
{
    bool Assign_693619862 = streams.DispatchThreadId_id1.x >= input_1067223776_id33;
    if (Assign_693619862)
    {
        return;
    }
    int IndexX_2632966837 = streams.DispatchThreadId_id1.x;
    Resource41270715 getBuffer_3291917120 = DynamicBufferInput_4252052980_id23[IndexX_2632966837];
    float3 velocity_3619452298 = getBuffer_3291917120.Velocity;
    float3 pposition_3960716716 = getBuffer_3291917120.PPosition;
    float mass_4288251894 = getBuffer_3291917120.Mass;
    float age_393991784 = getBuffer_3291917120.Age;
    float lifetime_2794962745 = getBuffer_3291917120.LifeTime;
    float3 axisx_3368298683 = getBuffer_3291917120.AxisX;
    float3 axisy_891911997 = getBuffer_3291917120.AxisY;
    float3 axisz_1465247935 = getBuffer_3291917120.AxisZ;
    float4 pcolor_2463125313 = getBuffer_3291917120.PColor;
    float size_2211841000 = getBuffer_3291917120.Size;
    float deltatime_727159341 = 0;
    deltatime_727159341 = input_414949164_id34;
    int3 index_1907961960 = int3(0, 0, 0);
    index_1907961960 = streams.DispatchThreadId_id1;
    float3 resourcescale_92059831 = float3(0, 0, 0);
    resourcescale_92059831 = input_3978116912_id35;
    float4 join_134697907 = float4(pposition_3960716716, 1);
    float4 mul_1341085824 = mul(join_134697907, input_2270905566_id36);
    float3 mulXyz_1089071201 = mul_1341085824.xyz;
    float3 result_226465574 = (mulXyz_1089071201 + float3(0.5, 0.5, 0.5));
    float4 textureNode_3686992883 = TextureInput_383085057_id24.SampleLevel(SamplerInput_2924552678_id25, result_226465574, 0);
    float3 textureNodeXyz_1187738550 = textureNode_3686992883.xyz;
    float3 mul_2249702037 = mul(textureNodeXyz_1187738550, input_3589571716_id37);
    float3 result_975865680 = (mul_2249702037 * input_4182566138_id38);
    float3 result_505103462 = (result_975865680 / mass_4288251894);
    velocity_3619452298 = result_505103462;
    float result_3746892432 = (age_393991784 / lifetime_2794962745);
    float saturate_4065685935 = saturate(result_3746892432);
    float result_4149870993 = (1 - saturate_4065685935);
    float fromFloat_497067174 = result_4149870993;
    float lerp_1677598148 = lerp(input_2639425994_id42, input_680229214_id43, fromFloat_497067174);
    float result_3176519653 = (input_1439714211_id41 * lerp_1677598148);
    float numericSwitch_3959844037;
    switch (input_2521338413_id39)

    {
        case 0:
            numericSwitch_3959844037 = input_549255203_id40;
            break;
        case 1:
            numericSwitch_3959844037 = result_3176519653;
            break;
        default:
            numericSwitch_3959844037 = result_3176519653;
            break;
    }
    float result_3638920519 = (numericSwitch_3959844037 * 0.5);
    float3 result_649471999 = (velocity_3619452298 * result_3638920519);
    float3 result_4275707880 = (pposition_3960716716 + result_649471999);
    float4 join_2_134697907 = float4(result_4275707880, 1);
    float4 mul_2_1341085824 = mul(join_2_134697907, input_2_2270905566_id44);
    float3 mulXyz_2_1089071201 = mul_2_1341085824.xyz;
    float3 result_2_226465574 = (mulXyz_2_1089071201 + float3(0.5, 0.5, 0.5));
    float4 textureNode_2_3686992883 = TextureInput_383085057_id24.SampleLevel(SamplerInput_2_2924552678_id26, result_2_226465574, 0);
    float3 textureNodeXyz_2_1187738550 = textureNode_2_3686992883.xyz;
    float3 mul_2_2249702037 = mul(textureNodeXyz_2_1187738550, input_2_3589571716_id45);
    float3 result_2_975865680 = (mul_2_2249702037 * input_4182566138_id38);
    float3 result_684534461 = (result_2_975865680 / mass_4288251894);
    float3 result_631811966 = (result_505103462 + result_684534461);
    velocity_3619452298 = result_631811966;
    float3 result_3790337934 = (result_631811966 * result_3638920519);
    float3 result_2029474668 = (pposition_3960716716 + result_3790337934);
    pposition_3960716716 = result_2029474668;
    bool Assign_24080986 = age_393991784 > 0;
    bool Assign_4078663286 = age_393991784 <= lifetime_2794962745;
    bool result_3894186768 = (Assign_24080986 && Assign_4078663286);
    float result_3478848721 = (age_393991784 + input_2104023961_id46);
    float expression_2496360979 = result_3894186768 ? result_3478848721 : 0;
    age_393991784 = expression_2496360979;
    float3 normalize_1574171915 = normalize(velocity_3619452298);
    float3 cross_1156953529 = cross(normalize_1574171915, float3(0, 1, 0));
    float dot_3800371539 = dot(cross_1156953529, cross_1156953529);
    bool Assign_943206676 = dot_3800371539 < 1E-05;
    float3 normalize_3649514105 = normalize(cross_1156953529);
    float3 expression_3288962285 = Assign_943206676 ? float3(1, 0, 0) : normalize_3649514105;
    axisx_3368298683 = expression_3288962285;
    axisy_891911997 = normalize_1574171915;
    float3 cross_2451843228 = cross(expression_3288962285, normalize_1574171915);
    axisz_1465247935 = cross_2451843228;
    float4 join_406795733 = float4(pposition_3960716716, 1);
    float4 mul_2703289878 = mul(join_406795733, input_2002269468_id47);
    float3 mulXyz_2907713771 = mul_2703289878.xyz;
    float3 result_1116403132 = (mulXyz_2907713771 + float3(0.5, 0.5, 0.5));
    float4 textureNode_163187453 = TextureInput_3601353252_id27.SampleLevel(SamplerInput_494671780_id28, result_1116403132, 0);
    float length_4075610147 = length(textureNode_163187453);
    float result_3024059504 = (length_4075610147 * input_2706649897_id48);
    float saturate_1817182026 = saturate(result_3024059504);
    float map_1102361371 = map_id16(saturate_1817182026, input_3946938824_id49, input_4122493167_id50, input_1706087998_id51, input_355239877_id52);
    float4 join_3499614456 = float4(pposition_3960716716, 1);
    float4 mul_1533991091 = mul(join_3499614456, input_143464447_id53);
    float3 mulXyz_275641742 = mul_1533991091.xyz;
    float3 result_3006956111 = (mulXyz_275641742 + float3(0.5, 0.5, 0.5));
    float4 textureNode_2855179728 = TextureInput_2118481169_id29.SampleLevel(SamplerInput_1323902017_id30, result_3006956111, 0);
    float length_1238601441 = length(textureNode_2855179728);
    float result_472606029 = (length_1238601441 * input_4228705964_id54);
    float mapClamp_739328694 = mapClamp_id17(result_472606029, input_1824390269_id55, input_3019906543_id56, input_1141140613_id57, input_2346509339_id58);
    float4 join_2481673106 = float4(pposition_3960716716, 1);
    float4 mul_3402475513 = mul(join_2481673106, input_2805697509_id59);
    float3 mulXyz_1649690152 = mul_3402475513.xyz;
    float3 result_4081769685 = (mulXyz_1649690152 + float3(0.5, 0.5, 0.5));
    float4 textureNode_4158959786 = TextureInput_3959990167_id31.SampleLevel(SamplerInput_3411142183_id32, result_4081769685, 0);
    float length_1577170341 = length(textureNode_4158959786);
    float result_3070338228 = (length_1238601441 * length_1577170341);
    float result_2628073141 = (result_3070338228 * input_1164889030_id60);
    float result_1262250531 = (result_2628073141 + input_3874002053_id61);
    float saturate_4021787249 = saturate(result_1262250531);
    float mapClamp_738783826 = mapClamp_id17(saturate_4021787249, input_2038054552_id62, input_1987684313_id63, input_1357817973_id64, input_4007967435_id65);
    float3 Float3Join_441426780 = float3(map_1102361371, mapClamp_739328694, mapClamp_738783826);
    float3 HSLtoRGB_smooth_2827203231 = HSLtoRGB_smooth_id21(Float3Join_441426780);
    float4 join_558515751 = float4(HSLtoRGB_smooth_2827203231, input_3120343483_id66);
    float length_4478987 = length(textureNode_163187453);
    float length_2776400631 = length(textureNode_163187453);
    float result_3078259009 = (length_4478987 * length_2776400631);
    float result_552518290 = (result_3078259009 * input_3535115215_id67);
    float result_677016998 = (result_552518290 + input_695841267_id68);
    float saturate_3360737052 = saturate(result_677016998);
    float mapClamp_2600489949 = mapClamp_id17(saturate_3360737052, input_1008064003_id69, input_3700879862_id70, input_604386247_id71, input_193934842_id72);
    float result_1405477346 = (length_4478987 * input_3329313432_id73);
    float mapClamp_238863055 = mapClamp_id17(result_1405477346, input_1451664569_id74, input_509500895_id75, input_2180229162_id76, input_4098193511_id77);
    float length_1154466824 = length(textureNode_163187453);
    float result_3797126935 = (length_1154466824 * input_2262484760_id78);
    float saturate_1481345448 = saturate(result_3797126935);
    float mapClamp_740827553 = mapClamp_id17(saturate_1481345448, input_3385045261_id79, input_3683262863_id80, input_3772323133_id81, input_2263168456_id82);
    float result_3296918969 = (mapClamp_740827553 + input_331533052_id83);
    float3 Float3Join_1445827659 = float3(mapClamp_2600489949, mapClamp_238863055, result_3296918969);
    float Float3JoinX_3672402134 = Float3Join_1445827659.x;
    float2 Float3JoinYz_465660408 = Float3Join_1445827659.yz;
    float Float3JoinYzY_118755062 = Float3JoinYz_465660408.y;
    float result_4063967057 = (Float3JoinYzY_118755062 / input_1083042877_id84);
    float result_1415966503 = (result_4063967057 * 6.2831855);
    float sin_911735339 = sin(result_1415966503);
    float cos_3698647168 = cos(result_1415966503);
    float2 float2Join_2090123238 = float2(sin_911735339, cos_3698647168);
    float Float3JoinYzX_3378727008 = Float3JoinYz_465660408.x;
    float2 cast21_4025989068 = cast21_id22(Float3JoinYzX_3378727008);
    float2 result_234683059 = (float2Join_2090123238 * cast21_4025989068);
    float2 cast21_174568118 = cast21_id22(input_4186378469_id85);
    float2 result_3849602047 = (result_234683059 / cast21_174568118 / float2(2, 2));
    float2 result_2580977631 = (result_3849602047 + float2(0, 0));
    float resultY_492073438 = result_2580977631.y;
    float resultX_1918910114 = result_2580977631.x;
    float3 Float3Join_3866231050 = float3(Float3JoinX_3672402134, resultY_492073438, resultX_1918910114);
    float3 OKLabToRGB_3332195328 = OKLabToRGB_id23(Float3Join_3866231050);
    float4 join_3612601917 = float4(OKLabToRGB_3332195328, 1);
    float4 fromFloat_1091701403 = float4(input_1014718271_id86, input_1014718271_id86, input_1014718271_id86, input_1014718271_id86);
    float4 lerp_3038437069 = lerp(join_558515751, join_3612601917, fromFloat_1091701403);
    float4 result_2182240072 = (lerp_3038437069 * input_933104051_id87);
    pcolor_2463125313 = result_2182240072;
    float result_3110878102 = (age_393991784 / lifetime_2794962745);
    float saturate_1887875297 = saturate(result_3110878102);
    float mapClamp_3534504353 = mapClamp_id17(saturate_1887875297, 0, input_2001762637_id88, 0, 1);
    float mapClamp_1090215353 = mapClamp_id17(saturate_1887875297, 1, input_3651455082_id89, 0, 1);
    float min_2185411288 = min(mapClamp_3534504353, mapClamp_1090215353);
    float distance_2415509112 = distance(input_3684474273_id94, pposition_3960716716);
    float smoothstep_1585323637 = smoothstep(input_2080889478_id92, input_313365650_id93, distance_2415509112);
    float lerp_2320811104 = lerp(input_3170358738_id90, input_2739775380_id91, smoothstep_1585323637);
    float PPositionZ_2529317754 = pposition_3960716716.z;
    float smoothstep_3995040729 = smoothstep(input_3129090577_id95, input_1985879382_id96, PPositionZ_2529317754);
    float result_2883507347 = (1 - smoothstep_3995040729);
    float length_1022335614 = length(velocity_3619452298);
    float result_862319903 = (length_1022335614 * input_3971464655_id97);
    float clamp_153354414 = clamp(result_862319903, input_2067352129_id98, input_3412309918_id99);
    float result_1345839498 = (min_2185411288 * lerp_2320811104 * result_2883507347 * clamp_153354414);
    float result_2975329979 = (result_1345839498 * input_194834079_id100);
    float PPositionZ_3952268049 = pposition_3960716716.z;
    float smoothstep_853790317 = smoothstep(input_896789008_id101, input_2934057289_id102, PPositionZ_3952268049);
    float result_3072832327 = (1 - smoothstep_853790317);
    float result_2757071385 = (result_2975329979 * result_3072832327);
    float PPositionX_3629539314 = pposition_3960716716.x;
    float smoothstep_4217678826 = smoothstep(input_2287782403_id103, input_2303944410_id104, PPositionX_3629539314);
    float result_4173917605 = (1 - smoothstep_4217678826);
    float smoothstep_3392568611 = smoothstep(input_2865710374_id105, input_4131403277_id106, PPositionX_3629539314);
    float result_3551675522 = (1 - smoothstep_3392568611);
    float result_3593816453 = (result_4173917605 * result_3551675522);
    float result_677430697 = (result_2757071385 * result_3593816453);
    float PPositionY_3974827369 = pposition_3960716716.y;
    float smoothstep_3634536779 = smoothstep(input_3651171392_id107, input_4197071625_id108, PPositionY_3974827369);
    float result_3670480286 = (1 - smoothstep_3634536779);
    float smoothstep_1119177518 = smoothstep(input_2059121621_id109, input_2471692652_id110, PPositionY_3974827369);
    float result_2005526145 = (1 - smoothstep_1119177518);
    float result_2185281037 = (result_3670480286 * result_2005526145);
    float result_2086181959 = (result_677430697 * result_2185281037);
    size_2211841000 = result_2086181959;
    if (input_1327967329_id113)
    {
        float3 clamp_1022294621 = clamp(pposition_3960716716, input_786684384_id111, input_2467882504_id112);
        pposition_3960716716 = clamp_1022294621;
    }
    getBuffer_3291917120.Velocity = velocity_3619452298;
    getBuffer_3291917120.PPosition = pposition_3960716716;
    getBuffer_3291917120.Age = age_393991784;
    getBuffer_3291917120.AxisX = axisx_3368298683;
    getBuffer_3291917120.AxisY = axisy_891911997;
    getBuffer_3291917120.AxisZ = axisz_1465247935;
    getBuffer_3291917120.PColor = pcolor_2463125313;
    getBuffer_3291917120.Size = size_2211841000;
    DynamicBufferInput_4252052980_id23[IndexX_2632966837] = getBuffer_3291917120;
}
void Compute_id3(inout CS_STREAMS streams)
{

    {
        Compute_id4(streams);
    }
}
void Compute_id2(inout CS_STREAMS streams)
{
    Compute_id3(streams);
}
[numthreads(64, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 64;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 64 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id2(streams);
}
