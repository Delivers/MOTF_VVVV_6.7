/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ToShaderFX_0> [{Value = Shader_1480908368}]]}]}, {Value = GetVarFloat4<ToShaderFX_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<ToShaderFX_1> [{Value = Shader_1665303651}]]}]}, {Value = GetVarFloat<ToShaderFX_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<ToShaderFX_2> [{Value = Shader_879528699}]]}]}, {Value = GetVarFloat<ToShaderFX_2>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ToShaderFX_3> [{Value = Shader_662280689}]]}]}, {Value = GetVarFloat4<ToShaderFX_3>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<ToShaderFX_4> [{Value = Shader_190982479}]]}]}, {Value = GetVarFloat<ToShaderFX_4>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaDiscard,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AlphaDiscardValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>, MaterialSurfaceTransparentAlphaDiscard]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.UsePixelShaderWithDepthPass: True
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: Shader_1405253969
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
cbuffer PerMaterial [Size: 32]
@C    input_3440848145_id140 => input_3440848145
@C    input_2921916620_id141 => input_2921916620
@C    input_1653130546_id142 => input_1653130546
@C    input_3745212194_id143 => input_3745212194
@C    constantFloat_id200 => Material.AlphaDiscardValue
cbuffer PerView [Size: 352]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id207 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id207 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationWAndVP => ea6628bcd79c8f0060c612aa9fc4819b
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    PositionHStream4 => fc5e64dda1ac2bb4a31d58404dced340
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    NormalFromMesh => 85b71ad3ed9065c0803bfd77d09fb685
@S    NormalBase => b2b31addde884722f942622026837c39
@S    NormalUpdate => 6fd3c9b8fa943d9951400645fe40502e
@S    MaterialSurfacePixelStageCompositor => ea7a1f076313986d24488e1073848b3d
@S    PositionStream => f677bb6cb046d4f5f594cc6d8a703259
@S    MaterialPixelShadingStream => ad7a8ed4b25fbb8ce36df356d447fda2
@S    MaterialPixelStream => 3e33eeb836e260b00905946a5267b87e
@S    MaterialStream => 6f0bb68dde7beef4b38d4867da2f4d0a
@S    IStreamInitializer => acbd5b5e1debd1516c61049f39f04fdc
@S    LightStream => db97b763bbf12e53eaf0875b9db31366
@S    DirectLightGroupArray => c8057c9126020ee1c62e23facba5036d
@S    DirectLightGroup => 501cdd2e28afd5e234c08907f26aa5df
@S    ShadowGroup => bd0b502fd18b37aedabdcefe14deef34
@S    ShadowStream => e75e57a19e12d81083677a851803d69a
@S    TextureProjectionGroup => 6f741ec2cbd4e9796145b35f8fc18c45
@S    EnvironmentLightArray => 2dfda49afe728922257f9b497bc6b904
@S    EnvironmentLight => 67198c913f8c86fad248a6726699dd4d
@S    IMaterialSurface => 4439d1801d274f7bab04ddbc33b85f40
@S    ShadowMapCasterAlphaDiscard => 095fbdb816fe9fd033865929495a1180
@S    Shader_1405253969 => 8e7189042bb4aba2661b3d5a153822a6
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    MaterialSurfaceArray => 8cf3cc54fcd9949ce74f2e4caaa0d6d9
@S    MaterialSurfaceDiffuse => 959d3b90076611b0252419cb02190f99
@S    IMaterialSurfacePixel => b6013c701b8fca52da0c65754bb0a9ca
@S    Float4ToColor => c8460cd5d71b5fac69b6f550d07a4ce7
@S    ComputeFloat4 => f871947e9f604da432ea9fc3c9cb4363
@S    DoFloat4 => 312f1c610231ffe618620ce43634d0aa
@S    ComputeVoid => b62583a94b8503c79e9107f4b5bc9392
@S    ComputeOrder => 1d9b1cd3f5e3ad3f3f10e4fc88326cc7
@S    AssignVarFloat4 => 3a0c495ce724365e837c33156190acbe
@S    StreamVariableFloat4 => 2bfe58666cb67eed05b9410465550725
@S    Shader_1480908368 => 096961864f218731d31b1575c387d1b8
@S    FuseCoreBaseCast => 1273a005630aadfff132dcc52db04833
@S    GetVarFloat4 => 2805d4f95c82389ce488a02bbf6e99f5
@S    MaterialSurfaceGlossinessMap => 45f7d0ea2ac0e9c8c8e5c9d8f614e1ea
@S    FloatToScalar => 605ed86580e45cae6e52484a38db1c04
@S    ComputeFloat => 3607bb1fa125ec30a7afa60be79c4817
@S    DoFloat => 6cd1241010567bf9b5fdfccc1367f0fd
@S    AssignVarFloat => bdbba6e547b89ed4fc75c07ceb551948
@S    StreamVariableFloat => 247690c18e04365d061235ca1cb870ff
@S    Shader_1665303651 => 0dc2a431580049a7fb6edf0c868bc82d
@S    GetVarFloat => 959a28f1937e5e493bc7459164561cc0
@S    MaterialSurfaceMetalness => 4078836fd77689b5ca2e35f4eae23def
@S    Shader_879528699 => 7d3cd5bc3cf7fd6f602b3624228a41f9
@S    MaterialSurfaceSetStreamFromComputeColor => 3e54cdd2886f251ff6eed5013522c912
@S    IMaterialSurfaceVertex => b2f1bea807f62236e68fd5811c18ecb7
@S    MaterialVertexStream => 26b99458392c9ae358c2abbf2ff17606
@S    MaterialDisplacementStream => b317c013b5abf2b9d8f5c73d7079aa7a
@S    IMaterialSurfaceDomain => 9bb58dff109214db65496519fb4f2754
@S    MaterialDomainStream => 3df34fbfe4c0cd5f484018f1f0b47cfa
@S    MaterialTessellationStream => 2b26ea82d4b1f1f43837972725e3b785
@S    Shader_662280689 => f1e4ef62cb9457551f4d855764402ace
@S    Shader_190982479 => 19158db8983a8c52f9fb756c8d11f8cb
@S    ComputeColorConstantFloatLink => 51f7f5a6af528b9ab582350558ff1f70
@S    MaterialSurfaceLightingAndShading => 632084a1d51a33d288c188803e2d5afc
@S    Math => 9787fbb9c5fc970c8a2b04e18943e1bd
@S    IMaterialSurfaceShading => 1c45b326cd8616074872dd56496a9b5a
@S    MaterialSurfaceShadingDiffuseLambert => 8e2e1baa4a7bcb427f3ca539f81dd15c
@S    MaterialSurfaceShadingSpecularMicrofacet => fc12dc9f1da47fe9fb484f9432195131
@S    BRDFMicrofacet => e6c8c59dd59d4fef181ae8322a095acf
@S    IMaterialSpecularMicrofacetFresnelFunction => b87b5e33e7e148467ff6df90b1f65e8d
@S    IMaterialSpecularMicrofacetVisibilityFunction => 35ae192f090d569ff410a98a8e5dc154
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => 861fea38e5209e4678493895145cc2e6
@S    IMaterialSpecularMicrofacetEnvironmentFunction => 56a33499bed82d63575ceb48ba33baee
@S    MaterialSpecularMicrofacetEnvironmentGGXLUT => 2e52ec40bc84df02cbd7a9c438f7b99f
@S    MaterialSpecularMicrofacetFresnelSchlick => edbe75a9ad2d1152adf6c393d9f528cb
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => db766e9fd55ea510f5ca816de1114a2c
@S    MaterialSpecularMicrofacetNormalDistributionGGX => a2e713df174ca0b459793779a40abe22
@S    MaterialSurfaceEmissiveShading => cc1fb614620d3cc66d504194c91856f3
@S    MaterialSurfaceTransparentAlphaDiscard => 1bf41f29c7ca76a73609969407e99a43
***************************
*****     Stages      *****
***************************
@G    Vertex => c2f54be5686a23cb89f1020430739f24
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// AGE                      0   x           2     NONE   float   x   
// LIFETIME                 0   x           3     NONE   float   x   
// PPOSITION                0   xyz         4     NONE   float   xyz 
// SIZE                     0   x           5     NONE   float   x   
// PCOLOR                   0   xyzw        6     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// NORMALWS                 0   xyz         1     NONE   float   xyz 
// AGE                      0      w        1     NONE   float      w
// LIFETIME                 0   x           2     NONE   float   x   
// PPOSITION                0    yzw        2     NONE   float    yzw
// SIZE                     0   x           3     NONE   float   x   
// PCOLOR                   0   xyzw        4     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.x
dcl_input v3.x
dcl_input v4.xyz
dcl_input v5.x
dcl_input v6.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o1.w
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.x
dcl_output o4.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   v2.x <- __input__.Age_id146; 
//   v3.x <- __input__.LifeTime_id147; 
//   v4.x <- __input__.PPosition_id148.x; v4.y <- __input__.PPosition_id148.y; v4.z <- __input__.PPosition_id148.z; 
//   v5.x <- __input__.Size_id149; 
//   v6.x <- __input__.PColor_id152.x; v6.y <- __input__.PColor_id152.y; v6.z <- __input__.PColor_id152.z; v6.w <- __input__.PColor_id152.w; 
//   o4.x <- <VSMain return value>.PColor_id152.x; o4.y <- <VSMain return value>.PColor_id152.y; o4.z <- <VSMain return value>.PColor_id152.z; o4.w <- <VSMain return value>.PColor_id152.w; 
//   o3.x <- <VSMain return value>.Size_id149; 
//   o2.x <- <VSMain return value>.LifeTime_id147; o2.y <- <VSMain return value>.PPosition_id148.x; o2.z <- <VSMain return value>.PPosition_id148.y; o2.w <- <VSMain return value>.PPosition_id148.z; 
//   o1.x <- <VSMain return value>.normalWS_id18.x; o1.y <- <VSMain return value>.normalWS_id18.y; o1.z <- <VSMain return value>.normalWS_id18.z; o1.w <- <VSMain return value>.Age_id146; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 689 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_VLEffectMain_ShadowMapCaster_4aef98f9ffe8d605cf7d8ffde71fc1e6.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 629
dp4 o0.x, r0.xyzw, cb1[16].xyzw
dp4 o0.y, r0.xyzw, cb1[17].xyzw
dp4 o0.z, r0.xyzw, cb1[18].xyzw
dp4 o0.w, r0.xyzw, cb1[19].xyzw

