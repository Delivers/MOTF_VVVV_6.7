/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ShaderFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin JoinFloat4Float2_Internal_ShaderFX [{xy = InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>}, {zw = InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>}]
@P xy: InputFloat2<ShaderFX.InputValueFloat2,PerUpdate>
@P zw: InputFloat2<ShaderFX.InputValueFloat2.i1,PerUpdate>
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    JoinFloat4Float2_Internal_ShaderFX => 39376e45adcdeae1578e74c244a27351
@S    ComputeFloat4 => f871947e9f604da432ea9fc3c9cb4363
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    ComputeFloat2 => 4826dbf2e774b7283c93b6121c851c5d
@S    InputFloat2 => d6238a7d677592382c8158617d803399
@S    DeclFloat2 => d5fe6f879293db53179d13cf4b1d1f3d
***************************
*****     Stages      *****
***************************
@G    Vertex => 7ae935036a1b3058f70dafa629ea5dea
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
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
vs_5_0
dcl_globalFlags refactoringAllowed

#line 15 "C:\Users\sw\Documents\_projects\2024\MOTF\MOTF_VVVV_6.7\vvvv_gamma_6.7\log\shader_ShaderFXEffect_d2427211bf135e7fb6a0a9449651a81d.hlsl"
ret 
// Approximately 1 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
};
struct VS_INPUT 
{
};
cbuffer PerUpdate 
{
    float2 InputValue_id16;
    float2 InputValue_id17;
};
void VSMain()
{
    VS_STREAMS streams = (VS_STREAMS)0;
}
