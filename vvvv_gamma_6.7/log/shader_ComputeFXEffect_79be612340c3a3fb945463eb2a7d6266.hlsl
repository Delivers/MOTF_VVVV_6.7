/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_924481093]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 624]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_1030675547_id30 => input_1030675547
@C    input_3168556898_id31 => input_3168556898
@C    input_1574259470_id32 => input_1574259470
@C    input_3617489012_id33 => input_3617489012
@C    input_1368172550_id34 => input_1368172550
@C    input_411767847_id35 => input_411767847
@C    input_4069183753_id36 => input_4069183753
@C    input_3907820748_id37 => input_3907820748
@C    input_2596737169_id38 => input_2596737169
@C    input_821440242_id39 => input_821440242
@C    input_1260677232_id40 => input_1260677232
@C    input_3239041847_id41 => input_3239041847
@C    input_1307768592_id42 => input_1307768592
@C    input_3033872009_id43 => input_3033872009
@C    input_4257435412_id44 => input_4257435412
@C    input_1430018449_id45 => input_1430018449
@C    input_1086565798_id46 => input_1086565798
@C    input_2023634853_id47 => input_2023634853
@C    input_119186703_id48 => input_119186703
@C    input_1920064018_id49 => input_1920064018
@C    input_2177664664_id50 => input_2177664664
@C    input_1656451012_id51 => input_1656451012
@C    input_3778683076_id52 => input_3778683076
@C    input_171934852_id53 => input_171934852
@C    input_548378882_id54 => input_548378882
@C    input_1166192054_id55 => input_1166192054
@C    input_2464415278_id56 => input_2464415278
@C    input_3472072997_id57 => input_3472072997
@C    input_88325331_id58 => input_88325331
@C    input_1893119325_id59 => input_1893119325
@C    input_4254276301_id60 => input_4254276301
@C    input_2010285143_id61 => input_2010285143
@C    input_1914689852_id62 => input_1914689852
@C    input_2980430503_id63 => input_2980430503
@C    input_3378516364_id64 => input_3378516364
@C    input_3658318844_id65 => input_3658318844
@C    input_1282247561_id66 => input_1282247561
@C    input_2603264578_id67 => input_2603264578
@C    input_2809497330_id68 => input_2809497330
@C    input_3050470600_id69 => input_3050470600
@C    input_559363704_id70 => input_559363704
@C    input_2764369847_id71 => input_2764369847
@C    input_314838089_id72 => input_314838089
@C    input_2430145573_id73 => input_2430145573
@C    input_2551475701_id74 => input_2551475701
@C    input_1675173823_id75 => input_1675173823
@C    input_3292542485_id76 => input_3292542485
@C    input_1451769128_id77 => input_1451769128
@C    input_562934234_id78 => input_562934234
@C    input_2843723714_id79 => input_2843723714
@C    input_1981144117_id80 => input_1981144117
@C    input_418933680_id81 => input_418933680
@C    input_1654446639_id82 => input_1654446639
@C    input_2862990986_id83 => input_2862990986
@C    input_4003750783_id84 => input_4003750783
@C    input_3611302061_id85 => input_3611302061
@C    input_97515315_id86 => input_97515315
@C    input_1315034226_id87 => input_1315034226
@C    input_2244240061_id88 => input_2244240061
@C    input_3373476760_id89 => input_3373476760
@C    input_3500955570_id90 => input_3500955570
@C    input_3568685434_id91 => input_3568685434
@C    input_2614695163_id92 => input_2614695163
@C    input_3808697832_id93 => input_3808697832
@C    input_127599732_id94 => input_127599732
@C    input_168639653_id95 => input_168639653
@C    input_1909278930_id96 => input_1909278930
@C    input_1845359490_id97 => input_1845359490
@C    input_2115448441_id98 => input_2115448441
@C    input_134942226_id99 => input_134942226
@C    input_1033764600_id100 => input_1033764600
@C    input_3891822111_id101 => input_3891822111
@C    input_3231612800_id102 => input_3231612800
@C    input_1083042877_id103 => input_1083042877
@C    input_4186378469_id104 => input_4186378469
@C    input_1758513264_id105 => input_1758513264
@C    input_1832830215_id106 => input_1832830215
@C    input_1102288849_id107 => input_1102288849
@C    input_3750869107_id108 => input_3750869107
@C    input_3727602044_id109 => input_3727602044
***************************
******  Resources    ******
***************************
@R    SamplerInput_1876793864_id25 => SamplerInput_1876793864 [Stage: Compute, Slot: (0-0)]
@R    SamplerInput_941011504_id27 => SamplerInput_941011504 [Stage: Compute, Slot: (1-1)]
@R    SamplerInput_3841528385_id29 => SamplerInput_3841528385 [Stage: Compute, Slot: (2-2)]
@R    TextureInput_2597306058_id24 => TextureInput_2597306058 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_2836784736_id26 => TextureInput_2836784736 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_89956305_id28 => TextureInput_89956305 [Stage: Compute, Slot: (2-2)]
@R    DynamicBufferInput_1282521623_id23 => DynamicBufferInput_1282521623 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_924481093 => e1021210dbed622666f44de57292c66f
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
@S    FuseCoreMathMap => a3c63d7e99620b0750ae90d499eee2ad
@S    FuseCoreMath => b5527ab1f8082f68a6dcc7c3959ee99a
@S    FuseCoreColor => 624cbdd22df76682ced5fac46493655a
***************************
*****     Stages      *****
***************************
@G    Compute => 1a079b9e0be304261b28c6611e9b77d0
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
//   int input_1030675547_id30;         // Offset:   12 Size:     4
//   float input_3168556898_id31;       // Offset:   16 Size:     4 [unused]
//   float3 input_1574259470_id32;      // Offset:   20 Size:    12 [unused]
//   float4x4 input_3617489012_id33;    // Offset:   32 Size:    64
//   float4x4 input_1368172550_id34;    // Offset:   96 Size:    64
//   float input_411767847_id35;        // Offset:  160 Size:     4
//   float input_4069183753_id36;       // Offset:  164 Size:     4
//   float input_3907820748_id37;       // Offset:  168 Size:     4
//   float3 input_2596737169_id38;      // Offset:  176 Size:    12
//   float input_821440242_id39;        // Offset:  188 Size:     4
//   float input_1260677232_id40;       // Offset:  192 Size:     4
//   float input_3239041847_id41;       // Offset:  196 Size:     4
//   float input_1307768592_id42;       // Offset:  200 Size:     4
//   float input_3033872009_id43;       // Offset:  204 Size:     4
//   float input_4257435412_id44;       // Offset:  208 Size:     4
//   float3 input_1430018449_id45;      // Offset:  212 Size:    12
//   float input_1086565798_id46;       // Offset:  224 Size:     4
//   float input_2023634853_id47;       // Offset:  228 Size:     4
//   float input_119186703_id48;        // Offset:  232 Size:     4
//   float input_1920064018_id49;       // Offset:  236 Size:     4
//   float input_2177664664_id50;       // Offset:  240 Size:     4
//   float input_1656451012_id51;       // Offset:  244 Size:     4
//   float input_3778683076_id52;       // Offset:  248 Size:     4
//   float input_171934852_id53;        // Offset:  252 Size:     4
//   float input_548378882_id54;        // Offset:  256 Size:     4
//   float input_1166192054_id55;       // Offset:  260 Size:     4
//   float input_2464415278_id56;       // Offset:  264 Size:     4
//   float input_3472072997_id57;       // Offset:  268 Size:     4
//   float input_88325331_id58;         // Offset:  272 Size:     4
//   float input_1893119325_id59;       // Offset:  276 Size:     4
//   float input_4254276301_id60;       // Offset:  280 Size:     4
//   float input_2010285143_id61;       // Offset:  284 Size:     4
//   float4x4 input_1914689852_id62;    // Offset:  288 Size:    64
//   float input_2980430503_id63;       // Offset:  352 Size:     4
//   float input_3378516364_id64;       // Offset:  356 Size:     4
//   float input_3658318844_id65;       // Offset:  360 Size:     4
//   float input_1282247561_id66;       // Offset:  364 Size:     4
//   float input_2603264578_id67;       // Offset:  368 Size:     4
//   float input_2809497330_id68;       // Offset:  372 Size:     4
//   float input_3050470600_id69;       // Offset:  376 Size:     4
//   float input_559363704_id70;        // Offset:  380 Size:     4
//   float input_2764369847_id71;       // Offset:  384 Size:     4
//   float input_314838089_id72;        // Offset:  388 Size:     4
//   float input_2430145573_id73;       // Offset:  392 Size:     4
//   float input_2551475701_id74;       // Offset:  396 Size:     4
//   float input_1675173823_id75;       // Offset:  400 Size:     4
//   float input_3292542485_id76;       // Offset:  404 Size:     4
//   float input_1451769128_id77;       // Offset:  408 Size:     4
//   float input_562934234_id78;        // Offset:  412 Size:     4
//   float input_2843723714_id79;       // Offset:  416 Size:     4
//   float input_1981144117_id80;       // Offset:  420 Size:     4
//   float input_418933680_id81;        // Offset:  424 Size:     4
//   float input_1654446639_id82;       // Offset:  428 Size:     4
//   float input_2862990986_id83;       // Offset:  432 Size:     4
//   float input_4003750783_id84;       // Offset:  436 Size:     4
//   float input_3611302061_id85;       // Offset:  440 Size:     4
//   float4x4 input_97515315_id86;      // Offset:  448 Size:    64
//   float input_1315034226_id87;       // Offset:  512 Size:     4
//   float input_2244240061_id88;       // Offset:  516 Size:     4
//   float input_3373476760_id89;       // Offset:  520 Size:     4
//   float input_3500955570_id90;       // Offset:  524 Size:     4
//   float input_3568685434_id91;       // Offset:  528 Size:     4
//   float input_2614695163_id92;       // Offset:  532 Size:     4
//   float input_3808697832_id93;       // Offset:  536 Size:     4
//   float input_127599732_id94;        // Offset:  540 Size:     4
//   float input_168639653_id95;        // Offset:  544 Size:     4
//   float input_1909278930_id96;       // Offset:  548 Size:     4
//   float input_1845359490_id97;       // Offset:  552 Size:     4
//   float input_2115448441_id98;       // Offset:  556 Size:     4
//   float input_134942226_id99;        // Offset:  560 Size:     4
//   float input_1033764600_id100;      // Offset:  564 Size:     4
//   float input_3891822111_id101;      // Offset:  568 Size:     4
//   float input_3231612800_id102;      // Offset:  572 Size:     4
//   float input_1083042877_id103;      // Offset:  576 Size:     4
//   float input_4186378469_id104;      // Offset:  580 Size:     4
//   float input_1758513264_id105;      // Offset:  584 Size:     4
//   float input_1832830215_id106;      // Offset:  588 Size:     4
//   float3 input_1102288849_id107;     // Offset:  592 Size:    12
//   float3 input_3750869107_id108;     // Offset:  608 Size:    12
//   bool input_3727602044_id109;       // Offset:  620 Size:     4
//
// }
//
// Resource bind info for DynamicBufferInput_1282521623_id23
// {
//
//   struct Resource1913110
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
//       float3 Target;                 // Offset:   64
//       float3 AxisX;                  // Offset:   76
//       float3 AxisY;                  // Offset:   88
//       float3 AxisZ;                  // Offset:  100
//       float3 Size3;                  // Offset:  112
//
//   } $Element;                        // Offset:    0 Size:   124
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// SamplerInput_1876793864_id25      sampler      NA          NA             s0      1 
// SamplerInput_941011504_id27       sampler      NA          NA             s1      1 
// SamplerInput_3841528385_id29      sampler      NA          NA             s2      1 
// TextureInput_2597306058_id24      texture  float4          1d             t0      1 
// TextureInput_2836784736_id26      texture  float4          3d             t1      1 
// TextureInput_89956305_id28        texture  float4          3d             t2      1 
// DynamicBufferInput_1282521623_id23        UAV  struct         r/w             u0      1 
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
dcl_constantbuffer CB0[39], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture1d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_resource_texture3d (float,float,float,float) t2
dcl_uav_structured u0, 124
dcl_input vThreadID.x
dcl_temps 10
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 168 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_79be612340c3a3fb945463eb2a7d6266.hlsl"
ult r0.x, vThreadID.x, cb0[0].w
if_nz r0.x