#line 718
dp3 o1.x, v1.xyzx, cb0[8].xyzx
dp3 o1.y, v1.xyzx, cb0[9].xyzx
dp3 o1.z, v1.xyzx, cb0[10].xyzx

#line 812
mov o1.w, v2.x
mov o2.x, v3.x
mov o2.yzw, v4.xxyz
mov o3.x, v5.x
mov o4.xyzw, v6.xyzw
ret 
// Approximately 17 instruction slots used
@G    Geometry => e9f9d1a6f83933fd5c5eda2e8dff1a9d
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float input_3440848145_id140;      // Offset:    0 Size:     4
//   float input_2921916620_id141;      // Offset:    4 Size:     4 [unused]
//   float input_1653130546_id142;      // Offset:    8 Size:     4 [unused]
//   float input_3745212194_id143;      // Offset:   12 Size:     4 [unused]
//   float constantFloat_id200;         // Offset:   16 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerMaterial                       cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// NORMALWS                 0   xyz         1     NONE   float   xyz 
// AGE                      0      w        1     NONE   float      w
// LIFETIME                 0   x           2     NONE   float   x   
// PPOSITION                0    yzw        2     NONE   float    yzw
// SIZE                     0   x           3     NONE   float   x   
// PCOLOR                   0   xyzw        4     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// TEXCOORD                 0   xy          2     NONE   float   xy  
// SIZE                     0     z         2     NONE   float     z 
// NORMALWS                 0   xyz         3     NONE   float   xyz 
// PCOLOR                   0   xyzw        4     NONE   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { -1.000000, 1.000000, 0, 0},
                              { 1.000000, 1.000000, 1.000000, 0},
                              { -1.000000, -1.000000, 0, 1.000000},
                              { 1.000000, -1.000000, 1.000000, 1.000000} }
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[12], immediateIndexed
dcl_input_siv v[1][0].xyzw, position
dcl_input v[1][1].xyz
dcl_input v[1][1].w
dcl_input v[1][2].x
dcl_input v[1][2].yzw
dcl_input v[1][3].x
dcl_input v[1][4].xyzw
dcl_temps 4
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xy
dcl_output o2.z
dcl_output o3.xyz
dcl_output o4.xyzw
dcl_maxout 4
//
// Initial variable locations:
//   m0 <- outputStream; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[0][1].x <- input[0].normalWS_id18.x; v[0][1].y <- input[0].normalWS_id18.y; v[0][1].z <- input[0].normalWS_id18.z; v[0][1].w <- input[0].Age_id146; 
//   v[0][2].x <- input[0].LifeTime_id147; v[0][2].y <- input[0].PPosition_id148.x; v[0][2].z <- input[0].PPosition_id148.y; v[0][2].w <- input[0].PPosition_id148.z; 
//   v[0][3].x <- input[0].Size_id149; 
//   v[0][4].x <- input[0].PColor_id152.x; v[0][4].y <- input[0].PColor_id152.y; v[0][4].z <- input[0].PColor_id152.z; v[0][4].w <- input[0].PColor_id152.w
//
#line 753 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_VLEffectMain_ShadowMapCaster_4aef98f9ffe8d605cf7d8ffde71fc1e6.hlsl"
lt r0.x, l(0.000000), v[0][1].w  // r0.x <- Assign_685197704

