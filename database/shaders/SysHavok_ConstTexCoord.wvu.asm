//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxLightViewProjection;
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxVerticalLightViewProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//
//
// Registers:
//
//   Name                             Reg   Size
//   -------------------------------- ----- ----
//   g_MtxProjection                  c0       4
//   g_MtxView                        c4       4
//   g_MtxWorld                       c8       4
//   g_MtxLightViewProjection         c24      4
//   g_MtxVerticalLightViewProjection c207     4
//

    vs_3_0
    def c12, 0, 0.5, -0.5, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_normal v5
    dcl_color v6
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5
    dcl_texcoord6 o6
    dcl_texcoord5 o7
    dcl_color o8
    mov r0, c5
    mul r1, r0.y, c1
    mad r1, r0.x, c0, r1
    mad r1, r0.z, c2, r1
    mad r0, r0.w, c3, r1
    mul r1, r0, c9.y
    mov r2, c4
    mul r3, r2.y, c1
    mad r3, r2.x, c0, r3
    mad r3, r2.z, c2, r3
    mad r2, r2.w, c3, r3
    mad r1, c9.x, r2, r1
    mov r3, c6
    mul r4, r3.y, c1
    mad r4, r3.x, c0, r4
    mad r4, r3.z, c2, r4
    mad r3, r3.w, c3, r4
    mad r1, c9.z, r3, r1
    mov r4, c7
    mul r5, r4.y, c1
    mad r5, r4.x, c0, r5
    mad r5, r4.z, c2, r5
    mad r4, r4.w, c3, r5
    mad r1, c9.w, r4, r1
    mul r1, r1, v0.y
    mul r5, r0, c8.y
    mad r5, c8.x, r2, r5
    mad r5, c8.z, r3, r5
    mad r5, c8.w, r4, r5
    mad r1, v0.x, r5, r1
    mul r5, r0, c10.y
    mul r0, r0, c11.y
    mad r0, c11.x, r2, r0
    mad r2, c10.x, r2, r5
    mad r2, c10.z, r3, r2
    mad r0, c11.z, r3, r0
    mad r0, c11.w, r4, r0
    mad r2, c10.w, r4, r2
    mad r1, v0.z, r2, r1
    mad r0, v0.w, r0, r1
    mul r1, r0.y, c25
    mad r1, r0.x, c24, r1
    mad r1, r0.z, c26, r1
    add r1, r1, c27
    mul r2.xyz, r1.xyww, c12.yzyw
    mov o5.zw, r1
    add o5.xy, r2.z, r2
    mul r1, r0.y, c208
    mad r1, r0.x, c207, r1
    mad r1, r0.z, c209, r1
    add r1, r1, c210
    mul r2.xyz, r1.xyww, c12.yzyw
    mov o6.zw, r1
    add o6.xy, r2.z, r2
    mov o0, r0
    mov o3, r0
    add r0.z, c12.y, v1.x
    mul r1.xyz, c9, v5.y
    mad r1.xyz, v5.x, c8, r1
    mad r1.xyz, v5.z, c10, r1
    mov r1.w, v1.x
    mov r0.xy, -r1.wyzw
    add r0.xy, r0, r0.zyzw
    slt r0.z, r1.y, c12.x
    mad r0.xy, r0.z, r0, r1.wyzw
    mul o4.xzw, r1.xyzx, c12.wywx
    mov o1.x, r0.x
    mov o4.y, r0.y
    mov o1.y, v1.y
    mov o1.zw, v2.xyxy
    mov o2.xy, v3
    mov o2.zw, v4.xyxy
    mov o7, v0.z
    mov o8, v6

// approximately 74 instruction slots used