/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_1561276525]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 624]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_4081768635_id30 => input_4081768635
@C    input_3347913918_id31 => input_3347913918
@C    input_1118599130_id32 => input_1118599130
@C    input_3689543144_id33 => input_3689543144
@C    input_301818082_id34 => input_301818082
@C    input_379899719_id35 => input_379899719
@C    input_1477073253_id36 => input_1477073253
@C    input_1244755864_id37 => input_1244755864
@C    input_749339821_id38 => input_749339821
@C    input_1142789526_id39 => input_1142789526
@C    input_1348877972_id40 => input_1348877972
@C    input_2500016599_id41 => input_2500016599
@C    input_1993276572_id42 => input_1993276572
@C    input_1678852989_id43 => input_1678852989
@C    input_3676400052_id44 => input_3676400052
@C    input_3778017477_id45 => input_3778017477
@C    input_1644539546_id46 => input_1644539546
@C    input_872904601_id47 => input_872904601
@C    input_1252508079_id48 => input_1252508079
@C    input_1529362102_id49 => input_1529362102
@C    input_1783029620_id50 => input_1783029620
@C    input_577153268_id51 => input_577153268
@C    input_4181498228_id52 => input_4181498228
@C    input_2114747220_id53 => input_2114747220
@C    input_2637612918_id54 => input_2637612918
@C    input_194267202_id55 => input_194267202
@C    input_1177552590_id56 => input_1177552590
@C    input_3438352985_id57 => input_3438352985
@C    input_3266621043_id58 => input_3266621043
@C    input_2818102905_id59 => input_2818102905
@C    input_3291756889_id60 => input_3291756889
@C    input_3667774199_id61 => input_3667774199
@C    input_4125106012_id62 => input_4125106012
@C    input_3160497367_id63 => input_3160497367
@C    input_3953746160_id64 => input_3953746160
@C    input_111515468_id65 => input_111515468
@C    input_1608404205_id66 => input_1608404205
@C    input_3818855202_id67 => input_3818855202
@C    input_1508902242_id68 => input_1508902242
@C    input_3847296936_id69 => input_3847296936
@C    input_555516952_id70 => input_555516952
@C    input_3623104983_id71 => input_3623104983
@C    input_1464493333_id72 => input_1464493333
@C    input_2404619033_id73 => input_2404619033
@C    input_1577369345_id74 => input_1577369345
@C    input_995160415_id75 => input_995160415
@C    input_1246882185_id76 => input_1246882185
@C    input_663468888_id77 => input_663468888
@C    input_4199752630_id78 => input_4199752630
@C    input_2218043858_id79 => input_2218043858
@C    input_4013295833_id80 => input_4013295833
@C    input_121792588_id81 => input_121792588
@C    input_3245936159_id82 => input_3245936159
@C    input_4099269866_id83 => input_4099269866
@C    input_2305191327_id84 => input_2305191327
@C    input_973190281_id85 => input_973190281
@C    input_3283317987_id86 => input_3283317987
@C    input_789607526_id87 => input_789607526
@C    input_4045704089_id88 => input_4045704089
@C    input_3373476760_id89 => input_3373476760
@C    input_3500955570_id90 => input_3500955570
@C    input_2878552646_id91 => input_2878552646
@C    input_474565339_id92 => input_474565339
@C    input_597990200_id93 => input_597990200
@C    input_127599732_id94 => input_127599732
@C    input_168639653_id95 => input_168639653
@C    input_241423350_id96 => input_241423350
@C    input_1419539762_id97 => input_1419539762
@C    input_522331861_id98 => input_522331861
@C    input_134942226_id99 => input_134942226
@C    input_1033764600_id100 => input_1033764600
@C    input_2948192175_id101 => input_2948192175
@C    input_3357007344_id102 => input_3357007344
@C    input_1083042877_id103 => input_1083042877
@C    input_4186378469_id104 => input_4186378469
@C    input_1758513264_id105 => input_1758513264
@C    input_1575564007_id106 => input_1575564007
@C    input_1819436973_id107 => input_1819436973
@C    input_1530257363_id108 => input_1530257363
@C    input_3727602044_id109 => input_3727602044
***************************
******  Resources    ******
***************************
@R    SamplerInput_2972104104_id25 => SamplerInput_2972104104 [Stage: Compute, Slot: (0-0)]
@R    SamplerInput_2531627428_id27 => SamplerInput_2531627428 [Stage: Compute, Slot: (1-1)]
@R    SamplerInput_2932230757_id29 => SamplerInput_2932230757 [Stage: Compute, Slot: (2-2)]
@R    TextureInput_1117103150_id24 => TextureInput_1117103150 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_3584517380_id26 => TextureInput_3584517380 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_4178700741_id28 => TextureInput_4178700741 [Stage: Compute, Slot: (2-2)]
@R    DynamicBufferInput_739794951_id23 => DynamicBufferInput_739794951 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_1561276525 => 80127c09c728a1ec94ed6c7da8b2095c
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
@S    FuseCoreMathMap => a3c63d7e99620b0750ae90d499eee2ad
@S    FuseCoreMath => b5527ab1f8082f68a6dcc7c3959ee99a
@S    FuseCoreColor => 624cbdd22df76682ced5fac46493655a
***************************
*****     Stages      *****
***************************
@G    Compute => 09a2845271e1fcca52ab820a98e9d13c
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
//   int input_4081768635_id30;         // Offset:   12 Size:     4
//   float input_3347913918_id31;       // Offset:   16 Size:     4 [unused]
//   float3 input_1118599130_id32;      // Offset:   20 Size:    12 [unused]
//   float4x4 input_3689543144_id33;    // Offset:   32 Size:    64
//   float4x4 input_301818082_id34;     // Offset:   96 Size:    64
//   float input_379899719_id35;        // Offset:  160 Size:     4
//   float input_1477073253_id36;       // Offset:  164 Size:     4
//   float input_1244755864_id37;       // Offset:  168 Size:     4
//   float3 input_749339821_id38;       // Offset:  176 Size:    12
//   float input_1142789526_id39;       // Offset:  188 Size:     4
//   float input_1348877972_id40;       // Offset:  192 Size:     4
//   float input_2500016599_id41;       // Offset:  196 Size:     4
//   float input_1993276572_id42;       // Offset:  200 Size:     4
//   float input_1678852989_id43;       // Offset:  204 Size:     4
//   float input_3676400052_id44;       // Offset:  208 Size:     4
//   float3 input_3778017477_id45;      // Offset:  212 Size:    12
//   float input_1644539546_id46;       // Offset:  224 Size:     4
//   float input_872904601_id47;        // Offset:  228 Size:     4
//   float input_1252508079_id48;       // Offset:  232 Size:     4
//   float input_1529362102_id49;       // Offset:  236 Size:     4
//   float input_1783029620_id50;       // Offset:  240 Size:     4
//   float input_577153268_id51;        // Offset:  244 Size:     4
//   float input_4181498228_id52;       // Offset:  248 Size:     4
//   float input_2114747220_id53;       // Offset:  252 Size:     4
//   float input_2637612918_id54;       // Offset:  256 Size:     4
//   float input_194267202_id55;        // Offset:  260 Size:     4
//   float input_1177552590_id56;       // Offset:  264 Size:     4
//   float input_3438352985_id57;       // Offset:  268 Size:     4
//   float input_3266621043_id58;       // Offset:  272 Size:     4
//   float input_2818102905_id59;       // Offset:  276 Size:     4
//   float input_3291756889_id60;       // Offset:  280 Size:     4
//   float input_3667774199_id61;       // Offset:  284 Size:     4
//   float4x4 input_4125106012_id62;    // Offset:  288 Size:    64
//   float input_3160497367_id63;       // Offset:  352 Size:     4
//   float input_3953746160_id64;       // Offset:  356 Size:     4
//   float input_111515468_id65;        // Offset:  360 Size:     4
//   float input_1608404205_id66;       // Offset:  364 Size:     4
//   float input_3818855202_id67;       // Offset:  368 Size:     4
//   float input_1508902242_id68;       // Offset:  372 Size:     4
//   float input_3847296936_id69;       // Offset:  376 Size:     4
//   float input_555516952_id70;        // Offset:  380 Size:     4
//   float input_3623104983_id71;       // Offset:  384 Size:     4
//   float input_1464493333_id72;       // Offset:  388 Size:     4
//   float input_2404619033_id73;       // Offset:  392 Size:     4
//   float input_1577369345_id74;       // Offset:  396 Size:     4
//   float input_995160415_id75;        // Offset:  400 Size:     4
//   float input_1246882185_id76;       // Offset:  404 Size:     4
//   float input_663468888_id77;        // Offset:  408 Size:     4
//   float input_4199752630_id78;       // Offset:  412 Size:     4
//   float input_2218043858_id79;       // Offset:  416 Size:     4
//   float input_4013295833_id80;       // Offset:  420 Size:     4
//   float input_121792588_id81;        // Offset:  424 Size:     4
//   float input_3245936159_id82;       // Offset:  428 Size:     4
//   float input_4099269866_id83;       // Offset:  432 Size:     4
//   float input_2305191327_id84;       // Offset:  436 Size:     4
//   float input_973190281_id85;        // Offset:  440 Size:     4
//   float4x4 input_3283317987_id86;    // Offset:  448 Size:    64
//   float input_789607526_id87;        // Offset:  512 Size:     4
//   float input_4045704089_id88;       // Offset:  516 Size:     4
//   float input_3373476760_id89;       // Offset:  520 Size:     4
//   float input_3500955570_id90;       // Offset:  524 Size:     4
//   float input_2878552646_id91;       // Offset:  528 Size:     4
//   float input_474565339_id92;        // Offset:  532 Size:     4
//   float input_597990200_id93;        // Offset:  536 Size:     4
//   float input_127599732_id94;        // Offset:  540 Size:     4
//   float input_168639653_id95;        // Offset:  544 Size:     4
//   float input_241423350_id96;        // Offset:  548 Size:     4
//   float input_1419539762_id97;       // Offset:  552 Size:     4
//   float input_522331861_id98;        // Offset:  556 Size:     4
//   float input_134942226_id99;        // Offset:  560 Size:     4
//   float input_1033764600_id100;      // Offset:  564 Size:     4
//   float input_2948192175_id101;      // Offset:  568 Size:     4
//   float input_3357007344_id102;      // Offset:  572 Size:     4
//   float input_1083042877_id103;      // Offset:  576 Size:     4
//   float input_4186378469_id104;      // Offset:  580 Size:     4
//   float input_1758513264_id105;      // Offset:  584 Size:     4
//   float input_1575564007_id106;      // Offset:  588 Size:     4
//   float3 input_1819436973_id107;     // Offset:  592 Size:    12
//   float3 input_1530257363_id108;     // Offset:  608 Size:    12
//   bool input_3727602044_id109;       // Offset:  620 Size:     4
//
// }
//
// Resource bind info for DynamicBufferInput_739794951_id23
// {
//
//   struct Resource10080199
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
// SamplerInput_2972104104_id25      sampler      NA          NA             s0      1 
// SamplerInput_2531627428_id27      sampler      NA          NA             s1      1 
// SamplerInput_2932230757_id29      sampler      NA          NA             s2      1 
// TextureInput_1117103150_id24      texture  float4          1d             t0      1 
// TextureInput_3584517380_id26      texture  float4          1d             t1      1 
// TextureInput_4178700741_id28      texture  float4          1d             t2      1 
// DynamicBufferInput_739794951_id23        UAV  struct         r/w             u0      1 
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
dcl_resource_texture1d (float,float,float,float) t1
dcl_resource_texture1d (float,float,float,float) t2
dcl_uav_structured u0, 124
dcl_input vThreadID.x
dcl_temps 10
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 168 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_744716c93283266a6cfdf71128702ffe.hlsl"
ult r0.x, vThreadID.x, cb0[0].w
if_nz r0.x

