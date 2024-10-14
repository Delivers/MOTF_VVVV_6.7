/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ToShaderFX_0> [{Value = Shader_1480908368}]]}]}, {Value = GetVarFloat4<ToShaderFX_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<ToShaderFX_1> [{Value = Shader_1665303651}]]}]}, {Value = GetVarFloat<ToShaderFX_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<ToShaderFX_2> [{Value = Shader_879528699}]]}]}, {Value = GetVarFloat<ToShaderFX_2>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<ToShaderFX_3> [{Value = Shader_662280689}]]}]}, {Value = GetVarFloat4<ToShaderFX_3>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<ToShaderFX_4> [{Value = Shader_190982479}]]}]}, {Value = GetVarFloat<ToShaderFX_4>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaDiscard,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AlphaDiscardValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>, MaterialSurfaceTransparentAlphaDiscard]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.UsePixelShaderWithDepthPass: True
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P VLEffectParameters.EnableExtensionShader: True
@P VLEffectParameters.MaterialExtensionShader: Shader_1405253969
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id157 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 32]
@C    input_3440848145_id141 => input_3440848145
@C    input_2921916620_id142 => input_2921916620
@C    input_1653130546_id143 => input_1653130546
@C    input_3745212194_id144 => input_3745212194
@C    constantFloat_id234 => Material.AlphaDiscardValue
cbuffer PerView [Size: 944]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id164 => Camera.NearClipPlane
@C    FarClipPlane_id165 => Camera.FarClipPlane
@C    ZProjection_id166 => Camera.ZProjection
@C    ViewSize_id167 => Camera.ViewSize
@C    AspectRatio_id168 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id160 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id162 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id173 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id174 => LightClustered.ClusterDepthBias
@C    ClusterStride_id175 => LightClustered.ClusterStride
@C    AmbientLight_id178 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id183 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id184 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id186 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id187 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id241 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id241 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id185 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id185 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Geometry, Slot: (1-1)]
@R    PerView => PerView [Stage: Geometry, Slot: (2-2)]
@R    LinearSampler_id113 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id241 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id185 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (2-2)]
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
@S    Shader_1405253969 => 8e7189042bb4aba2661b3d5a153822a6
@S    MaterialExtension => bd314d2afed93384fa52af5d242de440
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    LightDirectionalGroup => 4b30b0154f396d93fd98b65dbdd2fe7f
@S    DirectLightGroupPerView => dba9b0c7c0e05b5469cf8940cc91d69c
@S    LightDirectional => 0e45e8c12e5e36d4bb0df5d5b2739bb1
@S    LightClusteredPointGroup => 843aea2daf41f8d9d51dc3f2e6983510
@S    LightClustered => 33caec9577a483e38f00249390b3c928
@S    ScreenPositionBase => 2dae8708ab57eb7bfe3be30e463a947f
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    LightPoint => 294f81466d0cada846a599c119c5fb47
@S    LightUtil => 21ef9aac4d8713802ffffd7b6a054610
@S    LightClusteredSpotGroup => 13a781ebabc5e5b807beef263ac92450
@S    LightSpot => 0c28763d5549e9d53c818622d5b67087
@S    SpotLightDataInternalShader => ebbf2821da7249148876264c5dcf660d
@S    LightSpotAttenuationDefault => e20860e5b3b88061c074f0438d523fa5
@S    LightSimpleAmbient => 1be2895cd80f1f25f0225844e19b3398
@S    LightSkyboxShader => 7bdb9a65f0d95cff0eeaad64ebe19d64
@S    IComputeEnvironmentColor => 6a62dbc486c6d4dda67154b3aefa7236
@S    SphericalHarmonicsEnvironmentColor => e4af0f396494d26684557116612d99be
@S    SphericalHarmonicsUtils => daf3f722d099facfd735f53c731dd735
@S    Math => 9787fbb9c5fc970c8a2b04e18943e1bd
@S    RoughnessCubeMapEnvironmentColor => a00e41cfd6760a1623b985fedae4700d
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => bce47ae8da01a18b94d7efcba4d3c99c
***************************
*****     Stages      *****
***************************
@G    Vertex => 9e897381b96fd4a865adf0e30659a28f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id157;          // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id164;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id165;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id166;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id167;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id168;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id160;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id162[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id173;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id174;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id175;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id178;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id183[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id184;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id186;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id187;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
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
// SCREENPOSITION_ID163_SEM     0   xyzw        2     NONE   float   xyzw
// LIFETIME                 0   x           3     NONE   float   x   
// PPOSITION                0    yzw        3     NONE   float    yzw
// SIZE                     0   x           4     NONE   float   x   
// PCOLOR                   0   xyzw        5     NONE   float   xyzw
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
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.x
dcl_output o5.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   v2.x <- __input__.Age_id147; 
//   v3.x <- __input__.LifeTime_id148; 
//   v4.x <- __input__.PPosition_id149.x; v4.y <- __input__.PPosition_id149.y; v4.z <- __input__.PPosition_id149.z; 
//   v5.x <- __input__.Size_id150; 
//   v6.x <- __input__.PColor_id153.x; v6.y <- __input__.PColor_id153.y; v6.z <- __input__.PColor_id153.z; v6.w <- __input__.PColor_id153.w; 
//   o5.x <- <VSMain return value>.PColor_id153.x; o5.y <- <VSMain return value>.PColor_id153.y; o5.z <- <VSMain return value>.PColor_id153.z; o5.w <- <VSMain return value>.PColor_id153.w; 
//   o4.x <- <VSMain return value>.Size_id150; 
//   o3.x <- <VSMain return value>.LifeTime_id148; o3.y <- <VSMain return value>.PPosition_id149.x; o3.z <- <VSMain return value>.PPosition_id149.y; o3.w <- <VSMain return value>.PPosition_id149.z; 
//   o2.x <- <VSMain return value>.ScreenPosition_id163.x; o2.y <- <VSMain return value>.ScreenPosition_id163.y; o2.z <- <VSMain return value>.ScreenPosition_id163.z; o2.w <- <VSMain return value>.ScreenPosition_id163.w; 
//   o1.x <- <VSMain return value>.normalWS_id19.x; o1.y <- <VSMain return value>.normalWS_id19.y; o1.z <- <VSMain return value>.normalWS_id19.z; o1.w <- <VSMain return value>.Age_id147; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 1193 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_VLEffectMain_32d9d8dc903773a000b57d30357d2c75.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1162
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1371
mov o0.xyzw, r1.xyzw
mov o2.xyzw, r1.xyzw

#line 1261
dp3 o1.x, v1.xyzx, cb0[8].xyzx
dp3 o1.y, v1.xyzx, cb0[9].xyzx
dp3 o1.z, v1.xyzx, cb0[10].xyzx

