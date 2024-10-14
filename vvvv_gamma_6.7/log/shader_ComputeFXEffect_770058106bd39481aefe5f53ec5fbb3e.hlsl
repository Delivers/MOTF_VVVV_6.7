/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:64 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin ComputeFXGraph [{Root = mixin ComputeOrder [{Computes = [Shader_699712654]}]}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 848]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    input_4188686933_id33 => input_4188686933
@C    input_3780291279_id34 => input_3780291279
@C    input_2545149051_id35 => input_2545149051
@C    input_3398268457_id36 => input_3398268457
@C    input_392106961_id37 => input_392106961
@C    input_2274562373_id38 => input_2274562373
@C    input_2137379344_id39 => input_2137379344
@C    input_3556226480_id40 => input_3556226480
@C    input_1169053232_id41 => input_1169053232
@C    input_1233260223_id42 => input_1233260223
@C    input_590429051_id43 => input_590429051
@C    input_2_3398268457_id44 => input_2_3398268457
@C    input_2_392106961_id45 => input_2_392106961
@C    input_3178735220_id46 => input_3178735220
@C    input_1887222975_id47 => input_1887222975
@C    input_1621109252_id48 => input_1621109252
@C    input_3946938824_id49 => input_3946938824
@C    input_4122493167_id50 => input_4122493167
@C    input_1814608137_id51 => input_1814608137
@C    input_1397626618_id52 => input_1397626618
@C    input_1164642786_id53 => input_1164642786
@C    input_167983825_id54 => input_167983825
@C    input_1824390269_id55 => input_1824390269
@C    input_3019906543_id56 => input_3019906543
@C    input_746579178_id57 => input_746579178
@C    input_720402048_id58 => input_720402048
@C    input_2818109000_id59 => input_2818109000
@C    input_2546439995_id60 => input_2546439995
@C    input_2915248866_id61 => input_2915248866
@C    input_2038054552_id62 => input_2038054552
@C    input_1987684313_id63 => input_1987684313
@C    input_2546919424_id64 => input_2546919424
@C    input_1661285288_id65 => input_1661285288
@C    input_3120343483_id66 => input_3120343483
@C    input_4213526618_id67 => input_4213526618
@C    input_2695184424_id68 => input_2695184424
@C    input_1008064003_id69 => input_1008064003
@C    input_3700879862_id70 => input_3700879862
@C    input_731376932_id71 => input_731376932
@C    input_2259957357_id72 => input_2259957357
@C    input_1589925093_id73 => input_1589925093
@C    input_1451664569_id74 => input_1451664569
@C    input_509500895_id75 => input_509500895
@C    input_894334749_id76 => input_894334749
@C    input_4103985858_id77 => input_4103985858
@C    input_963530165_id78 => input_963530165
@C    input_3385045261_id79 => input_3385045261
@C    input_3683262863_id80 => input_3683262863
@C    input_2047515034_id81 => input_2047515034
@C    input_1657637869_id82 => input_1657637869
@C    input_4182658975_id83 => input_4182658975
@C    input_1083042877_id84 => input_1083042877
@C    input_4186378469_id85 => input_4186378469
@C    input_3587091098_id86 => input_3587091098
@C    input_3262273984_id87 => input_3262273984
@C    input_3822400640_id88 => input_3822400640
@C    input_4153970573_id89 => input_4153970573
@C    input_1052235895_id90 => input_1052235895
@C    input_3688583009_id91 => input_3688583009
@C    input_22859689_id92 => input_22859689
@C    input_4111911349_id93 => input_4111911349
@C    input_993111470_id94 => input_993111470
@C    input_2967305502_id95 => input_2967305502
@C    input_769654603_id96 => input_769654603
@C    input_850259890_id97 => input_850259890
@C    input_2698811508_id98 => input_2698811508
@C    input_3895582785_id99 => input_3895582785
@C    input_1040737018_id100 => input_1040737018
@C    input_2169247157_id101 => input_2169247157
@C    input_3373081772_id102 => input_3373081772
@C    input_3558319718_id103 => input_3558319718
@C    input_1590255359_id104 => input_1590255359
@C    input_2678118171_id105 => input_2678118171
@C    input_3144877680_id106 => input_3144877680
@C    input_900812259_id107 => input_900812259
@C    input_300974180_id108 => input_300974180
@C    input_2053685682_id109 => input_2053685682
@C    input_2842429967_id110 => input_2842429967
@C    input_1600537899_id111 => input_1600537899
@C    input_3938425941_id112 => input_3938425941
@C    input_1327967329_id113 => input_1327967329
***************************
******  Resources    ******
***************************
@R    SamplerInput_3596066227_id25 => SamplerInput_3596066227 [Stage: Compute, Slot: (0-0)]
@R    SamplerInput_2_3596066227_id26 => SamplerInput_2_3596066227 [Stage: Compute, Slot: (1-1)]
@R    SamplerInput_1973253577_id28 => SamplerInput_1973253577 [Stage: Compute, Slot: (2-2)]
@R    SamplerInput_1889927718_id30 => SamplerInput_1889927718 [Stage: Compute, Slot: (3-3)]
@R    SamplerInput_1504455948_id32 => SamplerInput_1504455948 [Stage: Compute, Slot: (4-4)]
@R    TextureInput_2541052044_id24 => TextureInput_2541052044 [Stage: Compute, Slot: (0-0)]
@R    TextureInput_1840561177_id27 => TextureInput_1840561177 [Stage: Compute, Slot: (1-1)]
@R    TextureInput_2704499526_id29 => TextureInput_2704499526 [Stage: Compute, Slot: (2-2)]
@R    TextureInput_1416492620_id31 => TextureInput_1416492620 [Stage: Compute, Slot: (3-3)]
@R    DynamicBufferInput_1430151697_id23 => DynamicBufferInput_1430151697 [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    ComputeFXGraph => dca3deb94a1ea6d5babe444153dee98b
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    Shader_699712654 => 8f5dd9a90b460e33a6a451e37909abe5
@S    FuseCoreColor => 624cbdd22df76682ced5fac46493655a
@S    FuseCoreMathMap => a3c63d7e99620b0750ae90d499eee2ad
@S    FuseCoreMath => b5527ab1f8082f68a6dcc7c3959ee99a
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
***************************
*****     Stages      *****
***************************
@G    Compute => 8e034aa185d8af906535f9b1067b2615
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
//   int input_4188686933_id33;         // Offset:   12 Size:     4
//   float input_3780291279_id34;       // Offset:   16 Size:     4 [unused]
//   float3 input_2545149051_id35;      // Offset:   20 Size:    12 [unused]
//   float4x4 input_3398268457_id36;    // Offset:   32 Size:    64
//   float4x4 input_392106961_id37;     // Offset:   96 Size:    64
//   float input_2274562373_id38;       // Offset:  160 Size:     4
//   int input_2137379344_id39;         // Offset:  164 Size:     4
//   float input_3556226480_id40;       // Offset:  168 Size:     4
//   float input_1169053232_id41;       // Offset:  172 Size:     4
//   float input_1233260223_id42;       // Offset:  176 Size:     4
//   float input_590429051_id43;        // Offset:  180 Size:     4
//   float4x4 input_2_3398268457_id44;  // Offset:  192 Size:    64
//   float4x4 input_2_392106961_id45;   // Offset:  256 Size:    64
//   float input_3178735220_id46;       // Offset:  320 Size:     4
//   float4x4 input_1887222975_id47;    // Offset:  336 Size:    64
//   float input_1621109252_id48;       // Offset:  400 Size:     4
//   float input_3946938824_id49;       // Offset:  404 Size:     4
//   float input_4122493167_id50;       // Offset:  408 Size:     4
//   float input_1814608137_id51;       // Offset:  412 Size:     4
//   float input_1397626618_id52;       // Offset:  416 Size:     4
//   float4x4 input_1164642786_id53;    // Offset:  432 Size:    64
//   float input_167983825_id54;        // Offset:  496 Size:     4
//   float input_1824390269_id55;       // Offset:  500 Size:     4
//   float input_3019906543_id56;       // Offset:  504 Size:     4
//   float input_746579178_id57;        // Offset:  508 Size:     4
//   float input_720402048_id58;        // Offset:  512 Size:     4
//   float4x4 input_2818109000_id59;    // Offset:  528 Size:    64
//   float input_2546439995_id60;       // Offset:  592 Size:     4
//   float input_2915248866_id61;       // Offset:  596 Size:     4
//   float input_2038054552_id62;       // Offset:  600 Size:     4
//   float input_1987684313_id63;       // Offset:  604 Size:     4
//   float input_2546919424_id64;       // Offset:  608 Size:     4
//   float input_1661285288_id65;       // Offset:  612 Size:     4
//   float input_3120343483_id66;       // Offset:  616 Size:     4
//   float input_4213526618_id67;       // Offset:  620 Size:     4
//   float input_2695184424_id68;       // Offset:  624 Size:     4
//   float input_1008064003_id69;       // Offset:  628 Size:     4
//   float input_3700879862_id70;       // Offset:  632 Size:     4
//   float input_731376932_id71;        // Offset:  636 Size:     4
//   float input_2259957357_id72;       // Offset:  640 Size:     4
//   float input_1589925093_id73;       // Offset:  644 Size:     4
//   float input_1451664569_id74;       // Offset:  648 Size:     4
//   float input_509500895_id75;        // Offset:  652 Size:     4
//   float input_894334749_id76;        // Offset:  656 Size:     4
//   float input_4103985858_id77;       // Offset:  660 Size:     4
//   float input_963530165_id78;        // Offset:  664 Size:     4
//   float input_3385045261_id79;       // Offset:  668 Size:     4
//   float input_3683262863_id80;       // Offset:  672 Size:     4
//   float input_2047515034_id81;       // Offset:  676 Size:     4
//   float input_1657637869_id82;       // Offset:  680 Size:     4
//   float input_4182658975_id83;       // Offset:  684 Size:     4
//   float input_1083042877_id84;       // Offset:  688 Size:     4
//   float input_4186378469_id85;       // Offset:  692 Size:     4
//   float input_3587091098_id86;       // Offset:  696 Size:     4
//   float input_3262273984_id87;       // Offset:  700 Size:     4
//   float input_3822400640_id88;       // Offset:  704 Size:     4
//   float input_4153970573_id89;       // Offset:  708 Size:     4
//   float input_1052235895_id90;       // Offset:  712 Size:     4
//   float input_3688583009_id91;       // Offset:  716 Size:     4
//   float input_22859689_id92;         // Offset:  720 Size:     4
//   float input_4111911349_id93;       // Offset:  724 Size:     4
//   float3 input_993111470_id94;       // Offset:  736 Size:    12
//   float input_2967305502_id95;       // Offset:  748 Size:     4
//   float input_769654603_id96;        // Offset:  752 Size:     4
//   float input_850259890_id97;        // Offset:  756 Size:     4
//   float input_2698811508_id98;       // Offset:  760 Size:     4
//   float input_3895582785_id99;       // Offset:  764 Size:     4
//   float input_1040737018_id100;      // Offset:  768 Size:     4
//   float input_2169247157_id101;      // Offset:  772 Size:     4
//   float input_3373081772_id102;      // Offset:  776 Size:     4
//   float input_3558319718_id103;      // Offset:  780 Size:     4
//   float input_1590255359_id104;      // Offset:  784 Size:     4
//   float input_2678118171_id105;      // Offset:  788 Size:     4
//   float input_3144877680_id106;      // Offset:  792 Size:     4
//   float input_900812259_id107;       // Offset:  796 Size:     4
//   float input_300974180_id108;       // Offset:  800 Size:     4
//   float input_2053685682_id109;      // Offset:  804 Size:     4
//   float input_2842429967_id110;      // Offset:  808 Size:     4
//   float3 input_1600537899_id111;     // Offset:  816 Size:    12
//   float3 input_3938425941_id112;     // Offset:  832 Size:    12
//   bool input_1327967329_id113;       // Offset:  844 Size:     4
//
// }
//
// Resource bind info for DynamicBufferInput_1430151697_id23
// {
//
//   struct Resource5314558
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
// SamplerInput_3596066227_id25      sampler      NA          NA             s0      1 
// SamplerInput_2_3596066227_id26    sampler      NA          NA             s1      1 
// SamplerInput_1973253577_id28      sampler      NA          NA             s2      1 
// SamplerInput_1889927718_id30      sampler      NA          NA             s3      1 
// SamplerInput_1504455948_id32      sampler      NA          NA             s4      1 
// TextureInput_2541052044_id24      texture  float4          1d             t0      1 
// TextureInput_1840561177_id27      texture  float4          1d             t1      1 
// TextureInput_2704499526_id29      texture  float4          1d             t2      1 
// TextureInput_1416492620_id31      texture  float4          1d             t3      1 
// DynamicBufferInput_1430151697_id23        UAV  struct         r/w             u0      1 
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
dcl_resource_texture1d (float,float,float,float) t1
dcl_resource_texture1d (float,float,float,float) t2
dcl_resource_texture1d (float,float,float,float) t3
dcl_uav_structured u0, 112
dcl_input vThreadID.x
dcl_temps 10
dcl_thread_group 64, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 178 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_770058106bd39481aefe5f53ec5fbb3e.hlsl"
ult r0.x, vThreadID.x, cb0[0].w
if_nz r0.x

#line 179
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r0.xy, vThreadID.x, l(0), u0.xyxx  // r0.x <- getBuffer_608833529.Age; r0.y <- getBuffer_608833529.LifeTime
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r1.xyz, vThreadID.x, l(12), u0.xyzx  // r1.x <- getBuffer_608833529.PPosition.x; r1.y <- getBuffer_608833529.PPosition.y; r1.z <- getBuffer_608833529.PPosition.z
  ld_structured_indexable(structured_buffer, stride=112)(mixed,mixed,mixed,mixed) r0.z, vThreadID.x, l(40), u0.xxxx  // r0.z <- getBuffer_608833529.Mass

#line 197
  mov r1.w, l(1.000000)
  dp4 r0.w, r1.xyzw, cb0[2].xyzw  // r0.w <- mul_561827957.x

#line 199
  add r0.w, r0.w, l(0.500000)  // r0.w <- result_1034972569.x

#line 200
  sample_l_indexable(texture1d)(float,float,float,float) r2.xyz, r0.w, t0.xyzw, s0, l(0.000000)  // r2.x <- textureNode_3461074432.x; r2.y <- textureNode_3461074432.y; r2.z <- textureNode_3461074432.z

#line 202
  dp3 r3.x, r2.xyzx, cb0[6].xyzx  // r3.x <- mul_228501754.x
  dp3 r3.y, r2.xyzx, cb0[7].xyzx  // r3.y <- mul_228501754.y
  dp3 r3.z, r2.xyzx, cb0[8].xyzx  // r3.z <- mul_228501754.z

#line 203
  mul r2.xyz, r3.xyzx, cb0[10].xxxx  // r2.x <- result_1150859845.x; r2.y <- result_1150859845.y; r2.z <- result_1150859845.z

#line 204
  div r2.xyz, r2.xyzx, r0.zzzz  // r2.x <- result_645899019.x; r2.y <- result_645899019.y; r2.z <- result_645899019.z

#line 206
  div_sat r0.w, r0.x, r0.y  // r0.w <- saturate_729586914

#line 208
  add r0.w, -r0.w, l(1.000000)  // r0.w <- result_4095596700

#line 210
  add r1.w, -cb0[11].x, cb0[11].y
  mad r0.w, r0.w, r1.w, cb0[11].x  // r0.w <- lerp_264810855

#line 211
  mul r0.w, r0.w, cb0[10].w  // r0.w <- result_2455055170

#line 213
  switch cb0[10].y

#line 216
    case l(0)

#line 218
    mov r0.w, cb0[10].z  // r0.w <- numericSwitch_192786210
    break   // r0.w <- result_2455055170

#line 219
    case l(1)

#line 221
    break 

#line 222
    default 

#line 224
    break 

#line 225
  endswitch   // r0.w <- numericSwitch_192786210

#line 226
  mul r0.w, r0.w, l(0.500000)  // r0.w <- result_1390277282

#line 228
  mad r3.xyz, r2.xyzx, r0.wwww, r1.xyzx  // r3.x <- result_152045917.x; r3.y <- result_152045917.y; r3.z <- result_152045917.z

#line 230
  mov r3.w, l(1.000000)
  dp4 r1.w, r3.xyzw, cb0[12].xyzw  // r1.w <- mul_2_561827957.x

#line 232
  add r1.w, r1.w, l(0.500000)  // r1.w <- result_2_1034972569.x

#line 233
  sample_l_indexable(texture1d)(float,float,float,float) r3.xyz, r1.w, t0.xyzw, s1, l(0.000000)  // r3.x <- textureNode_2_3461074432.x; r3.y <- textureNode_2_3461074432.y; r3.z <- textureNode_2_3461074432.z

#line 235
  dp3 r4.x, r3.xyzx, cb0[16].xyzx  // r4.x <- mul_2_228501754.x
  dp3 r4.y, r3.xyzx, cb0[17].xyzx  // r4.y <- mul_2_228501754.y
  dp3 r4.z, r3.xyzx, cb0[18].xyzx  // r4.z <- mul_2_228501754.z

#line 236
  mul r3.xyz, r4.xyzx, cb0[10].xxxx  // r3.x <- result_2_1150859845.x; r3.y <- result_2_1150859845.y; r3.z <- result_2_1150859845.z

#line 237
  div r3.xyz, r3.xyzx, r0.zzzz  // r3.x <- result_2088355746.x; r3.y <- result_2088355746.y; r3.z <- result_2088355746.z

#line 238
  add r2.xyz, r2.xyzx, r3.xyzx  // r2.x <- result_3317975497.x; r2.y <- result_3317975497.y; r2.z <- result_3317975497.z

#line 241
  mad r1.xyz, r2.xyzx, r0.wwww, r1.xyzx  // r1.x <- result_1844034015.x; r1.y <- result_1844034015.y; r1.z <- result_1844034015.z

#line 243
  lt r0.z, l(0.000000), r0.x  // r0.z <- Assign_2153415295

#line 244
  ge r0.w, r0.y, r0.x  // r0.w <- Assign_477535889

#line 245
  and r0.z, r0.w, r0.z  // r0.z <- result_178904925

#line 246
  add r0.x, r0.x, cb0[20].x  // r0.x <- result_2918478894

#line 247
  and r0.x, r0.x, r0.z  // r0.x <- expression_3924812656

#line 249
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.w, r0.z
  mul r3.xyz, r0.wwww, r2.yzxy  // r3.x <- normalize_217966872.y; r3.y <- normalize_217966872.z; r3.z <- normalize_217966872.x

#line 250
  mul r4.xyz, r3.yzxy, l(1.000000, 0.000000, 0.000000, 0.000000)
  mad r4.xyz, r3.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000), -r4.xyzx  // r4.x <- cross_3376106564.x; r4.y <- cross_3376106564.y; r4.z <- cross_3376106564.z

