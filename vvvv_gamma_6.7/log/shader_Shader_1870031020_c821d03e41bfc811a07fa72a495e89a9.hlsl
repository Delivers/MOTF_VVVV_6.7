/**************************
***** Compiler Parameters *****
***************************
@P EffectName: Shader_1870031020
***************************
****  ConstantBuffers  ****
***************************
cbuffer Inputs [Size: 96]
@C    input_3303419555_id39 => input_3303419555
@C    input_1262461491_id40 => input_1262461491
@C    input_3654784956_id41 => input_3654784956
@C    input_732094099_id42 => input_732094099
cbuffer PerDraw [Size: 416]
@C    World_id24 => Transformation.World
@C    WorldInverse_id25 => Transformation.WorldInverse
@C    WorldInverseTranspose_id26 => Transformation.WorldInverseTranspose
@C    WorldView_id27 => Transformation.WorldView
@C    WorldViewInverse_id28 => Transformation.WorldViewInverse
@C    WorldViewProjection_id29 => Transformation.WorldViewProjection
@C    WorldScale_id30 => Transformation.WorldScale
@C    EyeMS_id31 => Transformation.EyeMS
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    SamplerInput_1232363789_id38 => SamplerInput_1232363789 [Stage: Pixel, Slot: (0-0)]
@R    TextureInput_4123088391_id37 => TextureInput_4123088391 [Stage: Pixel, Slot: (0-0)]
@R    Inputs => Inputs [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    Shader_1870031020 => b1490c66e798fcdd196ecfa4c085e7d1
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    NormalStream => ea68512133899a045766d21afb59733a
***************************
*****     Stages      *****
***************************
@G    Vertex => 9274efd9116d5ab7a947f1996630bc3c
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id24;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id25;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id26;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id27;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id28;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id29; // Offset:  320 Size:    64
//   float3 WorldScale_id30;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id31;                 // Offset:  400 Size:    16 [unused]
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
// NORMAL                   0   xyz         1     NONE   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// POSITION                 0   xyzw        1     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[24], immediateIndexed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.Position_id14.x; v0.y <- __input__.Position_id14.y; v0.z <- __input__.Position_id14.z; v0.w <- __input__.Position_id14.w; 
//   v1.x <- __input__.meshNormal_id32.x; v1.y <- __input__.meshNormal_id32.y; v1.z <- __input__.meshNormal_id32.z; 
//   o1.x <- <VSMain return value>.Position_id14.x; o1.y <- <VSMain return value>.Position_id14.y; o1.z <- <VSMain return value>.Position_id14.z; o1.w <- <VSMain return value>.Position_id14.w; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 140 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_Shader_1870031020_c821d03e41bfc811a07fa72a495e89a9.hlsl"
dp4 o0.x, v0.xyzw, cb0[20].xyzw
dp4 o0.y, v0.xyzw, cb0[21].xyzw
dp4 o0.z, v0.xyzw, cb0[22].xyzw
dp4 o0.w, v0.xyzw, cb0[23].xyzw

#line 149
mov o1.xyzw, v0.xyzw
ret 
// Approximately 6 instruction slots used
@G    Pixel => cfcb177a52429fea15bea5d91af7d1d1
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Inputs
// {
//
//   float4x4 input_3303419555_id39;    // Offset:    0 Size:    64
//   float2 input_1262461491_id40;      // Offset:   64 Size:     8
//   float input_3654784956_id41;       // Offset:   72 Size:     4
//   float4 input_732094099_id42;       // Offset:   80 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// SamplerInput_1232363789_id38      sampler      NA          NA             s0      1 
// TextureInput_4123088391_id37      texture  float4          2d             t0      1 
// Inputs                            cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// POSITION                 0   xyzw        1     NONE   float   xyz 
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
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xyz
dcl_output o0.xyzw
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.Position_id14.x; v1.y <- __input__.Position_id14.y; v1.z <- __input__.Position_id14.z; v1.w <- __input__.Position_id14.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 71 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_Shader_1870031020_c821d03e41bfc811a07fa72a495e89a9.hlsl"
max r0.x, |v1.x|, |v1.z|
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
min r0.y, |v1.x|, |v1.z|
mul r0.x, r0.x, r0.y
mul r0.y, r0.x, r0.x
mad r0.z, r0.y, l(0.020835), l(-0.085133)
mad r0.z, r0.y, r0.z, l(0.180141)
mad r0.z, r0.y, r0.z, l(-0.330299)
mad r0.y, r0.y, r0.z, l(0.999866)
mul r0.z, r0.y, r0.x
mad r0.z, r0.z, l(-2.000000), l(1.570796)
lt r0.w, |v1.x|, |v1.z|
and r0.z, r0.w, r0.z
mad r0.x, r0.x, r0.y, r0.z
lt r0.y, v1.x, -v1.x
and r0.y, r0.y, l(0xc0490fdb)
add r0.x, r0.y, r0.x
min r0.y, v1.x, v1.z
lt r0.y, r0.y, -r0.y
max r0.z, v1.x, v1.z
ge r0.z, r0.z, -r0.z
and r0.y, r0.z, r0.y
movc r0.x, r0.y, -r0.x, r0.x  // r0.x <- atan2_2374129258

#line 72
mul r0.x, r0.x, l(0.159155)  // r0.x <- result_3296172054

#line 74
frc r0.x, r0.x  // r0.x <- frac_1589069225

#line 83
add r0.x, r0.x, l(0.500000)  // r0.x <- result_39827643

#line 84
frc r0.x, r0.x  // r0.x <- frac_3392180429

#line 89
mul r0.x, r0.x, l(6.283185)  // r0.x <- result_2974969103

#line 90
sincos r0.x, r1.x, r0.x  // r1.x <- cos_2487611414; r0.x <- sin_2945859544

#line 76
dp3 r0.y, v1.xyzx, v1.xyzx
sqrt r0.y, r0.y  // r0.y <- length_596904872

#line 77
div r0.y, v1.y, r0.y  // r0.y <- result_4101001909

#line 78
mad r0.z, |r0.y|, l(-0.018729), l(0.074261)
mad r0.z, r0.z, |r0.y|, l(-0.212114)
mad r0.z, r0.z, |r0.y|, l(1.570729)
add r0.w, -|r0.y|, l(1.000000)
lt r0.y, r0.y, -r0.y
sqrt r0.w, r0.w
mul r1.y, r0.w, r0.z
mad r1.y, r1.y, l(-2.000000), l(3.141593)
and r0.y, r0.y, r1.y
mad r0.y, r0.z, r0.w, r0.y

#line 79
add r0.y, -r0.y, l(3.141593)  // r0.y <- result_177278779

#line 86
mad r0.y, -r0.y, l(0.318310), l(1.000000)  // r0.y <- result_3509443140

#line 93
mad r0.y, r0.y, l(3.141593), l(-1.570796)  // r0.y <- result_3306262997

#line 94
sincos r2.x, r3.x, r0.y  // r3.x <- cos_4169428970; r2.x <- sin_388777271

#line 95
mul r1.x, r1.x, r3.x  // r1.x <- result_2044089410

#line 98
mul r1.z, r0.x, r3.x  // r1.z <- result_1227924672

#line 101
mov r1.y, r2.x
mov r1.w, l(1.000000)
dp4 r0.z, r1.xyzw, cb0[2].xyzw  // r0.z <- mul_35406688.z
dp4 r0.x, r1.xyzw, cb0[0].xyzw  // r0.x <- mul_35406688.x
dp4 r0.y, r1.xyzw, cb0[1].xyzw  // r0.y <- mul_35406688.y

#line 105
max r0.w, |r0.x|, |r0.z|
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
min r1.x, |r0.x|, |r0.z|
mul r0.w, r0.w, r1.x
mul r1.x, r0.w, r0.w
mad r1.y, r1.x, l(0.020835), l(-0.085133)
mad r1.y, r1.x, r1.y, l(0.180141)
mad r1.y, r1.x, r1.y, l(-0.330299)
mad r1.x, r1.x, r1.y, l(0.999866)
mul r1.y, r0.w, r1.x
mad r1.y, r1.y, l(-2.000000), l(1.570796)
lt r1.z, |r0.x|, |r0.z|
and r1.y, r1.z, r1.y
mad r0.w, r0.w, r1.x, r1.y
lt r1.x, r0.x, -r0.x
and r1.x, r1.x, l(0xc0490fdb)
add r0.w, r0.w, r1.x
min r1.x, r0.x, r0.z
lt r1.x, r1.x, -r1.x
max r1.y, r0.x, r0.z

#line 110
dp3 r0.x, r0.xyzx, r0.xyzx
sqrt r0.x, r0.x  // r0.x <- length_79314515

#line 111
div r0.x, r0.y, r0.x  // r0.x <- result_3766637798

#line 105
ge r0.y, r1.y, -r1.y
and r0.y, r0.y, r1.x
movc r0.y, r0.y, -r0.w, r0.w  // r0.y <- atan2_1447914543

#line 106
mul r0.y, r0.y, l(0.159155)  // r0.y <- result_2457452751

#line 108
frc r1.x, r0.y  // r1.x <- frac_3129836016

#line 112
mad r0.y, |r0.x|, l(-0.018729), l(0.074261)
mad r0.y, r0.y, |r0.x|, l(-0.212114)
mad r0.y, r0.y, |r0.x|, l(1.570729)
add r0.z, -|r0.x|, l(1.000000)
lt r0.x, r0.x, -r0.x
sqrt r0.z, r0.z
mul r0.w, r0.z, r0.y
mad r0.w, r0.w, l(-2.000000), l(3.141593)
and r0.x, r0.x, r0.w
mad r0.x, r0.y, r0.z, r0.x

#line 113
add r0.x, -r0.x, l(3.141593)  // r0.x <- result_2190982782

#line 114
mul r1.y, r0.x, l(0.318310)  // r1.y <- result_1532481440

#line 116
add r0.xy, r1.xyxx, l(-0.375000, -0.250000, 0.000000, 0.000000)  // r0.x <- result_1288209105.x; r0.y <- result_1288209105.y

#line 120
mad r0.xy, r0.xyxx, l(8.000000, 4.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r0.x <- result_4026695157.x; r0.y <- result_4026695157.y

#line 121
div r0.xy, r0.xyxx, cb0[4].xyxx  // r0.x <- result_3788136997.x; r0.y <- result_3788136997.y

#line 122
add r0.xy, r0.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)  // r0.x <- result_2252973735.x; r0.y <- result_2252973735.y

#line 123
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r0.x <- result_652119429.x; r0.y <- result_652119429.y

#line 124
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s0  // r0.x <- textureNode_2921326209.x; r0.y <- textureNode_2921326209.y; r0.z <- textureNode_2921326209.z; r0.w <- textureNode_2921326209.w

#line 126
eq r1.x, r0.w, cb0[4].z  // r1.x <- Assign_4094196617

#line 127
movc o0.xyzw, r1.xxxx, cb0[5].xyzw, r0.xyzw

#line 131
ret 
// Approximately 102 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float4 Position_id14;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float4 Position_id14 : POSITION;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float3 meshNormal_id32;
    float4 PositionWS_id15;
    float3 normalWS_id35;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float4 Position_id14 : POSITION;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
    float3 meshNormal_id32 : NORMAL;
};
cbuffer Inputs 
{
    float4x4 input_3303419555_id39;
    float2 input_1262461491_id40;
    float input_3654784956_id41;
    float4 input_732094099_id42;
};
cbuffer PerDraw 
{
    float4x4 World_id24;
    float4x4 WorldInverse_id25;
    float4x4 WorldInverseTranspose_id26;
    float4x4 WorldView_id27;
    float4x4 WorldViewInverse_id28;
    float4x4 WorldViewProjection_id29;
    float3 WorldScale_id30;
    float4 EyeMS_id31;
};
cbuffer PerView 
{
    float4x4 View_id17;
    float4x4 ViewInverse_id18;
    float4x4 Projection_id19;
    float4x4 ProjectionInverse_id20;
    float4x4 ViewProjection_id21;
    float2 ProjScreenRay_id22;
    float4 Eye_id23;
};
Texture2D TextureInput_4123088391_id37;
SamplerState SamplerInput_1232363789_id38;
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    float3 PositionXyz_1019871647 = streams.Position_id14.xyz;
    float3 result_433001226 = (PositionXyz_1019871647 + float3(0, 0, 0));
    float resultZ_1039745837 = result_433001226.z;
    float resultX_623789872 = result_433001226.x;
    float atan2_2374129258 = atan2(resultZ_1039745837, resultX_623789872);
    float result_3296172054 = (atan2_2374129258 / 6.2831855);
    float result_1306231981 = (result_3296172054 + 1);
    float frac_1589069225 = frac(result_1306231981);
    float resultY_1328795729 = result_433001226.y;
    float length_596904872 = length(result_433001226);
    float result_4101001909 = (resultY_1328795729 / length_596904872);
    float asin_820007071 = asin(result_4101001909);
    float result_177278779 = (asin_820007071 + 1.5707964);
    float result_664291193 = (result_177278779 / 3.1415927);
    float2 float2Join_4089749744 = float2(frac_1589069225, result_664291193);
    float float2JoinX_3163224666 = float2Join_4089749744.x;
    float result_39827643 = (float2JoinX_3163224666 + 0.5);
    float frac_3392180429 = frac(result_39827643);
    float float2JoinY_3320888974 = float2Join_4089749744.y;
    float result_3509443140 = (1 - float2JoinY_3320888974);
    float2 float2Join_3808008455 = float2(frac_3392180429, result_3509443140);
    float float2JoinX_1420973154 = float2Join_3808008455.x;
    float result_2974969103 = (float2JoinX_1420973154 * 6.2831855);
    float cos_2487611414 = cos(result_2974969103);
    float float2JoinY_273647650 = float2Join_3808008455.y;
    float result_2992636533 = (float2JoinY_273647650 * 3.1415927);
    float result_3306262997 = (result_2992636533 - 1.5707964);
    float cos_4169428970 = cos(result_3306262997);
    float result_2044089410 = (cos_2487611414 * cos_4169428970);
    float sin_388777271 = sin(result_3306262997);
    float sin_2945859544 = sin(result_2974969103);
    float result_1227924672 = (cos_4169428970 * sin_2945859544);
    float3 Float3Join_1840068636 = float3(result_2044089410, sin_388777271, result_1227924672);
    float4 join_4152955773 = float4(Float3Join_1840068636, 1);
    float4 mul_35406688 = mul(join_4152955773, input_3303419555_id39);
    float3 mulXyz_1189357971 = mul_35406688.xyz;
    float mulXyzZ_1802732344 = mulXyz_1189357971.z;
    float mulXyzX_613547007 = mulXyz_1189357971.x;
    float atan2_1447914543 = atan2(mulXyzZ_1802732344, mulXyzX_613547007);
    float result_2457452751 = (atan2_1447914543 / 6.2831855);
    float result_1652148088 = (result_2457452751 + 1);
    float frac_3129836016 = frac(result_1652148088);
    float mulXyzY_3693503892 = mulXyz_1189357971.y;
    float length_79314515 = length(mulXyz_1189357971);
    float result_3766637798 = (mulXyzY_3693503892 / length_79314515);
    float asin_3974193254 = asin(result_3766637798);
    float result_2190982782 = (asin_3974193254 + 1.5707964);
    float result_1532481440 = (result_2190982782 / 3.1415927);
    float2 float2Join_4003912457 = float2(frac_3129836016, result_1532481440);
    float2 result_1288209105 = (float2Join_4003912457 - float2(0.375, 0.25));
    float2 result_292656606 = (float2(0.625, 0.75) - float2(0.375, 0.25));
    float2 result_3014861202 = (result_1288209105 / result_292656606);
    float2 result_2119017809 = (result_3014861202 * float2(2, 2));
    float2 result_4026695157 = (result_2119017809 - float2(1, 1));
    float2 result_3788136997 = (result_4026695157 / input_1262461491_id40);
    float2 result_2252973735 = (result_3788136997 + float2(1, 1));
    float2 result_652119429 = (result_2252973735 * float2(0.5, 0.5));
    float4 textureNode_2921326209 = TextureInput_4123088391_id37.Sample(SamplerInput_1232363789_id38, result_652119429);
    float textureNodeW_1406788065 = textureNode_2921326209.w;
    bool Assign_4094196617 = textureNodeW_1406788065 == input_3654784956_id41;
    float4 expression_2683253997 = Assign_4094196617 ? input_732094099_id42 : textureNode_2921326209;
    streams.ColorTarget_id2 = expression_2683253997;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    streams.meshNormal_id32 = __input__.meshNormal_id32;
    float4 mul_1331728824 = mul(streams.Position_id14, World_id24);
    streams.PositionWS_id15 = mul_1331728824;
    float4 mul_3662163095 = mul(streams.Position_id14, WorldViewProjection_id29);
    streams.ShadingPosition_id0 = mul_3662163095;
    float4 join_757695732 = float4(streams.meshNormal_id32, 0);
    float4 mul_3635348608 = mul(join_757695732, WorldInverseTranspose_id26);
    float3 mulXyz_3358552257 = mul_3635348608.xyz;
    streams.normalWS_id35 = mulXyz_3358552257;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.Position_id14 = streams.Position_id14;
    return __output__;
}