#line 1371
mov o1.w, v2.x
mov o3.x, v3.x
mov o3.yzw, v4.xxyz
mov o4.x, v5.x
mov o5.xyzw, v6.xyzw
ret 
// Approximately 19 instruction slots used
@G    Geometry => 31c7a96ca25889ff983abe1badbf1128
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id157;          // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float input_3440848145_id141;      // Offset:    0 Size:     4
//   float input_2921916620_id142;      // Offset:    4 Size:     4 [unused]
//   float input_1653130546_id143;      // Offset:    8 Size:     4 [unused]
//   float input_3745212194_id144;      // Offset:   12 Size:     4 [unused]
//   float constantFloat_id234;         // Offset:   16 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id164;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id165;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id166;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id167;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id168;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id160;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id162[8];                 // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id173;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id174;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id175;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id178;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id183[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id184;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id186;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id187;             // Offset:  912 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
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
// SCREENPOSITION_ID163_SEM     0   xyzw        2     NONE   float   xyzw
// LIFETIME                 0   x           3     NONE   float   x   
// PPOSITION                0    yzw        3     NONE   float    yzw
// SIZE                     0   x           4     NONE   float   x   
// PCOLOR                   0   xyzw        5     NONE   float   xyzw
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
// SCREENPOSITION_ID163_SEM     0   xyzw        3     NONE   float   xyzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
// PCOLOR                   0   xyzw        5     NONE   float   xyzw
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
dcl_input v[1][2].xyzw
dcl_input v[1][3].x
dcl_input v[1][3].yzw
dcl_input v[1][4].x
dcl_input v[1][5].xyzw
dcl_temps 4
dcl_inputprimitive point 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xy
dcl_output o2.z
dcl_output o3.xyzw
dcl_output o4.xyz
dcl_output o5.xyzw
dcl_maxout 4
//
// Initial variable locations:
//   m0 <- outputStream; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[0][1].x <- input[0].normalWS_id19.x; v[0][1].y <- input[0].normalWS_id19.y; v[0][1].z <- input[0].normalWS_id19.z; 
//   v[0][2].x <- input[0].ScreenPosition_id163.x; v[0][2].y <- input[0].ScreenPosition_id163.y; v[0][2].z <- input[0].ScreenPosition_id163.z; v[0][2].w <- input[0].ScreenPosition_id163.w; 
//   v[0][1].w <- input[0].Age_id147; 
//   v[0][3].x <- input[0].LifeTime_id148; v[0][3].y <- input[0].PPosition_id149.x; v[0][3].z <- input[0].PPosition_id149.y; v[0][3].w <- input[0].PPosition_id149.z; 
//   v[0][4].x <- input[0].Size_id150; 
//   v[0][5].x <- input[0].PColor_id153.x; v[0][5].y <- input[0].PColor_id153.y; v[0][5].z <- input[0].PColor_id153.z; v[0][5].w <- input[0].PColor_id153.w
//
#line 1310 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_VLEffectMain_32d9d8dc903773a000b57d30357d2c75.hlsl"
lt r0.x, l(0.000000), v[0][1].w  // r0.x <- Assign_685197704

#line 1311
ge r0.y, v[0][3].x, v[0][1].w  // r0.y <- Assign_3166272284

#line 1312
and r0.x, r0.y, r0.x  // r0.x <- result_1389061142

#line 1314
if_z r0.x

#line 1316
  ret 

#line 1317
endif 

#line 1320
mul r0.x, cb1[0].x, v[0][4].x  // r0.x <- result_2749322413

#line 1322
mov r1.xyz, v[0][3].yzwy
mov r1.w, l(1.000000)
dp4 r2.x, r1.xyzw, cb0[12].xyzw  // r2.x <- mul_3400573806.x
dp4 r2.y, r1.xyzw, cb0[13].xyzw  // r2.y <- mul_3400573806.y
dp4 r2.z, r1.xyzw, cb0[14].xyzw  // r2.z <- mul_3400573806.z

#line 1330
mov r1.z, l(0)

#line 1332
mov r3.w, l(1.000000)

#line 1325
mov r0.y, l(0)  // r0.y <- index_491915560
loop 
  ige r0.z, r0.y, l(4)
  breakc_nz r0.z

#line 1328
  mul r1.xy, r0.xxxx, icb[r0.y + 0].xyxx  // r1.x <- result_1474387512.x; r1.y <- result_1474387512.y

#line 1330
  add r3.xyz, r2.xyzx, r1.xyzx  // r3.x <- result_3291361923.x; r3.y <- result_3291361923.y; r3.z <- result_3291361923.z

#line 1332
  dp4 r0.z, r3.xyzw, cb2[8].xyzw  // r0.z <- mul_1082633921.x
  dp4 r0.w, r3.xyzw, cb2[9].xyzw  // r0.w <- mul_1082633921.y
  dp4 r1.x, r3.xyzw, cb2[10].xyzw  // r1.x <- mul_1082633921.z
  dp4 r1.y, r3.xyzw, cb2[11].xyzw  // r1.y <- mul_1082633921.w

#line 1346
  mov o0.xyz, v[0][3].yzwy
  mov o0.w, l(1.000000)
  mov o1.x, r0.z
  mov o1.y, r0.w
  mov o1.z, r1.x
  mov o1.w, r1.y
  mov o2.xy, icb[r0.y + 0].zwzz
  mov o2.z, v[0][4].x
  mov o3.xyzw, v[0][2].xyzw
  mov o4.xyz, v[0][1].xyzx
  mov o5.xyzw, v[0][5].xyzw
  emit_stream m0

#line 1348
  iadd r0.y, r0.y, l(1)
endloop 

#line 1349
ret 
// Approximately 39 instruction slots used
@G    Pixel => c5bab7b5b1e3b5e45868fa5ba26827b1
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id157;          // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   float input_3440848145_id141;      // Offset:    0 Size:     4
//   float input_2921916620_id142;      // Offset:    4 Size:     4
//   float input_1653130546_id143;      // Offset:    8 Size:     4
//   float input_3745212194_id144;      // Offset:   12 Size:     4
//   float constantFloat_id234;         // Offset:   16 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16
//   float NearClipPlane_id164;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id165;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id166;          // Offset:  360 Size:     8
//   float2 ViewSize_id167;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id168;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id160;              // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id162[8];                 // Offset:  416 Size:   252
//   float ClusterDepthScale_id173;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id174;      // Offset:  672 Size:     4
//   float2 ClusterStride_id175;        // Offset:  676 Size:     8
//   float3 AmbientLight_id178;         // Offset:  688 Size:    12
//   float3 SphericalColors_id183[9];   // Offset:  704 Size:   140
//   float MipCount_id184;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id186;          // Offset:  848 Size:    64
//   float Intensity_id187;             // Offset:  912 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset:  928 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id113               sampler      NA          NA             s0      1 
// EnvironmentLightingDFG_LUT_id241    texture  float4          2d             t0      1 
// LightClusters_id171               texture   uint2          3d             t1      1 
// LightIndices_id172                texture    uint         buf             t2      1 
// PointLights_id176                 texture  float4         buf             t3      1 
// SpotLights_id177                  texture  float4         buf             t4      1 
// CubeMap_id185                     texture  float4        cube             t5      1 
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
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float     z 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// SIZE                     0     z         2     NONE   float     z 
// SCREENPOSITION_ID163_SEM     0   xyzw        3     NONE   float   xy w
// NORMALWS                 0   xyz         4     NONE   float       
// PCOLOR                   0   xyzw        5     NONE   float   xyzw
// SV_IsFrontFace           0   x           6    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
// SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[27], immediateIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[58], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_texturecube (float,float,float,float) t5
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xy
dcl_input_ps linear v2.z
dcl_input_ps linear v3.xyw
dcl_input_ps linear v5.xyzw
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output oDepth
dcl_temps 18
//
// Initial variable locations:
//   oDepth <- streams.Depth_id10; 
//   o0.x <- <Shading_id34 return value>.x; o0.y <- <Shading_id34 return value>.y; o0.z <- <Shading_id34 return value>.z; o0.w <- <Shading_id34 return value>.w; 
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.TexCoord_id131.x; v2.y <- __input__.TexCoord_id131.y; 
//   v3.x <- __input__.ScreenPosition_id163.x; v3.y <- __input__.ScreenPosition_id163.y; v3.z <- __input__.ScreenPosition_id163.z; v3.w <- __input__.ScreenPosition_id163.w; 
//   v4.x <- __input__.normalWS_id19.x; v4.y <- __input__.normalWS_id19.y; v4.z <- __input__.normalWS_id19.z; 
//   v5.x <- __input__.PColor_id153.x; v5.y <- __input__.PColor_id153.y; v5.z <- __input__.PColor_id153.z; v5.w <- __input__.PColor_id153.w; 
//   v2.z <- __input__.Size_id150; 
//   v6.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w
//
#line 1217 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_VLEffectMain_32d9d8dc903773a000b57d30357d2c75.hlsl"
mad r0.xy, v2.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(0.000000, 1.000000, 0.000000, 0.000000)