#line 251
  dp2 r0.w, r4.xzxx, r4.xzxx  // r0.w <- dot_3287158454

#line 252
  lt r4.w, r0.w, l(0.000010)  // r4.w <- Assign_3775227055

#line 253
  rsq r0.w, r0.w
  mul r4.xyz, r0.wwww, r4.xyzx  // r4.x <- normalize_3276631558.x; r4.y <- normalize_3276631558.y; r4.z <- normalize_3276631558.z

#line 254
  movc r4.xyz, r4.wwww, l(1.000000,0,0,0), r4.xyzx  // r4.x <- expression_740477306.x; r4.y <- expression_740477306.y; r4.z <- expression_740477306.z

#line 257
  mul r5.xyz, r3.xyzx, r4.zxyz
  mad r5.xyz, r4.yzxy, r3.yzxy, -r5.xyzx  // r5.x <- cross_3439731089.x; r5.y <- cross_3439731089.y; r5.z <- cross_3439731089.z

#line 260
  mov r1.w, l(1.000000)
  dp4 r0.w, r1.xyzw, cb0[21].xyzw  // r0.w <- mul_3607894323.x

#line 262
  add r0.w, r0.w, l(0.500000)  // r0.w <- result_1723904087.x

#line 263
  sample_l_indexable(texture1d)(float,float,float,float) r6.xyzw, r0.w, t1.xyzw, s2, l(0.000000)  // r6.x <- textureNode_4186874210.x; r6.y <- textureNode_4186874210.y; r6.z <- textureNode_4186874210.z; r6.w <- textureNode_4186874210.w