#line 754
ge r0.y, v[0][2].x, v[0][1].w  // r0.y <- Assign_3166272284

#line 755
and r0.x, r0.y, r0.x  // r0.x <- result_1389061142

#line 757
if_z r0.x

#line 759
  ret 

#line 760
endif 

#line 763
mul r0.x, cb1[0].x, v[0][3].x  // r0.x <- result_2749322413

#line 765
mov r1.xyz, v[0][2].yzwy
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[12].xyzw  // r2.x <- mul_3400573806.x
dp4 r2.y, r1.xyzw, cb0[13].xyzw  // r2.y <- mul_3400573806.y
dp4 r2.z, r1.xyzw, cb0[14].xyzw  // r2.z <- mul_3400573806.z

#line 773
mov r1.z, l(0)

#line 775
mov r3.w, l(1.000000)

#line 768
mov r0.y, l(0)  // r0.y <- index_491915560
loop 
  ige r0.z, r0.y, l(4)
  breakc_nz r0.z

#line 771
  mul r1.xy, r0.xxxx, icb[r0.y + 0].xyxx  // r1.x <- result_1474387512.x; r1.y <- result_1474387512.y

#line 773
  add r3.xyz, r2.xyzx, r1.xyzx  // r3.x <- result_3291361923.x; r3.y <- result_3291361923.y; r3.z <- result_3291361923.z