#line 1218
mad r0.xy, r0.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r0.x <- result_2591318643.x; r0.y <- result_2591318643.y

#line 1219
dp2 r0.w, r0.xyxx, r0.xyxx  // r0.w <- dot_2938226072

#line 1220
lt r1.x, l(1.000000), r0.w  // r1.x <- Assign_4125861666

#line 1223
discard_nz r1.x

#line 1290
div r1.xy, v3.xyxx, v3.wwww  // r1.x <- streams.ScreenPosition_id163.x; r1.y <- streams.ScreenPosition_id163.y

#line 1206
mul r1.z, v2.z, cb1[0].x  // r1.z <- result_2749322413

#line 1208
mul r2.xy, r1.zzzz, v2.xyxx  // r2.x <- result_2362501273.x; r2.y <- result_2362501273.y

#line 1173
mov r2.zw, l(0,0,0,1.000000)

#line 1211
add r2.xyz, r2.xyzx, v0.xyzx  // r2.x <- result_745408619.x; r2.y <- result_745408619.y; r2.z <- result_745408619.z

#line 1225
add r0.w, -r0.w, l(1.000000)  // r0.w <- result_2107193138

#line 1226
sqrt r0.z, r0.w  // r0.z <- sqrt_152633142

#line 1229
dp3 r3.x, r0.xyzx, cb2[4].xyzx  // r3.x <- mul_1291408942.x
dp3 r3.y, r0.xyzx, cb2[5].xyzx  // r3.y <- mul_1291408942.y
dp3 r3.z, r0.xyzx, cb2[6].xyzx  // r3.z <- mul_1291408942.z

#line 1231
dp3 r0.x, r3.xyzx, r3.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r3.xyzx  // r0.x <- normalize_2713122566.x; r0.y <- normalize_2713122566.y; r0.z <- normalize_2713122566.z

#line 1173
dp4 r0.w, r2.xyzw, cb2[18].xyzw  // r0.w <- posWVP.z
dp4 r1.z, r2.xyzw, cb2[19].xyzw  // r1.z <- posWVP.w

#line 1177
div oDepth, r0.w, r1.z

#line 1154
add r3.xyz, -r2.xyzx, cb2[21].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- streams.viewWS_id68.x; r3.y <- streams.viewWS_id68.y; r3.z <- streams.viewWS_id68.z

#line 1074
add r0.w, -cb1[0].y, l(1.000000)  // r0.w <- glossiness

#line 1066
add r4.xyz, v5.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].zzzz, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id55.x; r4.y <- streams.matSpecular_id55.y; r4.z <- streams.matSpecular_id55.z

#line 1067
mad r5.xyz, cb1[0].zzzz, -v5.xyzx, v5.xyzx  // r5.x <- streams.matDiffuse_id53.x; r5.y <- streams.matDiffuse_id53.y; r5.z <- streams.matDiffuse_id53.z

#line 919
movc r0.xyz, v6.xxxx, r0.xyzx, -r0.xyzx  // r0.x <- streams.normalWS_id19.x; r0.y <- streams.normalWS_id19.y; r0.z <- streams.normalWS_id19.z

#line 852
dp3 r1.z, r0.xyzx, r3.xyzx
max r6.y, r1.z, l(0.000100)  // r6.y <- streams.NdotV_id72

#line 853
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 854
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id70

#line 937
mov r7.xyz, r0.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y; r8.z <- streams.viewWS_id68.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r10.w, r0.w  // r10.w <- streams.alphaRoughness_id70
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.z, r6.y  // r1.z <- streams.NdotV_id72
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 939
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 941
    break 

#line 942
  endif 

#line 682
  ishl r2.w, r1.w, l(1)

#line 822
  dp3 r3.w, r7.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 824
  mul r12.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r12.x <- streams.lightColorNdotL_id44.x; r12.y <- streams.lightColorNdotL_id44.y; r12.z <- streams.lightColorNdotL_id44.z

#line 814
  add r13.xyz, r8.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r13.xyzx, r13.xyzx
  rsq r4.w, r4.w
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.H_id75.x; r13.y <- streams.H_id75.y; r13.z <- streams.H_id75.z

#line 815
  dp3_sat r4.w, r7.xyzx, r13.xyzx  // r4.w <- streams.NdotH_id76

#line 816
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r13.xyzx  // r2.w <- streams.LdotH_id77

#line 810
  mul r13.xyz, r9.xyzx, r12.xyzx

#line 947
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 434
  add r14.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.w, r2.w, r2.w
  mul r5.w, r5.w, r5.w
  mul r2.w, r2.w, r5.w
  mad r14.xyz, r14.xyzx, r2.wwww, r10.xyzx  // r14.x <- <FresnelSchlick_id151 return value>.x; r14.y <- <FresnelSchlick_id151 return value>.y; r14.z <- <FresnelSchlick_id151 return value>.z

#line 429
  mul r2.w, r10.w, l(0.500000)  // r2.w <- k

#line 430
  mad r5.w, -r10.w, l(0.500000), l(1.000000)
  mad r6.z, r3.w, r5.w, r2.w
  div r6.z, r3.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id167 return value>
  mad r2.w, r1.z, r5.w, r2.w
  div r2.w, r1.z, r2.w  // r2.w <- <VisibilityhSchlickGGX_id167 return value>

#line 506
  mul r2.w, r2.w, r6.z
  mul r3.w, r1.z, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id169 return value>

#line 500
  mul r3.w, r10.w, r10.w  // r3.w <- alphaR2

#line 501
  mul r4.w, r4.w, r4.w
  mad r5.w, r10.w, r10.w, l(-1.000000)
  mad r4.w, r4.w, r5.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 502
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id181 return value>

#line 804
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r12.xyz, r12.xyzx, r14.xyzx

#line 951
  mad r11.xyz, r12.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 937
  iadd r1.w, r1.w, l(1)

#line 953
endloop 

#line 649
add r1.z, v1.z, -cb2[22].z
div r1.z, cb2[22].w, r1.z  // r1.z <- depth

#line 650
mad r1.xy, r1.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r1.xy, r1.xyxx, cb2[42].yzyy

#line 651
mad r1.z, r1.z, cb2[41].w, cb2[42].x
log r1.z, r1.z
max r1.z, r1.z, l(0.000000)

#line 652
mul r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 651
ftoi r7.xyz, r1.xyzx  // r7.z <- slice

#line 652
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r1.xy, r7.xyzw, t1.xyzw  // r1.x <- streams.lightData_id169.x; r1.y <- streams.lightData_id169.y

#line 792
and r1.z, r1.y, l(0x0000ffff)  // r1.z <- <GetMaxLightCount_id215 return value>

#line 961
mov r7.xyz, r0.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r7.w, r2.x  // r7.w <- streams.PositionWS_id22.x
mov r8.xy, r2.yzyy  // r8.x <- streams.PositionWS_id22.y; r8.y <- streams.PositionWS_id22.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id68.x; r8.w <- streams.viewWS_id68.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id68.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r12.xyz, r4.xyzx  // r12.x <- streams.matSpecularVisible_id71.x; r12.y <- streams.matSpecularVisible_id71.y; r12.z <- streams.matSpecularVisible_id71.z
mov r12.w, r0.w  // r12.w <- streams.alphaRoughness_id70
mov r13.z, r6.y  // r13.z <- streams.NdotV_id72
mov r13.x, r1.x  // r13.x <- streams.lightIndex_id170
mov r14.xyz, r11.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r1.z
  breakc_nz r2.w

