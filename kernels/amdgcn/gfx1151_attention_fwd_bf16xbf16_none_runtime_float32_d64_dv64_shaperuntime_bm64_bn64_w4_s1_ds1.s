	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b128 s[96:99], s[0:1], 0x4c
	; meta instruction
	s_load_b32 s69, s[0:1], 0x5c
	s_load_b64 s[44:45], s[0:1], 0x0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v184, 6, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v33, v0, 6, 1
	v_or_b32_e32 v3, 8, v184
	v_or_b32_e32 v6, 32, v184
	v_or_b32_e32 v4, 16, v184
	v_or_b32_e32 v5, 24, v184
	v_or_b32_e32 v7, 2, v184
	v_or_b32_e32 v8, 4, v184
	v_or_b32_e32 v9, 6, v184
	v_or_b32_e32 v10, 10, v184
	v_or_b32_e32 v11, 12, v184
	v_or_b32_e32 v12, 14, v184
	v_or_b32_e32 v13, 18, v184
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s40
	s_bitcmp1_b32 s40, 8
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[122:123], null, s69, v184, v[65:66]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v254, s5, 0
	s_cselect_b32 s29, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s4, s96
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s31, s2, 6
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v216, s69, 3, v122
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s31, v184
	v_or_b32_e32 v3, s31, v3
	v_or_b32_e32 v4, s31, v4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[123:124], null, s69, 24, v[122:123]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s104, s69, v65
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s98, v2
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v5, s31, v5
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v217, s69, 4, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s5, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v218, s69, 5, v122
	v_mad_u64_u32 v[124:125], null, s69, 6, v[122:123]
	v_lshl_add_u32 v219, s69, 1, v122
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v220, s69, 2, v122
	v_mad_u64_u32 v[125:126], null, s69, 10, v[122:123]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s5
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[126:127], null, s69, 12, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v14, 20, v184
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s5
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[127:128], null, s69, 14, v[122:123]
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[128:129], null, s69, 18, v[122:123]
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s5, s5, s6
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v15, 22, v184
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s5, s7, s5
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v16, 26, v184
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s5, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[129:130], null, s69, 20, v[122:123]
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s7, s6
	s_add_i32 s6, s5, 1
	s_sub_i32 s7, s2, s4
	s_cmp_ge_u32 s2, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[130:131], null, s69, 22, v[122:123]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v17, 28, v184
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s30, s6, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s97
	s_xor_b32 s8, s96, s97
	s_cvt_f32_u32 s2, s5
	s_sub_i32 s7, 0, s5
	s_ashr_i32 s33, s8, 31
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s6, s3, s98
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v18, 30, v184
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[131:132], null, s69, 26, v[122:123]
	v_mad_u64_u32 v[132:133], null, s69, 28, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v19, 34, v184
	v_or_b32_e32 v20, 36, v184
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[133:134], null, s69, 30, v[122:123]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s31, v6
	v_or_b32_e32 v6, s31, v7
	v_or_b32_e32 v7, s31, v8
	v_or_b32_e32 v8, s31, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, s31, v10
	v_or_b32_e32 v10, s31, v11
	v_or_b32_e32 v11, s31, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s2, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v12, s31, v13
	v_or_b32_e32 v13, s31, v14
	v_or_b32_e32 v14, s31, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s7, s7, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v15, s31, v16
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s7, s2, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s31, v17
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s7, s2, s7
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s98, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s7, s4, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s31, v18
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s9, s7, s5
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[134:135], null, s69, 34, v[122:123]
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s8, s4, s9
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, s98, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s98, v5
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s34, s9, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s36, s6, s31
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s98, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s35, s36, s69
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s104
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, s35, v122, 1
	v_add_lshl_u32 v2, s35, v216, 1
	v_add_lshl_u32 v3, s35, v217, 1
	v_add_lshl_u32 v4, s35, v123, 1
	v_add_lshl_u32 v5, s35, v218, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s98, v7
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s4, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, s98, v8
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s104
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v8, s35, v124, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s6, s104
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s35, v220, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s98, v6
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v6, s35, v219, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s98, v9
	v_cmp_gt_i32_e64 s6, s98, v10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v9, s35, v125, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s104
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v10, s35, v126, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s7, s98, v11
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s4, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s98, v12
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s104
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v11, s35, v127, 1
	v_add_lshl_u32 v12, s35, v128, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s6, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s9, s98, v13
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s7, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s98, v14
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v13, s35, v129, 1
	v_add_lshl_u32 v14, s35, v130, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s8, s104
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v21, 38, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s11, s98, v15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v18, s31, v19
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s9, s104
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v22, 40, v184
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[135:136], null, s69, 36, v[122:123]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s12, s98, v16
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v15, s35, v131, 1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, s31, v20
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[136:137], null, s69, 38, v[122:123]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v16, s35, v132, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s10, s104
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v23, 42, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, s98, v17
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v20, s31, v21
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s11, s104
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v24, 44, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s14, s98, v18
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[137:138], null, s69, 40, v[122:123]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v17, s35, v133, 1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, s31, v22
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v18, s35, v134, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s12, s104
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[138:139], null, s69, 42, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v25, 46, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s15, s98, v19
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v22, s31, v23
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s13, s104
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v208, 48, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s16, s98, v20
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v19, s35, v135, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[139:140], null, s69, 44, v[122:123]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v23, s31, v24
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v20, s35, v136, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s14, s104
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[140:141], null, s69, 46, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v209, 50, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s17, s98, v21
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v24, s31, v25
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s15, s104
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v212, 56, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s98, v22
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v21, s35, v137, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[141:142], null, s69, 48, v[122:123]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v25, s31, v208
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v22, s35, v138, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s16, s104
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[142:143], null, s69, 50, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v210, 52, v184
	v_or_b32_e32 v213, 58, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s19, s98, v23
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v211, 54, v184
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v26, s31, v209
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s17, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s98, v24
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v23, s35, v139, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[143:144], null, s69, 56, v[122:123]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v29, s31, v212
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v24, s35, v140, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s104
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[144:145], null, s69, 58, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v214, 60, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s21, s98, v25
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v27, s31, v210
	v_or_b32_e32 v30, s31, v213
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s19, s104
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v28, s31, v211
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s22, s98, v26
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v25, s35, v141, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[145:146], null, s69, 52, v[122:123]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v26, s35, v142, 1
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s20, s104
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[146:147], null, s69, 60, v[122:123]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v215, 62, v184
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s25, s98, v29
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v31, s31, v214
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s21, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s98, v27
	v_cmp_gt_i32_e64 s26, s98, v30
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v27, s35, v143, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[147:148], null, s69, 54, v[122:123]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s98, v28
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v28, s35, v144, 1
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s22, s104
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[148:149], null, s69, 62, v[122:123]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v32, s31, v215
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s25, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s27, s98, v31
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v29, s35, v145, 1
	v_add_lshl_u32 v30, s35, v146, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s26, s104
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s28, s98, v32
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s23, s104
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v31, s35, v147, 1
	v_add_lshl_u32 v32, s35, v148, 1
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s27, s104
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s45, s45, 0xffff
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s24, s104
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x7
	buffer_load_u16 v1, v1, s[44:47], 0 offen
	buffer_load_u16 v2, v2, s[44:47], 0 offen
	buffer_load_u16 v6, v6, s[44:47], 0 offen
	buffer_load_u16 v7, v7, s[44:47], 0 offen
	buffer_load_u16 v9, v9, s[44:47], 0 offen
	buffer_load_u16 v10, v10, s[44:47], 0 offen
	buffer_load_u16 v11, v11, s[44:47], 0 offen
	buffer_load_u16 v8, v8, s[44:47], 0 offen
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v34, 1, v65
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s28, s104
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x5
	buffer_load_u16 v3, v3, s[44:47], 0 offen
	buffer_load_u16 v4, v4, s[44:47], 0 offen
	buffer_load_u16 v12, v12, s[44:47], 0 offen
	buffer_load_u16 v13, v13, s[44:47], 0 offen
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	buffer_load_u16 v16, v16, s[44:47], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x11
	buffer_load_u16 v5, v5, s[44:47], 0 offen
	buffer_load_u16 v18, v18, s[44:47], 0 offen
	buffer_load_u16 v19, v19, s[44:47], 0 offen
	buffer_load_u16 v21, v21, s[44:47], 0 offen
	buffer_load_u16 v22, v22, s[44:47], 0 offen
	buffer_load_u16 v23, v23, s[44:47], 0 offen
	buffer_load_u16 v25, v25, s[44:47], 0 offen
	buffer_load_u16 v27, v27, s[44:47], 0 offen
	buffer_load_u16 v26, v26, s[44:47], 0 offen
	buffer_load_u16 v28, v28, s[44:47], 0 offen
	buffer_load_u16 v29, v29, s[44:47], 0 offen
	buffer_load_u16 v30, v30, s[44:47], 0 offen
	buffer_load_u16 v17, v17, s[44:47], 0 offen
	buffer_load_u16 v14, v14, s[44:47], 0 offen
	buffer_load_u16 v20, v20, s[44:47], 0 offen
	buffer_load_u16 v24, v24, s[44:47], 0 offen
	buffer_load_u16 v32, v32, s[44:47], 0 offen
	buffer_load_u16 v31, v31, s[44:47], 0 offen
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s34, s33
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s4, s2, s33
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s5, s99, 63
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s8, s4
	s_mov_b32 vcc_hi, 0
	s_cvt_f32_u32 s2, s8
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v33, v33, v34
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s5, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v221, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v222, 0, v34
	v_add_nc_u32_e32 v223, 0, v35
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s2, s5, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v224, 0, v33
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s5, v36
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s71, s2, 0xffffffc0
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s40, 0x10008
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v221, v1
	s_waitcnt vmcnt(30)
	ds_store_b16 v221, v2 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v221, v3 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v221, v4 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v221, v5 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v221, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v221, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v221, v27 offset:7168
	ds_store_b16 v222, v6
	ds_store_b16 v222, v9 offset:1024
	ds_store_b16 v222, v12 offset:2048
	ds_store_b16 v222, v15 offset:3072
	ds_store_b16 v222, v18 offset:4096
	ds_store_b16 v222, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v222, v26 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v222, v28 offset:7168
	ds_store_b16 v223, v7
	ds_store_b16 v223, v10 offset:1024
	ds_store_b16 v223, v13 offset:2048
	ds_store_b16 v223, v16 offset:3072
	ds_store_b16 v223, v19 offset:4096
	ds_store_b16 v223, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v223, v29 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v223, v30 offset:7168
	ds_store_b16 v224, v8
	ds_store_b16 v224, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v224, v14 offset:2048
	ds_store_b16 v224, v17 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v224, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v224, v24 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v224, v31 offset:6144
	ds_store_b16 v224, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s31, s42
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s7, s31, s41
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s43
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s7, s7, s43
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s99, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s6, s2, 31
	s_lshr_b32 s6, s6, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s6
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s6, s7, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 vcc_hi, s6, 0x7fffffc0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s71, s71, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v1, 0, 1, s29
	v_and_b32_e32 v67, 15, v0
	v_and_b32_e32 v33, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s2, 1, v1
	v_writelane_b32 v254, s2, 1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s31, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s99, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s6, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s6, s6, 26
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s71, s71, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x38
	s_load_b32 s79, s[0:1], 0x64
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v33
	v_bfe_u32 v180, v0, 4, 1
	v_lshrrev_b32_e32 v2, 4, v0
	v_mov_b32_e32 v8, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 vcc_hi, s71
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v53, v1, v67
	v_or_b32_e32 v182, 2, v180
	v_or_b32_e32 v181, 4, v180
	v_or_b32_e32 v179, 6, v180
	v_or_b32_e32 v178, 8, v180
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v68, s31, v53
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v177, 10, v180
	v_or_b32_e32 v176, 12, v180
	v_or_b32_e32 v175, 14, v180
	v_or_b32_e32 v174, 16, v180
	v_or_b32_e32 v173, 18, v180
	v_or_b32_e32 v172, 20, v180
	v_or_b32_e32 v171, 22, v180
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s12, 2
	v_or_b32_e32 v170, 24, v180
	v_or_b32_e32 v169, 26, v180
	v_or_b32_e32 v168, 28, v180
	v_or_b32_e32 v167, 30, v180
	v_writelane_b32 v254, s13, 3
	v_or_b32_e32 v166, 32, v180
	v_or_b32_e32 v165, 34, v180
	v_or_b32_e32 v164, 36, v180
	v_or_b32_e32 v163, 38, v180
	v_writelane_b32 v254, s14, 4
	v_or_b32_e32 v162, 40, v180
	v_or_b32_e32 v161, 42, v180
	v_or_b32_e32 v160, 44, v180
	v_or_b32_e32 v159, 46, v180
	v_writelane_b32 v254, s15, 5
	v_or_b32_e32 v158, 48, v180
	v_or_b32_e32 v157, 50, v180
	v_or_b32_e32 v156, 52, v180
	v_or_b32_e32 v155, 54, v180
	v_or_b32_e32 v153, 56, v180
	v_or_b32_e32 v154, 58, v180
	v_or_b32_e32 v152, 60, v180
	v_or_b32_e32 v151, 62, v2
	.loc	1 601 23 is_stmt 1              ; attention.py:601:23
	v_cmp_gt_i32_e64 s93, s98, v68
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v66, v8
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s6, s3, s96
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_ashr_i32 s6, s6, 31
	s_ashr_i32 s4, s4, 31
	s_xor_b32 s7, s30, s6
	s_cvt_u32_f32 s5, s5
	s_sub_i32 s9, s7, s6
	s_sub_i32 s6, 0, s8
	s_mul_i32 s7, s9, s96
	s_mul_i32 s6, s6, s5
	s_sub_i32 s3, s3, s7
	s_mul_hi_u32 s6, s5, s6
	s_abs_i32 s7, s3
	s_add_i32 s5, s5, s6
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s10, s7, s5
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_xor_b32 s3, s3, s4
	s_mul_i32 s5, s10, s8
	s_add_i32 s12, s10, 1
	s_sub_i32 s11, s7, s5
	s_clause 0x1
	s_load_b128 s[72:75], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	s_sub_i32 s13, s11, s8
	s_cmp_ge_u32 s11, s8
	.loc	1 656 33                        ; attention.py:656:33
	s_mul_i32 s9, s9, s97
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s1, s12, s10
	s_cselect_b32 s10, s13, s11
	s_add_i32 s11, s1, 1
	s_cmp_ge_u32 s10, s8
	v_writelane_b32 v254, s36, 6
	s_cselect_b32 s1, s11, s1
	s_mov_b32 s4, 0
	s_xor_b32 s1, s1, s3
	s_mov_b32 s5, s4
	s_sub_i32 s1, s1, s3
	s_mov_b32 s6, s4
	.loc	1 656 33                        ; attention.py:656:33
	s_add_i32 s1, s1, s9
	s_mov_b32 s7, s4
	.loc	1 656 32 is_stmt 0              ; attention.py:656:32
	s_mul_i32 s1, s1, s99
	s_mov_b32 s8, s4
	.loc	1 664 27 is_stmt 1              ; attention.py:664:27
	v_writelane_b32 v254, s1, 7
	s_lshl_b32 s1, s79, 1
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_writelane_b32 v254, s1, 8
	s_lshl_b32 s1, s79, 2
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_add_nc_u32 v226, s43, v68
	v_mov_b32_e32 v25, 0
	v_writelane_b32 v254, s1, 9
	s_lshl_b32 s1, s79, 3
	v_lshlrev_b32_e32 v1, 4, v0
	v_add_nc_u32_e32 v228, s42, v226
	v_lshlrev_b32_e32 v2, 7, v67
	v_writelane_b32 v254, s1, 10
	s_lshl_b32 s1, s79, 4
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v3, 6, v33
	v_mov_b32_e32 v26, v25
	v_writelane_b32 v254, s1, 11
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v1, 0x70, v1
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s92, s0, 0x3fb8aa3b
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s79, v65
	v_writelane_b32 v254, s4, 12
	v_or3_b32 v3, v2, v3, v1
	v_mov_b32_e32 v32, v25
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	v_writelane_b32 v254, s5, 13
	v_xad_u32 v10, 0x60, v3, 0
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v5, v3, 16, 0
	v_xad_u32 v6, v3, 32, 0
	v_writelane_b32 v254, s6, 14
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v8, v3, 64, 0
	v_xad_u32 v9, 0x50, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	v_writelane_b32 v254, s7, 15
	ds_load_b128 v[57:60], v10
	ds_load_b128 v[61:64], v3
	v_and_b32_e32 v3, 16, v0
	v_writelane_b32 v254, s8, 16
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	v_mov_b32_e32 v7, 0x5410
	v_or_b32_e32 v225, v1, v2
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_writelane_b32 v254, s9, 17
	v_mov_b32_e32 v3, 0x7632
	s_and_b32 s73, s73, 0xffff
	v_xor_b32_e32 v2, 32, v225
	v_dual_cndmask_b32 v7, 0x1054, v7 :: v_dual_lshlrev_b32 v0, 1, v0
	v_writelane_b32 v254, s10, 18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v3, 0x3276, v3 :: v_dual_add_nc_u32 v232, 0, v2
	s_and_b32 s81, s75, 0xffff
	s_mov_b32 s80, s74
	v_writelane_b32 v254, s11, 19
	s_mov_b32 s74, s82
	s_mov_b32 s75, s83
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v3, v3, 8, v3
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v254, s93, 20
	scratch_store_b32 off, v53, off         ; 4-byte Folded Spill
	ds_load_b128 v[33:36], v4
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[53:56], v9
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v7, 0x540054, v7
	v_writelane_b32 v254, s104, 21
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_mad_u64_u32 v[149:150], null, s79, v184, v[65:66]
	v_writelane_b32 v254, s0, 22
	v_lshl_or_b32 v3, v3, 4, v3
	v_xor_b32_e32 v1, 16, v225
	v_xor_b32_e32 v4, 48, v225
	v_xor_b32_e32 v5, 64, v225
	v_writelane_b32 v254, s72, 23
	v_xor_b32_e32 v6, 0x50, v225
	v_xor_b32_e32 v8, 0x60, v225
	v_xor_b32_e32 v9, 0x70, v225
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v150, 0x5040504, v7
	v_writelane_b32 v254, s73, 24
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v229, 0x7060706, v3
	v_or_b32_e32 v3, 0x700, v0
	v_or_b32_e32 v7, 0xf00, v0
	v_writelane_b32 v254, s74, 25
	v_or_b32_e32 v10, 0x1700, v0
	v_or_b32_e32 v11, 0x1f00, v0
	v_subrev_nc_u32_e32 v227, s41, v226
	v_lshl_add_u32 v230, v67, 1, 0
	v_writelane_b32 v254, s75, 26
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v231, 0, v1
	v_add_nc_u32_e32 v233, 0, v4
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v234, 0, v5
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v235, 0, v6
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v236, 0, v8
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v237, 0, v9
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v238, 0, v3
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v239, 0, v7
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v240, 0, v10
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v241, 0, v11
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v242, v25
	v_writelane_b32 v254, s69, 27
	v_mov_b16_e64 v252.h, 0
	s_lshl_b32 s78, s79, 5
	s_mov_b32 s88, 0x76543210
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v81, s92, v81 :: v_dual_mul_f32 v82, s92, v82
	v_dual_mul_f32 v83, s92, v83 :: v_dual_mul_f32 v84, s92, v84
	v_dual_mul_f32 v85, s92, v85 :: v_dual_mul_f32 v100, s92, v87
	v_dual_mul_f32 v99, s92, v86 :: v_dual_mul_f32 v76, s92, v76
	v_dual_mul_f32 v101, s92, v88 :: v_dual_mul_f32 v74, s92, v74
	v_dual_mul_f32 v73, s92, v73 :: v_dual_mul_f32 v78, s92, v78
	v_dual_mul_f32 v75, s92, v75 :: v_dual_mul_f32 v80, s92, v80
	v_dual_mul_f32 v77, s92, v77 :: v_dual_mul_f32 v66, s92, v66
	v_dual_mul_f32 v79, s92, v79 :: v_dual_mul_f32 v68, s92, v68
	v_dual_mul_f32 v65, s92, v65 :: v_dual_mul_f32 v70, s92, v70
	v_dual_mul_f32 v67, s92, v67 :: v_dual_mul_f32 v72, s92, v72
	v_dual_mul_f32 v89, s92, v89 :: v_dual_mul_f32 v98, s92, v90
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v90, 0xff800000, v82, s1
	v_cndmask_b32_e64 v88, 0xff800000, v83, s29
	v_cndmask_b32_e64 v87, 0xff800000, v84, s28
	v_cndmask_b32_e64 v86, 0xff800000, v85, s27
	v_cndmask_b32_e64 v85, 0xff800000, v99, s26
	v_cndmask_b32_e64 v84, 0xff800000, v100, s25
	v_cndmask_b32_e64 v83, 0xff800000, v101, s24
	v_cndmask_b32_e64 v198, 0xff800000, v73, s23
	v_cndmask_b32_e64 v197, 0xff800000, v74, s22
	v_cndmask_b32_e64 v196, 0xff800000, v75, s21
	v_cndmask_b32_e64 v195, 0xff800000, v76, s20
	v_cndmask_b32_e64 v194, 0xff800000, v77, s19
	v_cndmask_b32_e64 v193, 0xff800000, v78, s77
	v_cndmask_b32_e64 v192, 0xff800000, v79, s17
	v_cndmask_b32_e64 v191, 0xff800000, v80, s16
	v_cndmask_b32_e64 v190, 0xff800000, v65, s15
	v_cndmask_b32_e64 v189, 0xff800000, v66, s7
	v_cndmask_b32_e64 v187, 0xff800000, v67, s13
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v91, s92, v91 :: v_dual_mul_f32 v92, s92, v92
	v_dual_mul_f32 v93, s92, v93 :: v_dual_mul_f32 v94, s92, v94
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v90, v88, v87
	v_max3_f32 v74, v86, v85, v84
	v_max3_f32 v82, v83, v198, v197
	v_max3_f32 v65, v196, v195, v194
	v_max3_f32 v66, v193, v192, v191
	v_max3_f32 v67, v190, v189, v187
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v75, 0xff800000, v93, s35
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v73, v74, v82
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v74, 0xff800000, v92, s2
	v_cndmask_b32_e64 v76, 0xff800000, v94, s36
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v65, v66, v67
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v66, 0xff800000, v89, s10
	v_cndmask_b32_e64 v67, 0xff800000, v98, s9
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v69, s92, v69
	v_dual_mul_f32 v95, s92, v95 :: v_dual_mul_f32 v96, s92, v96
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v77, 0xff800000, v91, s8
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v78, v66, v67
	v_max3_f32 v79, v74, v75, v76
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v188, 0xff800000, v68, s6
	v_cndmask_b32_e64 v186, 0xff800000, v69, s11
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v71, s92, v71
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v96, s100
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v78, v78, v77, v79
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v79, 0xff800000, v95, s34
	v_cndmask_b32_e64 v91, 0xff800000, v81, s30
	v_cndmask_b32_e64 v253, 0xff800000, v72, s89
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v188, v186
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v183, 0xff800000, v71, s90
	v_cndmask_b32_e64 v185, 0xff800000, v70, s91
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v81, v79, v80, v91
.Ltmp14:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 vcc_hi, vcc_hi, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v183, v253
	v_max3_f32 v73, v78, v81, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v68, v68, v185, v69
	v_max3_f32 v65, v73, v65, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v68, v65, s88, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v243, v97, v65, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v67, v243
	v_sub_f32_e32 v72, v80, v243
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v72, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v244, 0, v65, s9
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v66, v243
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v251, 0, v72, s100
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v252.l, v244.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v244, v244
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v245, 0, v65, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v252
	v_add3_u32 v65, v244, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v65.l, v245.h
	v_cndmask_b16 v66.h, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e64 v65.h, v252.h
	v_cmp_o_f32_e32 vcc_lo, v245, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v245, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, vcc_lo
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v74, v243
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v67, v66, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v246, 0, v65, s2
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v77, v243
	v_readlane_b32 s2, v254, 28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v252.l, v246.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v246, v246
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v247, 0, v65, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v246, v65, 0x7fff
	v_mov_b16_e64 v65.l, v247.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.h, 0x7fff, v65.h, vcc_lo
	v_mov_b16_e64 v65.h, v252.h
	v_cmp_o_f32_e32 vcc_lo, v247, v247
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v247, v65, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v65.h, vcc_lo
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v76, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v248, 0, v65, s36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v65, v67, v66, v150
	v_perm_b32 v66, v67, v66, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v252.l, v248.h
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v70, 1, v252
	v_permlanex16_b32 v69, v68, s88, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v252.l, v251.h
	v_add3_u32 v70, v248, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v67, v69, v68, v150
	v_perm_b32 v68, v69, v68, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v69, v75, v243 :: v_dual_and_b32 v72, 1, v252
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v72, v251, v72, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v249, 0, v69, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v69.h, v252.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v69.l, v249.h
	v_cmp_o_f32_e32 vcc_lo, v249, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v249, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	v_permlanex16_b32 v71, v70, s88, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v72.h, 0x7fff, v72.h, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v69, v71, v70, v150
	v_perm_b32 v70, v71, v70, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v79, v243
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v250, 0, v71, s34
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v71.h, v252.h
	v_mov_b16_e64 v71.l, v250.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v250, v250
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v250, v71, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s3
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s3, v254, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v73, v72, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v73, v72, v150
	v_perm_b32 v72, v73, v72, v229
	v_mad_u64_u32 v[73:74], null, s2, s79, v[149:150]
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s2, v254, 10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v75, v73, s3, 1
	v_readlane_b32 s3, v254, 9
	v_lshlrev_b32_e32 v74, 1, v73
	v_add_lshl_u32 v78, v73, s2, 1
	v_readlane_b32 s2, v254, 11
	v_add_lshl_u32 v99, v73, s78, 1
	v_add_lshl_u32 v76, v73, s3, 1
	s_mul_i32 s3, s79, 6
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	v_add_lshl_u32 v77, v73, s3, 1
	s_mul_i32 s3, s79, 10
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s76
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v79, v73, s3, 1
	s_mul_i32 s3, s79, 12
	v_add_lshl_u32 v82, v73, s2, 1
	v_add_lshl_u32 v80, v73, s3, 1
	s_mul_i32 s3, s79, 14
	.loc	1 696 26                        ; attention.py:696:26
	v_readlane_b32 s2, v254, 29
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v81, v73, s3, 1
	s_mul_i32 s3, s79, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v89, v73, s3, 1
	s_mul_i32 s3, s79, 20
	v_add_lshl_u32 v92, v73, s3, 1
	s_mul_i32 s3, s79, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v93, v73, s3, 1
	s_mul_i32 s3, s79, 24
	v_add_lshl_u32 v94, v73, s3, 1
	s_mul_i32 s3, s79, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v95, v73, s3, 1
	s_mul_i32 s3, s79, 28
	v_add_lshl_u32 v96, v73, s3, 1
	s_mul_i32 s3, s79, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v98, v73, s3, 1
	s_mul_i32 s3, s79, 34
	v_add_lshl_u32 v100, v73, s3, 1
	s_mul_i32 s3, s79, 36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v101, v73, s3, 1
	s_mul_i32 s3, s79, 38
	v_add_lshl_u32 v102, v73, s3, 1
	s_mul_i32 s3, s79, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v103, v73, s3, 1
	s_mul_i32 s3, s79, 42
	v_add_lshl_u32 v104, v73, s3, 1
	s_mul_i32 s3, s79, 44
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	v_add_lshl_u32 v105, v73, s3, 1
	s_mul_i32 s3, s79, 46
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s94
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v106, v73, s3, 1
	s_mul_i32 s3, s79, 48
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	v_add_lshl_u32 v107, v73, s3, 1
	s_mul_i32 s3, s79, 50
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s96
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v108, v73, s3, 1
	s_mul_i32 s3, s79, 52
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s5
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v109, v73, s3, 1
	s_mul_i32 s3, s79, 54
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s97
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v110, v73, s3, 1
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v254, 30
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_mul_i32 s3, s79, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v111, v73, s3, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v254, 31
	s_mul_i32 s3, s79, 58
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v112, v73, s3, 1
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 0
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	s_mul_i32 s3, s79, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v113, v73, s3, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_mul_i32 s3, s79, 62
	v_add_lshl_u32 v73, v73, s3, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 3
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 4
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 5
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 6
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 7
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 8
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 9
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 10
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 11
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 12
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 13
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	s_clause 0x6
	buffer_load_u16 v99, v99, s[80:83], 0 offen
	buffer_load_u16 v100, v100, s[80:83], 0 offen
	buffer_load_u16 v101, v101, s[80:83], 0 offen
	buffer_load_u16 v102, v102, s[80:83], 0 offen
	buffer_load_u16 v103, v103, s[80:83], 0 offen
	buffer_load_u16 v104, v104, s[80:83], 0 offen
	buffer_load_u16 v105, v105, s[80:83], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 14
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 17
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 19
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v109, 0x80000000, v109, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 15
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v110, 0x80000000, v110, vcc_lo
	s_clause 0x6
	buffer_load_u16 v74, v74, s[80:83], 0 offen
	buffer_load_u16 v75, v75, s[80:83], 0 offen
	buffer_load_u16 v76, v76, s[80:83], 0 offen
	buffer_load_u16 v77, v77, s[80:83], 0 offen
	buffer_load_u16 v78, v78, s[80:83], 0 offen
	buffer_load_u16 v79, v79, s[80:83], 0 offen
	buffer_load_u16 v80, v80, s[80:83], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 16
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v111, 0x80000000, v111, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	v_readlane_b32 s2, v255, 18
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v113, 0x80000000, v113, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s95
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x6
	buffer_load_u16 v107, v107, s[80:83], 0 offen
	buffer_load_u16 v108, v108, s[80:83], 0 offen
	buffer_load_u16 v109, v109, s[80:83], 0 offen
	buffer_load_u16 v110, v110, s[80:83], 0 offen
	buffer_load_u16 v111, v111, s[80:83], 0 offen
	buffer_load_u16 v112, v112, s[80:83], 0 offen
	buffer_load_u16 v113, v113, s[80:83], 0 offen
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s37
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s98
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x6
	buffer_load_u16 v82, v82, s[80:83], 0 offen
	buffer_load_u16 v89, v89, s[80:83], 0 offen
	buffer_load_u16 v92, v92, s[80:83], 0 offen
	buffer_load_u16 v93, v93, s[80:83], 0 offen
	buffer_load_u16 v94, v94, s[80:83], 0 offen
	buffer_load_u16 v95, v95, s[80:83], 0 offen
	buffer_load_u16 v96, v96, s[80:83], 0 offen
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x3
	buffer_load_u16 v81, v81, s[80:83], 0 offen
	buffer_load_u16 v98, v98, s[80:83], 0 offen
	buffer_load_u16 v106, v106, s[80:83], 0 offen
	buffer_load_u16 v114, v73, s[80:83], 0 offen
	v_add_nc_u32_e32 v73, 0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 vcc_hi, s71
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(24)
	ds_store_b16 v73, v74
	s_waitcnt vmcnt(23)
	ds_store_b16 v73, v75 offset:256
	s_waitcnt vmcnt(22)
	ds_store_b16 v73, v76 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b16 v73, v77 offset:768
	s_waitcnt vmcnt(20)
	ds_store_b16 v73, v78 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b16 v73, v79 offset:1280
	s_waitcnt vmcnt(18)
	ds_store_b16 v73, v80 offset:1536
	s_waitcnt vmcnt(10)
	ds_store_b16 v73, v82 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v73, v89 offset:2304
	s_waitcnt vmcnt(8)
	ds_store_b16 v73, v92 offset:2560
	s_waitcnt vmcnt(7)
	ds_store_b16 v73, v93 offset:2816
	s_waitcnt vmcnt(6)
	ds_store_b16 v73, v94 offset:3072
	s_waitcnt vmcnt(5)
	ds_store_b16 v73, v95 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v73, v96 offset:3584
	ds_store_b16 v73, v99 offset:4096
	ds_store_b16 v73, v100 offset:4352
	ds_store_b16 v73, v101 offset:4608
	ds_store_b16 v73, v102 offset:4864
	ds_store_b16 v73, v103 offset:5120
	ds_store_b16 v73, v104 offset:5376
	ds_store_b16 v73, v105 offset:5632
	ds_store_b16 v73, v107 offset:6144
	ds_store_b16 v73, v108 offset:6400
	ds_store_b16 v73, v109 offset:6656
	ds_store_b16 v73, v110 offset:6912
	ds_store_b16 v73, v111 offset:7168
	ds_store_b16 v73, v112 offset:7424
	ds_store_b16 v73, v113 offset:7680
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v97, v243
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b16 v238, v81
	s_waitcnt vmcnt(2)
	ds_store_b16 v239, v98
	s_waitcnt vmcnt(1)
	ds_store_b16 v240, v106
	s_waitcnt vmcnt(0)
	ds_store_b16 v241, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v75, v230 offset:608
	ds_load_u16_d16 v74, v230 offset:352
	ds_load_u16_d16 v94, v230 offset:512
	ds_load_u16_d16 v92, v230
	ds_load_u16_d16 v93, v230 offset:256
	ds_load_u16_d16 v95, v230 offset:768
	ds_load_u16_d16 v108, v230 offset:576
	ds_load_u16_d16 v109, v230 offset:832
	ds_load_u16_d16 v96, v230 offset:1024
	ds_load_u16_d16 v110, v230 offset:1088
	ds_load_u16_d16 v97, v230 offset:1280
	ds_load_u16_d16 v111, v230 offset:1344
	ds_load_u16_d16 v98, v230 offset:1536
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e32 v199, 0, v73, vcc_lo
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v112, v230 offset:1600
	ds_load_u16_d16 v99, v230 offset:1792
	ds_load_u16_d16 v106, v230 offset:64
	ds_load_u16_d16 v107, v230 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v74, v230 offset:480
	ds_load_u16_d16 v73, v230 offset:96
	ds_load_u16_d16 v114, v230 offset:32
	ds_load_u16_d16 v115, v230 offset:288
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v92, v230 offset:128
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v93, v230 offset:384
	ds_load_u16_d16_hi v94, v230 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v108, v230 offset:704
	ds_load_u16_d16_hi v95, v230 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v109, v230 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v96, v230 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v110, v230 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v97, v230 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v111, v230 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v98, v230 offset:1664
	ds_load_u16_d16 v113, v230 offset:1856
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v114, v230 offset:160
	ds_load_u16_d16_hi v106, v230 offset:192
	ds_load_u16_d16_hi v73, v230 offset:224
	ds_load_u16_d16 v116, v230 offset:544
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v115, v230 offset:416
	ds_load_u16_d16_hi v107, v230 offset:448
	ds_load_u16_d16 v76, v230 offset:864
	ds_load_u16_d16 v77, v230 offset:1120
	ds_load_u16_d16 v78, v230 offset:1376
	ds_load_u16_d16 v79, v230 offset:1632
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v113, v230 offset:1984
	ds_load_u16_d16 v89, v230 offset:2048
	ds_load_u16_d16 v81, v230 offset:2112
	ds_load_u16_d16 v80, v230 offset:1888
	ds_load_u16_d16 v117, v230 offset:800
	ds_load_u16_d16 v118, v230 offset:1056
	ds_load_u16_d16 v119, v230 offset:1312
	ds_load_u16_d16 v120, v230 offset:1568
	ds_load_u16_d16 v121, v230 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v116, v230 offset:672
	ds_load_u16_d16_hi v75, v230 offset:736
	ds_load_u16_d16_hi v112, v230 offset:1728
	ds_load_u16_d16_hi v99, v230 offset:1920
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v199
	v_mul_f32_e32 v26, v26, v199
	v_mul_f32_e32 v27, v27, v199
	v_mul_f32_e32 v28, v28, v199
	v_mul_f32_e32 v29, v29, v199
	v_mul_f32_e32 v30, v30, v199
	v_mul_f32_e32 v31, v31, v199
	v_mul_f32_e32 v32, v32, v199
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v117, v230 offset:928
	ds_load_u16_d16_hi v76, v230 offset:992
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v118, v230 offset:1184
	ds_load_u16_d16_hi v77, v230 offset:1248
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v119, v230 offset:1440
	ds_load_u16_d16_hi v78, v230 offset:1504
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v120, v230 offset:1696
	ds_load_u16_d16_hi v79, v230 offset:1760
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v121, v230 offset:1952
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v199
	v_mul_f32_e32 v18, v18, v199
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[92:99], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v80, v230 offset:2016
	ds_load_u16_d16 v82, v230 offset:2368
	ds_load_u16_d16_hi v81, v230 offset:2240
	ds_load_u16_d16 v105, v230 offset:2080
	ds_load_u16_d16 v97, v230 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v199
	v_mul_f32_e32 v20, v20, v199
	v_mul_f32_e32 v21, v21, v199
	v_mul_f32_e32 v22, v22, v199
	v_mul_f32_e32 v23, v23, v199
	v_mul_f32_e32 v24, v24, v199
	v_mul_f32_e32 v9, v9, v199
	v_mul_f32_e32 v10, v10, v199
	v_mul_f32_e32 v11, v11, v199
	v_mul_f32_e32 v12, v12, v199
	v_mul_f32_e32 v13, v13, v199
	v_mul_f32_e32 v14, v14, v199
	v_mul_f32_e32 v15, v15, v199
	v_mul_f32_e32 v16, v16, v199
	v_mul_f32_e32 v1, v1, v199
	v_mul_f32_e32 v2, v2, v199
	v_mul_f32_e32 v3, v3, v199
	v_mul_f32_e32 v4, v4, v199
	v_mul_f32_e32 v5, v5, v199
	v_mul_f32_e32 v6, v6, v199
	v_mul_f32_e32 v7, v7, v199
	v_mul_f32_e32 v8, v8, v199
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[114:121], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v106, v230 offset:2336
	ds_load_u16_d16 v107, v230 offset:2592
	ds_load_u16_d16 v108, v230 offset:2848
	ds_load_u16_d16 v109, v230 offset:3104
	ds_load_u16_d16 v110, v230 offset:3360
	ds_load_u16_d16 v111, v230 offset:3616
	ds_load_u16_d16 v112, v230 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v105, v230 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v97, v230 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v91, v243
	v_sub_f32_e32 v66, v90, v243
	v_sub_f32_e32 v67, v198, v243
	v_sub_f32_e32 v68, v197, v243
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v200, 0, v65, s30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v201, 0, v66, s1
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v65.h, v252.h
	v_mov_b16_e64 v65.l, v200.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v252.l, v201.h
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	v_cmp_o_f32_e64 s1, v200, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v200, v65, 0x7fff
	v_add3_u32 v66, v201, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v114, v65, v66, v150
	v_perm_b32 v115, v65, v66, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v88, v243
	v_sub_f32_e32 v66, v87, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v202, 0, v65, s29
	v_cndmask_b32_e64 v203, 0, v66, s28
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v65.h, v252.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v202.h
	v_mov_b16_e64 v252.l, v203.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	v_cmp_o_f32_e64 s1, v202, v202
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v252
	v_add3_u32 v65, v202, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v203, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v116, v65, v66, v150
	v_perm_b32 v117, v65, v66, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v86, v243
	v_sub_f32_e32 v66, v85, v243
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v204, 0, v65, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v205, 0, v66, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v65.h, v252.h
	v_mov_b16_e64 v65.l, v204.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v252.l, v205.h
	v_cmp_o_f32_e32 vcc_lo, v205, v205
	v_cmp_o_f32_e64 s1, v204, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v204, v65, 0x7fff
	v_add3_u32 v66, v205, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v118, v65, v66, v150
	v_perm_b32 v119, v65, v66, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v84, v243
	v_sub_f32_e32 v66, v83, v243
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v91, v230 offset:2560
	ds_load_u16_d16 v83, v230 offset:2624
	ds_load_u16_d16 v92, v230 offset:2816
	ds_load_u16_d16 v84, v230 offset:2880
	ds_load_u16_d16 v93, v230 offset:3072
	ds_load_u16_d16 v85, v230 offset:3136
	ds_load_u16_d16 v94, v230 offset:3328
	ds_load_u16_d16 v86, v230 offset:3392
	ds_load_u16_d16 v95, v230 offset:3584
	ds_load_u16_d16 v87, v230 offset:3648
	ds_load_u16_d16 v96, v230 offset:3840
	ds_load_u16_d16 v90, v230 offset:2304
	ds_load_u16_d16_hi v89, v230 offset:2176
	ds_load_u16_d16_hi v82, v230 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v91, v230 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v83, v230 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v92, v230 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v84, v230 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v93, v230 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v230 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v94, v230 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v230 offset:3520
	ds_load_u16_d16 v88, v230 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v95, v230 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v230 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v96, v230 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v90, v230 offset:2432
	ds_load_u16_d16 v98, v230 offset:2400
	ds_load_u16_d16 v99, v230 offset:2656
	ds_load_u16_d16 v100, v230 offset:2912
	ds_load_u16_d16 v101, v230 offset:3168
	ds_load_u16_d16 v102, v230 offset:3424
	ds_load_u16_d16 v103, v230 offset:3680
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v206, 0, v65, s25
	v_cndmask_b32_e64 v207, 0, v66, s24
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v65.h, v252.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v206.h
	v_mov_b16_e64 v252.l, v207.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	v_cmp_o_f32_e64 s1, v206, v206
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v252
	v_add3_u32 v65, v206, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v207, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v120, v65, v66, v150
	v_perm_b32 v121, v65, v66, v229
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v88, v230 offset:4032
	ds_load_u16_d16 v74, v230 offset:4096
	ds_load_u16_d16 v65, v230 offset:4160
	ds_load_u16_d16 v104, v230 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[114:121], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v106, v230 offset:2464
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v98, v230 offset:2528
	ds_load_u16_d16_hi v107, v230 offset:2720
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v99, v230 offset:2784
	ds_load_u16_d16_hi v108, v230 offset:2976
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v100, v230 offset:3040
	ds_load_u16_d16_hi v109, v230 offset:3232
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v101, v230 offset:3296
	ds_load_u16_d16_hi v110, v230 offset:3488
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v102, v230 offset:3552
	ds_load_u16_d16_hi v111, v230 offset:3744
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v103, v230 offset:3808
	ds_load_u16_d16_hi v112, v230 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v104, v230 offset:4064
	ds_load_u16_d16 v66, v230 offset:4416
	ds_load_u16_d16_hi v65, v230 offset:4288
	ds_load_u16_d16 v113, v230 offset:4128
	ds_load_u16_d16 v89, v230 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[114:121], v[9:16]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[114:121], v[17:24]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[114:121], v[1:8]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v97, 0, v67, s23
	v_cndmask_b32_e64 v98, 0, v68, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v67.h, v252.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v114, v230 offset:4384
	ds_load_u16_d16 v115, v230 offset:4640
	ds_load_u16_d16 v116, v230 offset:4896
	ds_load_u16_d16 v117, v230 offset:5152
	ds_load_u16_d16 v118, v230 offset:5408
	ds_load_u16_d16 v119, v230 offset:5664
	ds_load_u16_d16 v120, v230 offset:5920
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v113, v230 offset:4256
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v89, v230 offset:4320
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.l, v97.h
	v_mov_b16_e64 v252.l, v98.h
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cmp_o_f32_e64 s1, v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v67, 1, v67
	v_and_b32_e32 v68, 1, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v97, v67, 0x7fff
	v_add3_u32 v68, v98, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v68, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v105, v67, v68, v150
	v_perm_b32 v106, v67, v68, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v196, v243
	v_sub_f32_e32 v68, v195, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v67, s21
	v_cndmask_b32_e64 v100, 0, v68, s20
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v67.h, v252.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v99.h
	v_mov_b16_e64 v252.l, v100.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_cmp_o_f32_e64 s1, v99, v99
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v68, 1, v252
	v_add3_u32 v67, v99, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v100, v68, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_permlanex16_b32 v67, v68, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v107, v67, v68, v150
	v_perm_b32 v108, v67, v68, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v194, v243
	v_sub_f32_e32 v68, v193, v243
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v68, v68
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v67, s19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v102, 0, v68, s77
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v67.h, v252.h
	v_mov_b16_e32 v67.l, v101.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v252.l, v102.h
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_cmp_o_f32_e64 s1, v101, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v67, 1, v67
	v_and_b32_e32 v68, 1, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v101, v67, 0x7fff
	v_add3_u32 v68, v102, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v68, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v109, v67, v68, v150
	v_perm_b32 v110, v67, v68, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v192, v243
	v_sub_f32_e32 v68, v191, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v67, s17
	v_cndmask_b32_e64 v104, 0, v68, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v67.h, v252.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v103.h
	v_mov_b16_e64 v252.l, v104.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_cmp_o_f32_e64 s1, v103, v103
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v68, 1, v252
	v_add3_u32 v67, v103, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v104, v68, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_permlanex16_b32 v67, v68, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v111, v67, v68, v150
	v_perm_b32 v112, v67, v68, v229
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v76, v230 offset:4608
	ds_load_u16_d16 v67, v230 offset:4672
	ds_load_u16_d16 v77, v230 offset:4864
	ds_load_u16_d16 v68, v230 offset:4928
	ds_load_u16_d16 v78, v230 offset:5120
	ds_load_u16_d16 v69, v230 offset:5184
	ds_load_u16_d16 v79, v230 offset:5376
	ds_load_u16_d16 v70, v230 offset:5440
	ds_load_u16_d16 v80, v230 offset:5632
	ds_load_u16_d16 v71, v230 offset:5696
	ds_load_u16_d16 v81, v230 offset:5888
	ds_load_u16_d16 v75, v230 offset:4352
	ds_load_u16_d16_hi v74, v230 offset:4224
	ds_load_u16_d16_hi v66, v230 offset:4544
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v76, v230 offset:4736
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v67, v230 offset:4800
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v77, v230 offset:4992
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v68, v230 offset:5056
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v78, v230 offset:5248
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v69, v230 offset:5312
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v79, v230 offset:5504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v70, v230 offset:5568
	ds_load_u16_d16 v72, v230 offset:5952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v80, v230 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v71, v230 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v81, v230 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v75, v230 offset:4480
	ds_load_u16_d16 v90, v230 offset:4448
	ds_load_u16_d16 v91, v230 offset:4704
	ds_load_u16_d16 v92, v230 offset:4960
	ds_load_u16_d16 v93, v230 offset:5216
	ds_load_u16_d16 v94, v230 offset:5472
	ds_load_u16_d16 v95, v230 offset:5728
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v72, v230 offset:6080
	ds_load_u16_d16 v82, v230 offset:6144
	ds_load_u16_d16 v73, v230 offset:6208
	ds_load_u16_d16 v96, v230 offset:5984
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[74:81], v[105:112], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v114, v230 offset:4512
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v90, v230 offset:4576
	ds_load_u16_d16_hi v115, v230 offset:4768
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v91, v230 offset:4832
	ds_load_u16_d16_hi v116, v230 offset:5024
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v92, v230 offset:5088
	ds_load_u16_d16_hi v117, v230 offset:5280
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v93, v230 offset:5344
	ds_load_u16_d16_hi v118, v230 offset:5536
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v94, v230 offset:5600
	ds_load_u16_d16_hi v119, v230 offset:5792
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v95, v230 offset:5856
	ds_load_u16_d16_hi v120, v230 offset:6048
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v96, v230 offset:6112
	ds_load_u16_d16 v74, v230 offset:6464
	ds_load_u16_d16_hi v73, v230 offset:6336
	ds_load_u16_d16 v81, v230 offset:6176
	ds_load_u16_d16 v191, v230 offset:6240
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[105:112], v[9:16]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v190, v243
	v_sub_f32_e32 v66, v189, v243
	v_sub_f32_e32 v68, v188, v243
	v_sub_f32_e32 v70, v185, v243
	v_sub_f32_e32 v72, v253, v243
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[105:112], v[17:24]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[105:112], v[1:8]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v65, s15
	v_cndmask_b32_e64 v91, 0, v66, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v65.h, v252.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v68, s6
	v_cndmask_b32_e64 v95, 0, v70, s91
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.l, v90.h
	v_mov_b16_e64 v252.l, v91.h
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_cmp_o_f32_e64 s1, v90, v90
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v72, s89
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v252
	v_mov_b16_e64 v252.l, v93.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v90, v65, 0x7fff
	v_add3_u32 v66, v91, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v68, 1, v252
	v_mov_b16_e64 v252.l, v95.h
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v68, v93, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_and_b32_e32 v70, 1, v252
	v_mov_b16_e64 v252.l, v105.h
	v_permlanex16_b32 v67, v66, s88, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v95, v70, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_perm_b32 v65, v67, v66, v150
	v_perm_b32 v66, v67, v66, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v67, v187, v243 :: v_dual_and_b32 v72, 1, v252
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v72, v105, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, vcc_lo
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v92, 0, v67, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v67.h, v252.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v67.l, v92.h
	v_cmp_o_f32_e64 s1, v92, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v92, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	v_permlanex16_b32 v69, v68, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v69, v68, v150
	v_perm_b32 v68, v69, v68, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v186, v243
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v94, 0, v69, s11
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v69.h, v252.h
	v_mov_b16_e32 v69.l, v94.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v94, v94
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v94, v69, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v70, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v150
	v_perm_b32 v70, v71, v70, v229
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v183, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v96, 0, v71, s90
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v71.h, v252.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v71.l, v96.h
	v_cmp_o_f32_e64 s1, v96, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v96, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s1
	v_permlanex16_b32 v75, v72, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v75, v72, v150
	v_perm_b32 v72, v75, v72, v229
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v84, v230 offset:6656
	ds_load_u16_d16 v75, v230 offset:6720
	ds_load_u16_d16 v85, v230 offset:6912
	ds_load_u16_d16 v76, v230 offset:6976
	ds_load_u16_d16 v86, v230 offset:7168
	ds_load_u16_d16 v77, v230 offset:7232
	ds_load_u16_d16 v87, v230 offset:7424
	ds_load_u16_d16 v78, v230 offset:7488
	ds_load_u16_d16 v88, v230 offset:7680
	ds_load_u16_d16 v79, v230 offset:7744
	ds_load_u16_d16 v89, v230 offset:7936
	ds_load_u16_d16 v83, v230 offset:6400
	ds_load_u16_d16_hi v82, v230 offset:6272
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v74, v230 offset:6592
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v84, v230 offset:6784
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v75, v230 offset:6848
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v230 offset:7040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v76, v230 offset:7104
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v230 offset:7296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v77, v230 offset:7360
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v230 offset:7552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v78, v230 offset:7616
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v88, v230 offset:7808
	ds_load_u16_d16 v80, v230 offset:8000
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v79, v230 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v89, v230 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v83, v230 offset:6528
	ds_load_u16_d16 v192, v230 offset:6496
	ds_load_u16_d16 v193, v230 offset:6752
	ds_load_u16_d16 v194, v230 offset:7008
	ds_load_u16_d16 v195, v230 offset:7264
	ds_load_u16_d16 v196, v230 offset:7520
	ds_load_u16_d16 v197, v230 offset:7776
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v80, v230 offset:8128
	ds_load_u16_d16 v198, v230 offset:8032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[82:89], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v82, v230 offset:6432
	ds_load_u16_d16 v83, v230 offset:6688
	ds_load_u16_d16 v84, v230 offset:6944
	ds_load_u16_d16 v85, v230 offset:7200
	ds_load_u16_d16 v86, v230 offset:7456
	ds_load_u16_d16 v87, v230 offset:7712
	ds_load_u16_d16 v88, v230 offset:7968
	ds_load_u16_d16_hi v81, v230 offset:6304
	ds_load_u16_d16_hi v191, v230 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v82, v230 offset:6560
	ds_load_u16_d16_hi v192, v230 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v83, v230 offset:6816
	ds_load_u16_d16_hi v193, v230 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v84, v230 offset:7072
	ds_load_u16_d16_hi v194, v230 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v85, v230 offset:7328
	ds_load_u16_d16_hi v195, v230 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v86, v230 offset:7584
	ds_load_u16_d16_hi v196, v230 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v230 offset:7840
	ds_load_u16_d16_hi v197, v230 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v88, v230 offset:8096
	ds_load_u16_d16_hi v198, v230 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v73, v103, v104 :: v_dual_add_f32 v74, v90, v91
	v_dual_add_f32 v75, v92, v93 :: v_dual_add_f32 v76, v94, v95
	v_add_f32_e32 v77, v96, v105