#line 169
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r0.xy, vThreadID.x, l(0), u0.xyxx  // r0.x <- getBuffer_1174292519.Age; r0.y <- getBuffer_1174292519.LifeTime
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r1.xyz, vThreadID.x, l(12), u0.xyzx  // r1.x <- getBuffer_1174292519.PPosition.x; r1.y <- getBuffer_1174292519.PPosition.y; r1.z <- getBuffer_1174292519.PPosition.z
  ld_structured_indexable(structured_buffer, stride=124)(mixed,mixed,mixed,mixed) r0.z, vThreadID.x, l(40), u0.xxxx  // r0.z <- getBuffer_1174292519.Mass

#line 187
  mov r1.w, l(1.000000)
  dp4 r0.w, r1.xyzw, cb0[2].xyzw  // r0.w <- mul_2209085358.x

#line 189
  add r0.w, r0.w, l(0.500000)  // r0.w <- result_3364687112.x

#line 190
  sample_l_indexable(texture1d)(float,float,float,float) r2.xyz, r0.w, t0.xyzw, s0, l(0.000000)  // r2.x <- textureNode_14368123.x; r2.y <- textureNode_14368123.y; r2.z <- textureNode_14368123.z

#line 192
  dp3 r3.z, r2.xyzx, cb0[6].xyzx  // r3.z <- mul_1588625649.x
  dp3 r3.x, r2.xyzx, cb0[7].xyzx  // r3.x <- mul_1588625649.y
  dp3 r3.y, r2.xyzx, cb0[8].xyzx  // r3.y <- mul_1588625649.z