#line 963
  if_nz r2.w

#line 965
    break 

#line 966
  endif 

#line 636
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r13.xxxx, t2.yzwx  // r2.w <- realLightIndex

#line 637
  iadd r13.x, r13.x, l(1)  // r13.x <- streams.lightIndex_id170

#line 639
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyzw, r3.wwww, t3.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w

#line 640
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r2.wwww, t3.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 421
  mov r17.x, r7.w
  mov r17.yz, r8.xxyx
  add r15.xyz, r15.xyzx, -r17.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 422
  dp3 r2.w, r15.xyzx, r15.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 423
  div r15.xyz, r15.xyzx, r3.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 380
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 351
  mul r2.w, r15.w, r2.w  // r2.w <- factor

#line 352
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 353
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id67 return value>

#line 381
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 778
  dp3 r3.w, r7.xyzx, r15.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 780
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r3.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id44.x; r16.y <- streams.lightColorNdotL_id44.y; r16.z <- streams.lightColorNdotL_id44.z

#line 814
  mov r9.xy, r8.zwzz
  add r9.xyw, r15.xyxz, r9.xyxz
  dp3 r2.w, r9.xywx, r9.xywx
  rsq r2.w, r2.w
  mul r9.xyw, r2.wwww, r9.xyxw  // r9.x <- streams.H_id75.x; r9.y <- streams.H_id75.y; r9.w <- streams.H_id75.z

#line 815
  dp3_sat r2.w, r7.xyzx, r9.xywx  // r2.w <- streams.NdotH_id76

#line 816
  dp3_sat r4.w, r15.xyzx, r9.xywx  // r4.w <- streams.LdotH_id77

#line 810
  mul r9.xyw, r10.xyxz, r16.xyxz

#line 971
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r14.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 434
  add r15.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r15.xyz, r15.xyzx, r4.wwww, r12.xyzx  // r15.x <- <FresnelSchlick_id151 return value>.x; r15.y <- <FresnelSchlick_id151 return value>.y; r15.z <- <FresnelSchlick_id151 return value>.z

#line 429
  mul r4.w, r12.w, l(0.500000)  // r4.w <- k

#line 430
  mad r5.w, -r12.w, l(0.500000), l(1.000000)
  mad r6.z, r3.w, r5.w, r4.w
  div r6.z, r3.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id167 return value>
  mad r4.w, r13.z, r5.w, r4.w
  div r4.w, r13.z, r4.w  // r4.w <- <VisibilityhSchlickGGX_id167 return value>

#line 506
  mul r4.w, r4.w, r6.z
  mul r3.w, r13.z, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id169 return value>

#line 500
  mul r4.w, r12.w, r12.w  // r4.w <- alphaR2

#line 501
  mul r2.w, r2.w, r2.w
  mad r5.w, r12.w, r12.w, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 502
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id181 return value>

#line 804
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 975
  mad r14.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r9.xywx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 961
  iadd r1.w, r1.w, l(1)

#line 977
endloop   // r13.x <- streams.lightIndex_id170

#line 770
ushr r1.x, r1.y, l(16)  // r1.x <- <GetMaxLightCount_id227 return value>

#line 985
mov r1.yzw, r2.xxyz  // r1.y <- streams.PositionWS_id22.x; r1.z <- streams.PositionWS_id22.y; r1.w <- streams.PositionWS_id22.z
mov r7.xyz, r0.xyzx
mov r8.xyz, r3.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y; r8.z <- streams.viewWS_id68.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r11.x, r0.w  // r11.x <- streams.alphaRoughness_id70
mov r11.z, r6.y  // r11.z <- streams.NdotV_id72
mov r12.xyz, r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, r13.x  // r2.w <- streams.lightIndex_id170
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r1.x
  breakc_nz r4.w

#line 987
  if_nz r4.w

#line 989
    break 

#line 990
  endif 

#line 608
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r2.wwww, t2.yzwx  // r4.w <- realLightIndex

#line 609
  iadd r2.w, r2.w, l(1)  // r2.w <- streams.lightIndex_id170

#line 611
  ishl r5.w, r4.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r13.yzw, r5.wwww, t4.wxyz  // r13.y <- spotLight1.x; r13.z <- spotLight1.y; r13.w <- spotLight1.z

#line 614
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r4.wwww, l(1, 2, 3, 0)

#line 612
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t4.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 613
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t4.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 614
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t4.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 408
  add r13.yzw, -r1.yyzw, r13.yyzw  // r13.y <- lightVector.x; r13.z <- lightVector.y; r13.w <- lightVector.z

#line 409
  dp3 r4.w, r13.yzwy, r13.yzwy
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength

#line 410
  div r13.yzw, r13.yyzw, r5.wwww  // r13.y <- lightVectorNorm.x; r13.z <- lightVectorNorm.y; r13.w <- lightVectorNorm.z

#line 373
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 345
  mul r4.w, r15.w, r4.w  // r4.w <- factor

#line 346
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 347
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id78 return value>

#line 374
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 365
  dp3 r5.w, -r16.xyzx, r13.yzwy  // r5.w <- cd

#line 366
  mad_sat r5.w, r5.w, r15.x, r15.y  // r5.w <- attenuation

#line 367
  mul r5.w, r5.w, r5.w

#line 416
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 756
  dp3 r5.w, r7.xyzx, r13.yzwy
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id49

#line 758
  mul r15.xyz, r4.wwww, r17.xyzx
  mul r15.xyz, r5.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 814
  add r16.xyz, r8.xyzx, r13.yzwy
  dp3 r4.w, r16.xyzx, r16.xyzx
  rsq r4.w, r4.w
  mul r16.xyz, r4.wwww, r16.xyzx  // r16.x <- streams.H_id75.x; r16.y <- streams.H_id75.y; r16.z <- streams.H_id75.z

#line 815
  dp3_sat r4.w, r7.xyzx, r16.xyzx  // r4.w <- streams.NdotH_id76

#line 816
  dp3_sat r6.z, r13.yzwy, r16.xyzx  // r6.z <- streams.LdotH_id77

#line 810
  mul r13.yzw, r9.xxyz, r15.xxyz

#line 995
  mad r13.yzw, r13.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r12.xxyz  // r13.y <- directLightingContribution.x; r13.z <- directLightingContribution.y; r13.w <- directLightingContribution.z

#line 434
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.z, -r6.z, l(1.000000)
  mul r6.w, r6.z, r6.z
  mul r6.w, r6.w, r6.w
  mul r6.z, r6.w, r6.z
  mad r16.xyz, r16.xyzx, r6.zzzz, r10.xyzx  // r16.x <- <FresnelSchlick_id151 return value>.x; r16.y <- <FresnelSchlick_id151 return value>.y; r16.z <- <FresnelSchlick_id151 return value>.z

#line 429
  mul r6.z, r11.x, l(0.500000)  // r6.z <- k

#line 430
  mad r6.w, -r11.x, l(0.500000), l(1.000000)
  mad r7.w, r5.w, r6.w, r6.z
  div r7.w, r5.w, r7.w  // r7.w <- <VisibilityhSchlickGGX_id167 return value>
  mad r6.z, r11.z, r6.w, r6.z
  div r6.z, r11.z, r6.z  // r6.z <- <VisibilityhSchlickGGX_id167 return value>

#line 506
  mul r6.z, r6.z, r7.w
  mul r5.w, r11.z, r5.w
  div r5.w, r6.z, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id169 return value>

#line 500
  mul r6.z, r11.x, r11.x  // r6.z <- alphaR2