#line 169
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r0.xy, vThreadID.x, l(0), u0.xyxx  // r0.x <- getBuffer_3372248743.Age; r0.y <- getBuffer_3372248743.LifeTime
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r1.xyz, vThreadID.x, l(12), u0.xyzx  // r1.x <- getBuffer_3372248743.PPosition.x; r1.y <- getBuffer_3372248743.PPosition.y; r1.z <- getBuffer_3372248743.PPosition.z
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r0.z, vThreadID.x, l(40), u0.xxxx  // r0.z <- getBuffer_3372248743.Mass

#line 187
  mov r1.w, l(1.000000)
  dp4 r0.w, r1.xyzw, cb0[2].xyzw  // r0.w <- mul_1047838218.x

#line 189
  add r0.w, r0.w, l(0.500000)  // r0.w <- result_2032950884.x

#line 190
  sample_l_indexable(texture1d)(float,float,float,float) r2.xyz, r0.w, t0.xyzw, s0, l(0.000000)  // r2.x <- textureNode_3892032875.x; r2.y <- textureNode_3892032875.y; r2.z <- textureNode_3892032875.z

#line 192
  dp3 r3.z, r2.xyzx, cb0[6].xyzx  // r3.z <- mul_4083302565.x
  dp3 r3.x, r2.xyzx, cb0[7].xyzx  // r3.x <- mul_4083302565.y
  dp3 r3.y, r2.xyzx, cb0[8].xyzx  // r3.y <- mul_4083302565.z