#line 193
  mul r2.xyz, r3.xyzx, cb0[10].xxxx  // r2.x <- result_3800338686.y; r2.y <- result_3800338686.z; r2.z <- result_3800338686.x

#line 194
  div r2.xyz, r2.xyzx, r0.zzzz  // r2.x <- result_2246017594.y; r2.y <- result_2246017594.z; r2.z <- result_2246017594.x

#line 197
  mad r1.xyz, r2.zxyz, cb0[10].yyyy, r1.xyzx  // r1.x <- result_1676647101.x; r1.y <- result_1676647101.y; r1.z <- result_1676647101.z

#line 199
  lt r0.z, l(0.000000), r0.x  // r0.z <- Assign_723018531

#line 200
  ge r0.w, r0.y, r0.x  // r0.w <- Assign_2003331885

#line 201
  and r0.z, r0.w, r0.z  // r0.z <- result_730122113

#line 202
  add r0.x, r0.x, cb0[10].z  // r0.x <- result_879983816

#line 203
  and r0.x, r0.x, r0.z  // r0.x <- expression_3046270410

#line 205
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.w, r0.z
  mul r3.xyz, r0.wwww, r2.xyzx  // r3.x <- normalize_3785592534.y; r3.y <- normalize_3785592534.z; r3.z <- normalize_3785592534.x

#line 206
  mul r4.xyz, r3.yzxy, l(1.000000, 0.000000, 0.000000, 0.000000)
  mad r4.xyz, r3.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000), -r4.xyzx  // r4.x <- cross_2270220758.x; r4.y <- cross_2270220758.y; r4.z <- cross_2270220758.z

#line 207
  dp2 r0.w, r4.xzxx, r4.xzxx  // r0.w <- dot_3324018496

#line 208
  lt r2.w, r0.w, l(0.000010)  // r2.w <- Assign_3583862527

#line 209
  rsq r0.w, r0.w
  mul r4.xyz, r0.wwww, r4.xyzx  // r4.x <- normalize_2490804964.x; r4.y <- normalize_2490804964.y; r4.z <- normalize_2490804964.z

#line 210
  movc r4.xyz, r2.wwww, l(1.000000,0,0,0), r4.xyzx  // r4.x <- expression_1461228216.x; r4.y <- expression_1461228216.y; r4.z <- expression_1461228216.z

#line 213
  mul r5.xyz, r3.xyzx, r4.zxyz
  mad r5.xyz, r4.yzxy, r3.yzxy, -r5.xyzx  // r5.x <- cross_1184251889.x; r5.y <- cross_1184251889.y; r5.z <- cross_1184251889.z

#line 215
  div_sat r0.y, r0.x, r0.y  // r0.y <- saturate_2489025951

#line 154
  div_sat r0.w, r0.y, cb0[11].w  // r0.w <- output

#line 153
  add r2.w, cb0[12].x, l(-1.000000)  // r2.w <- range

#line 154
  add r5.w, r0.y, l(-1.000000)
  div_sat r2.w, r5.w, r2.w  // r2.w <- output

