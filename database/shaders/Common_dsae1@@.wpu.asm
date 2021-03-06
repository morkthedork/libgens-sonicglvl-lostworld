//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampAlpha;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampEnv                               s5       1
//   sampAlpha                             s6       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, -2, 3
    def c1, 0.5, 0.298900008, 0.586600006, 0.114399999
    def c2, 500, 5, 1024, 0.25
    def c3, 4, 0, 0, 0
    def c4, 0, 1, 2, 3
    def c5, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s6
    dcl_2d s10
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c0.z, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c4
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c4.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    rcp r1.x, v4.w
    mul r1.xy, r1.x, v4
    mad r1.xy, r1, c0.x, c0.y
    abs_sat r1.xy, r1
    add_sat r1.xy, r1, -c65.x
    mul r1.xy, r1, c65.y
    max r2.y, r1.x, r1.y
    max r1.x, v4.z, c4.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c4.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    lrp_pp r2.z, v5.z, c4.y, r1.x
    lrp_pp r1.x, r2.y, c4.y, r2.z
    texld_pp r3, v0.zwzw, s10
    mul r1.y, r1.x, r3.w
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r2.yzw, -c50.xxyz, v2.xxyz
    dp3 r1.w, r2.yzww, r2.yzww
    rsq r1.w, r1.w
    rcp r3.w, r1.w
    mul_pp r2.yzw, r1.w, r2
    add r1.w, r3.w, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r4.xyz, -c46, v2
    dp3 r3.w, r4, r4
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r4.xyz, r3.w, r4
    add r3.w, r4.w, -c48.z
    mul_sat r1.w, r1.w, r3.w
    add_pp r1.zw, -r1, c4.y
    add r3.w, -c40.z, c40.w
    rcp r3.w, r3.w
    add r5.xyz, -c38, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c40.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c4.y
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r6.xyz, -c42, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c4.y
    add_pp r7, c22.xyzx, -v2.xyzx
    dp3_pp r5.w, r7.yzww, r7.yzww
    rsq_pp r5.w, r5.w
    mad_pp r8.xyz, r7, r5.w, -r6
    nrm_pp r9.xyz, r8
    nrm r8, v3.xyzx
    dp3_sat_pp r6.w, r9, r8
    mov_pp r9.xy, c2
    mul_pp r9.xy, r9, c20.yzzw
    max_pp r10.x, r9.x, c4.y
    min r9.x, r10.x, c2.z
    pow r10.x, r6.w, r9.x
    mul_pp r10.yzw, r9.y, c43.xxyz
    mul_pp r10.xyz, r10.x, r10.yzww
    mul_pp r10.xyz, r4.w, r10
    mul_pp r11.xyz, r9.y, c39
    mad_pp r12.xyz, r7, r5.w, -r5
    dp3_pp r5.x, r8.wyzw, -r5
    nrm_pp r13.xyz, r12
    dp3_sat_pp r5.y, r13, r8
    pow r6.w, r5.y, r9.x
    mul_pp r11.xyz, r6.w, r11
    mad_pp r10.xyz, r3.w, r11, r10
    mul_pp r11.xyz, r9.y, c47
    mad_pp r12.xyz, r7, r5.w, -r4
    dp3_pp r4.x, r8.wyzw, -r4
    nrm_pp r13.xyz, r12
    dp3_sat_pp r4.y, r13, r8
    pow r5.y, r4.y, r9.x
    mul_pp r11.xyz, r5.y, r11
    mad_pp r10.xyz, r1.w, r11, r10
    mul_pp r11.xyz, r9.y, c51
    mad_pp r12.xyz, r7, r5.w, -r2.yzww
    dp3_pp r2.y, r8.wyzw, -r2.yzww
    nrm_pp r13.xyz, r12
    dp3_sat_pp r2.z, r13, r8
    pow r4.y, r2.z, r9.x
    mul_pp r11.xyz, r4.y, r11
    mad_pp r10.xyz, r1.z, r11, r10
    mul_pp r11.xyz, r9.y, c37
    mad_pp r12.xyz, r7, r5.w, -c10
    nrm_pp r13.xyz, r12
    dp3_sat_pp r2.z, r13, r8
    pow r4.y, r2.z, r9.x
    mul_pp r11.xyz, r4.y, r11
    mad_pp r10.xyz, r11, r1.y, r10
    mul_pp r11.xyz, c59.w, c59
    mul_pp r9.yzw, r9.y, r11.xxyz
    mad_pp r11.xyz, r7, r5.w, -r0.yzww
    dp3_pp r0.y, r8.wyzw, -r0.yzww
    mul r7, r5.w, r7
    nrm_pp r12.xyz, r11
    dp3_sat_pp r0.z, r12, r8
    pow r2.z, r0.z, r9.x
    mul_pp r5.yzw, r2.z, r9
    mad_pp r5.yzw, r0.x, r5, r10.xxyz
    dp3 r0.z, r7.yzww, r8.yzww
    add r0.z, r0.z, r0.z
    mad r7, r0.z, r8, -r7
    mad r9, r7.wyzw, c5.xxyz, c5.zzzw
    mul r10, r7, c5.yxxz
    cmp r7, r7.z, r9, r10
    add r0.z, r7.z, c4.y
    rcp r0.z, r0.z
    mad r0.zw, r7.xyyx, r0.z, c4.y
    mad_pp r7.x, r0.w, c2.w, r7.w
    mul_pp r7.y, r0.z, c1.x
    texld_pp r7, r7, s5
    mul r9.xyz, r7, c63.x
    mad_pp r7.xyz, r9, r7.w, r7
    frc r0.zw, c26.xyxz
    cmp r2.zw, -r0, c4.x, c4.y
    add r0.zw, -r0, c26.xyxz
    cmp r2.zw, c26.xyxz, r2.x, r2
    add r0.zw, r0, r2
    add r9, r0.w, -c4
    add r10, r0.z, -c4
    cmp r0.zw, -r9_abs.x, v0.xyxy, c4.x
    cmp r0.zw, -r9_abs.y, v0, r0
    cmp r0.zw, -r9_abs.z, v1.xyxy, r0
    cmp r0.zw, -r9_abs.w, v1, r0
    texld_pp r9, r0.zwzw, s1
    mul_pp r7.xyz, r7, r9.w
    mul r0.z, c64.z, c64.x
    mov r11.xz, c64
    mad r0.w, r11.x, -r11.z, r11.z
    mad_pp r0.z, r1.y, r0.w, r0.z
    mul_pp r7.xyz, r0.z, r7
    mad_pp r5.yzw, r5, c18.xxyz, r7.xxyz
    mul_pp r5.yzw, r9.xxyz, r5
    mul_pp r5.yzw, r5, v3.w
    cmp r0.zw, -r10_abs.x, v0.xyxy, c4.x
    cmp r0.zw, -r10_abs.y, v0, r0
    cmp r0.zw, -r10_abs.z, v1.xyxy, r0
    cmp r0.zw, -r10_abs.w, v1, r0
    texld_pp r7, r0.zwzw, s0
    mul_pp r0.z, r7.w, c16.w
    mul_pp r0.z, r0.z, v6.w
    mul_pp r0.z, r0.z, c21.x
    add r0.w, c1.x, vPos.y
    mov r8.x, c86.x
    mad r0.w, r0.w, c24.w, -r8.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r9.xyz, r0.w, r7, c4.y
    dp3_pp r0.w, r8.wyzw, -r6
    dp3_pp r2.z, r8.wyzw, -c10
    mul_pp r6.xyz, r0.w, c43
    cmp_pp r6.xyz, r0.w, r6, c4.x
    mul_pp r4.yzw, r4.w, r6.xxyz
    mul_pp r6.xyz, r5.x, c39
    cmp_pp r6.xyz, r5.x, r6, c4.x
    mad_pp r4.yzw, r3.w, r6.xxyz, r4
    mul_pp r6.xyz, r4.x, c47
    cmp_pp r6.xyz, r4.x, r6, c4.x
    mad_pp r4.xyz, r1.w, r6, r4.yzww
    mul_pp r6.xyz, r2.y, c51
    cmp_pp r6.xyz, r2.y, r6, c4.x
    mad_pp r4.xyz, r1.z, r6, r4
    mul r6.xyz, r2.z, c36
    mul_pp r1.yzw, r1.y, r6.xxyz
    cmp_pp r1.yzw, r2.z, r1, c4.x
    add_pp r1.yzw, r4.xxyz, r1
    mul_pp r2.yzw, c58.w, c58.xxyz
    mul_pp r2.yzw, r0.y, r2
    cmp_pp r2.yzw, r0.y, r2, c4.x
    mad_pp r0.xyw, r0.x, r2.yzzw, r1.yzzw
    mul_pp r1.yzw, r3.xxyz, r3.xxyz
    dp3_pp r1.y, r1.yzww, c1.yzww
    mad_pp r2.yzw, r3.xxyz, r3.xxyz, -r1.y
    mad_sat_pp r1.yzw, r2, c71.w, r1.y
    mul_pp r1.yzw, r1, c70.xxyz
    mul_pp r2.yzw, r1, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.yzw, r1, c17.xxyz, -r2
    mad_pp r1.xyz, r1.x, r1.yzww, r2.yzww
    add_pp r0.xyw, r0, r1.xyzz
    mul_pp r0.xyw, r0, c16.xyzz
    mad_pp r0.xyw, r0, r9.xyzz, r5.yzzw
    mul_pp r1.xyz, r0.xyww, v6
    frc r0.x, c27.w
    cmp r0.y, -r0.x, c4.x, c4.y
    add r0.x, -r0.x, c27.w
    cmp r0.y, c27.w, r2.x, r0.y
    add r0.x, r0.y, r0.x
    add r2, r0.x, -c4
    cmp r0.xy, -r2_abs.x, v0, c4.x
    cmp r0.xy, -r2_abs.y, v0.zwzw, r0
    cmp r0.xy, -r2_abs.z, v1, r0
    cmp r0.xy, -r2_abs.w, v1.zwzw, r0
    texld r2, r0, s6
    mul_pp r1.w, r0.z, r2.x
    mul_pp r0, r1, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 263 instruction slots used (6 texture, 257 arithmetic)