#line 193
  mul r2.xyz, r3.xyzx, cb0[10].xxxx  // r2.x <- result_3622121882.y; r2.y <- result_3622121882.z; r2.z <- result_3622121882.x

#line 194
  div r2.xyz, r2.xyzx, r0.zzzz  // r2.x <- result_862517354.y; r2.y <- result_862517354.z; r2.z <- result_862517354.x

#line 197
  mad r1.xyz, r2.zxyz, cb0[10].yyyy, r1.xyzx  // r1.x <- result_3452829321.x; r1.y <- result_3452829321.y; r1.z <- result_3452829321.z

#line 199
  lt r0.z, l(0.000000), r0.x  // r0.z <- Assign_39551683

#line 200
  ge r0.w, r0.y, r0.x  // r0.w <- Assign_3538573769

#line 201
  and r0.z, r0.w, r0.z  // r0.z <- result_35285709

#line 202
  add r0.x, r0.x, cb0[10].z  // r0.x <- result_142541484

#line 203
  and r0.x, r0.x, r0.z  // r0.x <- expression_1996989226

#line 205
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.w, r0.z
  mul r3.xyz, r0.wwww, r2.xyzx  // r3.x <- normalize_315596598.y; r3.y <- normalize_315596598.z; r3.z <- normalize_315596598.x

#line 206
  mul r4.xyz, r3.yzxy, l(1.000000, 0.000000, 0.000000, 0.000000)
  mad r4.xyz, r3.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000), -r4.xyzx  // r4.x <- cross_1341516042.x; r4.y <- cross_1341516042.y; r4.z <- cross_1341516042.z

#line 207
  dp2 r0.w, r4.xzxx, r4.xzxx  // r0.w <- dot_3891966000

#line 208
  lt r2.w, r0.w, l(0.000010)  // r2.w <- Assign_3478948767

#line 209
  rsq r0.w, r0.w
  mul r4.xyz, r0.wwww, r4.xyzx  // r4.x <- normalize_4207755784.x; r4.y <- normalize_4207755784.y; r4.z <- normalize_4207755784.z

#line 210
  movc r4.xyz, r2.wwww, l(1.000000,0,0,0), r4.xyzx  // r4.x <- expression_1349660884.x; r4.y <- expression_1349660884.y; r4.z <- expression_1349660884.z

#line 213
  mul r5.xyz, r3.xyzx, r4.zxyz
  mad r5.xyz, r4.yzxy, r3.yzxy, -r5.xyzx  // r5.x <- cross_890729237.x; r5.y <- cross_890729237.y; r5.z <- cross_890729237.z

#line 215
  div_sat r0.y, r0.x, r0.y  // r0.y <- saturate_927394751

#line 154
  div_sat r0.w, r0.y, cb0[11].w  // r0.w <- output

#line 153
  add r2.w, cb0[12].x, l(-1.000000)  // r2.w <- range

#line 154
  add r5.w, r0.y, l(-1.000000)
  div_sat r2.w, r5.w, r2.w  // r2.w <- output

#line 219
  min r0.w, r0.w, r2.w  // r0.w <- min_2215362338

#line 220
  add r6.xyz, -r1.xyzx, cb0[13].yzwy
  dp3 r2.w, r6.xyzx, r6.xyzx
  sqrt r2.w, r2.w  // r2.w <- distance_3294430958

#line 221
  add r6.x, -cb0[12].w, cb0[13].x
  add r6.y, r2.w, -cb0[12].w
  div r6.x, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x
  mul_sat r6.x, r6.x, r6.y
  mad r6.y, r6.x, l(-2.000000), l(3.000000)
  mul r6.x, r6.x, r6.x
  mul r6.x, r6.x, r6.y  // r6.x <- smoothstep_4013759394

#line 222
  add r6.y, -cb0[12].y, cb0[12].z
  mad r6.x, r6.x, r6.y, cb0[12].y  // r6.x <- lerp_409641740

#line 224
  add r6.y, -cb0[14].x, cb0[14].y
  add r6.z, r1.z, -cb0[14].x
  div r6.y, l(1.000000, 1.000000, 1.000000, 1.000000), r6.y
  mul_sat r6.y, r6.y, r6.z
  mad r6.z, r6.y, l(-2.000000), l(3.000000)
  mul r6.y, r6.y, r6.y

#line 225
  mad r6.y, -r6.z, r6.y, l(1.000000)  // r6.y <- result_1095864127

#line 226
  sqrt r0.z, r0.z  // r0.z <- length_2065082747

#line 227
  mul r6.z, r0.z, cb0[14].z  // r6.z <- result_1201353953

#line 228
  max r6.z, r6.z, cb0[14].w
  min r6.z, r6.z, cb0[15].x  // r6.z <- clamp_185805538

#line 229
  mul r0.w, r0.w, r6.x
  mul r0.w, r6.y, r0.w
  mul r0.w, r6.z, r0.w  // r0.w <- result_316372294

#line 230
  mul r0.w, r0.w, cb0[15].y  // r0.w <- result_3565693537