#line 219
  min r0.w, r0.w, r2.w  // r0.w <- min_2402707442

#line 220
  add r6.xyz, -r1.xyzx, cb0[13].yzwy
  dp3 r2.w, r6.xyzx, r6.xyzx
  sqrt r2.w, r2.w  // r2.w <- distance_970195150

#line 221
  add r6.x, -cb0[12].w, cb0[13].x
  add r6.y, r2.w, -cb0[12].w
  div r6.x, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x
  mul_sat r6.x, r6.x, r6.y
  mad r6.y, r6.x, l(-2.000000), l(3.000000)
  mul r6.x, r6.x, r6.x
  mul r6.x, r6.x, r6.y  // r6.x <- smoothstep_4016128194

#line 222
  add r6.y, -cb0[12].y, cb0[12].z
  mad r6.x, r6.x, r6.y, cb0[12].y  // r6.x <- lerp_3777343656

#line 224
  add r6.y, -cb0[14].x, cb0[14].y
  add r6.z, r1.z, -cb0[14].x
  div r6.y, l(1.000000, 1.000000, 1.000000, 1.000000), r6.y
  mul_sat r6.y, r6.y, r6.z
  mad r6.z, r6.y, l(-2.000000), l(3.000000)
  mul r6.y, r6.y, r6.y

#line 225
  mad r6.y, -r6.z, r6.y, l(1.000000)  // r6.y <- result_1265558799

#line 226
  sqrt r0.z, r0.z  // r0.z <- length_172337179

#line 227
  mul r6.z, r0.z, cb0[14].z  // r6.z <- result_3645749781

#line 228
  max r6.z, r6.z, cb0[14].w
  min r6.z, r6.z, cb0[15].x  // r6.z <- clamp_4056519726

#line 229
  mul r0.w, r0.w, r6.x
  mul r0.w, r6.y, r0.w
  mul r0.w, r6.z, r0.w  // r0.w <- result_2236841894

#line 230
  mul r0.w, r0.w, cb0[15].y  // r0.w <- result_3738212741

#line 154
  div_sat r0.y, r0.y, cb0[15].z  // r0.y <- output

#line 153
  add r6.x, cb0[15].w, l(-1.000000)  // r6.x <- range

#line 154
  div_sat r5.w, r5.w, r6.x  // r5.w <- output

#line 236
  min r0.y, r0.y, r5.w  // r0.y <- min_2299287126

#line 239
  add r6.xy, -cb0[16].zxzz, cb0[16].wyww

#line 238
  add r2.w, r2.w, -cb0[16].z
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x
  mul_sat r2.w, r2.w, r5.w
  mad r5.w, r2.w, l(-2.000000), l(3.000000)
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, r5.w  // r2.w <- smoothstep_2859184697

#line 239
  mad r2.w, r2.w, r6.y, cb0[16].x  // r2.w <- lerp_231081791

#line 251
  add r6.xy, -cb0[17].xzxx, cb0[17].ywyy

#line 241
  add r5.w, r1.z, -cb0[17].x
  div r6.x, l(1.000000, 1.000000, 1.000000, 1.000000), r6.x
  mul_sat r5.w, r5.w, r6.x
  mad r6.x, r5.w, l(-2.000000), l(3.000000)
  mul r5.w, r5.w, r5.w

#line 242
  mad r5.w, -r6.x, r5.w, l(1.000000)  // r5.w <- result_3742217435

#line 244
  mov r1.w, l(1.000000)
  dp4 r6.x, r1.xyzw, cb0[18].xyzw  // r6.x <- mul_2445794550.x

#line 246
  add r6.x, r6.x, l(0.500000)  // r6.x <- result_3128462620.x

#line 247
  sample_l_indexable(texture1d)(float,float,float,float) r7.xyzw, r6.x, t1.xyzw, s1, l(0.000000)  // r7.x <- textureNode_2275827741.x; r7.y <- textureNode_2275827741.y; r7.z <- textureNode_2275827741.z; r7.w <- textureNode_2275827741.w

#line 248
  dp4 r6.x, r7.xyzw, r7.xyzw
  sqrt r6.x, r6.x  // r6.x <- length_2749036634

#line 249
  ge r6.z, cb0[22].x, r6.x  // r6.z <- Assign_2548874651

#line 250
  and r6.z, r6.z, l(0x3f800000)

#line 251
  mad r6.y, r6.z, r6.y, cb0[17].z  // r6.y <- lerp_219656377

#line 253
  max r6.x, r6.x, cb0[22].y
  min r6.x, r6.x, cb0[22].z  // r6.x <- clamp_919675608

#line 255
  mad r6.x, r6.x, cb0[22].w, -r6.y
  mad r6.x, cb0[23].x, r6.x, r6.y  // r6.x <- lerp_1023986212

#line 257
  ge r6.y, r0.z, cb0[23].w  // r6.y <- Assign_4227817626

#line 258
  and r6.y, r6.y, l(0x3f800000)

#line 259
  add r6.z, -cb0[23].y, cb0[23].z
  mad r6.y, r6.y, r6.z, cb0[23].y  // r6.y <- lerp_521885355

#line 261
  mul r0.z, r0.z, cb0[24].z  // r0.z <- result_909396426

#line 262
  add r6.z, -cb0[24].x, cb0[24].y
  mad r0.z, r0.z, r6.z, cb0[24].x  // r0.z <- lerp_1313451275

#line 263
  mul r0.y, r0.y, r2.w
  mul r0.y, r5.w, r0.y
  mul r0.y, r6.x, r0.y
  mul r0.y, r6.y, r0.y
  mul r0.y, r0.z, r0.y  // r0.y <- result_7069957