#line 264
  dp4 r0.w, r6.xyzw, r6.xyzw  // r0.w <- result_2915187230
  sqrt r5.w, r0.w  // r5.w <- length_549570134

#line 265
  mul_sat r6.x, r5.w, cb0[25].x  // r6.x <- saturate_3391809903

#line 167
  add r6.y, -cb0[25].y, cb0[25].z  // r6.y <- range

#line 168
  add r6.x, r6.x, -cb0[25].y
  div r6.x, r6.x, r6.y  // r6.x <- normalized

#line 169
  add r6.y, -cb0[25].w, cb0[26].x
  mad r6.x, r6.x, r6.y, cb0[25].w  // r6.x <- <map_id16 return value>

#line 269
  dp4 r6.y, r1.xyzw, cb0[27].xyzw  // r6.y <- mul_3283051280.x

#line 271
  add r6.y, r6.y, l(0.500000)  // r6.y <- result_2113846826.x

#line 272
  sample_l_indexable(texture1d)(float,float,float,float) r7.xyzw, r6.y, t2.xyzw, s3, l(0.000000)  // r7.x <- textureNode_926184821.x; r7.y <- textureNode_926184821.y; r7.z <- textureNode_926184821.z; r7.w <- textureNode_926184821.w

#line 273
  dp4 r6.y, r7.xyzw, r7.xyzw
  sqrt r6.y, r6.y  // r6.y <- length_3215573446

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
  dp4 r1.w, r1.xyzw, cb0[33].xyzw  // r1.w <- mul_3043853526.x