#line 775
  dp4 r0.z, r3.xyzw, cb2[8].xyzw  // r0.z <- mul_1082633921.x
  dp4 r0.w, r3.xyzw, cb2[9].xyzw  // r0.w <- mul_1082633921.y
  dp4 r1.x, r3.xyzw, cb2[10].xyzw  // r1.x <- mul_1082633921.z
  dp4 r1.y, r3.xyzw, cb2[11].xyzw  // r1.y <- mul_1082633921.w

#line 788
  mov o0.xyz, v[0][2].yzwy
  mov o0.w, l(1.000000)
  mov o1.x, r0.z
  mov o1.y, r0.w
  mov o1.z, r1.x
  mov o1.w, r1.y
  mov o2.xy, icb[r0.y + 0].zwzz
  mov o2.z, v[0][3].x
  mov o3.xyz, v[0][1].xyzx
  mov o4.xyzw, v[0][4].xyzw
  emit_stream m0

#line 790
  iadd r0.y, r0.y, l(1)
endloop 

#line 791
ret 
// Approximately 38 instruction slots used
@G    Pixel => b7e9539e804b2788ec491cde0ae10e4d
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float input_3440848145_id140;      // Offset:    0 Size:     4
//   float input_2921916620_id141;      // Offset:    4 Size:     4 [unused]
//   float input_1653130546_id142;      // Offset:    8 Size:     4 [unused]
//   float input_3745212194_id143;      // Offset:   12 Size:     4
//   float constantFloat_id200;         // Offset:   16 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerMaterial                       cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// SIZE                     0     z         2     NONE   float     z 
// NORMALWS                 0   xyz         3     NONE   float       
// PCOLOR                   0   xyzw        4     NONE   float   xyzw
// SV_IsFrontFace           0   x           5    FFACE    uint       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input_ps linear v0.xyz
dcl_input_ps linear v2.xy
dcl_input_ps linear v2.z
dcl_input_ps linear v4.xyzw
dcl_output o0.xyzw
dcl_output oDepth
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.TexCoord_id130.x; v2.y <- __input__.TexCoord_id130.y; 
//   v3.x <- __input__.normalWS_id18.x; v3.y <- __input__.normalWS_id18.y; v3.z <- __input__.normalWS_id18.z; 
//   v4.x <- __input__.PColor_id152.x; v4.y <- __input__.PColor_id152.y; v4.z <- __input__.PColor_id152.z; v4.w <- __input__.PColor_id152.w; 
//   v2.z <- __input__.Size_id149; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w; 
//   oDepth <- <PSMain return value>.Depth_id10
//
#line 655 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_VLEffectMain_ShadowMapCaster_4aef98f9ffe8d605cf7d8ffde71fc1e6.hlsl"
mad r0.xy, v2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(0.000000, 1.000000, 0.000000, 0.000000)

#line 656
mad r0.xy, r0.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r0.x <- result_2591318643.x; r0.y <- result_2591318643.y

#line 657
dp2 r0.x, r0.xyxx, r0.xyxx  // r0.x <- dot_2938226072

#line 658
lt r0.x, l(1.000000), r0.x  // r0.x <- Assign_4125861666

#line 661
discard_nz r0.x

#line 644
mul r0.x, v2.z, cb0[0].x  // r0.x <- result_2749322413

#line 646
mul r0.xy, r0.xxxx, v2.xyxx  // r0.x <- result_2362501273.x; r0.y <- result_2362501273.y

#line 620
mov r0.zw, l(0,0,0,1.000000)

#line 649
add r0.xyz, r0.xyzx, v0.xyzx  // r0.x <- result_745408619.x; r0.y <- result_745408619.y; r0.z <- result_745408619.z

#line 620
dp4 r1.x, r0.xyzw, cb1[18].xyzw  // r1.x <- posWVP.z
dp4 r0.x, r0.xyzw, cb1[19].xyzw  // r0.x <- posWVP.w

#line 624
div r0.x, r1.x, r0.x  // r0.x <- streams.Depth_id10

#line 471
lt r0.y, v4.w, cb0[1].x

#line 473
discard_nz r0.y

#line 478
mul r1.xyz, v4.xyzx, cb0[0].wwww

#line 671
mov r1.w, v4.w
mov r0.y, cb0[1].x  // r0.y <- streams.matAlphaDiscard_id66

#line 736
add r0.y, -r0.y, r1.w
lt r0.y, r0.y, l(0.000000)
discard_nz r0.y