#line 154
  div_sat r0.y, r0.y, cb0[15].z  // r0.y <- output

#line 153
  add r6.x, cb0[15].w, l(-1.000000)  // r6.x <- range

#line 154
  div_sat r5.w, r5.w, r6.x  // r5.w <- output

#line 236
  min r0.y, r0.y, r5.w  // r0.y <- min_1562430566

#line 239
  add r6.xy, -cb0[16].zxzz, cb0[16].wyww

#line 238
  add r2.w, r2.w, -cb0[16].z
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x
  mul_sat r2.w, r2.w, r5.w
  mad r5.w, r2.w, l(-2.000000), l(3.000000)
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, r5.w  // r2.w <- smoothstep_981583533

#line 239
  mad r2.w, r2.w, r6.y, cb0[16].x  // r2.w <- lerp_2326799759

#line 251
  add r6.xy, -cb0[17].xzxx, cb0[17].ywyy

#line 241
  add r5.w, r1.z, -cb0[17].x
  div r6.x, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x
  mul_sat r5.w, r5.w, r6.x
  mad r6.x, r5.w, l(-2.000000), l(3.000000)
  mul r5.w, r5.w, r5.w

#line 242
  mad r5.w, -r6.x, r5.w, l(1.000000)  // r5.w <- result_4044291195

#line 244
  mov r1.w, l(1.000000)
  dp4 r7.x, r1.xyzw, cb0[18].xyzw  // r7.x <- mul_2467525638.x
  dp4 r7.y, r1.xyzw, cb0[19].xyzw  // r7.y <- mul_2467525638.y
  dp4 r7.z, r1.xyzw, cb0[20].xyzw  // r7.z <- mul_2467525638.z

#line 246
  add r6.xzw, r7.xxyz, l(0.500000, 0.000000, 0.500000, 0.500000)  // r6.x <- result_2927279148.x; r6.z <- result_2927279148.y; r6.w <- result_2927279148.z

#line 247
  sample_l_indexable(texture3d)(float,float,float,float) r7.xyzw, r6.xzwx, t1.xyzw, s1, l(0.000000)  // r7.x <- textureNode_1240058305.x; r7.y <- textureNode_1240058305.y; r7.z <- textureNode_1240058305.z; r7.w <- textureNode_1240058305.w

#line 248
  dp4 r6.x, r7.xyzw, r7.xyzw
  sqrt r6.x, r6.x  // r6.x <- length_1738524458

#line 249
  ge r6.z, cb0[22].x, r6.x  // r6.z <- Assign_3449264379

#line 250
  and r6.z, r6.z, l(0x3f800000)

#line 251
  mad r6.y, r6.z, r6.y, cb0[17].z  // r6.y <- lerp_3804688085

#line 253
  max r6.x, r6.x, cb0[22].y
  min r6.x, r6.x, cb0[22].z  // r6.x <- clamp_2495810188

#line 255
  mad r6.x, r6.x, cb0[22].w, -r6.y
  mad r6.x, cb0[23].x, r6.x, r6.y  // r6.x <- lerp_128190464

#line 257
  ge r6.y, r0.z, cb0[23].w  // r6.y <- Assign_3600177530

#line 258
  and r6.y, r6.y, l(0x3f800000)

#line 259
  add r6.z, -cb0[23].y, cb0[23].z
  mad r6.y, r6.y, r6.z, cb0[23].y  // r6.y <- lerp_3410421755

#line 261
  mul r0.z, r0.z, cb0[24].z  // r0.z <- result_2575236902

#line 262
  add r6.z, -cb0[24].x, cb0[24].y
  mad r0.z, r0.z, r6.z, cb0[24].x  // r0.z <- lerp_181110443

#line 263
  mul r0.y, r0.y, r2.w
  mul r0.y, r5.w, r0.y
  mul r0.y, r6.x, r0.y
  mul r0.y, r6.y, r0.y
  mul r0.y, r0.z, r0.y  // r0.y <- result_3543892025

#line 267
  mad r0.y, r0.y, cb0[24].w, -r0.w
  mad r0.y, cb0[25].x, r0.y, r0.w  // r0.y <- lerp_3940537214.x

#line 269
  add r0.z, -cb0[25].y, cb0[25].z

#line 273
  add r6.xy, r1.zxzz, -cb0[25].ywyy

#line 269
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r6.x
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 270
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_1759365860

#line 271
  mul r0.y, r0.z, r0.y  // r0.y <- result_2590299159.x

#line 273
  add r0.z, -cb0[25].w, cb0[26].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r6.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 274
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_1685002619

#line 275
  add r0.w, -cb0[26].y, cb0[26].z

#line 280
  add r6.xy, r1.xyxx, -cb0[26].ywyy

#line 275
  div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
  mul_sat r0.w, r0.w, r6.x
  mad r2.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w

#line 276
  mad r0.w, -r2.w, r0.w, l(1.000000)  // r0.w <- result_2051280567

#line 277
  mul r0.z, r0.w, r0.z  // r0.z <- result_258776251

#line 278
  mul r0.y, r0.z, r0.y  // r0.y <- result_3011204032.x

#line 280
  add r0.z, -cb0[26].w, cb0[27].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r6.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 281
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_3991406332

#line 282
  add r0.w, -cb0[27].y, cb0[27].z
  add r2.w, r1.y, -cb0[27].y
  div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
  mul_sat r0.w, r0.w, r2.w
  mad r2.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w

#line 283
  mad r0.w, -r2.w, r0.w, l(1.000000)  // r0.w <- result_2051431999

#line 284
  mul r0.z, r0.w, r0.z  // r0.z <- result_1527916458

#line 285
  mul r0.y, r0.z, r0.y  // r0.y <- result_3101356103.x

#line 286
  mul r6.yzw, r0.yyyy, cb0[11].xxyz  // r6.y <- result_4095290168.x; r6.z <- result_4095290168.y; r6.w <- result_4095290168.z

#line 289
  dp4 r7.x, r1.xyzw, cb0[28].xyzw  // r7.x <- mul_491300783.x
  dp4 r7.y, r1.xyzw, cb0[29].xyzw  // r7.y <- mul_491300783.y
  dp4 r7.z, r1.xyzw, cb0[30].xyzw  // r7.z <- mul_491300783.z

