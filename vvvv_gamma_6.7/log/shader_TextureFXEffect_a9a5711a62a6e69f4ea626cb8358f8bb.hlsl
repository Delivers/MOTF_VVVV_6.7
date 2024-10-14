/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin Neurons_Internal_TextureFX [{ColorA = InputFloat4<ShaderFX.InputValueFloat4_Color,PerUpdate>}, {ColorB = InputFloat4<ShaderFX.InputValueFloat4_Color.i1,PerUpdate>}, {Length = InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>}, {Scale = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}, {Time = InputFloat<ShaderFX.InputValueFloat,PerUpdate>}]
@P ColorA: InputFloat4<ShaderFX.InputValueFloat4_Color,PerUpdate>
@P ColorB: InputFloat4<ShaderFX.InputValueFloat4_Color.i1,PerUpdate>
@P Time: InputFloat<ShaderFX.InputValueFloat,PerUpdate>
@P Scale: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P Length: InputFloat<ShaderFX.InputValueFloat.i1,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 48]
@C    InputValue_id99 => ShaderFX.InputValueFloat4_Color
@C    InputValue_id100 => ShaderFX.InputValueFloat4_Color.i1
@C    InputValue_id101 => ShaderFX.InputValueFloat.i1
@C    InputValue_id102 => ShaderFX.InputValueFloat2
@C    InputValue_id103 => ShaderFX.InputValueFloat
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
@C    Iteration_id98 => Neurons_Internal_TextureFX.Iteration
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerUpdate => PerUpdate [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    Neurons_Internal_TextureFX => d0b8eecbd02ff8be837b3e235359460c
@S    TextureFX => 27bb4f1f808a5eedf6dfeaa75c669c29
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
@S    AddonShaderUtils => 0d3496ddd24bfcbde4abd1deae724f64
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    ComputeFloat4 => f871947e9f604da432ea9fc3c9cb4363
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
#line 199 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_a9a5711a62a6e69f4ea626cb8358f8bb.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 203
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 73d7210104f33071b2a4ee6a3dfc5856
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id99;            // Offset:    0 Size:    16
//   float4 InputValue_id100;           // Offset:   16 Size:    16
//   float InputValue_id101;            // Offset:   32 Size:     4
//   float2 InputValue_id102;           // Offset:   36 Size:     8
//   float InputValue_id103;            // Offset:   44 Size:     4
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
//   int Iteration_id98;                // Offset:   80 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 176 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_a9a5711a62a6e69f4ea626cb8358f8bb.hlsl"
mul r0.xy, v1.xyxx, cb1[1].xyxx  // r0.x <- uv.x; r0.y <- uv.y

#line 177
mov r0.z, l(1.000000)
div r0.xyz, r0.xyzx, cb1[1].yyyy
add r0.xyz, -r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)  // r0.x <- d.x; r0.y <- d.y; r0.z <- d.z

#line 180
mov r1.xyz, l(0,0,0,0)  // r1.x <- p.x; r1.y <- p.y; r1.z <- p.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, cb2[5].x
  breakc_nz r1.w

#line 169
  add r1.w, r1.z, -cb0[2].w  // r1.w <- p.z

#line 170
  mul r2.x, r1.w, l(0.100000)  // r2.x <- a

#line 171
  sincos r3.x, r4.x, r2.x
  sincos r2.x, null, -r2.x
  mov r2.y, r4.x
  dp2 r4.x, r1.yxyy, r2.xyxx
  mov r2.z, r3.x
  dp2 r4.y, r1.yxyy, r2.yzyy
  mul r2.xy, r4.xyxx, cb0[2].yzyy  // r2.x <- p.x; r2.y <- p.y

#line 172
  sincos null, r2.xz, r2.xxyx
  sincos r3.x, null, r2.y
  sincos r3.y, null, r1.w
  add r2.xy, r2.xzxx, r3.xyxx
  dp2 r1.w, r2.xyxx, r2.xyxx
  sqrt r1.w, r1.w
  mad r1.w, -r1.w, cb0[2].x, l(0.100000)  // r1.w <- <f_id68 return value>

#line 181
  mad r1.xyz, r1.wwww, r0.xyzx, r1.xyzx
  iadd r0.w, r0.w, l(1)
endloop 

#line 182
sincos r0.xyz, null, r1.xyzx
add r0.xyz, r0.xyzx, l(2.000000, 5.000000, 9.000000, 0.000000)
dp3 r0.w, r1.xyzx, r1.xyzx
sqrt r0.w, r0.w
div r0.xyz, r0.xyzx, r0.wwww  // r0.x <- n.x; r0.y <- n.y; r0.z <- n.z

#line 157
dp3 r0.x, l(0.212656, 0.715158, 0.072186, 0.000000), r0.xyzx  // r0.x <- <GetLuminance_id33 return value>

#line 183
add r1.xyzw, -cb0[0].xyzw, cb0[1].xyzw
mad o0.xyzw, r0.xxxx, r1.xyzw, cb0[0].xyzw

#line 192
ret 
// Approximately 37 instruction slots used
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
    float4 InputValue_id99;
    float4 InputValue_id100;
    float InputValue_id101;
    float2 InputValue_id102;
    float InputValue_id103;
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
    int Iteration_id98;
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
float Compute_id71()
{
    return InputValue_id101;
}
float2 Compute_id72()
{
    return InputValue_id102;
}
float Compute_id70()
{
    return InputValue_id103;
}
float GetLuminance_id33(float3 rgb)
{
    return dot(float3(0.212656f, 0.715158f, 0.072186f), rgb);
}
float4 Compute_id74()
{
    return InputValue_id100;
}
float4 Compute_id73()
{
    return InputValue_id99;
}
float f_id68(float3 p)
{
    p.z -= Compute_id70();
    float a = p.z * .1;
    p.xy = mul(p.xy, float2x2(cos(a), sin(a), -sin(a), cos(a))) * Compute_id72();
    return .1 - length(cos(p.xy) + sin(p.yz)) * Compute_id71();
}
float4 Shading_id69(inout PS_STREAMS streams)
{
    float2 uv = streams.TexCoord_id62 * ViewSize_id77;
    float3 d = 0.5 - float3(uv, 1) / ViewSize_id77.yyy;
    float3 p;

    for (int i = 0; i < Iteration_id98; i++)
        p += f_id68(p) * d;
    float3 n = (sin(p) + float3(2, 5, 9)) / length(p);
    return lerp(Compute_id73(), Compute_id74(), GetLuminance_id33(n));
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id69(streams);
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