#line 740
mov o0.xyzw, r1.xyzw
mov oDepth, r0.x
ret 
// Approximately 23 instruction slots used
***************************
*************************/
const static bool TInvert_id171 = true;
static const float PI_id206 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id216 = false;
static const float2 Array_651090723_id144[4] = { float2(-1, 1), float2(1, 1), float2(-1, -1), float2(1, -1)};
static const float2 Array_2161727902_id145[4] = { float2(0, 0), float2(1, 0), float2(0, 1), float2(1, 1)};
struct PS_STREAMS 
{
    float3 normalWS_id18;
    float4 PColor_id152;
    float Size_id149;
    float2 TexCoord_id130;
    float4 PositionWS_id21;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id16;
    float MRoughness_id150;
    float4 MDiffuse_id151;
    float MMetalness_id153;
    float4 MSpecular_id154;
    float MSpecularIntensity_id155;
    float DepthVS_id22;
    float3 viewWS_id67;
    float3 shadingColor_id72;
    float matBlend_id39;
    float3 matNormal_id50;
    float4 matColorBase_id51;
    float4 matDiffuse_id52;
    float3 matDiffuseVisible_id68;
    float3 matSpecular_id54;
    float3 matSpecularVisible_id70;
    float matSpecularIntensity_id55;
    float matGlossiness_id53;
    float alphaRoughness_id69;
    float matAmbientOcclusion_id56;
    float matAmbientOcclusionDirectLightingFactor_id57;
    float matCavity_id58;
    float matCavityDiffuse_id59;
    float matCavitySpecular_id60;
    float4 matEmissive_id61;
    float matEmissiveIntensity_id62;
    float matScatteringStrength_id63;
    float2 matDiffuseSpecularAlphaBlend_id64;
    float3 matAlphaBlendColor_id65;
    float matAlphaDiscard_id66;
    float shadingColorAlpha_id73;
    float4 ToShaderFX_0_id156;
    float ToShaderFX_1_id164;
    float ToShaderFX_2_id173;
    float4 ToShaderFX_3_id184;
    float ToShaderFX_4_id192;
    float3 lightPositionWS_id40;
    float3 lightDirectionWS_id41;
    float3 lightColor_id42;
    float3 lightColorNdotL_id43;
    float3 lightSpecularColorNdotL_id44;
    float lightAttenuation_id45;
    float3 envLightDiffuseColor_id46;
    float3 envLightSpecularColor_id47;
    float lightDirectAmbientOcclusion_id49;
    float NdotL_id48;
    float NdotV_id71;
    float Depth_id10;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id130 : TEXCOORD0;
    float3 normalWS_id18 : NORMALWS;
    float4 PColor_id152 : PCOLOR;
    float Size_id149 : SIZE;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    float Age_id146;
    float LifeTime_id147;
    float3 PPosition_id148;
    float Size_id149;
    float3 normalWS_id18;
    float4 PColor_id152;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float2 TexCoord_id130;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id130 : TEXCOORD0;
    float3 normalWS_id18 : NORMALWS;
    float4 PColor_id152 : PCOLOR;
    float Size_id149 : SIZE;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id18 : NORMALWS;
    float Age_id146 : AGE;
    float LifeTime_id147 : LIFETIME;
    float3 PPosition_id148 : PPOSITION;
    float Size_id149 : SIZE;
    float4 PColor_id152 : PCOLOR;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float Age_id146;
    float LifeTime_id147;
    float3 PPosition_id148;
    float Size_id149;
    float4 PColor_id152;
    float4 PositionWS_id21;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float4 ShadingPosition_id0;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id18 : NORMALWS;
    float Age_id146 : AGE;
    float LifeTime_id147 : LIFETIME;
    float3 PPosition_id148 : PPOSITION;
    float Size_id149 : SIZE;
    float4 PColor_id152 : PCOLOR;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
    float Age_id146 : AGE;
    float LifeTime_id147 : LIFETIME;
    float3 PPosition_id148 : PPOSITION;
    float Size_id149 : SIZE;
    float4 PColor_id152 : PCOLOR;
};
cbuffer PerDraw 
{
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
};
cbuffer PerMaterial 
{
    float input_3440848145_id140;
    float input_2921916620_id141;
    float input_1653130546_id142;
    float input_3745212194_id143;
    float constantFloat_id200;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id83;
    float2 Texture1TexelSize_id85;
    float2 Texture2TexelSize_id87;
    float2 Texture3TexelSize_id89;
    float2 Texture4TexelSize_id91;
    float2 Texture5TexelSize_id93;
    float2 Texture6TexelSize_id95;
    float2 Texture7TexelSize_id97;
    float2 Texture8TexelSize_id99;
    float2 Texture9TexelSize_id101;
};
Texture2D Texture0_id82;
Texture2D Texture1_id84;
Texture2D Texture2_id86;
Texture2D Texture3_id88;
Texture2D Texture4_id90;
Texture2D Texture5_id92;
Texture2D Texture6_id94;
Texture2D Texture7_id96;
Texture2D Texture8_id98;
Texture2D Texture9_id100;
TextureCube TextureCube0_id102;
TextureCube TextureCube1_id103;
TextureCube TextureCube2_id104;
TextureCube TextureCube3_id105;
Texture3D Texture3D0_id106;
Texture3D Texture3D1_id107;
Texture3D Texture3D2_id108;
Texture3D Texture3D3_id109;
SamplerState Sampler_id110;
SamplerState PointSampler_id111 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id112 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id113 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id114 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id115 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id116 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id117 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id118 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id119 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id120;
SamplerState Sampler1_id121;
SamplerState Sampler2_id122;
SamplerState Sampler3_id123;
SamplerState Sampler4_id124;
SamplerState Sampler5_id125;
SamplerState Sampler6_id126;
SamplerState Sampler7_id127;
SamplerState Sampler8_id128;
SamplerState Sampler9_id129;
Texture2D EnvironmentLightingDFG_LUT_id207;
float4 cast44_id62(float4 p)
{
    return p;
}
float4 cast44_id53(float4 p)
{
    return p;
}
float Compute_id225(inout PS_STREAMS streams)
{
    return streams.MSpecularIntensity_id155;
}
float4 Compute_id198(inout PS_STREAMS streams)
{
    float4 cast44_1588990698 = cast44_id62(streams.MSpecular_id154);
    return cast44_1588990698;
}
float Compute_id186(inout PS_STREAMS streams)
{
    return streams.MMetalness_id153;
}
float Compute_id174(inout PS_STREAMS streams)
{
    return streams.MRoughness_id150;
}
float4 Compute_id147(inout PS_STREAMS streams)
{
    float4 cast44_296689956 = cast44_id53(streams.MDiffuse_id151);
    return cast44_296689956;
}
void Compute_id228(inout PS_STREAMS streams)
{
    streams.ToShaderFX_4_id192 = Compute_id225(streams);
}
void Compute_id216(inout PS_STREAMS streams)
{
    streams.ToShaderFX_3_id184 = Compute_id198(streams);
}
void Compute_id189(inout PS_STREAMS streams)
{
    streams.ToShaderFX_2_id173 = Compute_id186(streams);
}
void Compute_id177(inout PS_STREAMS streams)
{
    streams.ToShaderFX_1_id164 = Compute_id174(streams);
}
void Compute_id165(inout PS_STREAMS streams)
{
    streams.ToShaderFX_0_id156 = Compute_id147(streams);
}
float Compute_id231(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_4_id192;
}
void Compute_id230(inout PS_STREAMS streams)
{

    {
        Compute_id228(streams);
    }
}
float4 Compute_id219(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_3_id184;
}
void Compute_id218(inout PS_STREAMS streams)
{

    {
        Compute_id216(streams);
    }
}
float Compute_id192(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_2_id173;
}
void Compute_id191(inout PS_STREAMS streams)
{

    {
        Compute_id189(streams);
    }
}
float Compute_id180(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_1_id164;
}
void Compute_id179(inout PS_STREAMS streams)
{

    {
        Compute_id177(streams);
    }
}
float4 Compute_id168(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_0_id156;
}
void Compute_id167(inout PS_STREAMS streams)
{

    {
        Compute_id165(streams);
    }
}
float Compute_id234(inout PS_STREAMS streams)
{
    Compute_id230(streams);
    return Compute_id231(streams);
}
float4 Compute_id222(inout PS_STREAMS streams)
{
    Compute_id218(streams);
    return Compute_id219(streams);
}
float Compute_id195(inout PS_STREAMS streams)
{
    Compute_id191(streams);
    return Compute_id192(streams);
}
float Compute_id183(inout PS_STREAMS streams)
{
    Compute_id179(streams);
    return Compute_id180(streams);
}
float4 Compute_id171(inout PS_STREAMS streams)
{
    Compute_id167(streams);
    return Compute_id168(streams);
}
void ResetStream_id144()
{
}
void AfterLightingAndShading_id393()
{
}
void AfterLightingAndShading_id373()
{
}
void PrepareForLightingAndShading_id390()
{
}
void PrepareForLightingAndShading_id370()
{
}
void PrepareMaterialForLightingAndShading_id137(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id49 = lerp(1.0, streams.matAmbientOcclusion_id56, streams.matAmbientOcclusionDirectLightingFactor_id57);
    streams.matDiffuseVisible_id68 = streams.matDiffuse_id52.rgb * lerp(1.0f, streams.matCavity_id58, streams.matCavityDiffuse_id59) * streams.matDiffuseSpecularAlphaBlend_id64.r * streams.matAlphaBlendColor_id65;
    streams.matSpecularVisible_id70 = streams.matSpecular_id54.rgb * streams.matSpecularIntensity_id55 * lerp(1.0f, streams.matCavity_id58, streams.matCavitySpecular_id60) * streams.matDiffuseSpecularAlphaBlend_id64.g * streams.matAlphaBlendColor_id65;
    streams.NdotV_id71 = max(dot(streams.normalWS_id18, streams.viewWS_id67), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id53;
    streams.alphaRoughness_id69 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id136(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id40 = 0;
    streams.lightDirectionWS_id41 = 0;
    streams.lightColor_id42 = 0;
    streams.lightColorNdotL_id43 = 0;
    streams.lightSpecularColorNdotL_id44 = 0;
    streams.lightAttenuation_id45 = 1.0f;
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
    streams.lightDirectAmbientOcclusion_id49 = 1.0f;
    streams.NdotL_id48 = 0;
}
void UpdateNormalFromTangentSpace_id22(float3 normalInTangentSpace)
{
}
float4 Compute_id237()
{
    return float4(constantFloat_id200, constantFloat_id200, constantFloat_id200, constantFloat_id200);
}
float4 Compute_id236(inout PS_STREAMS streams)
{
    float x = Compute_id234(streams);
    return float4(x, x, x, x);
}
float4 Compute_id224(inout PS_STREAMS streams)
{
    return Compute_id222(streams);
}
float4 Compute_id197(inout PS_STREAMS streams)
{
    float x = Compute_id195(streams);
    return float4(x, x, x, x);
}
float4 Compute_id185(inout PS_STREAMS streams)
{
    float x = Compute_id183(streams);
    return float4(x, x, x, x);
}
float4 Compute_id173(inout PS_STREAMS streams)
{
    return Compute_id171(streams);
}
void ResetStream_id145(inout PS_STREAMS streams)
{
    ResetStream_id144();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id477(inout PS_STREAMS streams)
{
    if (streams.shadingColorAlpha_id73 < streams.matAlphaDiscard_id66)
    {
        discard;
    }
}
void Compute_id472(inout PS_STREAMS streams)
{
    streams.shadingColor_id72 += streams.matEmissive_id61.rgb * streams.matEmissiveIntensity_id62;
}
void Compute_id471(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id22(streams.matNormal_id50);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id136(streams);
    PrepareMaterialForLightingAndShading_id137(streams);

    {
        PrepareForLightingAndShading_id370();
    }

    {
        PrepareForLightingAndShading_id390();
    }
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;
    streams.shadingColor_id72 += directLightingContribution * PI_id206 + environmentLightingContribution;
    streams.shadingColorAlpha_id73 = streams.matDiffuse_id52.a;

    {
        AfterLightingAndShading_id373();
    }

    {
        AfterLightingAndShading_id393();
    }
}
void Compute_id454(inout PS_STREAMS streams)
{
    streams.matAlphaDiscard_id66 = Compute_id237().r;
}
void Compute_id449(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id62 = Compute_id236(streams).r;
}
void Compute_id444(inout PS_STREAMS streams)
{
    streams.matEmissive_id61 = Compute_id224(streams).rgba;
}
void Compute_id439(inout PS_STREAMS streams)
{
    float metalness = Compute_id197(streams).r;
    streams.matSpecular_id54 = lerp(0.02, streams.matDiffuse_id52.rgb, metalness);
    streams.matDiffuse_id52.rgb = lerp(streams.matDiffuse_id52.rgb, 0, metalness);
}
void Compute_id434(inout PS_STREAMS streams)
{
    float glossiness = Compute_id185(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id53 = glossiness;
}
void Compute_id429(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id173(streams);
    streams.matDiffuse_id52 = colorBase;
    streams.matColorBase_id51 = colorBase;
}
void ResetStream_id146(inout PS_STREAMS streams)
{
    ResetStream_id145(streams);
    streams.matNormal_id50 = float3(0, 0, 1);
    streams.matColorBase_id51 = 0.0f;
    streams.matDiffuse_id52 = 0.0f;
    streams.matDiffuseVisible_id68 = 0.0f;
    streams.matSpecular_id54 = 0.0f;
    streams.matSpecularVisible_id70 = 0.0f;
    streams.matSpecularIntensity_id55 = 1.0f;
    streams.matGlossiness_id53 = 0.0f;
    streams.alphaRoughness_id69 = 1.0f;
    streams.matAmbientOcclusion_id56 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id57 = 0.0f;
    streams.matCavity_id58 = 1.0f;
    streams.matCavityDiffuse_id59 = 0.0f;
    streams.matCavitySpecular_id60 = 0.0f;
    streams.matEmissive_id61 = 0.0f;
    streams.matEmissiveIntensity_id62 = 0.0f;
    streams.matScatteringStrength_id63 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id64 = 1.0f;
    streams.matAlphaBlendColor_id65 = 1.0f;
    streams.matAlphaDiscard_id66 = 0.1f;
}
void Compute_id49(inout PS_STREAMS streams)
{

    {
        Compute_id429(streams);
    }

    {
        Compute_id434(streams);
    }

    {
        Compute_id439(streams);
    }

    {
        Compute_id444(streams);
    }

    {
        Compute_id449(streams);
    }

    {
        Compute_id454(streams);
    }

    {
        Compute_id471(streams);
    }

    {
        Compute_id472(streams);
    }

    {
        Compute_id477(streams);
    }
}
void ResetStream_id48(inout PS_STREAMS streams)
{
    ResetStream_id146(streams);
    streams.shadingColorAlpha_id73 = 1.0f;
}
float4 Shading_id30(inout PS_STREAMS streams)
{
    streams.viewWS_id67 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id72 = 0;
    ResetStream_id48(streams);
    Compute_id49(streams);
    return float4(streams.shadingColor_id72, streams.shadingColorAlpha_id73);
}
float4 StrideShadingWorldNormal_id32(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id21 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id21, ViewProjection_id28);
    streams.normalWS_id18 = normal;
    streams.meshNormalWS_id16 = normal;
    streams.DepthVS_id22 = posWVP.w;
    streams.Depth_id10 = posWVP.z / posWVP.w;
    return Shading_id30(streams);
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
float4 Shading_id33(inout PS_STREAMS streams)
{
    streams.MRoughness_id150 = input_2921916620_id141;
    streams.MDiffuse_id151 = streams.PColor_id152;
    streams.MMetalness_id153 = input_1653130546_id142;
    streams.MSpecular_id154 = streams.PColor_id152;
    streams.MSpecularIntensity_id155 = input_3745212194_id143;
    float result_2749322413 = (streams.Size_id149 * input_3440848145_id140);
    float2 result_2452521622 = (float2(1, 1) * result_2749322413);
    float2 result_2362501273 = (streams.TexCoord_id130 * result_2452521622);
    float3 join_1636558253 = float3(result_2362501273, 0);
    float3 PositionWSXyz_1638325508 = streams.PositionWS_id21.xyz;
    float3 result_745408619 = (join_1636558253 + PositionWSXyz_1638325508);
    float4 join_1371103093 = float4(result_745408619, 1);
    float TexCoordX_3764889488 = streams.TexCoord_id130.x;
    float TexCoordY_1385797184 = streams.TexCoord_id130.y;
    float result_976918800 = (1 - TexCoordY_1385797184);
    float2 float2Join_2024885578 = float2(TexCoordX_3764889488, result_976918800);
    float2 result_3068775423 = (float2Join_2024885578 * float2(2, 2));
    float2 result_2591318643 = (result_3068775423 - float2(1, 1));
    float dot_2938226072 = dot(result_2591318643, result_2591318643);
    bool Assign_4125861666 = dot_2938226072 > 1;
    if (Assign_4125861666)
    {
        discard;
    }
    float result_2107193138 = (1 - dot_2938226072);
    float sqrt_152633142 = sqrt(result_2107193138);
    float3 join_443123007 = float3(result_2591318643, sqrt_152633142);
    float4 join_2197976166 = float4(join_443123007, 0);
    float4 mul_1291408942 = mul(join_2197976166, ViewInverse_id25);
    float3 mulXyz_3370650550 = mul_1291408942.xyz;
    float3 normalize_2713122566 = normalize(mulXyz_3370650550);
    float4 StrideShadingWorldNormal_1665242423 = StrideShadingWorldNormal_id32(streams, join_1371103093, normalize_2713122566);
    return StrideShadingWorldNormal_1665242423;
}
void PSMain_id1()
{
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id33(streams);
}
void GenerateNormal_PS_id21(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void PSMain_id19(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id21(streams);
    PSMain_id3(streams);
}
void GenerateNormal_VS_id20(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.TexCoord_id130 = __input__.TexCoord_id130;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.PColor_id152 = __input__.PColor_id152;
    streams.Size_id149 = __input__.Size_id149;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    PSMain_id19(streams);
    clip(streams.ColorTarget_id2.a - streams.matAlphaDiscard_id66);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> outputStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.normalWS_id18 = input[0].normalWS_id18;
    streams.Age_id146 = input[0].Age_id146;
    streams.LifeTime_id147 = input[0].LifeTime_id147;
    streams.PPosition_id148 = input[0].PPosition_id148;
    streams.Size_id149 = input[0].Size_id149;
    streams.PColor_id152 = input[0].PColor_id152;
    bool Assign_685197704 = streams.Age_id146 > 0;
    bool Assign_3166272284 = streams.Age_id146 <= streams.LifeTime_id147;
    bool result_1389061142 = (Assign_685197704 && Assign_3166272284);
    bool not_1728012970 = !result_1389061142;
    if (not_1728012970)
    {
        return;
    }
    float4 join_2011572925 = float4(streams.PPosition_id148, 1);
    streams.PositionWS_id21 = join_2011572925;
    float result_2749322413 = (streams.Size_id149 * input_3440848145_id140);
    float2 result_2452521622 = (float2(1, 1) * result_2749322413);
    float4 mul_3400573806 = mul(join_2011572925, WorldView_id34);
    float3 mulXyz_3416572195 = mul_3400573806.xyz;

    for (int index_491915560 = 0; index_491915560 < 4; index_491915560++)
    {
        float2 GetItem_1759705345 = Array_651090723_id144[index_491915560];
        float2 result_1474387512 = (GetItem_1759705345 * result_2452521622);
        float3 join_1415626997 = float3(result_1474387512, 0);
        float3 result_3291361923 = (join_1415626997 + mulXyz_3416572195);
        float4 join_4063072497 = float4(result_3291361923, 1);
        float4 mul_1082633921 = mul(join_4063072497, Projection_id26);
        streams.ShadingPosition_id0 = mul_1082633921;
        float2 GetItem_4001475714 = Array_2161727902_id145[index_491915560];
        streams.TexCoord_id130 = GetItem_4001475714;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id21 = streams.PositionWS_id21;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.TexCoord_id130 = streams.TexCoord_id130;
            output.normalWS_id18 = streams.normalWS_id18;
            output.PColor_id152 = streams.PColor_id152;
            output.Size_id149 = streams.Size_id149;
            outputStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    streams.Age_id146 = __input__.Age_id146;
    streams.LifeTime_id147 = __input__.LifeTime_id147;
    streams.PPosition_id148 = __input__.PPosition_id148;
    streams.Size_id149 = __input__.Size_id149;
    streams.PColor_id152 = __input__.PColor_id152;
    VSMain_id9(streams);
    GenerateNormal_VS_id20(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.Age_id146 = streams.Age_id146;
    __output__.LifeTime_id147 = streams.LifeTime_id147;
    __output__.PPosition_id148 = streams.PPosition_id148;
    __output__.Size_id149 = streams.Size_id149;
    __output__.PColor_id152 = streams.PColor_id152;
    return __output__;
}