#line 291
  add r0.yzw, r7.xxyz, l(0.000000, 0.500000, 0.500000, 0.500000)  // r0.y <- result_2278098443.x; r0.z <- result_2278098443.y; r0.w <- result_2278098443.z

#line 292
  sample_l_indexable(texture3d)(float,float,float,float) r7.xyzw, r0.yzwy, t2.xyzw, s2, l(0.000000)  // r7.x <- textureNode_3877813864.x; r7.y <- textureNode_3877813864.y; r7.z <- textureNode_3877813864.z; r7.w <- textureNode_3877813864.w

#line 293
  dp4 r0.y, r7.xyzw, r7.xyzw  // r0.y <- result_807186697
  sqrt r0.z, r0.y  // r0.z <- length_3846775286

#line 297
  mad_sat r0.y, r0.y, cb0[32].x, cb0[32].y  // r0.y <- saturate_2495308313

#line 153
  add r0.w, -cb0[32].z, cb0[32].w  // r0.w <- range

#line 154
  add r0.y, r0.y, -cb0[32].z
  div r0.y, r0.y, r0.w  // r0.y <- normalized

#line 155
  add r0.w, -cb0[33].x, cb0[33].y
  mad r0.y, r0.y, r0.w, cb0[33].x  // r0.y <- output

#line 156
  min r0.w, cb0[33].y, cb0[33].x  // r0.w <- minV

#line 157
  max r1.w, cb0[33].y, cb0[33].x  // r1.w <- maxV

#line 158
  max r0.y, r0.w, r0.y
  min r7.x, r1.w, r0.y  // r7.x <- output

#line 153
  add r0.y, -cb0[33].w, cb0[34].x  // r0.y <- range

#line 154
  mad r0.w, r0.z, cb0[33].z, -cb0[33].w
  div r0.y, r0.w, r0.y  // r0.y <- normalized

#line 155
  add r0.w, -cb0[34].y, cb0[34].z
  mad r0.y, r0.y, r0.w, cb0[34].y  // r0.y <- output

#line 156
  min r0.w, cb0[34].z, cb0[34].y  // r0.w <- minV

#line 157
  max r1.w, cb0[34].z, cb0[34].y

#line 158
  max r0.y, r0.w, r0.y
  min r0.y, r1.w, r0.y  // r0.y <- output

#line 303
  mul_sat r0.z, r0.z, cb0[34].w  // r0.z <- saturate_1154828316

#line 141
  add r8.xy, -cb0[35].xzxx, cb0[35].ywyy  // r8.x <- range

#line 140
  add r0.z, r0.z, -cb0[35].x
  div r0.z, r0.z, r8.x  // r0.z <- normalized

#line 141
  mad r0.z, r0.z, r8.y, cb0[35].z  // r0.z <- <map_id9 return value>

#line 310
  div r0.z, r0.z, cb0[36].x  // r0.z <- result_2706087116

#line 311
  mul r0.z, r0.z, l(6.283185)  // r0.z <- result_8704450

#line 312
  sincos r8.x, r9.x, r0.z  // r8.x <- sin_872894182; r9.x <- cos_687269627

#line 317
  mov r8.z, r8.x
  mov r8.y, r9.x
  mul r0.yz, r0.yyyy, r8.yyzy  // r0.y <- result_1288317566.y; r0.z <- result_1288317566.x

#line 319
  div r0.yz, r0.yyzy, cb0[36].yyyy
  mul r7.yz, r0.yyzy, l(0.000000, 0.500000, 0.500000, 0.000000)  // r7.y <- result_2536980378.y; r7.z <- result_2536980378.x

#line 129
  dp3 r8.x, r7.xyzx, l(1.000000, 0.396338, 0.215804, 0.000000)  // r8.x <- lms.x
  dp3 r8.y, r7.xyzx, l(1.000000, -0.105561, -0.063854, 0.000000)  // r8.y <- lms.y
  dp3 r8.z, r7.xyzx, l(1.000000, -0.089484, -1.291486, 0.000000)  // r8.z <- lms.z

#line 131
  mul r0.yzw, r8.xxyz, r8.xxyz
  mul r0.yzw, r8.xxyz, r0.yyzw
  dp3 r1.w, r0.yzwy, l(4.076725, -3.307217, 0.230759, 0.000000)  // r1.w <- <OKLabToRGB_id24 return value>.x
  dp3 r2.w, r0.yzwy, l(-1.268144, 2.609332, -0.341134, 0.000000)  // r2.w <- <OKLabToRGB_id24 return value>.y
  dp3 r0.y, r0.yzwy, l(-0.004112, -0.703476, 1.706863, 0.000000)  // r0.y <- <OKLabToRGB_id24 return value>.z

#line 326
  mul r7.x, r1.w, cb0[36].w  // r7.x <- result_2075969102.x
  mul r7.y, r2.w, cb0[36].w  // r7.y <- result_2075969102.y
  mul r7.z, r0.y, cb0[36].w  // r7.z <- result_2075969102.z
  mul r7.w, cb0[36].w, cb0[36].z  // r7.w <- result_2075969102.w

#line 330
  max r0.yzw, r1.xxyz, cb0[37].xxyz
  min r0.yzw, r0.yyzw, cb0[38].xxyz  // r0.y <- clamp_4288277652.x; r0.z <- clamp_4288277652.y; r0.w <- clamp_4288277652.z

#line 332
  movc r1.xyz, cb0[38].wwww, r0.yzwy, r1.xyzx  // r1.x <- pposition_833068859.x; r1.y <- pposition_833068859.y; r1.z <- pposition_833068859.z

#line 341
  store_structured u0.x, vThreadID.x, l(0), r0.x
  mov r1.w, r2.z
  store_structured u0.xyzw, vThreadID.x, l(12), r1.xyzw
  store_structured u0.xy, vThreadID.x, l(28), r2.xyxx
  store_structured u0.xyzw, vThreadID.x, l(44), r7.xyzw
  mov r4.w, r3.z
  store_structured u0.xyzw, vThreadID.x, l(76), r4.xyzw
  mov r3.zw, r5.xxxy
  store_structured u0.xyzw, vThreadID.x, l(92), r3.xyzw
  mov r6.x, r5.z
  store_structured u0.xyzw, vThreadID.x, l(108), r6.xyzw
endif 