#line 267
  mad r0.y, r0.y, cb0[24].w, -r0.w
  mad r0.y, cb0[25].x, r0.y, r0.w  // r0.y <- lerp_150675102.x

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
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_180524184

#line 271
  mul r0.y, r0.z, r0.y  // r0.y <- result_1130835047.x

#line 273
  add r0.z, -cb0[25].w, cb0[26].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r6.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 274
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_4206913739

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
  mad r0.w, -r2.w, r0.w, l(1.000000)  // r0.w <- result_554714199

#line 277
  mul r0.z, r0.w, r0.z  // r0.z <- result_1810482443

#line 278
  mul r0.y, r0.z, r0.y  // r0.y <- result_2789819408.x

#line 280
  add r0.z, -cb0[26].w, cb0[27].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r6.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 281
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_1615369800

#line 282
  add r0.w, -cb0[27].y, cb0[27].z
  add r2.w, r1.y, -cb0[27].y
  div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
  mul_sat r0.w, r0.w, r2.w
  mad r2.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w

#line 283
  mad r0.w, -r2.w, r0.w, l(1.000000)  // r0.w <- result_1992485551

#line 284
  mul r0.z, r0.w, r0.z  // r0.z <- result_2272979254

#line 285
  mul r0.y, r0.z, r0.y  // r0.y <- result_4058743031.x

#line 286
  mul r6.yzw, r0.yyyy, cb0[11].xxyz  // r6.y <- result_1264634820.x; r6.z <- result_1264634820.y; r6.w <- result_1264634820.z

#line 289
  dp4 r0.y, r1.xyzw, cb0[28].xyzw  // r0.y <- mul_1287720271.x

#line 291
  add r0.y, r0.y, l(0.500000)  // r0.y <- result_2379986923.x

#line 292
  sample_l_indexable(texture1d)(float,float,float,float) r7.xyzw, r0.y, t2.xyzw, s2, l(0.000000)  // r7.x <- textureNode_509168628.x; r7.y <- textureNode_509168628.y; r7.z <- textureNode_509168628.z; r7.w <- textureNode_509168628.w

#line 293
  dp4 r0.y, r7.xyzw, r7.xyzw  // r0.y <- result_9751677
  sqrt r0.z, r0.y  // r0.z <- length_289811542

#line 297
  mad_sat r0.y, r0.y, cb0[32].x, cb0[32].y  // r0.y <- saturate_1501964069

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
  mul_sat r0.z, r0.z, cb0[34].w  // r0.z <- saturate_3945891432

#line 141
  add r8.xy, -cb0[35].xzxx, cb0[35].ywyy  // r8.x <- range

#line 140
  add r0.z, r0.z, -cb0[35].x
  div r0.z, r0.z, r8.x  // r0.z <- normalized

#line 141
  mad r0.z, r0.z, r8.y, cb0[35].z  // r0.z <- <map_id9 return value>

#line 310
  div r0.z, r0.z, cb0[36].x  // r0.z <- result_70400280

#line 311
  mul r0.z, r0.z, l(6.283185)  // r0.z <- result_97647666

#line 312
  sincos r8.x, r9.x, r0.z  // r8.x <- sin_1691349142; r9.x <- cos_383907115

#line 317
  mov r8.z, r8.x
  mov r8.y, r9.x
  mul r0.yz, r0.yyyy, r8.yyzy  // r0.y <- result_2886293982.y; r0.z <- result_2886293982.x

#line 319
  div r0.yz, r0.yyzy, cb0[36].yyyy
  mul r7.yz, r0.yyzy, l(0.000000, 0.500000, 0.500000, 0.000000)  // r7.y <- result_1590915050.y; r7.z <- result_1590915050.x

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
  mul r7.x, r1.w, cb0[36].w  // r7.x <- result_1241929838.x
  mul r7.y, r2.w, cb0[36].w  // r7.y <- result_1241929838.y
  mul r7.z, r0.y, cb0[36].w  // r7.z <- result_1241929838.z
  mul r7.w, cb0[36].w, cb0[36].z  // r7.w <- result_1241929838.w

#line 330
  max r0.yzw, r1.xxyz, cb0[37].xxyz
  min r0.yzw, r0.yyzw, cb0[38].xxyz  // r0.y <- clamp_2798930484.x; r0.z <- clamp_2798930484.y; r0.w <- clamp_2798930484.z