#line 279
  add r1.w, r1.w, l(0.500000)  // r1.w <- result_46306096.x

#line 280
  sample_l_indexable(texture1d)(float,float,float,float) r7.xyzw, r1.w, t3.xyzw, s4, l(0.000000)  // r7.x <- textureNode_3546130895.x; r7.y <- textureNode_3546130895.y; r7.z <- textureNode_3546130895.z; r7.w <- textureNode_3546130895.w

#line 281
  dp4 r1.w, r7.xyzw, r7.xyzw
  sqrt r1.w, r1.w  // r1.w <- length_286313560

#line 282
  mul r1.w, r1.w, r6.y  // r1.w <- result_1022610513

#line 284
  mad_sat r1.w, r1.w, cb0[37].x, cb0[37].y  // r1.w <- saturate_2116387406

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
  mad_sat r0.w, r0.w, cb0[38].w, cb0[39].x  // r0.w <- saturate_292865591

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
  mul_sat r1.w, r5.w, cb0[41].z  // r1.w <- saturate_848481867

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
  add r1.w, r1.w, cb0[42].w  // r1.w <- result_1411443822

#line 308
  div r1.w, r1.w, cb0[43].x  // r1.w <- result_1195652910

#line 309
  mul r1.w, r1.w, l(6.283185)  // r1.w <- result_2564202292

#line 310
  sincos r8.x, r9.x, r1.w  // r8.x <- sin_2719715000; r9.x <- cos_219797283

#line 315
  mov r8.z, r8.x
  mov r8.y, r9.x
  mul r8.xy, r0.wwww, r8.yzyy  // r8.x <- result_2353169944.y; r8.y <- result_2353169944.x

