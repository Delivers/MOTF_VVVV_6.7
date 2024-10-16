/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ComputeFXEffect
@P   - ComputeEffectShader.ThreadNumbers: X:1 Y:1 Z:1
@P EffectNodeBase.EffectNodeBaseShader: mixin BilateralBlurPass_Internal_ComputeFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDispatch [Size: 32]
@C    ThreadGroupCountGlobal_id10 => ComputeShaderBase.ThreadGroupCountGlobal
@C    BlurSharpeness_id14 => BilateralBlurPass_Internal_ComputeFX.BlurSharpeness
@C    DeltaUV_id15 => BilateralBlurPass_Internal_ComputeFX.DeltaUV
***************************
******  Resources    ******
***************************
@R    SrcAOTerm_id11 => BilateralBlurPass_Internal_ComputeFX.SrcAOTerm [Stage: Compute, Slot: (0-0)]
@R    SrcDepth_id12 => BilateralBlurPass_Internal_ComputeFX.SrcDepth [Stage: Compute, Slot: (1-1)]
@R    OutWorkingAOTerm_id13 => BilateralBlurPass_Internal_ComputeFX.OutWorkingAOTerm [Stage: Compute, Slot: (0-0)]
@R    PerDispatch => PerDispatch [Stage: Compute, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ComputeShaderBase => 8f045851eaa4513eb38a704d53889e6d
@S    BilateralBlurPass_Internal_ComputeFX => 709c50c1e8cff412aa57251532cb2a18
***************************
*****     Stages      *****
***************************
@G    Compute => 3f32f0e7c429d11ac8aadb26fe73cb5f
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
//   float BlurSharpeness_id14;         // Offset:   12 Size:     4
//   float2 DeltaUV_id15;               // Offset:   16 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// SrcAOTerm_id11                    texture    uint          2d             t0      1 
// SrcDepth_id12                     texture   float          2d             t1      1 
// OutWorkingAOTerm_id13                 UAV    uint          2d             u0      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_resource_texture2d (uint,uint,uint,uint) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_uav_typed_texture2d (uint,uint,uint,uint) u0
dcl_input vThreadID.xy
dcl_temps 5
dcl_thread_group 1, 1, 1
//
// Initial variable locations:
//   vThreadGroupID.x <- __input__.GroupId_id0.x; vThreadGroupID.y <- __input__.GroupId_id0.y; vThreadGroupID.z <- __input__.GroupId_id0.z; 
//   vThreadID.x <- __input__.DispatchThreadId_id1.x; vThreadID.y <- __input__.DispatchThreadId_id1.y; vThreadID.z <- __input__.DispatchThreadId_id1.z
//
#line 41 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ComputeFXEffect_ff4bf7bb50b118d393570d84cda6b2c2.hlsl"
mov r0.xy, vThreadID.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.x, r0.xyww, t0.xyzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t1.xyzw  // r0.x <- depth

#line 41
utof r0.y, r1.x  // r0.y <- ao
mov r1.zw, l(0,0,0,0)

#line 53
utof r0.zw, vThreadID.xxxy
add r2.xy, r0.zwzz, -cb0[1].xyxx
ftou r1.xy, r2.xyxx  // r1.x <- uv.x; r1.y <- uv.y

#line 41
ld_indexable(texture2d)(uint,uint,uint,uint) r2.x, r1.xyww, t0.xyzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.x, r1.xyzw, t1.xyzw  // r1.x <- depth

#line 30
add r1.x, -r0.x, r1.x
mul r1.x, r1.x, cb0[0].w
mul r1.x, r1.x, l(0.200000)  // r1.x <- dz

#line 31
mad r1.x, -r1.x, r1.x, l(-0.005000)
exp r1.x, r1.x  // r1.x <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r2.x  // r1.y <- ao

#line 37
mad r0.y, r1.x, r1.y, r0.y  // r0.y <- totalAO

#line 36
add r1.x, r1.x, l(1.000000)  // r1.x <- totalW

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(-2.000000, -2.000000, -3.000000, -3.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.020000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.045000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(-4.000000, -4.000000, -5.000000, -5.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.080000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.125000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(-6.000000, -6.000000, -7.000000, -7.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.180000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.245000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(-8.000000, -8.000000, -9.000000, -9.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.320000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.405000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 61
mad r3.xyzw, cb0[1].xyxy, l(-10.000000, -10.000000, -11.500000, -11.500000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.500000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.605000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 61
mad r3.xyzw, cb0[1].xyxy, l(-13.500000, -13.500000, -15.500000, -15.500000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.845000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-1.125000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 61
mad r3.xyzw, cb0[1].xyxy, l(-17.500000, -17.500000, -19.500000, -19.500000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-1.445000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-1.805000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
add r1.yz, r0.zzwz, cb0[1].xxyx
ftou r2.xy, r1.yzyy  // r2.x <- uv.x; r2.y <- uv.y

#line 41
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.005000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r1.yz, cb0[1].xxyx, l(0.000000, 2.000000, 2.000000, 0.000000), r0.zzwz
ftou r2.xy, r1.yzyy

#line 41
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.020000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(3.000000, 3.000000, 4.000000, 4.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.045000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.080000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(5.000000, 5.000000, 6.000000, 6.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.125000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.180000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)

#line 53
mad r3.xyzw, cb0[1].xyxy, l(7.000000, 7.000000, 8.000000, 8.000000), r0.zwzw
ftou r3.xyzw, r3.zwxy  // r3.z <- uv.x; r3.w <- uv.y

#line 41
mov r2.xy, r3.zwzz
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.245000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.320000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 53
mad r2.xyzw, cb0[1].xyxy, l(9.000000, 9.000000, 10.000000, 10.000000), r0.zwzw
ftou r2.xyzw, r2.zwxy  // r2.z <- uv.x; r2.w <- uv.y

#line 41
mov r3.xy, r2.zwzz
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.405000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.500000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 61
mad r2.xyzw, cb0[1].xyxy, l(11.500000, 11.500000, 13.500000, 13.500000), r0.zwzw
ftou r2.xyzw, r2.zwxy  // r2.z <- uv.x; r2.w <- uv.y

#line 41
mov r3.xy, r2.zwzz
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r3.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r3.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.605000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 41
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r1.y, r2.xyww, t0.yxzw

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t1.yzxw  // r1.z <- depth

#line 30
add r1.z, -r0.x, r1.z
mul r1.z, r1.z, cb0[0].w
mul r1.z, r1.z, l(0.200000)  // r1.z <- dz

#line 31
mad r1.z, -r1.z, r1.z, l(-0.845000)
exp r1.z, r1.z  // r1.z <- <CrossBilateralWeight_id3 return value>

#line 41
utof r1.y, r1.y  // r1.y <- ao

#line 37
mad r0.y, r1.z, r1.y, r0.y

#line 36
add r1.x, r1.z, r1.x

#line 61
mad r2.xyzw, cb0[1].xyxy, l(15.500000, 15.500000, 17.500000, 17.500000), r0.zwzw
mad r0.zw, cb0[1].xxxy, l(0.000000, 0.000000, 19.500000, 19.500000), r0.zzzw
ftou r3.xy, r0.zwzz  // r3.x <- uv.x; r3.y <- uv.y
ftou r2.xyzw, r2.zwxy  // r2.z <- uv.x; r2.w <- uv.y

#line 41
mov r4.xy, r2.zwzz
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r0.z, r4.xyww, t0.yzxw

#line 42
ld_indexable(texture2d)(float,float,float,float) r0.w, r4.xyzw, t1.yzwx  // r0.w <- depth

#line 30
add r0.w, -r0.x, r0.w
mul r0.w, r0.w, cb0[0].w
mul r0.w, r0.w, l(0.200000)  // r0.w <- dz

#line 31
mad r0.w, -r0.w, r0.w, l(-1.125000)
exp r0.w, r0.w  // r0.w <- <CrossBilateralWeight_id3 return value>

#line 41
utof r0.z, r0.z  // r0.z <- ao

#line 37
mad r0.y, r0.w, r0.z, r0.y

#line 36
add r0.z, r0.w, r1.x  // r0.z <- totalW

#line 41
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r0.w, r2.xyww, t0.yzwx

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.x, r2.xyzw, t1.xyzw  // r1.x <- depth

#line 30
add r1.x, -r0.x, r1.x
mul r1.x, r1.x, cb0[0].w
mul r1.x, r1.x, l(0.200000)  // r1.x <- dz

#line 31
mad r1.x, -r1.x, r1.x, l(-1.445000)
exp r1.x, r1.x  // r1.x <- <CrossBilateralWeight_id3 return value>

#line 41
utof r0.w, r0.w  // r0.w <- ao

#line 37
mad r0.y, r1.x, r0.w, r0.y

#line 36
add r0.z, r0.z, r1.x

#line 41
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r0.w, r3.xyww, t0.yzwx

#line 42
ld_indexable(texture2d)(float,float,float,float) r1.x, r3.xyzw, t1.xyzw  // r1.x <- depth

#line 30
add r0.x, -r0.x, r1.x
mul r0.x, r0.x, cb0[0].w
mul r0.x, r0.x, l(0.200000)  // r0.x <- dz

#line 31
mad r0.x, -r0.x, r0.x, l(-1.805000)
exp r0.x, r0.x  // r0.x <- <CrossBilateralWeight_id3 return value>

#line 41
utof r0.w, r0.w  // r0.w <- ao

#line 37
mad r0.y, r0.x, r0.w, r0.y

#line 36
add r0.x, r0.x, r0.z  // r0.x <- totalW

#line 73
div r0.x, r0.y, r0.x  // r0.x <- totalAO

#line 79
ftou r0.x, r0.x
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx

#line 94
ret 
// Approximately 387 instruction slots used
***************************
*************************/
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
cbuffer PerDispatch 
{
    int3 ThreadGroupCountGlobal_id10;
    float BlurSharpeness_id14;
    float2 DeltaUV_id15;
};
Texture2D<uint> SrcAOTerm_id11;
Texture2D<float> SrcDepth_id12;
RWTexture2D<uint> OutWorkingAOTerm_id13;
float CrossBilateralWeight_id3(float r, float d, float d0)
{
    const float BlurSigma = 20 * 0.5;
    const float BlurFalloff = 1 / (2 * BlurSigma * BlurSigma);
    float dz = (d0 - d) * .2 * BlurSharpeness_id14;
    return exp2(-r * r * BlurFalloff - dz * dz);
}
void ProcessSample_id4(float2 aoz, float r, float d0, inout float totalAO, inout float totalW)
{
    float w = CrossBilateralWeight_id3(r, d0, aoz.y);
    totalW += w;
    totalAO += w * aoz.x;
}
void FetchAoAndDepth_id2(uint2 uv, inout float ao, inout float depth)
{
    ao = SrcAOTerm_id11.Load(int3(uv, 0));
    depth = SrcDepth_id12.Load(int3(uv, 0));
}
void ProcessRadius_id5(uint2 uv0, float2 deltaUV, float d0, inout float totalAO, inout float totalW)
{
    float ao, z;
    uint2 uv;
    float r = 1;

    [unroll]
    for (r; r <= 20 / 2; r += 1)
    {
        uv = uv0 + r * deltaUV;
        FetchAoAndDepth_id2(uv, ao, z);
        ProcessSample_id4(float2(ao, z), r, d0, totalAO, totalW);
    }

    [unroll]
    for (r; r <= 20; r += 2)
    {
        uv = uv0 + (r + 0.5) * deltaUV;
        FetchAoAndDepth_id2(uv, ao, z);
        ProcessSample_id4(float2(ao, z), r, d0, totalAO, totalW);
    }
}
float2 BilateralBlur_id6(uint2 uv, float2 deltaUV)
{
    float totalAO, depth;
    FetchAoAndDepth_id2(uv, totalAO, depth);
    float totalW = 1;
    ProcessRadius_id5(uv, -deltaUV, depth, totalAO, totalW);
    ProcessRadius_id5(uv, deltaUV, depth, totalAO, totalW);
    totalAO /= totalW;
    return float2(totalAO, depth);
}
void Compute_id7(inout CS_STREAMS streams)
{
    uint2 uv = streams.DispatchThreadId_id1.xy;
    OutWorkingAOTerm_id13[uv] = (uint)(BilateralBlur_id6(uv, DeltaUV_id15).x);
}
[numthreads(1, 1, 1)]
void CSMain(CS_INPUT __input__)
{
    CS_STREAMS streams = (CS_STREAMS)0;
    streams.GroupId_id0 = __input__.GroupId_id0;
    streams.DispatchThreadId_id1 = __input__.DispatchThreadId_id1;
    streams.ThreadCountX_id7 = 1;
    streams.ThreadCountY_id8 = 1;
    streams.ThreadCountZ_id9 = 1;
    streams.ThreadCountPerGroup_id5 = 1 * 1 * 1;
    streams.ThreadGroupCount_id4 = ThreadGroupCountGlobal_id10;
    streams.ThreadGroupIndex_id6 = (streams.GroupId_id0.z * streams.ThreadGroupCount_id4.y + streams.GroupId_id0.y) * streams.ThreadGroupCount_id4.x + streams.GroupId_id0.x;
    Compute_id7(streams);
}