#line 367
ret 
// Approximately 219 instruction slots used
***************************
*************************/
static const float PI_id12 = 3.1415926535897;
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
struct Resource1913110 
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
    float3 Target;
    float3 AxisX;
    float3 AxisY;
    float3 AxisZ;
    float3 Size3;
};
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    int input_1030675547_id30;
    float input_3168556898_id31;
    float3 input_1574259470_id32;
    float4x4 input_3617489012_id33;
    float4x4 input_1368172550_id34;
    float input_411767847_id35;
    float input_4069183753_id36;
    float input_3907820748_id37;
    float3 input_2596737169_id38;
    float input_821440242_id39;
    float input_1260677232_id40;
    float input_3239041847_id41;
    float input_1307768592_id42;
    float input_3033872009_id43;
    float input_4257435412_id44;
    float3 input_1430018449_id45;
    float input_1086565798_id46;
    float input_2023634853_id47;
    float input_119186703_id48;
    float input_1920064018_id49;
    float input_2177664664_id50;
    float input_1656451012_id51;
    float input_3778683076_id52;
    float input_171934852_id53;
    float input_548378882_id54;
    float input_1166192054_id55;
    float input_2464415278_id56;
    float input_3472072997_id57;
    float input_88325331_id58;
    float input_1893119325_id59;
    float input_4254276301_id60;
    float input_2010285143_id61;
    float4x4 input_1914689852_id62;
    float input_2980430503_id63;
    float input_3378516364_id64;
    float input_3658318844_id65;
    float input_1282247561_id66;
    float input_2603264578_id67;
    float input_2809497330_id68;
    float input_3050470600_id69;
    float input_559363704_id70;
    float input_2764369847_id71;
    float input_314838089_id72;
    float input_2430145573_id73;
    float input_2551475701_id74;
    float input_1675173823_id75;
    float input_3292542485_id76;
    float input_1451769128_id77;
    float input_562934234_id78;
    float input_2843723714_id79;
    float input_1981144117_id80;
    float input_418933680_id81;
    float input_1654446639_id82;
    float input_2862990986_id83;
    float input_4003750783_id84;
    float input_3611302061_id85;
    float4x4 input_97515315_id86;
    float input_1315034226_id87;
    float input_2244240061_id88;
    float input_3373476760_id89;
    float input_3500955570_id90;
    float input_3568685434_id91;
    float input_2614695163_id92;
    float input_3808697832_id93;
    float input_127599732_id94;
    float input_168639653_id95;
    float input_1909278930_id96;
    float input_1845359490_id97;
    float input_2115448441_id98;
    float input_134942226_id99;
    float input_1033764600_id100;
    float input_3891822111_id101;
    float input_3231612800_id102;
    float input_1083042877_id103;
    float input_4186378469_id104;
    float input_1758513264_id105;
    float input_1832830215_id106;
    float3 input_1102288849_id107;
    float3 input_3750869107_id108;
    bool input_3727602044_id109;
};
RWStructuredBuffer<Resource1913110> DynamicBufferInput_1282521623_id23;
Texture1D TextureInput_2597306058_id24;
SamplerState SamplerInput_1876793864_id25;
Texture3D<float4> TextureInput_2836784736_id26;
SamplerState SamplerInput_941011504_id27;
Texture3D<float4> TextureInput_89956305_id28;
SamplerState SamplerInput_3841528385_id29;
float3 OKLabToRGB_id24(float3 okLab)
{
    const float3x3 ToLMS = float3x3(1.0, 1.0, 1.0, 0.3963377774, -0.1055613458, -0.0894841775, 0.2158037573, -0.0638541728, -1.2914855480);
    float3 lms = mul(okLab, ToLMS);
    const float3x3 kLMStoCONE = float3x3(4.0767245293, -1.2681437731, -0.0041119885, -3.3072168827, 2.6093323231, -0.7034763098, 0.2307590544, -0.3411344290, 1.7068625689);
    return mul((lms * lms * lms), kLMStoCONE);
}
float2 cast21_id23(float p)
{
    return p.xx;
}
float map_id9(float input, float InMin, float InMax, float OutMin, float OutMax)
{
    float range = InMax - InMin;
    float normalized = (input - InMin) / range;
    return OutMin + normalized * (OutMax - OutMin);
}
float cast11_id22(float p)
{
    return p;
}
float3 cast31_id21(float p)
{
    return p.xxx;
}
float mapClamp_id10(float input, float InMin, float InMax, float OutMin, float OutMax)
{
    float range = InMax - InMin;
    float normalized = (input - InMin) / range;
    float output = OutMin + normalized * (OutMax - OutMin);
    float minV = min(OutMin, OutMax);
    float maxV = max(OutMin, OutMax);
    output = min(max(output, minV), maxV);
    return output;
}
void Compute_id4(inout CS_STREAMS streams)
{
    bool Assign_1566953907 = streams.DispatchThreadId_id1.x >= input_1030675547_id30;
    if (Assign_1566953907)
    {
        return;
    }
    int IndexX_3709646900 = streams.DispatchThreadId_id1.x;
    Resource1913110 getBuffer_3372248743 = DynamicBufferInput_1282521623_id23[IndexX_3709646900];
    float3 velocity_1580414045 = getBuffer_3372248743.Velocity;
    float3 pposition_833068859 = getBuffer_3372248743.PPosition;
    float mass_3336201457 = getBuffer_3372248743.Mass;
    float age_2863421903 = getBuffer_3372248743.Age;
    float lifetime_2503948290 = getBuffer_3372248743.LifeTime;
    float3 axisx_1015797888 = getBuffer_3372248743.AxisX;
    float3 axisy_3067277566 = getBuffer_3372248743.AxisY;
    float3 axisz_1579127164 = getBuffer_3372248743.AxisZ;
    float3 size3_2042071050 = getBuffer_3372248743.Size3;
    float4 pcolor_2352362865 = getBuffer_3372248743.PColor;
    float deltatime_3785168411 = 0;
    deltatime_3785168411 = input_3168556898_id31;
    int3 index_2613382166 = int3(0, 0, 0);
    index_2613382166 = streams.DispatchThreadId_id1;
    float3 resourcescale_3115519121 = float3(0, 0, 0);
    resourcescale_3115519121 = input_1574259470_id32;
    float4 join_1380343827 = float4(pposition_833068859, 1);
    float4 mul_1047838218 = mul(join_1380343827, input_3617489012_id33);
    float3 mulXyz_552556265 = mul_1047838218.xyz;
    float3 result_2032950884 = (mulXyz_552556265 + float3(0.5, 0.5, 0.5));
    float4 textureNode_3892032875 = TextureInput_2597306058_id24.SampleLevel(SamplerInput_1876793864_id25, result_2032950884, 0);
    float3 textureNodeXyz_3004907700 = textureNode_3892032875.xyz;
    float3 mul_4083302565 = mul(textureNodeXyz_3004907700, input_1368172550_id34);
    float3 result_3622121882 = (mul_4083302565 * input_411767847_id35);
    float3 result_862517354 = (result_3622121882 / mass_3336201457);
    velocity_1580414045 = result_862517354;
    float3 result_1784886631 = (velocity_1580414045 * input_4069183753_id36);
    float3 result_3452829321 = (pposition_833068859 + result_1784886631);
    pposition_833068859 = result_3452829321;
    bool Assign_39551683 = age_2863421903 > 0;
    bool Assign_3538573769 = age_2863421903 <= lifetime_2503948290;
    bool result_35285709 = (Assign_39551683 && Assign_3538573769);
    float result_142541484 = (age_2863421903 + input_3907820748_id37);
    float expression_1996989226 = result_35285709 ? result_142541484 : 0;
    age_2863421903 = expression_1996989226;
    float3 normalize_315596598 = normalize(velocity_1580414045);
    float3 cross_1341516042 = cross(normalize_315596598, float3(0, 1, 0));
    float dot_3891966000 = dot(cross_1341516042, cross_1341516042);
    bool Assign_3478948767 = dot_3891966000 < 1E-05;
    float3 normalize_4207755784 = normalize(cross_1341516042);
    float3 expression_1349660884 = Assign_3478948767 ? float3(1, 0, 0) : normalize_4207755784;
    axisx_1015797888 = expression_1349660884;
    axisy_3067277566 = normalize_315596598;
    float3 cross_890729237 = cross(expression_1349660884, normalize_315596598);
    axisz_1579127164 = cross_890729237;
    float result_3574931264 = (age_2863421903 / lifetime_2503948290);
    float saturate_927394751 = saturate(result_3574931264);
    float mapClamp_889182463 = mapClamp_id10(saturate_927394751, 0, input_821440242_id39, 0, 1);
    float mapClamp_2419307943 = mapClamp_id10(saturate_927394751, 1, input_1260677232_id40, 0, 1);
    float min_2215362338 = min(mapClamp_889182463, mapClamp_2419307943);
    float distance_3294430958 = distance(input_1430018449_id45, pposition_833068859);
    float smoothstep_4013759394 = smoothstep(input_3033872009_id43, input_4257435412_id44, distance_3294430958);
    float lerp_409641740 = lerp(input_3239041847_id41, input_1307768592_id42, smoothstep_4013759394);
    float PPositionZ_582875952 = pposition_833068859.z;
    float smoothstep_1256705832 = smoothstep(input_1086565798_id46, input_2023634853_id47, PPositionZ_582875952);
    float result_1095864127 = (1 - smoothstep_1256705832);
    float length_2065082747 = length(velocity_1580414045);
    float result_1201353953 = (length_2065082747 * input_119186703_id48);
    float clamp_185805538 = clamp(result_1201353953, input_1920064018_id49, input_2177664664_id50);
    float result_316372294 = (min_2215362338 * lerp_409641740 * result_1095864127 * 1 * clamp_185805538);
    float result_3565693537 = (result_316372294 * input_1656451012_id51);
    float3 cast31_667951201 = cast31_id21(result_3565693537);
    float result_1027390284 = (age_2863421903 / lifetime_2503948290);
    float saturate_2964816435 = saturate(result_1027390284);
    float mapClamp_78971763 = mapClamp_id10(saturate_2964816435, 0, input_3778683076_id52, 0, 1);
    float mapClamp_1602802987 = mapClamp_id10(saturate_2964816435, 1, input_171934852_id53, 0, 1);
    float min_1562430566 = min(mapClamp_78971763, mapClamp_1602802987);
    float distance_4026871197 = distance(input_1430018449_id45, pposition_833068859);
    float smoothstep_981583533 = smoothstep(input_2464415278_id56, input_3472072997_id57, distance_4026871197);
    float lerp_2326799759 = lerp(input_548378882_id54, input_1166192054_id55, smoothstep_981583533);
    float PPositionZ_3876057385 = pposition_833068859.z;
    float smoothstep_689894066 = smoothstep(input_88325331_id58, input_1893119325_id59, PPositionZ_3876057385);
    float result_4044291195 = (1 - smoothstep_689894066);
    float4 join_603712105 = float4(pposition_833068859, 1);
    float4 mul_2467525638 = mul(join_603712105, input_1914689852_id62);
    float3 mulXyz_3990640187 = mul_2467525638.xyz;
    float3 result_2927279148 = (mulXyz_3990640187 + float3(0.5, 0.5, 0.5));
    float4 textureNode_1240058305 = TextureInput_2836784736_id26.SampleLevel(SamplerInput_941011504_id27, result_2927279148, 0);
    float length_1738524458 = length(textureNode_1240058305);
    bool Assign_3449264379 = length_1738524458 <= input_2980430503_id63;
    float cast11_1803527014 = cast11_id22(Assign_3449264379);
    float lerp_3804688085 = lerp(input_4254276301_id60, input_2010285143_id61, cast11_1803527014);
    float abs_2470887434 = abs(length_1738524458);
    float clamp_2495810188 = clamp(abs_2470887434, input_3378516364_id64, input_3658318844_id65);
    float result_2385218253 = (clamp_2495810188 * input_1282247561_id66);
    float lerp_128190464 = lerp(lerp_3804688085, result_2385218253, input_2603264578_id67);
    float length_2886712912 = length(velocity_1580414045);
    bool Assign_3600177530 = length_2886712912 >= input_559363704_id70;
    float cast11_1769518182 = cast11_id22(Assign_3600177530);
    float lerp_3410421755 = lerp(input_2809497330_id68, input_3050470600_id69, cast11_1769518182);
    float length_2501977526 = length(velocity_1580414045);
    float result_2575236902 = (length_2501977526 * input_2430145573_id73);
    float lerp_181110443 = lerp(input_2764369847_id71, input_314838089_id72, result_2575236902);
    float result_3543892025 = (min_1562430566 * lerp_2326799759 * result_4044291195 * lerp_128190464 * lerp_3410421755 * lerp_181110443 * 1);
    float result_2548065067 = (result_3543892025 * input_2551475701_id74);
    float3 cast31_3677604600 = cast31_id21(result_2548065067);
    float3 fromFloat_860578968 = float3(input_1675173823_id75, input_1675173823_id75, input_1675173823_id75);
    float3 lerp_3940537214 = lerp(cast31_667951201, cast31_3677604600, fromFloat_860578968);
    float PPositionZ_1796274251 = pposition_833068859.z;
    float smoothstep_1710005132 = smoothstep(input_3292542485_id76, input_1451769128_id77, PPositionZ_1796274251);
    float result_1759365860 = (1 - smoothstep_1710005132);
    float3 result_2590299159 = (lerp_3940537214 * result_1759365860);
    float PPositionX_571958063 = pposition_833068859.x;
    float smoothstep_858288180 = smoothstep(input_562934234_id78, input_2843723714_id79, PPositionX_571958063);
    float result_1685002619 = (1 - smoothstep_858288180);
    float smoothstep_2172997424 = smoothstep(input_1981144117_id80, input_418933680_id81, PPositionX_571958063);
    float result_2051280567 = (1 - smoothstep_2172997424);
    float result_258776251 = (result_1685002619 * result_2051280567);
    float3 result_3011204032 = (result_2590299159 * result_258776251);
    float PPositionY_2066479834 = pposition_833068859.y;
    float smoothstep_1123470208 = smoothstep(input_1654446639_id82, input_2862990986_id83, PPositionY_2066479834);
    float result_3991406332 = (1 - smoothstep_1123470208);
    float smoothstep_2903302389 = smoothstep(input_4003750783_id84, input_3611302061_id85, PPositionY_2066479834);
    float result_2051431999 = (1 - smoothstep_2903302389);
    float result_1527916458 = (result_3991406332 * result_2051431999);
    float3 result_3101356103 = (result_3011204032 * result_1527916458);
    float3 result_4095290168 = (input_2596737169_id38 * result_3101356103);
    size3_2042071050 = result_4095290168;
    float4 join_678741368 = float4(pposition_833068859, 1);
    float4 mul_491300783 = mul(join_678741368, input_97515315_id86);
    float3 mulXyz_3459509730 = mul_491300783.xyz;
    float3 result_2278098443 = (mulXyz_3459509730 + float3(0.5, 0.5, 0.5));
    float4 textureNode_3877813864 = TextureInput_89956305_id28.SampleLevel(SamplerInput_3841528385_id29, result_2278098443, 0);
    float length_3846775286 = length(textureNode_3877813864);
    float length_255726165 = length(textureNode_3877813864);
    float result_807186697 = (length_3846775286 * length_255726165);
    float result_1721437629 = (result_807186697 * input_1315034226_id87);
    float result_3053594258 = (result_1721437629 + input_2244240061_id88);
    float saturate_2495308313 = saturate(result_3053594258);
    float mapClamp_795182392 = mapClamp_id10(saturate_2495308313, input_3373476760_id89, input_3500955570_id90, input_3568685434_id91, input_2614695163_id92);
    float result_2325559417 = (length_3846775286 * input_3808697832_id93);
    float mapClamp_4235274678 = mapClamp_id10(result_2325559417, input_127599732_id94, input_168639653_id95, input_1909278930_id96, input_1845359490_id97);
    float length_1220763868 = length(textureNode_3877813864);
    float result_590911806 = (length_1220763868 * input_2115448441_id98);
    float saturate_1154828316 = saturate(result_590911806);
    float map_3134017337 = map_id9(saturate_1154828316, input_134942226_id99, input_1033764600_id100, input_3891822111_id101, input_3231612800_id102);
    float3 Float3Join_421268208 = float3(mapClamp_795182392, mapClamp_4235274678, map_3134017337);
    float Float3JoinX_503424091 = Float3Join_421268208.x;
    float2 Float3JoinYz_668856371 = Float3Join_421268208.yz;
    float Float3JoinYzY_2969124225 = Float3JoinYz_668856371.y;
    float result_2706087116 = (Float3JoinYzY_2969124225 / input_1083042877_id103);
    float result_8704450 = (result_2706087116 * 6.2831855);
    float sin_872894182 = sin(result_8704450);
    float cos_687269627 = cos(result_8704450);
    float2 float2Join_2628822187 = float2(sin_872894182, cos_687269627);
    float Float3JoinYzX_2284552005 = Float3JoinYz_668856371.x;
    float2 cast21_2143853783 = cast21_id23(Float3JoinYzX_2284552005);
    float2 result_1288317566 = (float2Join_2628822187 * cast21_2143853783);
    float2 cast21_4254421259 = cast21_id23(input_4186378469_id104);
    float2 result_2536980378 = (result_1288317566 / cast21_4254421259 / float2(2, 2));
    float2 result_193230314 = (result_2536980378 + float2(0, 0));
    float resultY_2348601923 = result_193230314.y;
    float resultX_68275117 = result_193230314.x;
    float3 Float3Join_2434276895 = float3(Float3JoinX_503424091, resultY_2348601923, resultX_68275117);
    float3 OKLabToRGB_2190924357 = OKLabToRGB_id24(Float3Join_2434276895);
    float4 join_1831161330 = float4(OKLabToRGB_2190924357, input_1758513264_id105);
    float4 result_2075969102 = (join_1831161330 * input_1832830215_id106);
    pcolor_2352362865 = result_2075969102;
    if (input_3727602044_id109)
    {
        float3 clamp_4288277652 = clamp(pposition_833068859, input_1102288849_id107, input_3750869107_id108);
        pposition_833068859 = clamp_4288277652;
    }
    getBuffer_3372248743.Velocity = velocity_1580414045;
    getBuffer_3372248743.PPosition = pposition_833068859;
    getBuffer_3372248743.Age = age_2863421903;
    getBuffer_3372248743.AxisX = axisx_1015797888;
    getBuffer_3372248743.AxisY = axisy_3067277566;
    getBuffer_3372248743.AxisZ = axisz_1579127164;
    getBuffer_3372248743.Size3 = size3_2042071050;
    getBuffer_3372248743.PColor = pcolor_2352362865;
    DynamicBufferInput_1282521623_id23[IndexX_3709646900] = getBuffer_3372248743;
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
