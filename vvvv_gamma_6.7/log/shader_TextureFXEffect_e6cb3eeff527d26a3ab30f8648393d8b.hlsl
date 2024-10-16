/**************************
***** Compiler Parameters *****
***************************
@P EffectName: TextureFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin UVDilate_TextureFX [{Control = InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>}]
@P Control: InputFloat4<ShaderFX.InputValueFloat4,PerUpdate>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer PerUpdate [Size: 16]
@C    InputValue_id89 => ShaderFX.InputValueFloat4
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
@C    MaxSteps_id88 => UVDilate_TextureFX.MaxSteps
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
@S    UVDilate_TextureFX => 26965f44a3b62efee8b4c806de668314
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
@S    InputFloat4 => f6891eacc9ea2d912dcfded49ea96a71
@S    DeclFloat4 => 03cb445d0e450d0a37ad5f24c8a93feb
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
#line 212 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_e6cb3eeff527d26a3ab30f8648393d8b.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 216
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => efc1274f746aa634f8efc139215522c3
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerUpdate
// {
//
//   float4 InputValue_id89;            // Offset:    0 Size:    16
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
//   int MaxSteps_id88;                 // Offset:   80 Size:     4
//      = 0x0000000a 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
dcl_indexableTemp x0[8], 4
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 141 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_TextureFXEffect_e6cb3eeff527d26a3ab30f8648393d8b.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <InTex0_id26 return value>.x; r0.y <- <InTex0_id26 return value>.y; r0.z <- <InTex0_id26 return value>.z; r0.w <- <InTex0_id26 return value>.w

#line 151
mov x0[0].xy, l(-1.000000,0,0,0)
mov x0[1].xy, l(1.000000,0,0,0)
mov x0[2].xy, l(0,1.000000,0,0)
mov x0[3].xy, l(0,-1.000000,0,0)
mov x0[4].xy, l(-1.000000,1.000000,0,0)
mov x0[5].xy, l(1.000000,1.000000,0,0)
mov x0[6].xy, l(1.000000,-1.000000,0,0)
mov x0[7].xy, l(-1.000000,-1.000000,0,0)

#line 155
eq r1.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r1.x, r1.y, r1.x
and r1.x, r1.z, r1.x
if_nz r1.x

#line 149
  div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), cb1[1].x  // r1.x <- texelsize

#line 158
  mov r1.yzw, l(0,0,0,0)  // r1.y <- curminsample.x; r1.z <- curminsample.y; r1.w <- curminsample.z
  mov r2.xy, l(10000000.000000,0,0,0)  // r2.x <- mindist; r2.y <- i
  loop 
    ige r2.z, r2.y, cb2[5].x
    breakc_nz r2.z

#line 160
    iadd r2.y, r2.y, l(1)

#line 164
    itof r2.z, r2.y

#line 162
    mov r3.xyz, r1.yzwy  // r3.x <- curminsample.x; r3.y <- curminsample.y; r3.z <- curminsample.z
    mov r2.w, r2.x  // r2.w <- mindist
    mov r3.w, l(0)  // r3.w <- j
    loop 
      ige r4.x, r3.w, l(8)
      breakc_nz r4.x

#line 164
      mov r4.xy, x0[r3.w + 0].xyxx
      mul r4.xy, r1.xxxx, r4.xyxx
      mul r4.zw, r2.zzzz, r4.xxxy
      mad r4.xy, r4.xyxx, r2.zzzz, v1.xyxx  // r4.x <- curUV.x; r4.y <- curUV.y

#line 165
      sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r4.xyxx, t0.xyzw, s0, l(0.000000)  // r5.x <- offsetsample.x; r5.y <- offsetsample.y; r5.z <- offsetsample.z

#line 166
      ne r6.xyz, r5.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
      or r5.w, r6.y, r6.x
      or r5.w, r6.z, r5.w
      if_nz r5.w

#line 168
        add r6.xy, -r4.xyxx, v1.xyxx
        dp2 r5.w, r6.xyxx, r6.xyxx
        sqrt r5.w, r5.w  // r5.w <- curdist

#line 169
        lt r6.x, r5.w, r2.w
        if_nz r6.x

#line 171
          mad r4.xy, r4.zwzz, l(0.250000, 0.250000, 0.000000, 0.000000), r4.xyxx  // r4.x <- projectUV.x; r4.y <- projectUV.y

#line 172
          sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t0.xyzw, s0, l(0.000000)  // r4.x <- direction.x; r4.y <- direction.y; r4.z <- direction.z

#line 174
          ne r6.xyz, r4.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
          or r4.w, r6.y, r6.x
          or r4.w, r6.z, r4.w

#line 176
          add r4.xyz, -r4.xyzx, r5.xyzx  // r4.x <- delta.x; r4.y <- delta.y; r4.z <- delta.z

#line 177
          mad r4.xyz, r4.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000), r5.xyzx  // r4.x <- curminsample.x; r4.y <- curminsample.y; r4.z <- curminsample.z

#line 182
          movc r3.xyz, r4.wwww, r4.xyzx, r5.xyzx  // r3.x <- curminsample.x; r3.y <- curminsample.y; r3.z <- curminsample.z

#line 183
          mov r2.w, r5.w
        endif 

#line 184
      endif 

#line 185
      iadd r3.w, r3.w, l(1)

#line 186
    endloop 
    mov r1.yzw, r3.xxyz  // r1.y <- curminsample.x; r1.z <- curminsample.y; r1.w <- curminsample.z
    mov r2.x, r2.w  // r2.x <- mindist

#line 188
  endloop 

#line 190
else 
  mov r1.yzw, r0.xxyz  // r1.y <- curminsample.x; r1.z <- curminsample.y; r1.w <- curminsample.z
endif 

#line 196
add r1.xyz, -r0.xyzx, r1.yzwy
mov r1.w, l(0)
mad o0.xyzw, cb0[0].xyzw, r1.xyzw, r0.xyzw

#line 205
ret 
// Approximately 64 instruction slots used
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
    float4 InputValue_id89;
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
    int MaxSteps_id88 = 10;
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
float4 InTex0_id26(inout PS_STREAMS streams)
{
    return Texture0_id14.SampleLevel(Sampler0_id52, streams.TexCoord_id62, 0);
}
float4 Compute_id30()
{
    return InputValue_id89;
}
float4 Filter_id29(inout PS_STREAMS streams, float4 tex0col)
{
    float texelsize = 1 / ViewSize_id77;
    float mindist = 10000000;
    float2 offsets[8] = { float2(-1, 0), float2(1, 0), float2(0, 1), float2(0, -1), float2(-1, 1), float2(1, 1), float2(1, -1), float2(-1, -1)};
    float3 sample = InTex0_id26(streams);
    float3 curminsample = sample;
    float2 uv = streams.TexCoord_id62;
    if (sample.x == 0 && sample.y == 0 && sample.z == 0)
    {
        int i = 0;
        while (i < MaxSteps_id88)
        {
            i++;
            int j = 0;
            while (j < 8)
            {
                float2 curUV = uv + offsets[j] * texelsize * i;
                float3 offsetsample = Texture0_id14.SampleLevel(Sampler0_id52, curUV, 0);
                if (offsetsample.x != 0 || offsetsample.y != 0 || offsetsample.z != 0)
                {
                    float curdist = length(uv - curUV);
                    if (curdist < mindist)
                    {
                        float2 projectUV = curUV + offsets[j] * texelsize * i * 0.25;
                        float3 direction = Texture0_id14.SampleLevel(Sampler0_id52, projectUV, 0);
                        mindist = curdist;
                        if (direction.x != 0 || direction.y != 0 || direction.z != 0)
                        {
                            float3 delta = offsetsample - direction;
                            curminsample = offsetsample + delta * 4;
                        }
                        else
                        {
                            curminsample = offsetsample;
                        }
                    }
                }
                j++;
            }

        }

    }
    return float4(curminsample, tex0col.a);
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