.Ltmp19:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[191:198], v[65:72], v[1:8]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v65, v245, v244 :: v_dual_add_f32 v66, v247, v246
	v_dual_add_f32 v67, v249, v248 :: v_dual_add_f32 v68, v250, v251
	v_dual_add_f32 v69, v200, v201 :: v_dual_add_f32 v70, v202, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v65, v65, v66
	v_add_f32_e32 v71, v99, v100
	v_add_f32_e32 v66, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v68, v204, v205 :: v_dual_add_f32 v67, v69, v70
	v_dual_add_f32 v69, v206, v207 :: v_dual_add_f32 v70, v97, v98
	v_add_f32_e32 v72, v101, v102
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v97, v243 :: v_dual_add_f32 v68, v68, v69
	v_dual_add_f32 v69, v70, v71 :: v_dual_add_f32 v70, v72, v73
	v_dual_add_f32 v71, v74, v75 :: v_dual_add_f32 v72, v76, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v66, v67, v68 :: v_dual_add_f32 v67, v69, v70
	v_dual_add_f32 v68, v71, v72 :: v_dual_add_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v66, v67, v68
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v66, v65, s88, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v66, v242, v199
	v_mov_b32_e32 v242, v66
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v184
	.loc	1 657 32                        ; attention.py:657:32
	v_readlane_b32 s1, v254, 7
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v185, vcc_hi, v162
	v_or_b32_e32 v187, vcc_hi, v160
	v_or_b32_e32 v188, vcc_hi, v158
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s4, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 2, v184
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s1, vcc_hi, s1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v186, vcc_hi, v155
	v_writelane_b32 v254, s1, 28
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s1, s1, s69
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v66, s1, v219, 1
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s4
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v67, s1, v220, 1
	v_add_lshl_u32 v68, s1, v124, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s76, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 4, v184
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v69, s1, v216, 1
	v_add_lshl_u32 v70, s1, v125, 1
	v_add_lshl_u32 v71, s1, v126, 1
	v_add_lshl_u32 v72, s1, v127, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v73, s1, v217, 1
	v_add_lshl_u32 v74, s1, v128, 1
	v_add_lshl_u32 v75, s1, v129, 1
	v_add_lshl_u32 v76, s1, v130, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s94, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 6, v184
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v77, s1, v123, 1
	v_add_lshl_u32 v78, s1, v131, 1
	v_add_lshl_u32 v79, s1, v132, 1
	v_add_lshl_u32 v80, s1, v133, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v81, s1, v218, 1
	v_add_lshl_u32 v82, s1, v134, 1
	v_add_lshl_u32 v83, s1, v135, 1
	v_add_lshl_u32 v84, s1, v136, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s96, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 8, v184
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v85, s1, v137, 1
	v_add_lshl_u32 v86, s1, v138, 1
	v_add_lshl_u32 v87, s1, v139, 1
	v_add_lshl_u32 v88, s1, v140, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v89, s1, v141, 1
	v_add_lshl_u32 v90, s1, v142, 1
	v_add_lshl_u32 v91, s1, v143, 1
	v_add_lshl_u32 v92, s1, v144, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s5, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 10, v184
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v93, s1, v145, 1
	v_add_lshl_u32 v94, s1, v146, 1
	v_add_lshl_u32 v95, s1, v147, 1
	v_add_lshl_u32 v96, s1, v148, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	v_or_b32_e32 v189, vcc_hi, v156
	v_or_b32_e32 v191, vcc_hi, v153
	v_or_b32_e32 v183, vcc_hi, v151
	v_or_b32_e32 v190, vcc_hi, v152
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s97, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 12, v184
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s57, s99, v185
	v_cmp_gt_i32_e64 s59, s99, v187
	v_cmp_gt_i32_e64 s61, s99, v188
	v_cmp_gt_i32_e64 s62, s99, v186
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s63, s99, v189
	v_cmp_gt_i32_e64 s65, s99, v191
	v_cmp_gt_i32_e64 s66, s99, v183
	v_cmp_gt_i32_e64 s67, s99, v190
	v_cmp_gt_i32_e64 s2, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 14, v184
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s89, s93, s66
	s_and_b32 s90, s93, s67
	v_writelane_b32 v254, s2, 29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s6, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 16, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v254, s6, 30
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s8, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 18, v184
	v_writelane_b32 v254, s8, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 20, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s3, 0
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s9, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 22, v184
	v_writelane_b32 v255, s9, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s10, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 24, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s10, 2
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s13, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 26, v184
	v_writelane_b32 v255, s13, 3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s17, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 28, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s17, 4
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s18, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 30, v184
	v_writelane_b32 v255, s18, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s95, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 32, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s11, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 34, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s11, 6
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s12, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 36, v184
	v_writelane_b32 v255, s12, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s19, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 38, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s19, 8
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s14, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 40, v184
	v_writelane_b32 v255, s14, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s20, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 42, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s20, 10
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s21, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 44, v184
	v_writelane_b32 v255, s21, 11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s24, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 46, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s24, 12
	v_or_b32_e32 v65, vcc_hi, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s37, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v208
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s15, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s15, 13
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s16, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s16, 14
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s22, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s23, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v212
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s26, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s26, 15
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s25, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s25, 16
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s27, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, vcc_hi, v215
	v_writelane_b32 v255, s22, 17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s98, s99, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v65, s1, v122, 1
	v_writelane_b32 v255, s27, 18
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s76
	v_writelane_b32 v255, s23, 19
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s94
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s96
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s5
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s97
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s2
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s6
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s6, s93, s62
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s8
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x7
	buffer_load_u16 v65, v65, s[72:75], 0 offen
	buffer_load_u16 v66, v66, s[72:75], 0 offen
	buffer_load_u16 v67, v67, s[72:75], 0 offen
	buffer_load_u16 v68, v68, s[72:75], 0 offen
	buffer_load_u16 v69, v69, s[72:75], 0 offen
	buffer_load_u16 v70, v70, s[72:75], 0 offen
	buffer_load_u16 v71, v71, s[72:75], 0 offen
	buffer_load_u16 v72, v72, s[72:75], 0 offen
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s3
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s9
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s10
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s13
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s17
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s17, s93, s59
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s18
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s95
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s11
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v73, v73, s[72:75], 0 offen
	buffer_load_u16 v74, v74, s[72:75], 0 offen
	buffer_load_u16 v75, v75, s[72:75], 0 offen
	buffer_load_u16 v77, v77, s[72:75], 0 offen
	buffer_load_u16 v78, v78, s[72:75], 0 offen
	buffer_load_u16 v79, v79, s[72:75], 0 offen
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s19
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s19, s93, s57
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s14
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s20
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s24
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s37
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s15
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v81, v81, s[72:75], 0 offen
	buffer_load_u16 v82, v82, s[72:75], 0 offen
	buffer_load_u16 v83, v83, s[72:75], 0 offen
	buffer_load_u16 v85, v85, s[72:75], 0 offen
	buffer_load_u16 v86, v86, s[72:75], 0 offen
	buffer_load_u16 v87, v87, s[72:75], 0 offen
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s16
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s8, v254, 12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s26
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s15, v254, 19
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s25
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s14, v254, 18
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s22
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_u16 v89, v89, s[72:75], 0 offen
	buffer_load_u16 v90, v90, s[72:75], 0 offen
	buffer_load_u16 v91, v91, s[72:75], 0 offen
	buffer_load_u16 v92, v92, s[72:75], 0 offen
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s27
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s9, v254, 13
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s23
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_u16 v93, v93, s[72:75], 0 offen
	buffer_load_u16 v94, v94, s[72:75], 0 offen
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s104, s98
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s10, v254, 14
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	s_clause 0x5
	buffer_load_u16 v80, v80, s[72:75], 0 offen
	buffer_load_u16 v76, v76, s[72:75], 0 offen
	buffer_load_u16 v88, v88, s[72:75], 0 offen
	buffer_load_u16 v84, v84, s[72:75], 0 offen
	buffer_load_u16 v96, v96, s[72:75], 0 offen
	buffer_load_u16 v95, v95, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s11, v254, 15
	v_readlane_b32 s12, v254, 16
	v_readlane_b32 s13, v254, 17
	v_dual_mov_b32 v121, s15 :: v_dual_mov_b32 v116, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v117, s11 :: v_dual_mov_b32 v114, s8
	v_dual_mov_b32 v119, s13 :: v_dual_mov_b32 v118, s12
	v_mov_b32_e32 v115, s9
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v221, v65
	s_waitcnt vmcnt(27)
	ds_store_b16 v221, v69 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v221, v73 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v221, v77 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v221, v81 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v221, v85 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v221, v89 offset:6144
	s_waitcnt vmcnt(9)
	ds_store_b16 v221, v91 offset:7168
	ds_store_b16 v222, v66
	ds_store_b16 v222, v70 offset:1024
	ds_store_b16 v222, v74 offset:2048
	ds_store_b16 v222, v78 offset:3072
	ds_store_b16 v222, v82 offset:4096
	ds_store_b16 v222, v86 offset:5120
	ds_store_b16 v222, v90 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v222, v92 offset:7168
	ds_store_b16 v223, v67
	ds_store_b16 v223, v71 offset:1024
	ds_store_b16 v223, v75 offset:2048
	ds_store_b16 v223, v79 offset:3072
	ds_store_b16 v223, v83 offset:4096
	ds_store_b16 v223, v87 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v223, v93 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v223, v94 offset:7168
	ds_store_b16 v224, v68
	ds_store_b16 v224, v72 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v224, v76 offset:2048
	ds_store_b16 v224, v80 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v224, v84 offset:4096
	ds_store_b16 v224, v88 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v224, v95 offset:6144
	ds_store_b16 v224, v96 offset:7168
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v120, s14 :: v_dual_add_nc_u32 v81, 0, v225
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v231
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v231 offset:2048
	ds_load_b128 v[102:105], v231 offset:4096
	ds_load_b128 v[98:101], v81 offset:4096
	ds_load_b128 v[106:109], v81 offset:6144
	ds_load_b128 v[110:113], v231 offset:6144
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s15, s93, s61
	s_and_b32 s13, s93, s63
	s_and_b32 s11, s93, s65
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[114:121]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[114:121]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[98:105], v[33:40], v[114:121]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[33:40], v[114:121]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[102:105], v233
	ds_load_b128 v[98:101], v232
	ds_load_b128 v[106:109], v232 offset:2048
	ds_load_b128 v[110:113], v233 offset:2048
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v118, vcc_hi, v180
	v_or_b32_e32 v115, vcc_hi, v181
	v_or_b32_e32 v116, vcc_hi, v176
	v_or_b32_e32 v119, vcc_hi, v164
	v_or_b32_e32 v114, vcc_hi, v161
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s99, v118
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v117, vcc_hi, v159
	v_or_b32_e32 v120, vcc_hi, v157
	v_or_b32_e32 v121, vcc_hi, v154
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s39, s99, v115
	v_cmp_gt_i32_e64 s43, s99, v116
	v_cmp_gt_i32_e64 s55, s99, v119
	v_cmp_gt_i32_e64 s56, s99, v114
	v_cmp_gt_i32_e64 s58, s99, v117
	v_cmp_gt_i32_e64 s60, s99, v120
	v_cmp_gt_i32_e64 s64, s99, v121
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s10, s93, s3
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[98:105], v[41:48], v[89:96]
	.loc	1 667 17                        ; attention.py:667:17
	v_readlane_b32 s3, v254, 1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[106:113], v[41:48], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[102:105], v233 offset:4096
	ds_load_b128 v[98:101], v232 offset:4096
	ds_load_b128 v[106:109], v232 offset:6144
	ds_load_b128 v[110:113], v233 offset:6144
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s8, s93, s39
	s_and_b32 s34, s93, s43
	s_and_b32 s21, s93, s55
	s_and_b32 s77, s93, s56
	s_and_b32 s16, s93, s58
	s_and_b32 s7, s93, s60
	s_and_b32 s91, s93, s64
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[98:105], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[102:105], v235
	ds_load_b128 v[98:101], v234
	ds_load_b128 v[106:109], v234 offset:2048
	ds_load_b128 v[110:113], v235 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[98:105], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[106:113], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[102:105], v235 offset:4096
	ds_load_b128 v[98:101], v234 offset:4096
	ds_load_b128 v[106:109], v234 offset:6144
	ds_load_b128 v[110:113], v235 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[98:105], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[102:105], v237
	ds_load_b128 v[98:101], v236
	ds_load_b128 v[106:109], v236 offset:2048
	ds_load_b128 v[110:113], v237 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[98:105], v[57:64], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[106:113], v[57:64], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[102:105], v237 offset:4096
	ds_load_b128 v[98:101], v236 offset:4096
	ds_load_b128 v[106:109], v236 offset:6144
	ds_load_b128 v[110:113], v237 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[98:105], v[57:64], v[73:80]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v105, vcc_hi, v182
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[106:113], v[57:64], v[65:72]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v106, vcc_hi, v179
	v_or_b32_e32 v104, vcc_hi, v177
	v_or_b32_e32 v113, vcc_hi, v178
	v_or_b32_e32 v101, vcc_hi, v175
	v_or_b32_e32 v102, vcc_hi, v173
	v_or_b32_e32 v109, vcc_hi, v174
	v_or_b32_e32 v103, vcc_hi, v171
	v_or_b32_e32 v110, vcc_hi, v172
	v_or_b32_e32 v98, vcc_hi, v169
	v_or_b32_e32 v99, vcc_hi, v170
	v_or_b32_e32 v100, vcc_hi, v167
	v_or_b32_e32 v107, vcc_hi, v168
	v_or_b32_e32 v108, vcc_hi, v165
	v_or_b32_e32 v111, vcc_hi, v166
	v_or_b32_e32 v112, vcc_hi, v163
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e32 vcc_lo, s99, v105
	v_cmp_gt_i32_e64 s38, s99, v106
	v_cmp_gt_i32_e64 s40, s99, v104
	v_cmp_gt_i32_e64 s41, s99, v113
	v_cmp_gt_i32_e64 s42, s99, v101
	v_cmp_gt_i32_e64 s44, s99, v102
	v_cmp_gt_i32_e64 s45, s99, v109
	v_cmp_gt_i32_e64 s46, s99, v103
	v_cmp_gt_i32_e64 s47, s99, v110
	v_cmp_gt_i32_e64 s48, s99, v98
	v_cmp_gt_i32_e64 s49, s99, v99
	v_cmp_gt_i32_e64 s50, s99, v100
	v_cmp_gt_i32_e64 s51, s99, v107
	v_cmp_gt_i32_e64 s52, s99, v108
	v_cmp_gt_i32_e64 s53, s99, v111
	v_cmp_gt_i32_e64 s54, s99, v112
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s9, s93, vcc_lo
	s_and_b32 s2, s93, s38
	s_and_b32 s35, s93, s41
	s_and_b32 s36, s93, s40
	s_and_b32 s100, s93, s42
	s_and_b32 s30, s93, s45
	s_and_b32 s1, s93, s44
	s_and_b32 s29, s93, s47
	s_and_b32 s28, s93, s46
	s_and_b32 s27, s93, s49
	s_and_b32 s26, s93, s48
	s_and_b32 s25, s93, s51
	s_and_b32 s24, s93, s50
	s_and_b32 s23, s93, s53
	s_and_b32 s22, s93, s52
	s_and_b32 s20, s93, s54
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s3, v105, v226
	v_cmp_le_i32_e64 s38, v115, v226
	v_cmp_le_i32_e64 s39, v106, v226
	v_cmp_le_i32_e64 s40, v113, v226
	v_cmp_le_i32_e64 s41, v104, v226
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s3, s3, s9
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s42, v116, v226
	v_cmp_le_i32_e64 s43, v101, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s38, s38, s8
	s_and_b32 s39, s39, s2
	s_and_not1_b32 s9, s9, exec_lo
	s_and_b32 s3, s3, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s44, v109, v226
	v_cmp_le_i32_e64 s45, v102, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s40, s40, s35
	s_and_b32 s41, s41, s36
	s_or_b32 s9, s9, s3
	s_and_not1_b32 s3, s8, exec_lo
	s_and_b32 s8, s38, exec_lo
	s_and_not1_b32 s31, s2, exec_lo
	s_and_b32 s38, s39, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s46, v110, v226
	v_cmp_le_i32_e64 s47, v103, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s42, s42, s34
	s_and_b32 s43, s43, s100
	s_or_b32 s8, s3, s8
	s_or_b32 s2, s31, s38
	s_and_not1_b32 s3, s35, exec_lo
	s_and_b32 s35, s40, exec_lo
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s38, s41, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s48, v99, v226
	v_cmp_le_i32_e64 s49, v98, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s44, s44, s30
	s_and_b32 s45, s45, s1
	s_or_b32 s35, s3, s35
	s_or_b32 s36, s36, s38
	s_and_not1_b32 s3, s34, exec_lo
	s_and_b32 s34, s42, exec_lo
	s_and_not1_b32 s33, s100, exec_lo
	s_and_b32 s38, s43, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s50, v107, v226
	v_cmp_le_i32_e64 s51, v100, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s46, s46, s29
	s_and_b32 s47, s47, s28
	s_or_b32 s34, s3, s34
	s_or_b32 s100, s33, s38
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s30, s44, exec_lo
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s38, s45, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s52, v111, v226
	v_cmp_le_i32_e64 s53, v108, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s48, s48, s27
	s_and_b32 s49, s49, s26
	s_or_b32 s30, s3, s30
	s_or_b32 s1, s1, s38
	s_and_not1_b32 s3, s29, exec_lo
	s_and_b32 s29, s46, exec_lo
	s_and_not1_b32 s28, s28, exec_lo
	s_and_b32 s38, s47, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s54, v119, v226
	v_cmp_le_i32_e64 s55, v112, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s50, s50, s25
	s_and_b32 s51, s51, s24
	s_or_b32 s29, s3, s29
	s_or_b32 s28, s28, s38
	s_and_not1_b32 s3, s27, exec_lo
	s_and_b32 s27, s48, exec_lo
	s_and_not1_b32 s26, s26, exec_lo
	s_and_b32 s38, s49, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s56, v185, v226
	v_cmp_le_i32_e64 s57, v114, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s52, s52, s23
	s_and_b32 s53, s53, s22
	s_or_b32 s27, s3, s27
	s_or_b32 s26, s26, s38
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s25, s50, exec_lo
	s_and_not1_b32 s24, s24, exec_lo
	s_and_b32 s38, s51, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s58, v187, v226
	v_cmp_le_i32_e64 s59, v117, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s54, s54, s21
	s_and_b32 s55, s55, s20
	s_or_b32 s25, s3, s25
	s_or_b32 s24, s24, s38
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s23, s52, exec_lo
	s_and_not1_b32 s22, s22, exec_lo
	s_and_b32 s38, s53, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s60, v188, v226
	v_cmp_le_i32_e64 s61, v120, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s56, s56, s19
	s_and_b32 s57, s57, s77
	s_or_b32 s23, s3, s23
	s_or_b32 s22, s22, s38
	s_and_not1_b32 s3, s21, exec_lo
	s_and_b32 s21, s54, exec_lo
	s_and_not1_b32 s20, s20, exec_lo
	s_and_b32 s38, s55, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s62, v189, v226
	v_cmp_le_i32_e64 s63, v186, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s58, s58, s17
	s_and_b32 s59, s59, s16
	s_or_b32 s21, s3, s21
	s_or_b32 s20, s20, s38
	s_and_not1_b32 s3, s19, exec_lo
	s_and_b32 s19, s56, exec_lo
	s_and_not1_b32 s18, s77, exec_lo
	s_and_b32 s38, s57, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s64, v191, v226
	v_cmp_le_i32_e64 s65, v121, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s60, s60, s15
	s_and_b32 s61, s61, s7
	s_or_b32 s19, s3, s19
	s_or_b32 s77, s18, s38
	s_and_not1_b32 s3, s17, exec_lo
	s_and_b32 s17, s58, exec_lo
	s_and_not1_b32 s16, s16, exec_lo
	s_and_b32 s38, s59, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v118, v226
	v_cmp_le_i32_e64 s66, v190, v226
	v_cmp_le_i32_e64 s67, v183, v226
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s62, s62, s13
	s_and_b32 s63, s63, s6
	s_or_b32 s17, s3, s17
	s_or_b32 s16, s16, s38
	s_and_not1_b32 s3, s15, exec_lo
	s_and_b32 s15, s60, exec_lo
	s_and_not1_b32 s14, s7, exec_lo
	s_and_b32 s38, s61, exec_lo
	s_and_b32 s64, s64, s11
	s_and_b32 s65, s65, s91
	s_or_b32 s15, s3, s15
	s_or_b32 s7, s14, s38
	s_and_not1_b32 s3, s13, exec_lo
	s_and_b32 s13, s62, exec_lo
	s_and_not1_b32 s12, s6, exec_lo
	s_and_b32 s38, s63, exec_lo
	s_and_b32 s68, vcc_lo, s10
	s_and_b32 s66, s66, s90
	s_and_b32 s67, s67, s89
	s_or_b32 s13, s3, s13
	s_or_b32 s6, s12, s38
	s_and_not1_b32 s3, s11, exec_lo
	s_and_b32 s11, s64, exec_lo
	s_and_not1_b32 s38, s91, exec_lo
	s_and_b32 s39, s65, exec_lo
	s_and_not1_b32 s10, s10, exec_lo
	s_and_b32 s68, s68, exec_lo
	s_or_b32 s11, s3, s11
	s_or_b32 s91, s38, s39
	s_and_not1_b32 s3, s90, exec_lo
	s_and_b32 s38, s66, exec_lo
	s_and_not1_b32 s39, s89, exec_lo
	s_and_b32 s40, s67, exec_lo
	s_or_b32 s10, s10, s68
	s_or_b32 s90, s3, s38
	s_or_b32 s89, s39, s40
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s3, v254, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v255, s95, 20
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v106, v227
	s_mov_b32 s18, s13
	s_mov_b32 s13, s71
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s71, v106, v228
	v_writelane_b32 v255, s37, 21
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s40, v113, v227
	v_cmp_ge_i32_e64 s41, v104, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s72, v113, v228
	v_cmp_le_i32_e64 s73, v104, v228
	v_writelane_b32 v255, s76, 22
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s42, v116, v227
	v_cmp_ge_i32_e64 s43, v101, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s74, v116, v228
	v_cmp_le_i32_e64 s75, v101, v228
	v_writelane_b32 v255, s80, 23
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s39, s39, s71
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v109, v227
	v_cmp_ge_i32_e64 s45, v102, v227
	s_mov_b32 s101, s77
	v_writelane_b32 v255, s81, 24
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s76, v109, v228
	v_cmp_le_i32_e64 s77, v102, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s39, s39, s2
	s_and_b32 s40, s40, s72
	v_writelane_b32 v255, s82, 25
	s_and_b32 s41, s41, s73
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v110, v227
	v_cmp_ge_i32_e64 s47, v103, v227
	v_cmp_ge_i32_e64 s62, v189, v227
	s_mov_b32 s103, s20
	s_mov_b32 s20, s78
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s78, v110, v228
	s_mov_b32 s0, s21
	s_mov_b32 s21, s79
	v_cmp_le_i32_e64 s79, v103, v228
	v_cmp_le_i32_e64 s33, v189, v228
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v118, v227
	v_cmp_ge_i32_e64 s3, v105, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s68, v118, v228
	v_cmp_le_i32_e64 s69, v105, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s40, s40, s35
	s_and_b32 s41, s41, s36
	s_and_b32 s42, s42, s74
	s_and_b32 s43, s43, s75
	s_and_not1_b32 s31, s2, exec_lo
	s_and_b32 s39, s39, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s48, v99, v227
	v_cmp_ge_i32_e64 s49, v98, v227
	v_writelane_b32 v255, s83, 26
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s80, v99, v228
	v_cmp_le_i32_e64 s81, v98, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s42, s42, s34
	s_and_b32 s43, s43, s100
	s_and_b32 s44, s44, s76
	s_and_b32 s45, s45, s77
	s_or_b32 s2, s31, s39
	s_and_not1_b32 s35, s35, exec_lo
	s_and_b32 s39, s40, exec_lo
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s40, s41, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s50, v107, v227
	v_cmp_ge_i32_e64 s51, v100, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s82, v107, v228
	v_cmp_le_i32_e64 s83, v100, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s44, s44, s30
	s_and_b32 s45, s45, s1
	s_and_b32 s46, s46, s78
	s_and_b32 s47, s47, s79
	s_and_b32 s62, s62, s33
	s_or_b32 s35, s35, s39
	s_or_b32 s36, s36, s40
	s_and_not1_b32 s34, s34, exec_lo
	s_and_b32 s39, s42, exec_lo
	s_and_not1_b32 s33, s100, exec_lo
	s_and_b32 s40, s43, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s52, v111, v227
	v_cmp_ge_i32_e64 s53, v108, v227
	v_cmp_ge_i32_e64 s65, v121, v227
	v_cmp_ge_i32_e64 s66, v190, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s84, v111, v228
	v_cmp_le_i32_e64 s85, v108, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s68, vcc_lo, s68
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e32 vcc_lo, v121, v228
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s69, s3, s69
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v190, v228
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s38, v115, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s70, v115, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s46, s46, s29
	s_and_b32 s47, s47, s28
	s_and_b32 s48, s48, s80
	s_and_b32 s49, s49, s81
	s_or_b32 s34, s34, s39
	s_or_b32 s100, s33, s40
	s_and_not1_b32 s30, s30, exec_lo
	s_and_b32 s39, s44, exec_lo
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s40, s45, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s54, v119, v227
	v_cmp_ge_i32_e64 s55, v112, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s86, v119, v228
	v_cmp_le_i32_e64 s87, v112, v228
	v_writelane_b32 v255, s97, 27
	s_mov_b32 s97, s23
	s_mov_b32 s23, s24
	s_mov_b32 s14, s25
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s48, s48, s27
	s_and_b32 s49, s49, s26
	s_and_b32 s50, s50, s82
	s_and_b32 s51, s51, s83
	s_or_b32 s30, s30, s39
	s_or_b32 s1, s1, s40
	s_and_not1_b32 s29, s29, exec_lo
	s_and_b32 s39, s46, exec_lo
	s_and_not1_b32 s28, s28, exec_lo
	s_and_b32 s40, s47, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s56, v185, v227
	v_cmp_ge_i32_e64 s57, v114, v227
	v_cmp_ge_i32_e64 s60, v188, v227
	s_mov_b32 s102, s19
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s88, v185, v228
	s_mov_b32 s19, s89
	v_cmp_le_i32_e64 s89, v114, v228
	s_mov_b32 s104, s22
	s_mov_b32 s22, s92
	v_cmp_le_i32_e64 s92, v188, v228
	s_mov_b32 s24, s90
	s_mov_b32 s25, s91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s50, s50, s14
	s_and_b32 s51, s51, s23
	s_and_b32 s52, s52, s84
	s_and_b32 s53, s53, s85
	s_and_b32 s65, s65, vcc_lo
	s_and_b32 s3, s66, s3
	s_or_b32 s29, s29, s39
	s_or_b32 s28, s28, s40
	s_and_not1_b32 s27, s27, exec_lo
	s_and_b32 s39, s48, exec_lo
	s_and_not1_b32 s26, s26, exec_lo
	s_and_b32 s40, s49, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s58, v187, v227
	v_cmp_ge_i32_e64 s59, v117, v227
	v_cmp_ge_i32_e64 s67, v183, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s90, v187, v228
	v_cmp_le_i32_e64 s91, v117, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s70, s38, s70
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s38, v183, v228
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s52, s52, s97
	s_and_b32 s53, s53, s104
	s_and_b32 s54, s54, s86
	s_and_b32 s55, s55, s87
	s_and_b32 s65, s65, s25
	s_mov_b32 s85, s25
	s_and_b32 s3, s3, s24
	s_mov_b32 s84, s24
	s_or_b32 s27, s27, s39
	s_or_b32 s26, s26, s40
	s_and_not1_b32 s25, s14, exec_lo
	s_and_b32 s39, s50, exec_lo
	s_and_not1_b32 s24, s23, exec_lo
	s_and_b32 s40, s51, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s61, v120, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s93, v120, v228
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s54, s54, s0
	s_and_b32 s55, s55, s103
	s_and_b32 s56, s56, s88
	s_and_b32 s57, s57, s89
	s_and_b32 s60, s60, s92
	s_mov_b32 s92, s22
	s_or_b32 s25, s25, s39
	s_or_b32 s24, s24, s40
	s_and_not1_b32 s23, s97, exec_lo
	s_and_b32 s39, s52, exec_lo
	s_and_not1_b32 s22, s104, exec_lo
	s_and_b32 s40, s53, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s63, v186, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s95, v186, v228
	v_writelane_b32 v255, s4, 28
	s_mov_b32 s78, s20
	s_mov_b32 s79, s21
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s56, s56, s102
	s_and_b32 s57, s57, s101
	s_and_b32 s58, s58, s90
	s_and_b32 s59, s59, s91
	s_and_b32 s38, s67, s38
	s_or_b32 s23, s23, s39
	s_or_b32 s22, s22, s40
	s_and_not1_b32 s21, s0, exec_lo
	s_and_b32 s39, s54, exec_lo
	s_and_not1_b32 s20, s103, exec_lo
	s_and_b32 s40, s55, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s64, v191, v227
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s37, v191, v228
	s_mov_b32 s71, s13
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s58, s58, s17
	s_and_b32 s59, s59, s16
	s_and_b32 s61, s61, s93
	s_mov_b32 s13, s18
	s_and_b32 s62, s62, s18
	s_and_b32 s38, s38, s19
	s_mov_b32 s89, s19
	s_or_b32 s21, s21, s39
	s_or_b32 s20, s20, s40
	s_and_not1_b32 s19, s102, exec_lo
	s_and_b32 s39, s56, exec_lo
	s_and_not1_b32 s18, s101, exec_lo
	s_and_b32 s40, s57, exec_lo
	s_and_b32 s60, s60, s15
	s_and_b32 s61, s61, s7
	s_and_b32 s63, s63, s95
	s_or_b32 s19, s19, s39
	s_or_b32 s77, s18, s40
	s_and_not1_b32 s17, s17, exec_lo
	s_and_b32 s39, s58, exec_lo
	s_and_not1_b32 s16, s16, exec_lo
	s_and_b32 s40, s59, exec_lo
	v_writelane_b32 v255, s98, 29
	s_and_b32 s63, s63, s6
	s_and_b32 s64, s64, s37
	s_or_b32 s17, s17, s39
	s_or_b32 s16, s16, s40
	s_and_not1_b32 s15, s15, exec_lo
	s_and_b32 s39, s60, exec_lo
	s_and_not1_b32 s14, s7, exec_lo
	s_and_b32 s40, s61, exec_lo
	s_and_b32 s68, s68, s10
	s_and_b32 s64, s64, s11
	s_or_b32 s15, s15, s39
	s_or_b32 s7, s14, s40
	s_and_not1_b32 s13, s13, exec_lo
	s_and_b32 s39, s62, exec_lo
	s_and_not1_b32 s12, s6, exec_lo
	s_and_b32 s40, s63, exec_lo
	s_and_b32 s69, s69, s9
	s_and_b32 s70, s70, s8
	s_and_not1_b32 s10, s10, exec_lo
	s_and_b32 s66, s68, exec_lo
	v_readlane_b32 s80, v255, 23
	v_readlane_b32 s72, v254, 23
	s_or_b32 s13, s13, s39
	s_or_b32 s6, s12, s40
	s_and_not1_b32 s11, s11, exec_lo
	s_and_b32 s39, s64, exec_lo
	s_and_not1_b32 s40, s85, exec_lo
	s_and_b32 s41, s65, exec_lo
	s_and_b32 s67, s69, exec_lo
	v_readlane_b32 s69, v254, 27
	v_readlane_b32 s98, v255, 29
	v_readlane_b32 s4, v255, 28
	v_readlane_b32 s97, v255, 27
	v_readlane_b32 s81, v255, 24
	v_readlane_b32 s82, v255, 25
	v_readlane_b32 s83, v255, 26
	v_readlane_b32 s76, v255, 22
	v_readlane_b32 s37, v255, 21
	v_readlane_b32 s95, v255, 20
	v_readlane_b32 s73, v254, 24
	v_readlane_b32 s74, v254, 25
	v_readlane_b32 s75, v254, 26
	v_readlane_b32 s0, v254, 22
	v_readlane_b32 s104, v254, 21
	v_readlane_b32 s93, v254, 20
	s_and_not1_b32 s9, s9, exec_lo
	s_or_b32 s10, s10, s66
	s_and_not1_b32 s8, s8, exec_lo
	s_and_b32 s66, s70, exec_lo
	s_or_b32 s11, s11, s39
	s_or_b32 s91, s40, s41
	s_and_not1_b32 s39, s84, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s40, s89, exec_lo
	s_and_b32 s38, s38, exec_lo
	s_mov_b32 s88, 0x76543210
	s_or_b32 s9, s9, s67
	s_or_b32 s8, s8, s66
	s_or_b32 s90, s39, s3
	s_or_b32 s89, s40, s38
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	scratch_load_b32 v53, off, off          ; 4-byte Folded Reload
	v_readlane_b32 s36, v254, 6
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v66, v66, v25
	v_div_scale_f32 v33, null, v66, v66, v26
	v_div_scale_f32 v34, null, v66, v66, v27
	v_rcp_f32_e32 v35, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v25, v66, v25
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v26, v66, v26
	v_div_scale_f32 v42, null, v66, v66, v28
	v_div_scale_f32 v48, s3, v28, v66, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v0, v35, 1.0
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s79, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v34, v37, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s7, s79, v177
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_rcp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v40, s1, v27, v66, v27
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s79, v176
	v_cmp_gt_i32_e64 s9, s79, v175
	v_cmp_gt_i32_e64 s10, s79, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v0, v43, v38
	v_fma_f32 v47, -v33, v44, v39
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s11, s79, v173
	v_cmp_gt_i32_e64 s12, s79, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v66, v66, v29
	v_fmac_f32_e32 v41, v49, v41
	v_fma_f32 v0, -v0, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v66, v66, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v35, v43
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v35, v48, v41
	v_div_fmas_f32 v33, v33, v36, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v66, v25
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v66, v26
	v_div_scale_f32 v33, s4, v29, v66, v29
	v_fma_f32 v36, -v42, v35, v48
	v_fmac_f32_e32 v38, v44, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v44, null, v66, v66, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v36, v41
	v_div_scale_f32 v36, null, v66, v66, v31
	v_fma_f32 v50, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v44
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v66
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s79, v171
	v_cmp_gt_i32_e64 s14, s79, v170
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v50, v37
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s79, v169
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s79, v168
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v26, -v34, v45, v40
	v_mul_f32_e32 v40, v33, v38
	v_fma_f32 v34, -v39, v43, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s79, v167
	v_cmp_gt_i32_e64 s18, s79, v166
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v26, v26, v37, v45
	v_fma_f32 v37, -v42, v35, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v30, v66, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v66, v27
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s79, v165
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v27, v35, v66, v28
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v66, v66, v17
	v_div_scale_f32 v35, s3, v31, v66, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v40, v33
	v_rcp_f32_e32 v48, v37
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s79, v164
	v_cmp_gt_i32_e64 s21, s79, v163
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v41, v42, v43
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s79, v162
	v_cmp_gt_i32_e64 s23, s79, v161
	v_cmp_gt_i32_e64 s24, s79, v160
	v_cmp_gt_i32_e64 s25, s79, v159
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v28, -v39, v41, v42
	v_fma_f32 v45, -v36, v34, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s79, v158
	v_cmp_gt_i32_e64 s27, s79, v157
	v_cmp_gt_i32_e64 s28, s79, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v41, v28, v43 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v45, -v44, v47, 1.0
	v_div_fmas_f32 v28, v33, v38, v40
	v_fma_f32 v40, -v37, v48, 1.0
	v_fma_f32 v33, -v39, v41, v42
	v_mul_f32_e32 v46, v35, v34
	v_div_scale_f32 v42, null, v66, v66, v18
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v32, v66, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v36, v46, v35
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v48, v40, v48 :: v_dual_mul_f32 v39, v45, v47
	v_div_fmas_f32 v33, v33, v43, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v46, v38, v34
	v_rcp_f32_e32 v38, v42
	v_div_scale_f32 v40, s1, v17, v66, v17
	v_fma_f32 v41, -v44, v39, v45
	v_div_fixup_f32 v28, v28, v66, v29
	v_div_fixup_f32 v29, v33, v66, v30
	v_fma_f32 v30, -v36, v46, v35
	v_div_scale_f32 v36, null, v66, v66, v19
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v42, v38, 1.0
	v_mul_f32_e32 v33, v40, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v18, v66, v18
	v_fmac_f32_e32 v38, v35, v38
	v_rcp_f32_e32 v35, v36
	v_div_fmas_f32 v30, v30, v34, v46
	v_fma_f32 v34, -v44, v39, v45
	v_fma_f32 v41, -v37, v33, v40
	v_div_scale_f32 v44, null, v66, v66, v20
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v30, v30, v66, v31
	v_div_fmas_f32 v34, v34, v47, v39
	v_fmac_f32_e32 v33, v41, v48
	v_rcp_f32_e32 v39, v44
	v_mul_f32_e32 v41, v43, v38
	v_fma_f32 v45, -v36, v35, 1.0
	v_div_fixup_f32 v31, v34, v66, v32
	v_fma_f32 v32, -v37, v33, v40
	v_div_scale_f32 v37, s4, v19, v66, v19
	v_fma_f32 v34, -v42, v41, v43
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v66, v66, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v44, v39, 1.0
	v_fmac_f32_e32 v41, v34, v38
	v_div_scale_f32 v46, null, v66, v66, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v45
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v32, v32, v48, v33
	v_mul_f32_e32 v33, v37, v35
	v_div_scale_f32 v40, s1, v20, v66, v20
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v17, v32, v66, v17
	v_fma_f32 v32, -v42, v41, v43
	v_fma_f32 v42, -v36, v33, v37
	v_mul_f32_e32 v43, v40, v39
	v_fma_f32 v48, -v45, v34, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v32, v38, v41
	v_fmac_f32_e32 v33, v42, v35
	v_fma_f32 v38, -v44, v43, v40
	v_fmac_f32_e32 v34, v48, v34
	v_div_scale_f32 v41, s3, v21, v66, v21
	v_fma_f32 v42, -v46, v47, 1.0
	v_div_fixup_f32 v18, v32, v66, v18
	v_fma_f32 v32, -v36, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v38, v39 :: v_dual_mul_f32 v36, v41, v34
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v37, s5, v22, v66, v22
	v_div_scale_f32 v38, null, v66, v66, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v37, v47
	v_div_fmas_f32 v32, v32, v35, v33
	v_fma_f32 v33, -v44, v43, v40
	v_fma_f32 v35, -v45, v36, v41
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v44, null, v66, v66, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v35, v34
	v_div_fmas_f32 v33, v33, v39, v43
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v39, -v46, v42, v37
	v_div_fixup_f32 v19, v32, v66, v19
	v_fma_f32 v32, -v45, v36, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v39, v47
	v_div_fixup_f32 v20, v33, v66, v20
	v_div_scale_f32 v33, s1, v23, v66, v23
	v_fmac_f32_e32 v40, v43, v40
	v_fma_f32 v39, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v34, v36
	v_fma_f32 v34, -v46, v42, v37
	v_div_scale_f32 v37, null, v66, v66, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v33, v40 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, s3, v24, v66, v24
	v_rcp_f32_e32 v41, v37
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v66, v66, v10
	v_div_fmas_f32 v34, v34, v47, v42
	v_fma_f32 v42, -v38, v36, v33
	v_mul_f32_e32 v43, v39, v35
	v_div_fixup_f32 v21, v32, v66, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v66, v22
	v_fmac_f32_e32 v36, v42, v40
	v_fma_f32 v32, -v44, v43, v39
	v_rcp_f32_e32 v34, v45
	v_fma_f32 v42, -v37, v41, 1.0
	v_div_scale_f32 v47, null, v66, v66, v12
	v_fma_f32 v33, -v38, v36, v33
	v_fmac_f32_e32 v43, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v32, s4, v9, v66, v9
	v_div_fmas_f32 v33, v33, v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v45, v34, 1.0
	v_fma_f32 v36, -v44, v43, v39
	v_mul_f32_e32 v39, v32, v41
	v_div_scale_f32 v38, null, v66, v66, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v46, v34
	v_div_scale_f32 v40, s1, v10, v66, v10
	v_fma_f32 v46, -v37, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v40, v34
	v_div_fmas_f32 v35, v36, v35, v43
	v_fmac_f32_e32 v39, v46, v41
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v36, -v45, v48, v40
	v_div_fixup_f32 v23, v33, v66, v23
	v_fma_f32 v32, -v37, v39, v32
	v_fma_f32 v44, -v38, v42, 1.0
	v_div_fixup_f32 v24, v35, v66, v24
	v_fmac_f32_e32 v48, v36, v34
	v_div_scale_f32 v36, null, v66, v66, v13
	v_div_fmas_f32 v32, v32, v41, v39
	v_div_scale_f32 v39, null, v66, v66, v14
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s5, v11, v66, v11
	v_fma_f32 v37, -v45, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v44, v42
	v_fma_f32 v35, -v47, v49, 1.0
	v_div_fmas_f32 v34, v37, v34, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v32, v66, v9
	v_fma_f32 v33, -v38, v43, v44
	v_fmac_f32_e32 v49, v35, v49
	v_div_fixup_f32 v10, v34, v66, v10
	v_fma_f32 v34, -v39, v41, 1.0
	v_div_scale_f32 v35, s3, v12, v66, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v34, v41
	v_fmac_f32_e32 v43, v33, v42
	v_rcp_f32_e32 v33, v36
	v_div_scale_f32 v34, s4, v14, v66, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v38, v43, v44
	v_mul_f32_e32 v38, v35, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v42, -v47, v38, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v11, v37, v66, v11
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v13, v66, v13
	v_fmac_f32_e32 v38, v42, v49
	v_div_scale_f32 v37, null, v66, v66, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v40, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v47, v38, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v36, v32, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v49, v38
	v_mul_f32_e32 v38, v34, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v66, v66, v16
	v_div_fixup_f32 v12, v35, v66, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v36, v32, v40
	v_fma_f32 v36, -v39, v38, v34
	v_fma_f32 v40, -v37, v43, 1.0
	v_rcp_f32_e32 v44, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v35, v33, v32
	v_div_scale_f32 v33, null, v66, v66, v1
	v_fmac_f32_e32 v38, v36, v41
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v66, v66, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v35, s1, v15, v66, v15
	v_div_fixup_f32 v13, v32, v66, v13
	v_fma_f32 v32, -v42, v44, 1.0
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v34, -v39, v38, v34
	v_mul_f32_e32 v39, v35, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v32, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v33, v36, 1.0
	v_div_scale_f32 v32, s3, v16, v66, v16
	v_div_fmas_f32 v34, v34, v41, v38
	v_fma_f32 v38, -v37, v39, v35
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v66, v66, v3
	v_mul_f32_e32 v41, v32, v44
	v_div_scale_f32 v47, s4, v1, v66, v1
	v_fma_f32 v48, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	v_mul_f32_e32 v50, v47, v36
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v2, v66, v2
	v_div_fixup_f32 v14, v34, v66, v14
	v_fma_f32 v34, -v37, v39, v35
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	v_fma_f32 v38, -v45, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v42, v41, v32
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_fmac_f32_e32 v49, v38, v49
	v_div_scale_f32 v38, s1, v3, v66, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_fmas_f32 v34, v34, v43, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v38, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v66, v66, v4
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v34, v66, v15
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	v_fma_f32 v40, -v45, v35, v38
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v16, v32, v66, v16
	v_div_fixup_f32 v1, v33, v66, v1
	v_div_scale_f32 v33, null, v66, v66, v5
	v_fmac_f32_e32 v35, v40, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, null, v66, v66, v8
	v_div_fmas_f32 v36, v36, v46, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v39, v41, 1.0
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v2, v36, v66, v2
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v66, v66, v6
	v_div_scale_f32 v36, null, v66, v66, v7
	v_div_scale_f32 v37, vcc_lo, v4, v66, v4
	v_div_fixup_f32 v3, v32, v66, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v34
	v_fma_f32 v32, -v33, v35, 1.0
	v_rcp_f32_e32 v40, v36
	v_mul_f32_e32 v42, v37, v41
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v66, v5
	v_fma_f32 v46, -v39, v42, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_dual_fmac_f32 v45, v49, v45 :: v_dual_mul_f32 v48, v32, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v36, v40, 1.0
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v6, v66, v6
	v_fma_f32 v46, -v33, v48, v32
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s4, v7, v66, v7
	v_mul_f32_e32 v50, v44, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v46, v35
	v_div_scale_f32 v49, s5, v8, v66, v8
	v_mul_f32_e32 v51, v47, v40
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v32, -v33, v48, v32
	v_fma_f32 v39, -v34, v50, v44
	v_mul_f32_e32 v52, v49, v45
	v_fma_f32 v46, -v36, v51, v47
	v_div_fmas_f32 v37, v37, v41, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v50, v39, v38
	v_div_fmas_f32 v32, v32, v35, v48
	v_fma_f32 v33, -v43, v52, v49
	v_fmac_f32_e32 v51, v46, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v50, v44
	v_div_fixup_f32 v5, v32, v66, v5
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s36, v53
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v52, v33, v45
	v_fma_f32 v33, -v36, v51, v47
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v32, v32, s79
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v52, v49
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s79, v180
	v_cmp_gt_i32_e64 s3, s79, v182
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v45, v52
	v_div_fixup_f32 v7, v33, v66, v7
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v180, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v34, v66, v6
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s79, v181
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v34, v32, v182, 2
	v_readlane_b32 s36, v254, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s93, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v35, v66, v8
	v_readlane_b32 s37, v254, 3
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v35, v32, v181, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s93, s3
	v_readlane_b32 s38, v254, 4
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s93, s4
	v_readlane_b32 s39, v254, 5
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s79, v179
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	buffer_store_b32 v0, v33, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v179, 2
	s_clause 0x1
	buffer_store_b32 v25, v34, s[36:39], 0 offen
	buffer_store_b32 v26, v35, s[36:39], 0 offen
	v_add_lshl_u32 v25, v32, v178, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s5
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v26, v32, v177, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s6
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v176, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s7
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v27, v0, s[36:39], 0 offen
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s8
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v32, v175, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_add_lshl_u32 v25, v32, v174, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s9
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	buffer_store_b32 v30, v33, s[36:39], 0 offen
	v_add_lshl_u32 v26, v32, v173, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s10
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v32, v172, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s11
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v31, v0, s[36:39], 0 offen
	buffer_store_b32 v17, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s12
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v32, v171, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_add_lshl_u32 v17, v32, v170, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s13
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[36:39], 0 offen
	buffer_store_b32 v19, v27, s[36:39], 0 offen
	v_add_lshl_u32 v18, v32, v169, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s14
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v168, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s15
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v20, v0, s[36:39], 0 offen
	buffer_store_b32 v21, v17, s[36:39], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s16
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v32, v167, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v17, v32, v166, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s17
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[36:39], 0 offen
	buffer_store_b32 v23, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v32, v165, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s18
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v164, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s20
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v24, v0, s[36:39], 0 offen
	buffer_store_b32 v9, v17, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v0, v32, v163, 2
	v_add_lshl_u32 v9, v32, v162, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s21
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[36:39], 0 offen
	buffer_store_b32 v11, v19, s[36:39], 0 offen
	v_add_lshl_u32 v10, v32, v161, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v32, v160, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s24
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v0, s[36:39], 0 offen
	buffer_store_b32 v13, v9, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v159, 2
	v_add_lshl_u32 v9, v32, v158, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s25
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[36:39], 0 offen
	buffer_store_b32 v15, v11, s[36:39], 0 offen
	v_add_lshl_u32 v10, v32, v157, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s26
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v32, v156, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s27
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v4, v37, v66, v4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s28
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s79, v155
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s79, v153
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v16, v0, s[36:39], 0 offen
	buffer_store_b32 v1, v9, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v155, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s79, v154
	v_cmp_gt_i32_e32 vcc_lo, s79, v152
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v1, v32, v153, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s79, v151
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[36:39], 0 offen
	buffer_store_b32 v3, v11, s[36:39], 0 offen
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s29
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v2, v32, v154, 2
	v_add_lshl_u32 v3, v32, v152, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s93, s30
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v32, v151, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s0, s93, s0
	s_and_b32 vcc_lo, s93, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s93, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[36:39], 0 offen
	buffer_store_b32 v5, v1, s[36:39], 0 offen
	buffer_store_b32 v6, v2, s[36:39], 0 offen
	buffer_store_b32 v7, v3, s[36:39], 0 offen
	buffer_store_b32 v8, v9, s[36:39], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 8
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 8
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21700
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 8
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 8
    .sgpr_count:     107
    .sgpr_spill_count: 62
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 1
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