#line 501
  mul r4.w, r4.w, r4.w
  mad r6.w, r11.x, r11.x, l(-1.000000)
  mad r4.w, r4.w, r6.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 502
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r6.z, r4.w  // r4.w <- <NormalDistributionGGX_id181 return value>

#line 804
  mul r16.xyz, r5.wwww, r16.xyzx
  mul r16.xyz, r4.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 999
  mad r12.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.yzwy  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 985
  iadd r3.w, r3.w, l(1)

#line 1001
endloop   // r2.w <- streams.lightIndex_id170

#line 906
lt r1.x, v5.w, cb1[1].x

#line 908
discard_nz r1.x

#line 584
sqrt r0.w, r0.w
add r6.x, -r0.w, l(1.000000)  // r6.x <- glossiness

#line 585
sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r6.xyxx, t0.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 586
mad r1.xyz, r4.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id355 return value>.x; r1.y <- <Compute_id355 return value>.y; r1.z <- <Compute_id355 return value>.z

#line 739
mul r2.xyz, r1.xyzx, cb2[43].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id540 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id540 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id540 return value>.z

#line 1013
mad r2.xyz, r5.xyzx, cb2[43].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 728
dp3 r1.w, r0.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r0.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r0.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 462
mul r4.x, r2.w, r2.w  // r4.x <- y2

#line 463
mul r4.y, r3.w, r3.w  // r4.y <- z2

#line 467
mad r6.xyz, cb2[45].xyzx, r2.wwww, cb2[44].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 468
mad r6.xyz, cb2[46].xyzx, -r3.wwww, r6.xyzx

#line 469
mad r6.xyz, cb2[47].xyzx, r1.wwww, r6.xyzx

#line 472
mul r7.xyz, r2.wwww, cb2[48].xyzx
mad r6.xyz, r7.xyzx, r1.wwww, r6.xyzx

#line 473
mul r7.xyz, r2.wwww, cb2[49].xyzx
mad r6.xyz, r7.xyzx, -r3.wwww, r6.xyzx

#line 474
mad r2.w, r4.y, l(3.000000), l(-1.000000)
mad r4.yzw, cb2[50].xxyz, r2.wwww, r6.xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z

#line 475
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r4.yzw, r6.xxyz, -r3.wwww, r4.yyzw

#line 476
mad r1.w, r1.w, r1.w, -r4.x
mad r4.xyz, cb2[52].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 730
mul r4.xyz, r4.xyzx, cb2[57].xxxx  // r4.x <- streams.envLightDiffuseColor_id47.x; r4.y <- streams.envLightDiffuseColor_id47.y; r4.z <- streams.envLightDiffuseColor_id47.z

#line 731
dp3 r1.w, -r3.xyzx, r0.xyzx
add r1.w, r1.w, r1.w
mad r0.xyz, r0.xyzx, -r1.wwww, -r3.xyzx  // r0.x <- sampleDirection.x; r0.y <- sampleDirection.y; r0.z <- sampleDirection.z

#line 732
dp3 r3.x, r0.xyzx, cb2[53].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r0.xyzx, cb2[54].xyzx  // r3.y <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb2[55].xyzx  // r0.x <- sampleDirection.z

#line 733
mov r3.z, -r0.x  // r3.z <- sampleDirection.z

#line 570
mul r0.x, r0.w, cb2[52].w  // r0.x <- mipLevel

#line 571
sample_l_indexable(texturecube)(float,float,float,float) r0.xyz, r3.xyzx, t5.xyzw, s0, r0.x  // r0.x <- <Compute_id249 return value>.x; r0.y <- <Compute_id249 return value>.y; r0.z <- <Compute_id249 return value>.z

#line 734
mul r0.xyz, r0.xyzx, cb2[57].xxxx  // r0.x <- streams.envLightSpecularColor_id48.x; r0.y <- streams.envLightSpecularColor_id48.y; r0.z <- streams.envLightSpecularColor_id48.z

#line 1021
mad r2.xyz, r5.xyzx, r4.xyzx, r2.xyzx

#line 1025
mad r0.xyz, r1.xyzx, r0.xyzx, r2.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1040
mad r0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id73.x; r0.y <- streams.shadingColor_id73.y; r0.z <- streams.shadingColor_id73.z

#line 913
mad o0.xyz, v5.xyzx, cb1[0].wwww, r0.xyzx

#line 1233
mov o0.w, v5.w

#line 1197
utof o1.xyzw, cb0[26].xxxx