#line 317
  div r8.xy, r8.xyxx, cb0[43].yyyy
  mul r7.yz, r8.xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)  // r7.y <- result_2802184796.y; r7.z <- result_2802184796.x

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
  mad r6.xyzw, cb0[43].zzzz, r7.xyzw, r6.xyzw  // r6.x <- lerp_2450774488.x; r6.y <- lerp_2450774488.y; r6.z <- lerp_2450774488.z; r6.w <- lerp_2450774488.w

#line 326
  mul r6.xyzw, r6.xyzw, cb0[43].wwww  // r6.x <- result_728572349.x; r6.y <- result_728572349.y; r6.z <- result_728572349.z; r6.w <- result_728572349.w

#line 328
  div_sat r0.y, r0.x, r0.y  // r0.y <- saturate_2375641020

#line 158
  div_sat r0.w, r0.y, cb0[44].x  // r0.w <- output

#line 157
  add r1.w, cb0[44].y, l(-1.000000)  // r1.w <- range

#line 158
  add r0.y, r0.y, l(-1.000000)
  div_sat r0.y, r0.y, r1.w  // r0.y <- output

#line 332
  min r0.y, r0.y, r0.w  // r0.y <- min_46644429

#line 333
  add r7.xyz, -r1.xyzx, cb0[46].xyzx
  dp3 r0.w, r7.xyzx, r7.xyzx

#line 339
  sqrt r0.zw, r0.zzzw  // r0.w <- distance_2212632467; r0.z <- length_1068318793

#line 334
  add r1.w, -cb0[45].x, cb0[45].y
  add r0.w, r0.w, -cb0[45].x
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
  mul_sat r0.w, r0.w, r1.w
  mad r1.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w
  mul r0.w, r0.w, r1.w  // r0.w <- smoothstep_3563504850

#line 335
  add r1.w, -cb0[44].z, cb0[44].w
  mad r0.w, r0.w, r1.w, cb0[44].z  // r0.w <- lerp_1047388413

#line 337
  add r1.w, -cb0[46].w, cb0[47].x
  add r5.w, r1.z, -cb0[46].w
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
  mul_sat r1.w, r1.w, r5.w
  mad r5.w, r1.w, l(-2.000000), l(3.000000)
  mul r1.w, r1.w, r1.w

#line 338
  mad r1.w, -r5.w, r1.w, l(1.000000)  // r1.w <- result_2143930952

#line 340
  mul r0.z, r0.z, cb0[47].y  // r0.z <- result_1736726652

#line 341
  max r0.z, r0.z, cb0[47].z
  min r0.z, r0.z, cb0[47].w  // r0.z <- clamp_761895329

#line 342
  mul r0.y, r0.w, r0.y
  mul r0.y, r1.w, r0.y
  mul r0.y, r0.z, r0.y  // r0.y <- result_92645669

#line 343
  mul r0.y, r0.y, cb0[48].x  // r0.y <- result_496884038

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
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_2656510244

#line 347
  mul r0.y, r0.z, r0.y  // r0.y <- result_1930965158

#line 349
  add r0.z, -cb0[48].w, cb0[49].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r7.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 350
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_939230088

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
  mad r0.w, -r1.w, r0.w, l(1.000000)  // r0.w <- result_1180131111

#line 353
  mul r0.z, r0.w, r0.z  // r0.z <- result_2024999530

#line 354
  mul r0.y, r0.z, r0.y  // r0.y <- result_654711350

#line 356
  add r0.z, -cb0[49].w, cb0[50].x
  div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
  mul_sat r0.z, r0.z, r7.y
  mad r0.w, r0.z, l(-2.000000), l(3.000000)
  mul r0.z, r0.z, r0.z

#line 357
  mad r0.z, -r0.w, r0.z, l(1.000000)  // r0.z <- result_2861488579

#line 358
  add r0.w, -cb0[50].y, cb0[50].z
  add r1.w, r1.y, -cb0[50].y
  div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
  mul_sat r0.w, r0.w, r1.w
  mad r1.w, r0.w, l(-2.000000), l(3.000000)
  mul r0.w, r0.w, r0.w

#line 359
  mad r0.w, -r1.w, r0.w, l(1.000000)  // r0.w <- result_14325046

#line 360
  mul r0.z, r0.w, r0.z  // r0.z <- result_2693863960

#line 361
  mul r2.w, r0.z, r0.y  // r2.w <- result_502307194

#line 365
  max r0.yzw, r1.xxyz, cb0[51].xxyz
  min r0.yzw, r0.yyzw, cb0[52].xxyz  // r0.y <- clamp_3253069800.x; r0.z <- clamp_3253069800.y; r0.w <- clamp_3253069800.z