#line 332
  movc r1.xyz, cb0[38].wwww, r0.yzwy, r1.xyzx  // r1.x <- pposition_4126371003.x; r1.y <- pposition_4126371003.y; r1.z <- pposition_4126371003.z

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
// Approximately 215 instruction slots used
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
struct Resource10080199 
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
    int input_4081768635_id30;
    float input_3347913918_id31;
    float3 input_1118599130_id32;
    float4x4 input_3689543144_id33;
    float4x4 input_301818082_id34;
    float input_379899719_id35;
    float input_1477073253_id36;
    float input_1244755864_id37;
    float3 input_749339821_id38;
    float input_1142789526_id39;
    float input_1348877972_id40;
    float input_2500016599_id41;
    float input_1993276572_id42;
    float input_1678852989_id43;
    float input_3676400052_id44;
    float3 input_3778017477_id45;
    float input_1644539546_id46;
    float input_872904601_id47;
    float input_1252508079_id48;
    float input_1529362102_id49;
    float input_1783029620_id50;
    float input_577153268_id51;
    float input_4181498228_id52;
    float input_2114747220_id53;
    float input_2637612918_id54;
    float input_194267202_id55;
    float input_1177552590_id56;
    float input_3438352985_id57;
    float input_3266621043_id58;
    float input_2818102905_id59;
    float input_3291756889_id60;
    float input_3667774199_id61;
    float4x4 input_4125106012_id62;
    float input_3160497367_id63;
    float input_3953746160_id64;
    float input_111515468_id65;
    float input_1608404205_id66;
    float input_3818855202_id67;
    float input_1508902242_id68;
    float input_3847296936_id69;
    float input_555516952_id70;
    float input_3623104983_id71;
    float input_1464493333_id72;
    float input_2404619033_id73;
    float input_1577369345_id74;
    float input_995160415_id75;
    float input_1246882185_id76;
    float input_663468888_id77;
    float input_4199752630_id78;
    float input_2218043858_id79;
    float input_4013295833_id80;
    float input_121792588_id81;
    float input_3245936159_id82;
    float input_4099269866_id83;
    float input_2305191327_id84;
    float input_973190281_id85;
    float4x4 input_3283317987_id86;
    float input_789607526_id87;
    float input_4045704089_id88;
    float input_3373476760_id89;
    float input_3500955570_id90;
    float input_2878552646_id91;
    float input_474565339_id92;
    float input_597990200_id93;
    float input_127599732_id94;
    float input_168639653_id95;
    float input_241423350_id96;
    float input_1419539762_id97;
    float input_522331861_id98;
    float input_134942226_id99;
    float input_1033764600_id100;
    float input_2948192175_id101;
    float input_3357007344_id102;
    float input_1083042877_id103;
    float input_4186378469_id104;
    float input_1758513264_id105;
    float input_1575564007_id106;
    float3 input_1819436973_id107;
    float3 input_1530257363_id108;
    bool input_3727602044_id109;
};
RWStructuredBuffer<Resource10080199> DynamicBufferInput_739794951_id23;
Texture1D TextureInput_1117103150_id24;
SamplerState SamplerInput_2972104104_id25;
Texture1D TextureInput_3584517380_id26;
SamplerState SamplerInput_2531627428_id27;
Texture1D TextureInput_4178700741_id28;
SamplerState SamplerInput_2932230757_id29;
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
    bool Assign_1430140243 = streams.DispatchThreadId_id1.x >= input_4081768635_id30;
    if (Assign_1430140243)
    {
        return;
    }
    int IndexX_2963031124 = streams.DispatchThreadId_id1.x;
    Resource10080199 getBuffer_1174292519 = DynamicBufferInput_739794951_id23[IndexX_2963031124];
    float3 velocity_1025773297 = getBuffer_1174292519.Velocity;
    float3 pposition_4126371003 = getBuffer_1174292519.PPosition;
    float mass_3977851781 = getBuffer_1174292519.Mass;
    float age_2348068095 = getBuffer_1174292519.Age;
    float lifetime_2372255410 = getBuffer_1174292519.LifeTime;
    float3 axisx_2276051380 = getBuffer_1174292519.AxisX;
    float3 axisy_3740308398 = getBuffer_1174292519.AxisY;
    float3 axisz_3644104368 = getBuffer_1174292519.AxisZ;
    float3 size3_3144253098 = getBuffer_1174292519.Size3;
    float4 pcolor_4122923021 = getBuffer_1174292519.PColor;
    float deltatime_1388626251 = 0;
    deltatime_1388626251 = input_3347913918_id31;
    int3 index_154248902 = int3(0, 0, 0);
    index_154248902 = streams.DispatchThreadId_id1;
    float3 resourcescale_3245609685 = float3(0, 0, 0);
    resourcescale_3245609685 = input_1118599130_id32;
    float4 join_1780357747 = float4(pposition_4126371003, 1);
    float4 mul_2209085358 = mul(join_1780357747, input_3689543144_id33);
    float3 mulXyz_1206363077 = mul_2209085358.xyz;
    float3 result_3364687112 = (mulXyz_1206363077 + float3(0.5, 0.5, 0.5));
    float4 textureNode_14368123 = TextureInput_1117103150_id24.SampleLevel(SamplerInput_2972104104_id25, result_3364687112, 0);
    float3 textureNodeXyz_4285479312 = textureNode_14368123.xyz;
    float3 mul_1588625649 = mul(textureNodeXyz_4285479312, input_301818082_id34);
    float3 result_3800338686 = (mul_1588625649 * input_379899719_id35);
    float3 result_2246017594 = (result_3800338686 / mass_3977851781);
    velocity_1025773297 = result_2246017594;
    float3 result_4050984263 = (velocity_1025773297 * input_1477073253_id36);
    float3 result_1676647101 = (pposition_4126371003 + result_4050984263);
    pposition_4126371003 = result_1676647101;
    bool Assign_723018531 = age_2348068095 > 0;
    bool Assign_2003331885 = age_2348068095 <= lifetime_2372255410;
    bool result_730122113 = (Assign_723018531 && Assign_2003331885);
    float result_879983816 = (age_2348068095 + input_1244755864_id37);
    float expression_3046270410 = result_730122113 ? result_879983816 : 0;
    age_2348068095 = expression_3046270410;
    float3 normalize_3785592534 = normalize(velocity_1025773297);
    float3 cross_2270220758 = cross(normalize_3785592534, float3(0, 1, 0));
    float dot_3324018496 = dot(cross_2270220758, cross_2270220758);
    bool Assign_3583862527 = dot_3324018496 < 1E-05;
    float3 normalize_2490804964 = normalize(cross_2270220758);
    float3 expression_1461228216 = Assign_3583862527 ? float3(1, 0, 0) : normalize_2490804964;
    axisx_2276051380 = expression_1461228216;
    axisy_3740308398 = normalize_3785592534;
    float3 cross_1184251889 = cross(expression_1461228216, normalize_3785592534);
    axisz_3644104368 = cross_1184251889;
    float result_3314320160 = (age_2348068095 / lifetime_2372255410);
    float saturate_2489025951 = saturate(result_3314320160);
    float mapClamp_2585010399 = mapClamp_id10(saturate_2489025951, 0, input_1142789526_id39, 0, 1);
    float mapClamp_1204522711 = mapClamp_id10(saturate_2489025951, 1, input_1348877972_id40, 0, 1);
    float min_2402707442 = min(mapClamp_2585010399, mapClamp_1204522711);
    float distance_970195150 = distance(input_3778017477_id45, pposition_4126371003);
    float smoothstep_4016128194 = smoothstep(input_1678852989_id43, input_3676400052_id44, distance_970195150);
    float lerp_3777343656 = lerp(input_2500016599_id41, input_1993276572_id42, smoothstep_4016128194);
    float PPositionZ_2635493520 = pposition_4126371003.z;
    float smoothstep_1758315336 = smoothstep(input_1644539546_id46, input_872904601_id47, PPositionZ_2635493520);
    float result_1265558799 = (1 - smoothstep_1758315336);
    float length_172337179 = length(velocity_1025773297);
    float result_3645749781 = (length_172337179 * input_1252508079_id48);
    float clamp_4056519726 = clamp(result_3645749781, input_1529362102_id49, input_1783029620_id50);
    float result_2236841894 = (min_2402707442 * lerp_3777343656 * result_1265558799 * 1 * clamp_4056519726);
    float result_3738212741 = (result_2236841894 * input_577153268_id51);
    float3 cast31_3631533421 = cast31_id21(result_3738212741);
    float result_119877804 = (age_2348068095 / lifetime_2372255410);
    float saturate_1064614163 = saturate(result_119877804);
    float mapClamp_2638561619 = mapClamp_id10(saturate_1064614163, 0, input_4181498228_id52, 0, 1);
    float mapClamp_1439591739 = mapClamp_id10(saturate_1064614163, 1, input_2114747220_id53, 0, 1);
    float min_2299287126 = min(mapClamp_2638561619, mapClamp_1439591739);
    float distance_3475694761 = distance(input_3778017477_id45, pposition_4126371003);
    float smoothstep_2859184697 = smoothstep(input_1177552590_id56, input_3438352985_id57, distance_3475694761);
    float lerp_231081791 = lerp(input_2637612918_id54, input_194267202_id55, smoothstep_2859184697);
    float PPositionZ_1184090589 = pposition_4126371003.z;
    float smoothstep_4294609830 = smoothstep(input_3266621043_id58, input_2818102905_id59, PPositionZ_1184090589);
    float result_3742217435 = (1 - smoothstep_4294609830);
    float4 join_319696885 = float4(pposition_4126371003, 1);
    float4 mul_2445794550 = mul(join_319696885, input_4125106012_id62);
    float3 mulXyz_3196673355 = mul_2445794550.xyz;
    float3 result_3128462620 = (mulXyz_3196673355 + float3(0.5, 0.5, 0.5));
    float4 textureNode_2275827741 = TextureInput_3584517380_id26.SampleLevel(SamplerInput_2531627428_id27, result_3128462620, 0);
    float length_2749036634 = length(textureNode_2275827741);
    bool Assign_2548874651 = length_2749036634 <= input_3160497367_id63;
    float cast11_876717126 = cast11_id22(Assign_2548874651);
    float lerp_219656377 = lerp(input_3291756889_id60, input_3667774199_id61, cast11_876717126);
    float abs_3871114918 = abs(length_2749036634);
    float clamp_919675608 = clamp(abs_3871114918, input_3953746160_id64, input_111515468_id65);
    float result_3871357953 = (clamp_919675608 * input_1608404205_id66);
    float lerp_1023986212 = lerp(lerp_219656377, result_3871357953, input_3818855202_id67);
    float length_4092770416 = length(velocity_1025773297);
    bool Assign_4227817626 = length_4092770416 >= input_555516952_id70;
    float cast11_819964854 = cast11_id22(Assign_4227817626);
    float lerp_521885355 = lerp(input_1508902242_id68, input_3847296936_id69, cast11_819964854);
    float length_1263067974 = length(velocity_1025773297);
    float result_909396426 = (length_1263067974 * input_2404619033_id73);
    float lerp_1313451275 = lerp(input_3623104983_id71, input_1464493333_id72, result_909396426);
    float result_7069957 = (min_2299287126 * lerp_231081791 * result_3742217435 * lerp_1023986212 * lerp_521885355 * lerp_1313451275 * 1);
    float result_1212799547 = (result_7069957 * input_1577369345_id74);
    float3 cast31_1147575900 = cast31_id21(result_1212799547);
    float3 fromFloat_3931597116 = float3(input_995160415_id75, input_995160415_id75, input_995160415_id75);
    float3 lerp_150675102 = lerp(cast31_3631533421, cast31_1147575900, fromFloat_3931597116);
    float PPositionZ_3740695035 = pposition_4126371003.z;
    float smoothstep_82386176 = smoothstep(input_1246882185_id76, input_663468888_id77, PPositionZ_3740695035);
    float result_180524184 = (1 - smoothstep_82386176);
    float3 result_1130835047 = (lerp_150675102 * result_180524184);
    float PPositionX_2304661599 = pposition_4126371003.x;
    float smoothstep_499139156 = smoothstep(input_4199752630_id78, input_2218043858_id79, PPositionX_2304661599);
    float result_4206913739 = (1 - smoothstep_499139156);
    float smoothstep_2178015584 = smoothstep(input_4013295833_id80, input_121792588_id81, PPositionX_2304661599);
    float result_554714199 = (1 - smoothstep_2178015584);
    float result_1810482443 = (result_4206913739 * result_554714199);
    float3 result_2789819408 = (result_1130835047 * result_1810482443);
    float PPositionY_4049616502 = pposition_4126371003.y;
    float smoothstep_1895281824 = smoothstep(input_3245936159_id82, input_4099269866_id83, PPositionY_4049616502);
    float result_1615369800 = (1 - smoothstep_1895281824);
    float smoothstep_2632599273 = smoothstep(input_2305191327_id84, input_973190281_id85, PPositionY_4049616502);
    float result_1992485551 = (1 - smoothstep_2632599273);
    float result_2272979254 = (result_1615369800 * result_1992485551);
    float3 result_4058743031 = (result_2789819408 * result_2272979254);
    float3 result_1264634820 = (input_749339821_id38 * result_4058743031);
    size3_3144253098 = result_1264634820;
    float4 join_1056910292 = float4(pposition_4126371003, 1);
    float4 mul_1287720271 = mul(join_1056910292, input_3283317987_id86);
    float3 mulXyz_241817026 = mul_1287720271.xyz;
    float3 result_2379986923 = (mulXyz_241817026 + float3(0.5, 0.5, 0.5));
    float4 textureNode_509168628 = TextureInput_4178700741_id28.SampleLevel(SamplerInput_2932230757_id29, result_2379986923, 0);
    float length_289811542 = length(textureNode_509168628);
    float length_675283129 = length(textureNode_509168628);
    float result_9751677 = (length_289811542 * length_675283129);
    float result_3936242849 = (result_9751677 * input_789607526_id87);
    float result_3813269294 = (result_3936242849 + input_4045704089_id88);
    float saturate_1501964069 = saturate(result_3813269294);
    float mapClamp_4043107880 = mapClamp_id10(saturate_1501964069, input_3373476760_id89, input_3500955570_id90, input_2878552646_id91, input_474565339_id92);
    float result_624522733 = (length_289811542 * input_597990200_id93);
    float mapClamp_3114499946 = mapClamp_id10(result_624522733, input_127599732_id94, input_168639653_id95, input_241423350_id96, input_1419539762_id97);
    float length_326110700 = length(textureNode_509168628);
    float result_3300597150 = (length_326110700 * input_522331861_id98);
    float saturate_3945891432 = saturate(result_3300597150);
    float map_3527525317 = map_id9(saturate_3945891432, input_134942226_id99, input_1033764600_id100, input_2948192175_id101, input_3357007344_id102);
    float3 Float3Join_2871323232 = float3(mapClamp_4043107880, mapClamp_3114499946, map_3527525317);
    float Float3JoinX_1642743435 = Float3Join_2871323232.x;
    float2 Float3JoinYz_3771493395 = Float3Join_2871323232.yz;
    float Float3JoinYzY_1758665957 = Float3JoinYz_3771493395.y;
    float result_70400280 = (Float3JoinYzY_1758665957 / input_1083042877_id103);
    float result_97647666 = (result_70400280 * 6.2831855);
    float sin_1691349142 = sin(result_97647666);
    float cos_383907115 = cos(result_97647666);
    float2 float2Join_1860238987 = float2(sin_1691349142, cos_383907115);
    float Float3JoinYzX_2566013473 = Float3JoinYz_3771493395.x;
    float2 cast21_1602900199 = cast21_id23(Float3JoinYzX_2566013473);
    float2 result_2886293982 = (float2Join_1860238987 * cast21_1602900199);
    float2 cast21_2807710315 = cast21_id23(input_4186378469_id104);
    float2 result_1590915050 = (result_2886293982 / cast21_2807710315 / float2(2, 2));
    float2 result_4029151066 = (result_1590915050 + float2(0, 0));
    float resultY_3264402963 = result_4029151066.y;
    float resultX_1199257593 = result_4029151066.x;
    float3 Float3Join_4160753663 = float3(Float3JoinX_1642743435, resultY_3264402963, resultX_1199257593);
    float3 OKLabToRGB_1277978641 = OKLabToRGB_id24(Float3Join_4160753663);
    float4 join_331091414 = float4(OKLabToRGB_1277978641, input_1758513264_id105);
    float4 result_1241929838 = (join_331091414 * input_1575564007_id106);
    pcolor_4122923021 = result_1241929838;
    if (input_3727602044_id109)
    {
        float3 clamp_2798930484 = clamp(pposition_4126371003, input_1819436973_id107, input_1530257363_id108);
        pposition_4126371003 = clamp_2798930484;
    }
    getBuffer_1174292519.Velocity = velocity_1025773297;
    getBuffer_1174292519.PPosition = pposition_4126371003;
    getBuffer_1174292519.Age = age_2348068095;
    getBuffer_1174292519.AxisX = axisx_2276051380;
    getBuffer_1174292519.AxisY = axisy_3740308398;
    getBuffer_1174292519.AxisZ = axisz_3644104368;
    getBuffer_1174292519.Size3 = size3_3144253098;
    getBuffer_1174292519.PColor = pcolor_4122923021;
    DynamicBufferInput_739794951_id23[IndexX_2963031124] = getBuffer_1174292519;
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