#line 1296
ret 
// Approximately 307 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id161 = 8;
const static int TOrder_id180 = 3;
const static int TOrder_id182 = 3;
const static bool TInvert_id205 = true;
const static bool TIsEnergyConservative_id238 = false;
static const float PI_id240 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id250 = false;
static const float2 Array_651090723_id145[4] = { float2(-1, 1), float2(1, 1), float2(-1, -1), float2(1, -1)};
static const float2 Array_2161727902_id146[4] = { float2(0, 0), float2(1, 0), float2(0, 1), float2(1, 1)};
struct PS_STREAMS 
{
    float4 ScreenPosition_id163;
    float3 normalWS_id19;
    float4 PColor_id153;
    float Size_id150;
    float2 TexCoord_id131;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
    float MRoughness_id151;
    float4 MDiffuse_id152;
    float MMetalness_id154;
    float4 MSpecular_id155;
    float MSpecularIntensity_id156;
    float DepthVS_id23;
    float3 viewWS_id68;
    float3 shadingColor_id73;
    float matBlend_id40;
    float3 matNormal_id51;
    float4 matColorBase_id52;
    float4 matDiffuse_id53;
    float3 matDiffuseVisible_id69;
    float3 matSpecular_id55;
    float3 matSpecularVisible_id71;
    float matSpecularIntensity_id56;
    float matGlossiness_id54;
    float alphaRoughness_id70;
    float matAmbientOcclusion_id57;
    float matAmbientOcclusionDirectLightingFactor_id58;
    float matCavity_id59;
    float matCavityDiffuse_id60;
    float matCavitySpecular_id61;
    float4 matEmissive_id62;
    float matEmissiveIntensity_id63;
    float matScatteringStrength_id64;
    float2 matDiffuseSpecularAlphaBlend_id65;
    float3 matAlphaBlendColor_id66;
    float matAlphaDiscard_id67;
    float shadingColorAlpha_id74;
    float4 ToShaderFX_0_id190;
    float ToShaderFX_1_id198;
    float ToShaderFX_2_id207;
    float4 ToShaderFX_3_id218;
    float ToShaderFX_4_id226;
    float3 lightPositionWS_id41;
    float3 lightDirectionWS_id42;
    float3 lightColor_id43;
    float3 lightColorNdotL_id44;
    float3 lightSpecularColorNdotL_id45;
    float lightAttenuation_id46;
    float3 envLightDiffuseColor_id47;
    float3 envLightSpecularColor_id48;
    float lightDirectAmbientOcclusion_id50;
    float NdotL_id49;
    float NdotV_id72;
    float thicknessWS_id159;
    float3 shadowColor_id158;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id169;
    int lightIndex_id170;
    float Depth_id10;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
};
struct PS_OUTPUT 
{
    float Depth_id10 : SV_Depth;
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
};
struct PS_INPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id131 : TEXCOORD0;
    float4 ScreenPosition_id163 : SCREENPOSITION_ID163_SEM;
    float3 normalWS_id19 : NORMALWS;
    float4 PColor_id153 : PCOLOR;
    float Size_id150 : SIZE;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct GS_STREAMS 
{
    float Age_id147;
    float LifeTime_id148;
    float3 PPosition_id149;
    float Size_id150;
    float4 ScreenPosition_id163;
    float3 normalWS_id19;
    float4 PColor_id153;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float2 TexCoord_id131;
};
struct GS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id131 : TEXCOORD0;
    float4 ScreenPosition_id163 : SCREENPOSITION_ID163_SEM;
    float3 normalWS_id19 : NORMALWS;
    float4 PColor_id153 : PCOLOR;
    float Size_id150 : SIZE;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id163 : SCREENPOSITION_ID163_SEM;
    float Age_id147 : AGE;
    float LifeTime_id148 : LIFETIME;
    float3 PPosition_id149 : PPOSITION;
    float Size_id150 : SIZE;
    float4 PColor_id153 : PCOLOR;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float Age_id147;
    float LifeTime_id148;
    float3 PPosition_id149;
    float Size_id150;
    float4 PColor_id153;
    float4 PositionWS_id22;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id163;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id163 : SCREENPOSITION_ID163_SEM;
    float Age_id147 : AGE;
    float LifeTime_id148 : LIFETIME;
    float3 PPosition_id149 : PPOSITION;
    float Size_id150 : SIZE;
    float4 PColor_id153 : PCOLOR;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    float3 meshNormal_id16 : NORMAL;
    float Age_id147 : AGE;
    float LifeTime_id148 : LIFETIME;
    float3 PPosition_id149 : PPOSITION;
    float Size_id150 : SIZE;
    float4 PColor_id153 : PCOLOR;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id32;
    float4x4 WorldInverse_id33;
    float4x4 WorldInverseTranspose_id34;
    float4x4 WorldView_id35;
    float4x4 WorldViewInverse_id36;
    float4x4 WorldViewProjection_id37;
    float3 WorldScale_id38;
    float4 EyeMS_id39;
    uint MaterialIndex_id157;
};
cbuffer PerMaterial 
{
    float input_3440848145_id141;
    float input_2921916620_id142;
    float input_1653130546_id143;
    float input_3745212194_id144;
    float constantFloat_id234;
};
cbuffer PerView 
{
    float4x4 View_id25;
    float4x4 ViewInverse_id26;
    float4x4 Projection_id27;
    float4x4 ProjectionInverse_id28;
    float4x4 ViewProjection_id29;
    float2 ProjScreenRay_id30;
    float4 Eye_id31;
    float NearClipPlane_id164 = 1.0f;
    float FarClipPlane_id165 = 100.0f;
    float2 ZProjection_id166;
    float2 ViewSize_id167;
    float AspectRatio_id168;
    float4 _padding_PerView_Default;
    int LightCount_id160;
    DirectionalLightData Lights_id162[TMaxLightCount_id161];
    float ClusterDepthScale_id173;
    float ClusterDepthBias_id174;
    float2 ClusterStride_id175;
    float3 AmbientLight_id178;
    float3 SphericalColors_id183[TOrder_id182 * TOrder_id182];
    float MipCount_id184;
    float4x4 SkyMatrix_id186;
    float Intensity_id187;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id84;
    float2 Texture1TexelSize_id86;
    float2 Texture2TexelSize_id88;
    float2 Texture3TexelSize_id90;
    float2 Texture4TexelSize_id92;
    float2 Texture5TexelSize_id94;
    float2 Texture6TexelSize_id96;
    float2 Texture7TexelSize_id98;
    float2 Texture8TexelSize_id100;
    float2 Texture9TexelSize_id102;
};
Texture2D Texture0_id83;
Texture2D Texture1_id85;
Texture2D Texture2_id87;
Texture2D Texture3_id89;
Texture2D Texture4_id91;
Texture2D Texture5_id93;
Texture2D Texture6_id95;
Texture2D Texture7_id97;
Texture2D Texture8_id99;
Texture2D Texture9_id101;
TextureCube TextureCube0_id103;
TextureCube TextureCube1_id104;
TextureCube TextureCube2_id105;
TextureCube TextureCube3_id106;
Texture3D Texture3D0_id107;
Texture3D Texture3D1_id108;
Texture3D Texture3D2_id109;
Texture3D Texture3D3_id110;
SamplerState Sampler_id111;
SamplerState PointSampler_id112 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id113 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id114 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id115 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id116 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id117 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id118 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id119 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id120 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id121;
SamplerState Sampler1_id122;
SamplerState Sampler2_id123;
SamplerState Sampler3_id124;
SamplerState Sampler4_id125;
SamplerState Sampler5_id126;
SamplerState Sampler6_id127;
SamplerState Sampler7_id128;
SamplerState Sampler8_id129;
SamplerState Sampler9_id130;
Texture2D EnvironmentLightingDFG_LUT_id241;
Texture3D<uint2> LightClusters_id171;
Buffer<uint> LightIndices_id172;
Buffer<float4> PointLights_id176;
Buffer<float4> SpotLights_id177;
TextureCube CubeMap_id185;
float SmoothDistanceAttenuation_id78(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id67(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float4 cast44_id108(float4 p)
{
    return p;
}
float4 cast44_id99(float4 p)
{
    return p;
}
float GetAngularAttenuation_id80(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id79(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id78(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id69(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id67(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id341(inout PS_STREAMS streams)
{
    return streams.MSpecularIntensity_id156;
}
float4 Compute_id314(inout PS_STREAMS streams)
{
    float4 cast44_1588990698 = cast44_id108(streams.MSpecular_id155);
    return cast44_1588990698;
}
float Compute_id302(inout PS_STREAMS streams)
{
    return streams.MMetalness_id154;
}
float Compute_id290(inout PS_STREAMS streams)
{
    return streams.MRoughness_id151;
}
float4 Compute_id263(inout PS_STREAMS streams)
{
    float4 cast44_296689956 = cast44_id99(streams.MDiffuse_id152);
    return cast44_296689956;
}
float ComputeAttenuation_id81(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id79(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id80(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id68(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id69(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id167(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id151(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id344(inout PS_STREAMS streams)
{
    streams.ToShaderFX_4_id226 = Compute_id341(streams);
}
void Compute_id332(inout PS_STREAMS streams)
{
    streams.ToShaderFX_3_id218 = Compute_id314(streams);
}
void Compute_id305(inout PS_STREAMS streams)
{
    streams.ToShaderFX_2_id207 = Compute_id302(streams);
}
void Compute_id293(inout PS_STREAMS streams)
{
    streams.ToShaderFX_1_id198 = Compute_id290(streams);
}
void Compute_id281(inout PS_STREAMS streams)
{
    streams.ToShaderFX_0_id190 = Compute_id263(streams);
}
float4 EvaluateSphericalHarmonics_id91(float3 sphericalColors[TOrder_id180 * TOrder_id180], float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = sphericalColors[0];

    {
        color += sphericalColors[1] * y;
        color += sphericalColors[2] * z;
        color += sphericalColors[3] * x;

        {
            color += sphericalColors[4] * y * x;
            color += sphericalColors[5] * y * z;
            color += sphericalColors[6] * (3.0 * z2 - 1.0);
            color += sphericalColors[7] * x * z;
            color += sphericalColors[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
void ProcessLight_id82(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id81(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id71(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id68(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id181(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id240 * d * d);
}
float VisibilitySmithSchlickGGX_id169(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id167(alphaR, nDotL) * VisibilityhSchlickGGX_id167(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id157(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id151(f0, 1.0f, lOrVDotH);
}
float Compute_id347(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_4_id226;
}
void Compute_id346(inout PS_STREAMS streams)
{

    {
        Compute_id344(streams);
    }
}
float4 Compute_id335(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_3_id218;
}
void Compute_id334(inout PS_STREAMS streams)
{

    {
        Compute_id332(streams);
    }
}
float Compute_id308(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_2_id207;
}
void Compute_id307(inout PS_STREAMS streams)
{

    {
        Compute_id305(streams);
    }
}
float Compute_id296(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_1_id198;
}
void Compute_id295(inout PS_STREAMS streams)
{

    {
        Compute_id293(streams);
    }
}
float4 Compute_id284(inout PS_STREAMS streams)
{
    return streams.ToShaderFX_0_id190;
}
void Compute_id283(inout PS_STREAMS streams)
{

    {
        Compute_id281(streams);
    }
}
float4 Compute_id249(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id184;
    return CubeMap_id185.SampleLevel(LinearSampler_id113, direction, mipLevel);
}
float4 Compute_id244(float3 direction)
{
    return EvaluateSphericalHarmonics_id91(SphericalColors_id183, direction);
}
void PrepareEnvironmentLight_id95(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id355(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id241.SampleLevel(LinearSampler_id113, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id86(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id77(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id76(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id75(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id159 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id74(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id172.Load(streams.lightIndex_id170);
    streams.lightIndex_id170++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id177.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id177.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id177.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id177.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id82(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id66(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id65(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id64(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id159 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id63(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id172.Load(streams.lightIndex_id170);
    streams.lightIndex_id170++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id176.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id176.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id71(streams, pointLight);
}
void PrepareLightData_id70(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id166.y / (projectedDepth - ZProjection_id166.x);
    float2 texCoord = float2(streams.ScreenPosition_id163.x + 1, 1 - streams.ScreenPosition_id163.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id173 + ClusterDepthBias_id174), 0));
    streams.lightData_id169 = LightClusters_id171.Load(int4(texCoord * ClusterStride_id175, slice, 0));
    streams.lightIndex_id170 = streams.lightData_id169.x;
}
float Compute_id450(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id181(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id419(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id169(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id388(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id157(f0, streams.LdotH_id77);
}
float3 ComputeSpecularTextureProjection_id60(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id59(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id58(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id159 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id57(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id162[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id162[lightIndex].DirectionWS;
}
float Compute_id350(inout PS_STREAMS streams)
{
    Compute_id346(streams);
    return Compute_id347(streams);
}
float4 Compute_id338(inout PS_STREAMS streams)
{
    Compute_id334(streams);
    return Compute_id335(streams);
}
float Compute_id311(inout PS_STREAMS streams)
{
    Compute_id307(streams);
    return Compute_id308(streams);
}
float Compute_id299(inout PS_STREAMS streams)
{
    Compute_id295(streams);
    return Compute_id296(streams);
}
float4 Compute_id287(inout PS_STREAMS streams)
{
    Compute_id283(streams);
    return Compute_id284(streams);
}
void ResetStream_id190()
{
}
void AfterLightingAndShading_id509()
{
}
void AfterLightingAndShading_id489()
{
}
void PrepareEnvironmentLight_id262(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id259(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id95(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id186);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id244(sampleDirection).rgb * Intensity_id187 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id186);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id249(streams, sampleDirection).rgb * Intensity_id187 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id540(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id355(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id482(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id254(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id86(streams);
    float3 lightColor = AmbientLight_id178 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id224(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id74(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id158 = ComputeShadow_id75(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id158 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id76(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id77(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id228(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y >> 16;
}
int GetMaxLightCount_id227(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y >> 16;
}
void PrepareDirectLights_id222()
{
}
void PrepareDirectLight_id211(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id63(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id158 = ComputeShadow_id64(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id158 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id65(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id66(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id216(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y & 0xFFFF;
}
int GetMaxLightCount_id215(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y & 0xFFFF;
}
void PrepareDirectLights_id214(inout PS_STREAMS streams)
{
    PrepareLightData_id70(streams);
}
float3 ComputeDirectLightContribution_id539(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id388(streams, specularColor);
    float geometricShadowing = Compute_id419(streams);
    float normalDistribution = Compute_id450(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id481(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id240 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id200(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id57(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id158 = ComputeShadow_id58(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id158 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id59(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id60(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id202()
{
    return LightCount_id160;
}
int GetMaxLightCount_id203()
{
    return TMaxLightCount_id161;
}
void PrepareDirectLights_id198()
{
}
void PrepareForLightingAndShading_id506()
{
}
void PrepareForLightingAndShading_id486()
{
}
void PrepareMaterialForLightingAndShading_id183(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id182(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id41 = 0;
    streams.lightDirectionWS_id42 = 0;
    streams.lightColor_id43 = 0;
    streams.lightColorNdotL_id44 = 0;
    streams.lightSpecularColorNdotL_id45 = 0;
    streams.lightAttenuation_id46 = 1.0f;
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
    streams.lightDirectAmbientOcclusion_id50 = 1.0f;
    streams.NdotL_id49 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id353()
{
    return float4(constantFloat_id234, constantFloat_id234, constantFloat_id234, constantFloat_id234);
}
float4 Compute_id352(inout PS_STREAMS streams)
{
    float x = Compute_id350(streams);
    return float4(x, x, x, x);
}
float4 Compute_id340(inout PS_STREAMS streams)
{
    return Compute_id338(streams);
}
float4 Compute_id313(inout PS_STREAMS streams)
{
    float x = Compute_id311(streams);
    return float4(x, x, x, x);
}
float4 Compute_id301(inout PS_STREAMS streams)
{
    float x = Compute_id299(streams);
    return float4(x, x, x, x);
}
float4 Compute_id289(inout PS_STREAMS streams)
{
    return Compute_id287(streams);
}
void ResetStream_id191(inout PS_STREAMS streams)
{
    ResetStream_id190();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id593(inout PS_STREAMS streams)
{
    if (streams.shadingColorAlpha_id74 < streams.matAlphaDiscard_id67)
    {
        discard;
    }
}
void Compute_id588(inout PS_STREAMS streams)
{
    streams.shadingColor_id73 += streams.matEmissive_id62.rgb * streams.matEmissiveIntensity_id63;
}
void Compute_id587(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id182(streams);
    PrepareMaterialForLightingAndShading_id183(streams);

    {
        PrepareForLightingAndShading_id486();
    }

    {
        PrepareForLightingAndShading_id506();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id198();
        const int maxLightCount = GetMaxLightCount_id203();
        int count = GetLightCount_id202();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id200(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id481(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id539(streams);
            }
        }
    }

    {
        PrepareDirectLights_id214(streams);
        const int maxLightCount = GetMaxLightCount_id215(streams);
        int count = GetLightCount_id216(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id211(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id481(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id539(streams);
            }
        }
    }

    {
        PrepareDirectLights_id222();
        const int maxLightCount = GetMaxLightCount_id227(streams);
        int count = GetLightCount_id228(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id224(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id481(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id539(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id254(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id482(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id540(streams);
        }
    }

    {
        PrepareEnvironmentLight_id259(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id482(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id540(streams);
        }
    }

    {
        PrepareEnvironmentLight_id262(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id482(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id540(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id240 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id489();
    }

    {
        AfterLightingAndShading_id509();
    }
}
void Compute_id570(inout PS_STREAMS streams)
{
    streams.matAlphaDiscard_id67 = Compute_id353().r;
}
void Compute_id565(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id63 = Compute_id352(streams).r;
}
void Compute_id560(inout PS_STREAMS streams)
{
    streams.matEmissive_id62 = Compute_id340(streams).rgba;
}
void Compute_id555(inout PS_STREAMS streams)
{
    float metalness = Compute_id313(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id550(inout PS_STREAMS streams)
{
    float glossiness = Compute_id301(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id545(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id289(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id192(inout PS_STREAMS streams)
{
    ResetStream_id191(streams);
    streams.matNormal_id51 = float3(0, 0, 1);
    streams.matColorBase_id52 = 0.0f;
    streams.matDiffuse_id53 = 0.0f;
    streams.matDiffuseVisible_id69 = 0.0f;
    streams.matSpecular_id55 = 0.0f;
    streams.matSpecularVisible_id71 = 0.0f;
    streams.matSpecularIntensity_id56 = 1.0f;
    streams.matGlossiness_id54 = 0.0f;
    streams.alphaRoughness_id70 = 1.0f;
    streams.matAmbientOcclusion_id57 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id58 = 0.0f;
    streams.matCavity_id59 = 1.0f;
    streams.matCavityDiffuse_id60 = 0.0f;
    streams.matCavitySpecular_id61 = 0.0f;
    streams.matEmissive_id62 = 0.0f;
    streams.matEmissiveIntensity_id63 = 0.0f;
    streams.matScatteringStrength_id64 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id65 = 1.0f;
    streams.matAlphaBlendColor_id66 = 1.0f;
    streams.matAlphaDiscard_id67 = 0.1f;
}
void Compute_id54(inout PS_STREAMS streams)
{

    {
        Compute_id545(streams);
    }

    {
        Compute_id550(streams);
    }

    {
        Compute_id555(streams);
    }

    {
        Compute_id560(streams);
    }

    {
        Compute_id565(streams);
    }

    {
        Compute_id570(streams);
    }

    {
        Compute_id587(streams);
    }

    {
        Compute_id588(streams);
    }

    {
        Compute_id593(streams);
    }
}
void ResetStream_id53(inout PS_STREAMS streams)
{
    ResetStream_id192(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id53(streams);
    Compute_id54(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
float4 StrideShadingWorldNormal_id33(inout PS_STREAMS streams, float3 worldPos, float3 normal)
{
    streams.PositionWS_id22 = float4(worldPos, 1);
    float4 posWVP = mul(streams.PositionWS_id22, ViewProjection_id29);
    streams.normalWS_id19 = normal;
    streams.meshNormalWS_id17 = normal;
    streams.DepthVS_id23 = posWVP.w;
    streams.Depth_id10 = posWVP.z / posWVP.w;
    return Shading_id31(streams);
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id22);
    streams.PositionH_id24 = streams.ShadingPosition_id0;
    streams.DepthVS_id23 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id22 = mul(streams.Position_id21, World_id32);
}
float4 Compute_id52()
{
    return MaterialIndex_id157;
}
float4 Shading_id34(inout PS_STREAMS streams)
{
    streams.MRoughness_id151 = input_2921916620_id142;
    streams.MDiffuse_id152 = streams.PColor_id153;
    streams.MMetalness_id154 = input_1653130546_id143;
    streams.MSpecular_id155 = streams.PColor_id153;
    streams.MSpecularIntensity_id156 = input_3745212194_id144;
    float result_2749322413 = (streams.Size_id150 * input_3440848145_id141);
    float2 result_2452521622 = (float2(1, 1) * result_2749322413);
    float2 result_2362501273 = (streams.TexCoord_id131 * result_2452521622);
    float3 join_1636558253 = float3(result_2362501273, 0);
    float3 PositionWSXyz_1638325508 = streams.PositionWS_id22.xyz;
    float3 result_745408619 = (join_1636558253 + PositionWSXyz_1638325508);
    float4 join_1371103093 = float4(result_745408619, 1);
    float TexCoordX_3764889488 = streams.TexCoord_id131.x;
    float TexCoordY_1385797184 = streams.TexCoord_id131.y;
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
    float4 mul_1291408942 = mul(join_2197976166, ViewInverse_id26);
    float3 mulXyz_3370650550 = mul_1291408942.xyz;
    float3 normalize_2713122566 = normalize(mulXyz_3370650550);
    float4 StrideShadingWorldNormal_1665242423 = StrideShadingWorldNormal_id33(streams, join_1371103093, normalize_2713122566);
    return StrideShadingWorldNormal_1665242423;
}
void PSMain_id1()
{
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
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id34(streams);
    streams.ColorTarget1_id3 = Compute_id52();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id17 = mul(streams.meshNormal_id16, (float3x3)WorldInverseTranspose_id34);
    streams.normalWS_id19 = streams.meshNormalWS_id17;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id20(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id22(streams);
    PSMain_id3(streams);
}
void VSMain_id19(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id21(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.TexCoord_id131 = __input__.TexCoord_id131;
    streams.ScreenPosition_id163 = __input__.ScreenPosition_id163;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.PColor_id153 = __input__.PColor_id153;
    streams.Size_id150 = __input__.Size_id150;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id163 /= streams.ScreenPosition_id163.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.Depth_id10 = streams.Depth_id10;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
[maxvertexcount(4)]
void GSMain(point GS_INPUT input[1], inout TriangleStream<GS_OUTPUT> outputStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
    streams.normalWS_id19 = input[0].normalWS_id19;
    streams.ScreenPosition_id163 = input[0].ScreenPosition_id163;
    streams.Age_id147 = input[0].Age_id147;
    streams.LifeTime_id148 = input[0].LifeTime_id148;
    streams.PPosition_id149 = input[0].PPosition_id149;
    streams.Size_id150 = input[0].Size_id150;
    streams.PColor_id153 = input[0].PColor_id153;
    bool Assign_685197704 = streams.Age_id147 > 0;
    bool Assign_3166272284 = streams.Age_id147 <= streams.LifeTime_id148;
    bool result_1389061142 = (Assign_685197704 && Assign_3166272284);
    bool not_1728012970 = !result_1389061142;
    if (not_1728012970)
    {
        return;
    }
    float4 join_2011572925 = float4(streams.PPosition_id149, 1);
    streams.PositionWS_id22 = join_2011572925;
    float result_2749322413 = (streams.Size_id150 * input_3440848145_id141);
    float2 result_2452521622 = (float2(1, 1) * result_2749322413);
    float4 mul_3400573806 = mul(join_2011572925, WorldView_id35);
    float3 mulXyz_3416572195 = mul_3400573806.xyz;

    for (int index_491915560 = 0; index_491915560 < 4; index_491915560++)
    {
        float2 GetItem_1759705345 = Array_651090723_id145[index_491915560];
        float2 result_1474387512 = (GetItem_1759705345 * result_2452521622);
        float3 join_1415626997 = float3(result_1474387512, 0);
        float3 result_3291361923 = (join_1415626997 + mulXyz_3416572195);
        float4 join_4063072497 = float4(result_3291361923, 1);
        float4 mul_1082633921 = mul(join_4063072497, Projection_id27);
        streams.ShadingPosition_id0 = mul_1082633921;
        float2 GetItem_4001475714 = Array_2161727902_id146[index_491915560];
        streams.TexCoord_id131 = GetItem_4001475714;

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.PositionWS_id22 = streams.PositionWS_id22;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            output.TexCoord_id131 = streams.TexCoord_id131;
            output.ScreenPosition_id163 = streams.ScreenPosition_id163;
            output.normalWS_id19 = streams.normalWS_id19;
            output.PColor_id153 = streams.PColor_id153;
            output.Size_id150 = streams.Size_id150;
            outputStream.Append(output);
        }
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    streams.Age_id147 = __input__.Age_id147;
    streams.LifeTime_id148 = __input__.LifeTime_id148;
    streams.PPosition_id149 = __input__.PPosition_id149;
    streams.Size_id150 = __input__.Size_id150;
    streams.PColor_id153 = __input__.PColor_id153;
    VSMain_id19(streams);
    streams.ScreenPosition_id163 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id163 = streams.ScreenPosition_id163;
    __output__.Age_id147 = streams.Age_id147;
    __output__.LifeTime_id148 = streams.LifeTime_id148;
    __output__.PPosition_id149 = streams.PPosition_id149;
    __output__.Size_id150 = streams.Size_id150;
    __output__.PColor_id153 = streams.PColor_id153;
    return __output__;
}