#line 367
  movc r1.xyz, cb0[52].wwww, r0.yzwy, r1.xyzx  // r1.x <- pposition_3241756517.x; r1.y <- pposition_3241756517.y; r1.z <- pposition_3241756517.z

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
// Approximately 246 instruction slots used
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
struct Resource5314558 
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
    int input_4188686933_id33;
    float input_3780291279_id34;
    float3 input_2545149051_id35;
    float4x4 input_3398268457_id36;
    float4x4 input_392106961_id37;
    float input_2274562373_id38;
    int input_2137379344_id39;
    float input_3556226480_id40;
    float input_1169053232_id41;
    float input_1233260223_id42;
    float input_590429051_id43;
    float4x4 input_2_3398268457_id44;
    float4x4 input_2_392106961_id45;
    float input_3178735220_id46;
    float4x4 input_1887222975_id47;
    float input_1621109252_id48;
    float input_3946938824_id49;
    float input_4122493167_id50;
    float input_1814608137_id51;
    float input_1397626618_id52;
    float4x4 input_1164642786_id53;
    float input_167983825_id54;
    float input_1824390269_id55;
    float input_3019906543_id56;
    float input_746579178_id57;
    float input_720402048_id58;
    float4x4 input_2818109000_id59;
    float input_2546439995_id60;
    float input_2915248866_id61;
    float input_2038054552_id62;
    float input_1987684313_id63;
    float input_2546919424_id64;
    float input_1661285288_id65;
    float input_3120343483_id66;
    float input_4213526618_id67;
    float input_2695184424_id68;
    float input_1008064003_id69;
    float input_3700879862_id70;
    float input_731376932_id71;
    float input_2259957357_id72;
    float input_1589925093_id73;
    float input_1451664569_id74;
    float input_509500895_id75;
    float input_894334749_id76;
    float input_4103985858_id77;
    float input_963530165_id78;
    float input_3385045261_id79;
    float input_3683262863_id80;
    float input_2047515034_id81;
    float input_1657637869_id82;
    float input_4182658975_id83;
    float input_1083042877_id84;
    float input_4186378469_id85;
    float input_3587091098_id86;
    float input_3262273984_id87;
    float input_3822400640_id88;
    float input_4153970573_id89;
    float input_1052235895_id90;
    float input_3688583009_id91;
    float input_22859689_id92;
    float input_4111911349_id93;
    float3 input_993111470_id94;
    float input_2967305502_id95;
    float input_769654603_id96;
    float input_850259890_id97;
    float input_2698811508_id98;
    float input_3895582785_id99;
    float input_1040737018_id100;
    float input_2169247157_id101;
    float input_3373081772_id102;
    float input_3558319718_id103;
    float input_1590255359_id104;
    float input_2678118171_id105;
    float input_3144877680_id106;
    float input_900812259_id107;
    float input_300974180_id108;
    float input_2053685682_id109;
    float input_2842429967_id110;
    float3 input_1600537899_id111;
    float3 input_3938425941_id112;
    bool input_1327967329_id113;
};
RWStructuredBuffer<Resource5314558> DynamicBufferInput_1430151697_id23;
Texture1D TextureInput_2541052044_id24;
SamplerState SamplerInput_3596066227_id25;
SamplerState SamplerInput_2_3596066227_id26;
Texture1D TextureInput_1840561177_id27;
SamplerState SamplerInput_1973253577_id28;
Texture1D TextureInput_2704499526_id29;
SamplerState SamplerInput_1889927718_id30;
Texture1D TextureInput_1416492620_id31;
SamplerState SamplerInput_1504455948_id32;
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
    bool Assign_175888817 = streams.DispatchThreadId_id1.x >= input_4188686933_id33;
    if (Assign_175888817)
    {
        return;
    }
    int IndexX_2325186706 = streams.DispatchThreadId_id1.x;
    Resource5314558 getBuffer_608833529 = DynamicBufferInput_1430151697_id23[IndexX_2325186706];
    float3 velocity_2977897027 = getBuffer_608833529.Velocity;
    float3 pposition_3241756517 = getBuffer_608833529.PPosition;
    float mass_1315852719 = getBuffer_608833529.Mass;
    float age_2482303265 = getBuffer_608833529.Age;
    float lifetime_4225436868 = getBuffer_608833529.LifeTime;
    float3 axisx_356383302 = getBuffer_608833529.AxisX;
    float3 axisy_1317866440 = getBuffer_608833529.AxisY;
    float3 axisz_1743780170 = getBuffer_608833529.AxisZ;
    float4 pcolor_85334732 = getBuffer_608833529.PColor;
    float size_2519541683 = getBuffer_608833529.Size;
    float deltatime_1082369500 = 0;
    deltatime_1082369500 = input_3780291279_id34;
    int3 index_2551431713 = int3(0, 0, 0);
    index_2551431713 = streams.DispatchThreadId_id1;
    float3 resourcescale_740305126 = float3(0, 0, 0);
    resourcescale_740305126 = input_2545149051_id35;
    float4 join_2672889832 = float4(pposition_3241756517, 1);
    float4 mul_561827957 = mul(join_2672889832, input_3398268457_id36);
    float3 mulXyz_1273576254 = mul_561827957.xyz;
    float3 result_1034972569 = (mulXyz_1273576254 + float3(0.5, 0.5, 0.5));
    float4 textureNode_3461074432 = TextureInput_2541052044_id24.SampleLevel(SamplerInput_3596066227_id25, result_1034972569, 0);
    float3 textureNodeXyz_2358871081 = textureNode_3461074432.xyz;
    float3 mul_228501754 = mul(textureNodeXyz_2358871081, input_392106961_id37);
    float3 result_1150859845 = (mul_228501754 * input_2274562373_id38);
    float3 result_645899019 = (result_1150859845 / mass_1315852719);
    velocity_2977897027 = result_645899019;
    float result_2140369587 = (age_2482303265 / lifetime_4225436868);
    float saturate_729586914 = saturate(result_2140369587);
    float result_4095596700 = (1 - saturate_729586914);
    float fromFloat_1206084801 = result_4095596700;
    float lerp_264810855 = lerp(input_1233260223_id42, input_590429051_id43, fromFloat_1206084801);
    float result_2455055170 = (input_1169053232_id41 * lerp_264810855);
    float numericSwitch_192786210;
    switch (input_2137379344_id39)

    {
        case 0:
            numericSwitch_192786210 = input_3556226480_id40;
            break;
        case 1:
            numericSwitch_192786210 = result_2455055170;
            break;
        default:
            numericSwitch_192786210 = result_2455055170;
            break;
    }
    float result_1390277282 = (numericSwitch_192786210 * 0.5);
    float3 result_3996660020 = (velocity_2977897027 * result_1390277282);
    float3 result_152045917 = (pposition_3241756517 + result_3996660020);
    float4 join_2_2672889832 = float4(result_152045917, 1);
    float4 mul_2_561827957 = mul(join_2_2672889832, input_2_3398268457_id44);
    float3 mulXyz_2_1273576254 = mul_2_561827957.xyz;
    float3 result_2_1034972569 = (mulXyz_2_1273576254 + float3(0.5, 0.5, 0.5));
    float4 textureNode_2_3461074432 = TextureInput_2541052044_id24.SampleLevel(SamplerInput_2_3596066227_id26, result_2_1034972569, 0);
    float3 textureNodeXyz_2_2358871081 = textureNode_2_3461074432.xyz;
    float3 mul_2_228501754 = mul(textureNodeXyz_2_2358871081, input_2_392106961_id45);
    float3 result_2_1150859845 = (mul_2_228501754 * input_2274562373_id38);
    float3 result_2088355746 = (result_2_1150859845 / mass_1315852719);
    float3 result_3317975497 = (result_645899019 + result_2088355746);
    velocity_2977897027 = result_3317975497;
    float3 result_989941041 = (result_3317975497 * result_1390277282);
    float3 result_1844034015 = (pposition_3241756517 + result_989941041);
    pposition_3241756517 = result_1844034015;
    bool Assign_2153415295 = age_2482303265 > 0;
    bool Assign_477535889 = age_2482303265 <= lifetime_4225436868;
    bool result_178904925 = (Assign_2153415295 && Assign_477535889);
    float result_2918478894 = (age_2482303265 + input_3178735220_id46);
    float expression_3924812656 = result_178904925 ? result_2918478894 : 0;
    age_2482303265 = expression_3924812656;
    float3 normalize_217966872 = normalize(velocity_2977897027);
    float3 cross_3376106564 = cross(normalize_217966872, float3(0, 1, 0));
    float dot_3287158454 = dot(cross_3376106564, cross_3376106564);
    bool Assign_3775227055 = dot_3287158454 < 1E-05;
    float3 normalize_3276631558 = normalize(cross_3376106564);
    float3 expression_740477306 = Assign_3775227055 ? float3(1, 0, 0) : normalize_3276631558;
    axisx_356383302 = expression_740477306;
    axisy_1317866440 = normalize_217966872;
    float3 cross_3439731089 = cross(expression_740477306, normalize_217966872);
    axisz_1743780170 = cross_3439731089;
    float4 join_1665798706 = float4(pposition_3241756517, 1);
    float4 mul_3607894323 = mul(join_1665798706, input_1887222975_id47);
    float3 mulXyz_341260320 = mul_3607894323.xyz;
    float3 result_1723904087 = (mulXyz_341260320 + float3(0.5, 0.5, 0.5));
    float4 textureNode_4186874210 = TextureInput_1840561177_id27.SampleLevel(SamplerInput_1973253577_id28, result_1723904087, 0);
    float length_549570134 = length(textureNode_4186874210);
    float result_2784354149 = (length_549570134 * input_1621109252_id48);
    float saturate_3391809903 = saturate(result_2784354149);
    float map_785431544 = map_id16(saturate_3391809903, input_3946938824_id49, input_4122493167_id50, input_1814608137_id51, input_1397626618_id52);
    float4 join_4218700821 = float4(pposition_3241756517, 1);
    float4 mul_3283051280 = mul(join_4218700821, input_1164642786_id53);
    float3 mulXyz_3328852355 = mul_3283051280.xyz;
    float3 result_2113846826 = (mulXyz_3328852355 + float3(0.5, 0.5, 0.5));
    float4 textureNode_926184821 = TextureInput_2704499526_id29.SampleLevel(SamplerInput_1889927718_id30, result_2113846826, 0);
    float length_3215573446 = length(textureNode_926184821);
    float result_259337600 = (length_3215573446 * input_167983825_id54);
    float mapClamp_901483857 = mapClamp_id17(result_259337600, input_1824390269_id55, input_3019906543_id56, input_746579178_id57, input_720402048_id58);
    float4 join_77565615 = float4(pposition_3241756517, 1);
    float4 mul_3043853526 = mul(join_77565615, input_2818109000_id59);
    float3 mulXyz_4010060829 = mul_3043853526.xyz;
    float3 result_46306096 = (mulXyz_4010060829 + float3(0.5, 0.5, 0.5));
    float4 textureNode_3546130895 = TextureInput_1416492620_id31.SampleLevel(SamplerInput_1504455948_id32, result_46306096, 0);
    float length_286313560 = length(textureNode_3546130895);
    float result_1022610513 = (length_3215573446 * length_286313560);
    float result_3471931752 = (result_1022610513 * input_2546439995_id60);
    float result_3497986942 = (result_3471931752 + input_2915248866_id61);
    float saturate_2116387406 = saturate(result_3497986942);
    float mapClamp_6832887 = mapClamp_id17(saturate_2116387406, input_2038054552_id62, input_1987684313_id63, input_2546919424_id64, input_1661285288_id65);
    float3 Float3Join_656057473 = float3(map_785431544, mapClamp_901483857, mapClamp_6832887);
    float3 HSLtoRGB_smooth_1911110954 = HSLtoRGB_smooth_id21(Float3Join_656057473);
    float4 join_1363155586 = float4(HSLtoRGB_smooth_1911110954, input_3120343483_id66);
    float length_2347671528 = length(textureNode_4186874210);
    float length_896421892 = length(textureNode_4186874210);
    float result_2915187230 = (length_2347671528 * length_896421892);
    float result_2663986655 = (result_2915187230 * input_4213526618_id67);
    float result_3121303321 = (result_2663986655 + input_2695184424_id68);
    float saturate_292865591 = saturate(result_3121303321);
    float mapClamp_3346450754 = mapClamp_id17(saturate_292865591, input_1008064003_id69, input_3700879862_id70, input_731376932_id71, input_2259957357_id72);
    float result_2446287367 = (length_2347671528 * input_1589925093_id73);
    float mapClamp_4254575914 = mapClamp_id17(result_2446287367, input_1451664569_id74, input_509500895_id75, input_894334749_id76, input_4103985858_id77);
    float length_1937533563 = length(textureNode_4186874210);
    float result_2212777548 = (length_1937533563 * input_963530165_id78);
    float saturate_848481867 = saturate(result_2212777548);
    float mapClamp_2416757550 = mapClamp_id17(saturate_848481867, input_3385045261_id79, input_3683262863_id80, input_2047515034_id81, input_1657637869_id82);
    float result_1411443822 = (mapClamp_2416757550 + input_4182658975_id83);
    float3 Float3Join_1625856174 = float3(mapClamp_3346450754, mapClamp_4254575914, result_1411443822);
    float Float3JoinX_2783812899 = Float3Join_1625856174.x;
    float2 Float3JoinYz_2621278867 = Float3Join_1625856174.yz;
    float Float3JoinYzY_714423833 = Float3JoinYz_2621278867.y;
    float result_1195652910 = (Float3JoinYzY_714423833 / input_1083042877_id84);
    float result_2564202292 = (result_1195652910 * 6.2831855);
    float sin_2719715000 = sin(result_2564202292);
    float cos_219797283 = cos(result_2564202292);
    float2 float2Join_760355971 = float2(sin_2719715000, cos_219797283);
    float Float3JoinYzX_3874337965 = Float3JoinYz_2621278867.x;
    float2 cast21_2598079599 = cast21_id22(Float3JoinYzX_3874337965);
    float2 result_2353169944 = (float2Join_760355971 * cast21_2598079599);
    float2 cast21_1163665875 = cast21_id22(input_4186378469_id85);
    float2 result_2802184796 = (result_2353169944 / cast21_1163665875 / float2(2, 2));
    float2 result_1446378428 = (result_2802184796 + float2(0, 0));
    float resultY_4153652987 = result_1446378428.y;
    float resultX_994450245 = result_1446378428.x;
    float3 Float3Join_3828282327 = float3(Float3JoinX_2783812899, resultY_4153652987, resultX_994450245);
    float3 OKLabToRGB_608551925 = OKLabToRGB_id23(Float3Join_3828282327);
    float4 join_2394492488 = float4(OKLabToRGB_608551925, 1);
    float4 fromFloat_1712222414 = float4(input_3587091098_id86, input_3587091098_id86, input_3587091098_id86, input_3587091098_id86);
    float4 lerp_2450774488 = lerp(join_1363155586, join_2394492488, fromFloat_1712222414);
    float4 result_728572349 = (lerp_2450774488 * input_3262273984_id87);
    pcolor_85334732 = result_728572349;
    float result_178081761 = (age_2482303265 / lifetime_4225436868);
    float saturate_2375641020 = saturate(result_178081761);
    float mapClamp_1971295228 = mapClamp_id17(saturate_2375641020, 0, input_3822400640_id88, 0, 1);
    float mapClamp_2467270804 = mapClamp_id17(saturate_2375641020, 1, input_4153970573_id89, 0, 1);
    float min_46644429 = min(mapClamp_1971295228, mapClamp_2467270804);
    float distance_2212632467 = distance(input_993111470_id94, pposition_3241756517);
    float smoothstep_3563504850 = smoothstep(input_22859689_id92, input_4111911349_id93, distance_2212632467);
    float lerp_1047388413 = lerp(input_1052235895_id90, input_3688583009_id91, smoothstep_3563504850);
    float PPositionZ_2872062533 = pposition_3241756517.z;
    float smoothstep_1055078628 = smoothstep(input_2967305502_id95, input_769654603_id96, PPositionZ_2872062533);
    float result_2143930952 = (1 - smoothstep_1055078628);
    float length_1068318793 = length(velocity_2977897027);
    float result_1736726652 = (length_1068318793 * input_850259890_id97);
    float clamp_761895329 = clamp(result_1736726652, input_2698811508_id98, input_3895582785_id99);
    float result_92645669 = (min_46644429 * lerp_1047388413 * result_2143930952 * clamp_761895329);
    float result_496884038 = (result_92645669 * input_1040737018_id100);
    float PPositionZ_1509738742 = pposition_3241756517.z;
    float smoothstep_3826156536 = smoothstep(input_2169247157_id101, input_3373081772_id102, PPositionZ_1509738742);
    float result_2656510244 = (1 - smoothstep_3826156536);
    float result_1930965158 = (result_496884038 * result_2656510244);
    float PPositionX_1220439959 = pposition_3241756517.x;
    float smoothstep_3780920415 = smoothstep(input_3558319718_id103, input_1590255359_id104, PPositionX_1220439959);
    float result_939230088 = (1 - smoothstep_3780920415);
    float smoothstep_4196169472 = smoothstep(input_2678118171_id105, input_3144877680_id106, PPositionX_1220439959);
    float result_1180131111 = (1 - smoothstep_4196169472);
    float result_2024999530 = (result_939230088 * result_1180131111);
    float result_654711350 = (result_1930965158 * result_2024999530);
    float PPositionY_3178665502 = pposition_3241756517.y;
    float smoothstep_2559804464 = smoothstep(input_900812259_id107, input_300974180_id108, PPositionY_3178665502);
    float result_2861488579 = (1 - smoothstep_2559804464);
    float smoothstep_249607161 = smoothstep(input_2053685682_id109, input_2842429967_id110, PPositionY_3178665502);
    float result_14325046 = (1 - smoothstep_249607161);
    float result_2693863960 = (result_2861488579 * result_14325046);
    float result_502307194 = (result_654711350 * result_2693863960);
    size_2519541683 = result_502307194;
    if (input_1327967329_id113)
    {
        float3 clamp_3253069800 = clamp(pposition_3241756517, input_1600537899_id111, input_3938425941_id112);
        pposition_3241756517 = clamp_3253069800;
    }
    getBuffer_608833529.Velocity = velocity_2977897027;
    getBuffer_608833529.PPosition = pposition_3241756517;
    getBuffer_608833529.Age = age_2482303265;
    getBuffer_608833529.AxisX = axisx_356383302;
    getBuffer_608833529.AxisY = axisy_1317866440;
    getBuffer_608833529.AxisZ = axisz_1743780170;
    getBuffer_608833529.PColor = pcolor_85334732;
    getBuffer_608833529.Size = size_2519541683;
    DynamicBufferInput_1430151697_id23[IndexX_2325186706] = getBuffer_608833529;
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
