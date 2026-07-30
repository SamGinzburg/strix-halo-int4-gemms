	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[96:99], s[0:1], 0x4c
	s_load_b32 s71, s[0:1], 0x5c
	s_load_b64 s[40:41], s[0:1], 0x0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v127, 6, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v33, v0, 6, 1
	v_or_b32_e32 v3, 8, v127
	v_or_b32_e32 v6, 32, v127
	v_or_b32_e32 v4, 16, v127
	v_or_b32_e32 v5, 24, v127
	v_or_b32_e32 v7, 2, v127
	v_or_b32_e32 v8, 4, v127
	v_or_b32_e32 v9, 6, v127
	v_or_b32_e32 v10, 10, v127
	v_or_b32_e32 v248, 12, v127
	v_or_b32_e32 v249, 14, v127
	v_or_b32_e32 v250, 18, v127
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[97:98], null, s71, v127, v[65:66]
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s94, s71, v65
	s_cselect_b32 s30, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s96
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s33, s2, 6
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v159, s71, 3, v97
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s33, v127
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[98:99], null, s71, 24, v[97:98]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s98, v2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s33, v5
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v160, s71, 4, v97
	v_lshl_add_u32 v161, s71, 5, v97
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v162, s71, 1, v97
	v_mad_u64_u32 v[99:100], null, s71, 6, v[97:98]
	v_lshl_add_u32 v163, s71, 2, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[100:101], null, s71, 10, v[97:98]
	v_mad_u64_u32 v[101:102], null, s71, 12, v[97:98]
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s4, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v251, 20, v127
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[102:103], null, s71, 14, v[97:98]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, s33, v249
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s4, s6
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[103:104], null, s71, 18, v[97:98]
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s4, s4, s6
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v252, 22, v127
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s4, s7, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v12, s33, v250
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s4, s5
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v253, 26, v127
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s7, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s2, s5
	s_cmp_ge_u32 s2, s5
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[104:105], null, s71, 20, v[97:98]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s7, s3, s98
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s31, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s6, s97
	s_xor_b32 s9, s96, s97
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s8, 0, s6
	s_ashr_i32 s34, s9, 31
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, s33, v251
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[105:106], null, s71, 22, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v126, 28, v127
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v14, s33, v252
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v168, 30, v127
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	v_mad_u64_u32 v[106:107], null, s71, 26, v[97:98]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v15, s33, v253
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[107:108], null, s71, 28, v[97:98]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s33, v6
	v_or_b32_e32 v6, s33, v7
	v_or_b32_e32 v7, s33, v8
	v_or_b32_e32 v8, s33, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, s33, v10
	v_or_b32_e32 v10, s33, v248
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v144, 34, v127
	.loc	1 568 22 is_stmt 1              ; attention.py:568:22
	s_cvt_u32_f32 s2, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s33, v126
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v145, 36, v127
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	v_mad_u64_u32 v[108:109], null, s71, 30, v[97:98]
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s8, s8, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s33, v168
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s8, s2, s8
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[109:110], null, s71, 34, v[97:98]
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s8, s2, s8
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s98, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s8, s5, s8
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v146, 38, v127
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s10, s8, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s12, s98, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s9, s5, s10
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s98, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s98, v5
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s35, s10, s8
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s45, s7, s33
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s7, s98, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s44, s45, s71
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s94
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, s44, v97, 1
	v_add_lshl_u32 v2, s44, v159, 1
	v_add_lshl_u32 v3, s44, v160, 1
	v_add_lshl_u32 v4, s44, v98, 1
	v_add_lshl_u32 v5, s44, v161, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s98, v7
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s98, v8
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s6, s94
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v8, s44, v99, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s7, s94
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s44, v163, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s98, v6
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v6, s44, v162, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s98, v9
	v_cmp_gt_i32_e64 s7, s98, v10
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v9, s44, v100, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s94
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v10, s44, v101, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s98, v11
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s9, s98, v12
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s6, s94
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v11, s44, v102, 1
	v_add_lshl_u32 v12, s44, v103, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s7, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s98, v13
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s8, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s11, s98, v14
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v13, s44, v104, 1
	v_add_lshl_u32 v14, s44, v105, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s9, s94
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v18, s33, v144
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s10, s94
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v147, 40, v127
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[110:111], null, s71, 36, v[97:98]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, s98, v16
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v15, s44, v106, 1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, s33, v145
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[111:112], null, s71, 38, v[97:98]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v16, s44, v107, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s11, s94
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v148, 42, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s14, s98, v17
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v20, s33, v146
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s12, s94
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v149, 44, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s15, s98, v18
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[112:113], null, s71, 40, v[97:98]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v17, s44, v108, 1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, s33, v147
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v18, s44, v109, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s13, s94
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[113:114], null, s71, 42, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v150, 46, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s16, s98, v19
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v22, s33, v148
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s14, s94
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v151, 48, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s17, s98, v20
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v19, s44, v110, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[114:115], null, s71, 44, v[97:98]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v23, s33, v149
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v20, s44, v111, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s15, s94
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[115:116], null, s71, 46, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v152, 50, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s98, v21
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v24, s33, v150
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s16, s94
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v155, 56, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s19, s98, v22
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v21, s44, v112, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[116:117], null, s71, 48, v[97:98]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v25, s33, v151
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v22, s44, v113, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s17, s94
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[117:118], null, s71, 50, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v153, 52, v127
	v_or_b32_e32 v156, 58, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s98, v23
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v154, 54, v127
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v26, s33, v152
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s21, s98, v24
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v23, s44, v114, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[118:119], null, s71, 56, v[97:98]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v29, s33, v155
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v24, s44, v115, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s19, s94
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[119:120], null, s71, 58, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v157, 60, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s22, s98, v25
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v27, s33, v153
	v_or_b32_e32 v30, s33, v156
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s20, s94
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v28, s33, v154
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s98, v26
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v25, s44, v116, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[120:121], null, s71, 52, v[97:98]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v26, s44, v117, 1
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s21, s94
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[121:122], null, s71, 60, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v158, 62, v127
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s26, s98, v29
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v31, s33, v157
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s22, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s98, v27
	v_cmp_gt_i32_e64 s27, s98, v30
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v27, s44, v118, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[122:123], null, s71, 54, v[97:98]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s25, s98, v28
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v28, s44, v119, 1
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s23, s94
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[123:124], null, s71, 62, v[97:98]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v32, s33, v158
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s26, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s28, s98, v31
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v29, s44, v120, 1
	v_add_lshl_u32 v30, s44, v121, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s27, s94
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s29, s98, v32
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s24, s94
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v31, s44, v122, 1
	v_add_lshl_u32 v32, s44, v123, 1
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s28, s94
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s41, s41, 0xffff
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s25, s94
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x7
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v34, 1, v65
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s29, s94
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x5
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x11
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	buffer_load_u16 v28, v28, s[40:43], 0 offen
	buffer_load_u16 v29, v29, s[40:43], 0 offen
	buffer_load_u16 v30, v30, s[40:43], 0 offen
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	buffer_load_u16 v31, v31, s[40:43], 0 offen
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s35, s34
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s4, s2, s34
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s6, s99, 63
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s12, s4
	s_mov_b32 s5, 0
	s_cvt_f32_u32 s2, s12
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v33, v33, v34
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s6, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v164, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v165, 0, v34
	v_add_nc_u32_e32 v166, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v167, 0, v33
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s8, v36
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s2, s6, s2
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v164, v1
	s_waitcnt vmcnt(30)
	ds_store_b16 v164, v2 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v164, v3 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v164, v4 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v164, v5 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v164, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v164, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v164, v27 offset:7168
	ds_store_b16 v165, v6
	ds_store_b16 v165, v9 offset:1024
	ds_store_b16 v165, v12 offset:2048
	ds_store_b16 v165, v15 offset:3072
	ds_store_b16 v165, v18 offset:4096
	ds_store_b16 v165, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v165, v26 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v165, v28 offset:7168
	ds_store_b16 v166, v7
	ds_store_b16 v166, v10 offset:1024
	ds_store_b16 v166, v13 offset:2048
	ds_store_b16 v166, v16 offset:3072
	ds_store_b16 v166, v19 offset:4096
	ds_store_b16 v166, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v166, v29 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v166, v30 offset:7168
	ds_store_b16 v167, v8
	ds_store_b16 v167, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v167, v14 offset:2048
	ds_store_b16 v167, v17 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v167, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v167, v24 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v167, v31 offset:6144
	ds_store_b16 v167, v32 offset:7168
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s73, s2, 0xffffffc0
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s33, s38
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s6, s33, s37
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s39
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s6, s6, s39
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s99, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s5, s6, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s5, s5, 0x7fffffc0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s73, s73, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v1, 0, 1, s30
	v_and_b32_e32 v67, 15, v0
	v_and_b32_e32 v33, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s74, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s33, s39
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
	s_min_i32 s73, s73, s2
.LBB0_4:
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v33
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s92, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 16, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s5, s73
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v86, v1, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s42, 0, v69
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v68, s33, v86
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 601 23 is_stmt 1              ; attention.py:601:23
	v_cmp_gt_i32_e64 s93, s98, v68
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
	s_xor_b32 s9, s3, s96
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s9, s9, 31
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	s_ashr_i32 s4, s4, 31
	s_xor_b32 s10, s31, s9
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s13, s10, s9
	s_sub_i32 s9, 0, s12
	s_mul_i32 s10, s13, s96
	s_mul_i32 s9, s9, s8
	v_writelane_b32 v254, s45, 0
	s_sub_i32 s3, s3, s10
	s_mul_hi_u32 s9, s8, s9
	s_abs_i32 s10, s3
	s_add_i32 s8, s8, s9
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s40, 1
	s_mul_hi_u32 s14, s10, s8
	s_ashr_i32 s3, s3, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s8, s14, s12
	s_xor_b32 s3, s3, s4
	s_sub_i32 s4, s10, s8
	v_writelane_b32 v254, s41, 2
	s_add_i32 s15, s14, 1
	s_sub_i32 s16, s4, s12
	s_cmp_ge_u32 s4, s12
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	s_cselect_b32 s1, s15, s14
	s_cselect_b32 s4, s16, s4
	v_writelane_b32 v254, s42, 3
	s_add_i32 s14, s1, 1
	s_cmp_ge_u32 s4, s12
	.loc	1 656 33                        ; attention.py:656:33
	s_mul_i32 s13, s13, s97
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s1, s14, s1
	v_writelane_b32 v254, s43, 4
	s_xor_b32 s1, s1, s3
	s_mov_b32 s12, 0
	s_sub_i32 s1, s1, s3
	s_mov_b32 s14, s12
	.loc	1 656 33                        ; attention.py:656:33
	s_add_i32 s1, s1, s13
	s_mov_b32 s13, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_writelane_b32 v254, s12, 5
	v_lshlrev_b32_e32 v1, 4, v0
	v_lshlrev_b32_e32 v2, 7, v67
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_lshlrev_b32 v3, 6, v33
	v_writelane_b32 v254, s13, 6
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s4, s0, 0x3fb8aa3b
	v_writelane_b32 v254, s14, 7
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s2, s92, v65
	v_mov_b32_e32 v26, v25
	v_or3_b32 v3, v2, v3, v1
	s_mov_b32 s103, 0x31027000
	v_writelane_b32 v254, s15, 8
	s_mov_b32 s102, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	v_xad_u32 v6, v3, 32, 0
	v_xad_u32 v7, v3, 48, 0
	v_writelane_b32 v254, s16, 9
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	v_mov_b32_e32 v6, 0x5410
	v_writelane_b32 v254, s17, 10
	v_dual_mov_b32 v7, 0x7632 :: v_dual_add_nc_u32 v4, 0, v3
	v_mov_b32_e32 v27, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0x1054, v6, s42
	v_writelane_b32 v254, s18, 11
	v_cndmask_b32_e64 v7, 0x3276, v7, s42
	v_xad_u32 v8, v3, 64, 0
	v_xad_u32 v10, 0x60, v3, 0
	v_lshl_or_b32 v6, v6, 8, v6
	v_writelane_b32 v254, s19, 12
	v_lshl_or_b32 v7, v7, 8, v7
	v_xad_u32 v5, v3, 16, 0
	v_xad_u32 v9, 0x50, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v254, s92, 13
	s_and_b32 s101, s11, 0xffff
	s_mov_b32 s100, s10
	s_mov_b32 s10, s102
	s_mov_b32 s11, s103
	v_writelane_b32 v254, s93, 14
	ds_load_b128 v[33:36], v4
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[53:56], v9
	ds_load_b128 v[57:60], v10
	ds_load_b128 v[61:64], v3
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v6, 0x540054, v6
	v_writelane_b32 v254, s94, 15
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v7, 0x760076, v7
	v_or_b32_e32 v170, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v6, 4, v6
	v_writelane_b32 v254, s4, 16
	v_lshl_or_b32 v7, v7, 4, v7
	v_mad_u64_u32 v[124:125], null, s92, v127, v[65:66]
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v171, s39, v68
	v_writelane_b32 v254, s2, 17
	v_xor_b32_e32 v1, 16, v170
	v_xor_b32_e32 v2, 32, v170
	v_xor_b32_e32 v3, 48, v170
	v_xor_b32_e32 v4, 64, v170
	v_writelane_b32 v254, s8, 18
	v_xor_b32_e32 v5, 0x50, v170
	v_xor_b32_e32 v8, 0x60, v170
	v_xor_b32_e32 v9, 0x70, v170
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v125, 0x5040504, v6
	v_writelane_b32 v254, s9, 19
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v174, 0x7060706, v7
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xf00, v0
	v_or_b32_e32 v10, 0x1700, v0
	v_or_b32_e32 v11, 0x1f00, v0
	v_writelane_b32 v254, s10, 20
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v169, 4, v69
	v_subrev_nc_u32_e32 v172, s37, v171
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v173, s38, v171
	v_lshl_add_u32 v175, v67, 1, 0
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v176, 0, v1
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v177, 0, v2
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v178, 0, v3
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v179, 0, v4
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v180, 0, v5
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v181, 0, v8
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v182, 0, v9
	v_add_nc_u32_e32 v183, 0, v6
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v184, 0, v7
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v185, 0, v10
	v_add_nc_u32_e32 v186, 0, v11
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v187, v25
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v254, s11, 21
	s_mov_b32 s98, s5
	.loc	1 656 32                        ; attention.py:656:32
	s_mul_i32 s75, s1, s99
	s_lshl_b32 s76, s92, 1
	s_lshl_b32 s77, s92, 2
	s_lshl_b32 s78, s92, 3
	s_lshl_b32 s79, s92, 4
	s_lshl_b32 s80, s92, 5
	s_mov_b32 s81, 0x76543210
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v86, off
	scratch_store_b32 off, v69, off offset:4
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v128, s4, v67 :: v_dual_mul_f32 v67, s4, v68
	v_dual_mul_f32 v68, s4, v69 :: v_dual_mul_f32 v71, s4, v71
	v_dual_mul_f32 v72, s4, v72 :: v_dual_mul_f32 v69, s4, v74
	v_dual_mul_f32 v74, s4, v75 :: v_dual_mul_f32 v75, s4, v76
	v_dual_mul_f32 v76, s4, v77 :: v_dual_mul_f32 v129, s4, v78
	v_dual_mul_f32 v130, s4, v79 :: v_dual_mul_f32 v131, s4, v80
	v_dual_mul_f32 v81, s4, v81 :: v_dual_mul_f32 v82, s4, v82
	v_dual_mul_f32 v83, s4, v83 :: v_dual_mul_f32 v84, s4, v84
	v_dual_mul_f32 v85, s4, v85 :: v_dual_mul_f32 v86, s4, v86
	v_dual_mul_f32 v87, s4, v87 :: v_dual_mul_f32 v88, s4, v88
	v_dual_mul_f32 v89, s4, v89 :: v_dual_mul_f32 v90, s4, v90
	v_dual_mul_f32 v91, s4, v91 :: v_dual_mul_f32 v92, s4, v92
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v69, s84
	v_cndmask_b32_e64 v79, 0xff800000, v74, s30
	v_cndmask_b32_e64 v78, 0xff800000, v75, s96
	v_cndmask_b32_e64 v77, 0xff800000, v76, s104
	v_cndmask_b32_e64 v76, 0xff800000, v129, vcc_hi
	v_cndmask_b32_e64 v75, 0xff800000, v130, s7
	v_cndmask_b32_e64 v74, 0xff800000, v131, s95
	v_cndmask_b32_e64 v190, 0xff800000, v81, s5
	v_cndmask_b32_e64 v189, 0xff800000, v82, s23
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v132, s4, v93 :: v_dual_mul_f32 v133, s4, v94
	v_dual_mul_f32 v134, s4, v95 :: v_dual_mul_f32 v135, s4, v96
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v80, v79, v78
	v_max3_f32 v81, v77, v76, v75
	v_max3_f32 v82, v74, v190, v189
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v192, 0xff800000, v83, s22
	v_cndmask_b32_e64 v191, 0xff800000, v84, s87
	v_cndmask_b32_e64 v96, 0xff800000, v85, s20
	v_cndmask_b32_e64 v95, 0xff800000, v86, s86
	v_cndmask_b32_e64 v94, 0xff800000, v87, s18
	v_cndmask_b32_e64 v93, 0xff800000, v88, s85
	v_cndmask_b32_e64 v88, 0xff800000, v89, s16
	v_cndmask_b32_e64 v87, 0xff800000, v90, s15
	v_cndmask_b32_e64 v84, 0xff800000, v91, s14
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v65, s4, v65 :: v_dual_mul_f32 v66, s4, v66
	v_dual_mul_f32 v70, s4, v70 :: v_dual_mul_f32 v73, s4, v73
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v81, v69, v81, v82
	v_max3_f32 v69, v192, v191, v96
	v_max3_f32 v82, v95, v94, v93
	v_max3_f32 v83, v88, v87, v84
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v65, s69
	v_cndmask_b32_e64 v66, 0xff800000, v66, s70
	v_cndmask_b32_e64 v67, 0xff800000, v67, s33
	v_cndmask_b32_e64 v70, 0xff800000, v70, s36
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v90, v69, v82, v83
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v68, s37
	v_cndmask_b32_e64 v68, 0xff800000, v128, s38
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v82, v65, v66
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s35
	v_cndmask_b32_e64 v72, 0xff800000, v72, s34
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v83, v67, v69, v70
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v195, 0xff800000, v73, s31
	v_cndmask_b32_e64 v89, 0xff800000, v92, s13
	v_cndmask_b32_e64 v85, 0xff800000, v132, s97
	s_mov_b32 s0, s6
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v82, v82, v68, v83
	v_max3_f32 v73, v71, v72, v195
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v83, 0xff800000, v135, s82
	v_cndmask_b32_e64 v86, 0xff800000, v133, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v92.h, 0
	v_readlane_b32 s24, v254, 22
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v82, v73, v81
.Ltmp14:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v82, 0xff800000, v134, s83
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v81, v89, v85
	s_mul_i32 s12, s92, 10
	v_mad_u64_u32 v[128:129], null, s24, s92, v[124:125]
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v91, v82, v83
	s_mul_i32 s40, s92, 28
	s_mul_i32 s43, s92, 36
	s_mul_i32 s39, s92, 26
	s_mul_i32 s45, s92, 40
	v_max3_f32 v81, v81, v86, v91
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp16:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v132, v128, s78, 1
	v_add_lshl_u32 v130, v128, s77, 1
	v_add_lshl_u32 v129, v128, s76, 1
	v_add_lshl_u32 v136, v128, s79, 1
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v73, v90, v81
.Ltmp18:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v133, v128, s12, 1
	v_add_lshl_u32 v142, v128, s40, 1
	v_add_lshl_u32 v200, v128, s80, 1
	v_add_lshl_u32 v202, v128, s43, 1
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v81, v73, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v141, v128, s39, 1
	v_add_lshl_u32 v204, v128, s45, 1
	s_mul_i32 s42, s92, 34
	s_mul_i32 s47, s92, 44
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v81, v188, v73, v81
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v201, v128, s42, 1
	v_add_lshl_u32 v206, v128, s47, 1
	s_mul_i32 s44, s92, 38
	s_mul_i32 s49, s92, 48
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v68, v81
	v_sub_f32_e32 v67, v67, v81
	v_sub_f32_e32 v71, v71, v81
	v_sub_f32_e32 v72, v72, v81
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v203, v128, s44, 1
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v208, v128, s49, 1
	s_mul_i32 s46, s92, 42
	s_mul_i32 s51, s92, 52
	v_add_lshl_u32 v205, v128, s46, 1
	v_add_lshl_u32 v210, v128, s51, 1
	s_mul_i32 s50, s92, 50
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v193, 0, v68, s38
	v_cndmask_b32_e64 v194, 0, v67, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.h, v92.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v198, 0, v71, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.h, v92.h
	v_mov_b16_e64 v67.l, v193.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v66, v81
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v199, 0, v72, s34
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v71.l, v198.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v70, v70, v81 :: v_dual_and_b32 v67, 1, v67
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	s_mul_i32 s33, s92, 12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v71, 1, v71
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v193, v67, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v134, v128, s33, 1
	s_mul_i32 s38, s92, 24
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v71, v198, v71, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v140, v128, s38, 1
	s_mul_i32 s34, s92, 14
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v66, s70
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v135, v128, s34, 1
	s_mul_i32 s35, s92, 18
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v197, 0, v70, s36
	s_mul_i32 s36, s92, 20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v92.l, v90.h
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v138, v128, s36, 1
	v_add_lshl_u32 v137, v128, s35, 1
	v_add_lshl_u32 v209, v128, s50, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v92
	v_mov_b16_e64 v92.l, v194.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v65, v81
	s_mul_i32 s53, s92, 56
	s_mul_i32 s52, s92, 54
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v90, v66, 0x7fff
	v_and_b32_e32 v68, 1, v92
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v92.l, v197.h
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v212, v128, s53, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v68, v194, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_and_b32_e32 v70, 1, v92
	v_mov_b16_e64 v92.l, v199.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v81
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v211, v128, s52, 1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v65, s69
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.h, v92.h
	v_and_b32_e32 v72, 1, v92
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_mov_b16_e32 v65.l, v91.h
	v_cmp_o_f32_e64 s3, v91, v91
	v_add3_u32 v70, v197, v70, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_add3_u32 v72, v199, v72, 0x7fff
	v_and_b32_e32 v65, 1, v65
	s_mul_i32 s55, s92, 60
	s_mul_i32 s54, s92, 58
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v196, 0, v69, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v69.h, v92.h
	v_add3_u32 v65, v91, v65, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v70.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_mov_b16_e64 v69.l, v196.h
	s_mul_i32 s37, s92, 22
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_cmp_o_f32_e64 s3, v193, v193
	v_cndmask_b16 v72.h, 0x7fff, v72.h, vcc_lo
	v_and_b32_e32 v69, 1, v69
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v139, v128, s37, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v73, v66, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	v_cmp_o_f32_e64 s3, v196, v196
	v_add3_u32 v69, v196, v69, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v214, v128, s55, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v65, v73, v66, v125
	v_perm_b32 v66, v73, v66, v174
	v_permlanex16_b32 v73, v68, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s3
	v_cmp_o_f32_e64 s3, v198, v198
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v213, v128, s54, 1
	s_mul_i32 s41, s92, 30
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v67, v73, v68, v125
	v_perm_b32 v68, v73, v68, v174
	v_permlanex16_b32 v73, v70, s81, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s3
	s_mul_i32 s3, s92, 6
	s_mul_i32 s48, s92, 46
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v131, v128, s3, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v69, v73, v70, v125
	v_perm_b32 v70, v73, v70, v174
	v_permlanex16_b32 v73, v72, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 696 26                        ; attention.py:696:26
	v_readlane_b32 s3, v254, 23
	s_mul_i32 s56, s92, 62
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v143, v128, s41, 1
	v_add_lshl_u32 v207, v128, s48, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v73, v72, v125
	v_perm_b32 v72, v73, v72, v174
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v73, 1, v128
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 24
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v128, v128, s56, 1
	v_add_nc_u32_e32 v215, 0, v0
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s98, s98, 64
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 25
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 26
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 27
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v131, 0x80000000, v131, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 28
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 29
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 30
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v134, 0x80000000, v134, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v254, 31
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 0
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v138, 0x80000000, v138, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 3
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 4
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	s_clause 0x6
	buffer_load_u16 v73, v73, s[100:103], 0 offen
	buffer_load_u16 v129, v129, s[100:103], 0 offen
	buffer_load_u16 v130, v130, s[100:103], 0 offen
	buffer_load_u16 v131, v131, s[100:103], 0 offen
	buffer_load_u16 v132, v132, s[100:103], 0 offen
	buffer_load_u16 v133, v133, s[100:103], 0 offen
	buffer_load_u16 v134, v134, s[100:103], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 5
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 7
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 8
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v200, 0x80000000, v200, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 9
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v201, 0x80000000, v201, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 10
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v202, 0x80000000, v202, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 11
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v203, 0x80000000, v203, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 12
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v204, 0x80000000, v204, vcc_lo
	s_clause 0x6
	buffer_load_u16 v136, v136, s[100:103], 0 offen
	buffer_load_u16 v137, v137, s[100:103], 0 offen
	buffer_load_u16 v138, v138, s[100:103], 0 offen
	buffer_load_u16 v139, v139, s[100:103], 0 offen
	buffer_load_u16 v140, v140, s[100:103], 0 offen
	buffer_load_u16 v141, v141, s[100:103], 0 offen
	buffer_load_u16 v142, v142, s[100:103], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 13
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v205, 0x80000000, v205, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 15
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v206, 0x80000000, v206, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 16
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v208, 0x80000000, v208, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 19
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v209, 0x80000000, v209, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 21
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v210, 0x80000000, v210, vcc_lo
	s_clause 0x6
	buffer_load_u16 v200, v200, s[100:103], 0 offen
	buffer_load_u16 v201, v201, s[100:103], 0 offen
	buffer_load_u16 v202, v202, s[100:103], 0 offen
	buffer_load_u16 v203, v203, s[100:103], 0 offen
	buffer_load_u16 v204, v204, s[100:103], 0 offen
	buffer_load_u16 v205, v205, s[100:103], 0 offen
	buffer_load_u16 v206, v206, s[100:103], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 17
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v211, 0x80000000, v211, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 18
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v212, 0x80000000, v212, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 20
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v213, 0x80000000, v213, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 6
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v214, 0x80000000, v214, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 14
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	v_readlane_b32 s3, v255, 22
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v207, 0x80000000, v207, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s3
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s98, s73
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	s_clause 0xa
	buffer_load_u16 v208, v208, s[100:103], 0 offen
	buffer_load_u16 v209, v209, s[100:103], 0 offen
	buffer_load_u16 v210, v210, s[100:103], 0 offen
	buffer_load_u16 v211, v211, s[100:103], 0 offen
	buffer_load_u16 v212, v212, s[100:103], 0 offen
	buffer_load_u16 v213, v213, s[100:103], 0 offen
	buffer_load_u16 v214, v214, s[100:103], 0 offen
	buffer_load_u16 v135, v135, s[100:103], 0 offen
	buffer_load_u16 v143, v143, s[100:103], 0 offen
	buffer_load_u16 v207, v207, s[100:103], 0 offen
	buffer_load_u16 v128, v128, s[100:103], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v188
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v215, v73
	s_waitcnt vmcnt(30)
	ds_store_b16 v215, v129 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b16 v215, v130 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v215, v131 offset:768
	s_waitcnt vmcnt(27)
	ds_store_b16 v215, v132 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b16 v215, v133 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b16 v215, v134 offset:1536
	s_waitcnt vmcnt(24)
	ds_store_b16 v215, v136 offset:2048
	s_waitcnt vmcnt(23)
	ds_store_b16 v215, v137 offset:2304
	s_waitcnt vmcnt(22)
	ds_store_b16 v215, v138 offset:2560
	s_waitcnt vmcnt(21)
	ds_store_b16 v215, v139 offset:2816
	s_waitcnt vmcnt(20)
	ds_store_b16 v215, v140 offset:3072
	s_waitcnt vmcnt(19)
	ds_store_b16 v215, v141 offset:3328
	s_waitcnt vmcnt(18)
	ds_store_b16 v215, v142 offset:3584
	s_waitcnt vmcnt(17)
	ds_store_b16 v215, v200 offset:4096
	s_waitcnt vmcnt(16)
	ds_store_b16 v215, v201 offset:4352
	s_waitcnt vmcnt(15)
	ds_store_b16 v215, v202 offset:4608
	s_waitcnt vmcnt(14)
	ds_store_b16 v215, v203 offset:4864
	s_waitcnt vmcnt(13)
	ds_store_b16 v215, v204 offset:5120
	s_waitcnt vmcnt(12)
	ds_store_b16 v215, v205 offset:5376
	s_waitcnt vmcnt(11)
	ds_store_b16 v215, v206 offset:5632
	s_waitcnt vmcnt(10)
	ds_store_b16 v215, v208 offset:6144
	s_waitcnt vmcnt(9)
	ds_store_b16 v215, v209 offset:6400
	s_waitcnt vmcnt(8)
	ds_store_b16 v215, v210 offset:6656
	s_waitcnt vmcnt(7)
	ds_store_b16 v215, v211 offset:6912
	s_waitcnt vmcnt(6)
	ds_store_b16 v215, v212 offset:7168
	s_waitcnt vmcnt(5)
	ds_store_b16 v215, v213 offset:7424
	s_waitcnt vmcnt(4)
	ds_store_b16 v215, v214 offset:7680
	s_waitcnt vmcnt(3)
	ds_store_b16 v183, v135
	s_waitcnt vmcnt(2)
	ds_store_b16 v184, v143
	s_waitcnt vmcnt(1)
	ds_store_b16 v185, v207
	s_waitcnt vmcnt(0)
	ds_store_b16 v186, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v204, v175 offset:1024
	ds_load_u16_d16 v203, v175 offset:768
	ds_load_u16_d16 v211, v175 offset:832
	ds_load_u16_d16 v212, v175 offset:1088
	ds_load_u16_d16 v205, v175 offset:1280
	ds_load_u16_d16 v213, v175 offset:1344
	ds_load_u16_d16 v206, v175 offset:1536
	ds_load_u16_d16 v214, v175 offset:1600
	ds_load_u16_d16 v207, v175 offset:1792
	ds_load_u16_d16 v200, v175
	ds_load_u16_d16 v201, v175 offset:256
	ds_load_u16_d16 v210, v175 offset:576
	ds_load_u16_d16 v208, v175 offset:64
	ds_load_u16_d16 v209, v175 offset:320
	ds_load_u16_d16 v202, v175 offset:512
	ds_load_u16_d16 v217, v175 offset:352
	ds_load_u16_d16 v225, v175 offset:288
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v217, v175 offset:480
	ds_load_u16_d16 v216, v175 offset:96
	ds_load_u16_d16 v224, v175 offset:32
	ds_load_u16_d16_hi v200, v175 offset:128
	ds_load_u16_d16_hi v201, v175 offset:384
	ds_load_u16_d16_hi v202, v175 offset:640
	ds_load_u16_d16_hi v210, v175 offset:704
	ds_load_u16_d16_hi v203, v175 offset:896
	ds_load_u16_d16_hi v211, v175 offset:960
	ds_load_u16_d16_hi v204, v175 offset:1152
	ds_load_u16_d16_hi v212, v175 offset:1216
	ds_load_u16_d16_hi v205, v175 offset:1408
	ds_load_u16_d16_hi v213, v175 offset:1472
	ds_load_u16_d16_hi v206, v175 offset:1664
	ds_load_u16_d16 v215, v175 offset:1856
	ds_load_u16_d16_hi v214, v175 offset:1728
	ds_load_u16_d16_hi v207, v175 offset:1920
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v188, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v188, 0, v73, vcc_lo
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v224, v175 offset:160
	ds_load_u16_d16_hi v208, v175 offset:192
	ds_load_u16_d16_hi v216, v175 offset:224
	ds_load_u16_d16 v226, v175 offset:544
	ds_load_u16_d16_hi v225, v175 offset:416
	ds_load_u16_d16_hi v209, v175 offset:448
	ds_load_u16_d16 v219, v175 offset:864
	ds_load_u16_d16 v220, v175 offset:1120
	ds_load_u16_d16 v221, v175 offset:1376
	ds_load_u16_d16 v222, v175 offset:1632
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v215, v175 offset:1984
	ds_load_u16_d16 v232, v175 offset:2048
	ds_load_u16_d16 v73, v175 offset:2112
	ds_load_u16_d16 v223, v175 offset:1888
	ds_load_u16_d16 v218, v175 offset:608
	ds_load_u16_d16 v227, v175 offset:800
	ds_load_u16_d16 v228, v175 offset:1056
	ds_load_u16_d16 v229, v175 offset:1312
	ds_load_u16_d16 v230, v175 offset:1568
	ds_load_u16_d16 v231, v175 offset:1824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v226, v175 offset:672
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v188
	v_mul_f32_e32 v26, v26, v188
	v_mul_f32_e32 v27, v27, v188
	v_mul_f32_e32 v28, v28, v188
	v_mul_f32_e32 v29, v29, v188
	v_mul_f32_e32 v30, v30, v188
	v_mul_f32_e32 v31, v31, v188
	v_mul_f32_e32 v32, v32, v188
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v218, v175 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v227, v175 offset:928
	ds_load_u16_d16_hi v219, v175 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v228, v175 offset:1184
	ds_load_u16_d16_hi v220, v175 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v229, v175 offset:1440
	ds_load_u16_d16_hi v221, v175 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v230, v175 offset:1696
	ds_load_u16_d16_hi v222, v175 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v231, v175 offset:1952
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[200:207], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v223, v175 offset:2016
	ds_load_u16_d16 v233, v175 offset:2304
	ds_load_u16_d16_hi v232, v175 offset:2176
	ds_load_u16_d16 v207, v175 offset:2080
	ds_load_u16_d16 v240, v175 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v188
	v_mul_f32_e32 v18, v18, v188
	v_mul_f32_e32 v19, v19, v188
	v_mul_f32_e32 v20, v20, v188
	v_mul_f32_e32 v21, v21, v188
	v_mul_f32_e32 v22, v22, v188
	v_mul_f32_e32 v23, v23, v188
	v_mul_f32_e32 v24, v24, v188
	v_mul_f32_e32 v9, v9, v188
	v_mul_f32_e32 v10, v10, v188
	v_mul_f32_e32 v11, v11, v188
	v_mul_f32_e32 v12, v12, v188
	v_mul_f32_e32 v13, v13, v188
	v_mul_f32_e32 v14, v14, v188
	v_mul_f32_e32 v15, v15, v188
	v_mul_f32_e32 v16, v16, v188
	v_mul_f32_e32 v1, v1, v188
	v_mul_f32_e32 v2, v2, v188
	v_mul_f32_e32 v3, v3, v188
	v_mul_f32_e32 v4, v4, v188
	v_mul_f32_e32 v5, v5, v188
	v_mul_f32_e32 v6, v6, v188
	v_mul_f32_e32 v7, v7, v188
	v_mul_f32_e32 v8, v8, v188
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[224:231], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[208:215], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v73, v175 offset:2240
	ds_load_u16_d16 v208, v175 offset:2336
	ds_load_u16_d16 v209, v175 offset:2592
	ds_load_u16_d16 v210, v175 offset:2848
	ds_load_u16_d16 v211, v175 offset:3104
	ds_load_u16_d16 v212, v175 offset:3360
	ds_load_u16_d16 v213, v175 offset:3616
	ds_load_u16_d16 v214, v175 offset:3872
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v207, v175 offset:2208
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v240, v175 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[216:223], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v195, v81
	v_sub_f32_e32 v66, v80, v81
	v_sub_f32_e32 v67, v189, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v67, v67
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v195, 0, v65, s31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v200, 0, v66, s84
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v65.h, v92.h
	v_mov_b16_e64 v65.l, v195.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v92.l, v200.h
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_cmp_o_f32_e64 s1, v195, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v195, v65, 0x7fff
	v_add3_u32 v66, v200, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v215, v65, v66, v125
	v_perm_b32 v216, v65, v66, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v79, v81
	v_sub_f32_e32 v66, v78, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v201, 0, v65, s30
	v_cndmask_b32_e64 v202, 0, v66, s96
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v65.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v201.h
	v_mov_b16_e64 v92.l, v202.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	v_cmp_o_f32_e64 s1, v201, v201
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v92
	v_add3_u32 v65, v201, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v202, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v217, v65, v66, v125
	v_perm_b32 v218, v65, v66, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v77, v81
	v_sub_f32_e32 v66, v76, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v203, 0, v65, s104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v204, 0, v66, vcc_hi
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v65.h, v92.h
	v_mov_b16_e64 v65.l, v203.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v92.l, v204.h
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_cmp_o_f32_e64 s1, v203, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v203, v65, 0x7fff
	v_add3_u32 v66, v204, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v219, v65, v66, v125
	v_perm_b32 v220, v65, v66, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v75, v81
	v_sub_f32_e32 v66, v74, v81
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v74, v175 offset:2368
	ds_load_u16_d16 v234, v175 offset:2560
	ds_load_u16_d16 v75, v175 offset:2624
	ds_load_u16_d16 v235, v175 offset:2816
	ds_load_u16_d16 v76, v175 offset:2880
	ds_load_u16_d16 v236, v175 offset:3072
	ds_load_u16_d16 v77, v175 offset:3136
	ds_load_u16_d16 v237, v175 offset:3328
	ds_load_u16_d16 v78, v175 offset:3392
	ds_load_u16_d16 v238, v175 offset:3584
	ds_load_u16_d16 v79, v175 offset:3648
	ds_load_u16_d16 v239, v175 offset:3840
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v74, v175 offset:2496
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v234, v175 offset:2688
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v75, v175 offset:2752
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v235, v175 offset:2944
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v76, v175 offset:3008
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v236, v175 offset:3200
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v77, v175 offset:3264
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v237, v175 offset:3456
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v78, v175 offset:3520
	ds_load_u16_d16 v80, v175 offset:3904
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v238, v175 offset:3712
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v79, v175 offset:3776
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v239, v175 offset:3968
	ds_load_u16_d16_hi v233, v175 offset:2432
	ds_load_u16_d16 v241, v175 offset:2400
	ds_load_u16_d16 v242, v175 offset:2656
	ds_load_u16_d16 v243, v175 offset:2912
	ds_load_u16_d16 v244, v175 offset:3168
	ds_load_u16_d16 v245, v175 offset:3424
	ds_load_u16_d16 v246, v175 offset:3680
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v205, 0, v65, s7
	v_cndmask_b32_e64 v206, 0, v66, s95
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v65.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v205.h
	v_mov_b16_e64 v92.l, v206.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_cmp_o_f32_e64 s1, v205, v205
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v92
	v_add3_u32 v65, v205, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v206, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v221, v65, v66, v125
	v_perm_b32 v222, v65, v66, v174
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v80, v175 offset:4032
	ds_load_u16_d16 v223, v175 offset:4096
	ds_load_u16_d16 v65, v175 offset:4160
	ds_load_u16_d16 v247, v175 offset:3936
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v190, v81
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[232:239], v[215:222], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v208, v175 offset:2464
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v241, v175 offset:2528
	ds_load_u16_d16_hi v209, v175 offset:2720
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v242, v175 offset:2784
	ds_load_u16_d16_hi v210, v175 offset:2976
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v243, v175 offset:3040
	ds_load_u16_d16_hi v211, v175 offset:3232
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v244, v175 offset:3296
	ds_load_u16_d16_hi v212, v175 offset:3488
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v245, v175 offset:3552
	ds_load_u16_d16_hi v213, v175 offset:3744
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v246, v175 offset:3808
	ds_load_u16_d16_hi v214, v175 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v247, v175 offset:4064
	ds_load_u16_d16 v224, v175 offset:4352
	ds_load_u16_d16_hi v223, v175 offset:4224
	ds_load_u16_d16 v231, v175 offset:4128
	ds_load_u16_d16 v239, v175 offset:4192
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v65, v175 offset:4288
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[215:222], v[9:16]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v74, 0, v67, s23
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v232, v175 offset:4384
	ds_load_u16_d16 v233, v175 offset:4640
	ds_load_u16_d16 v234, v175 offset:4896
	ds_load_u16_d16 v235, v175 offset:5152
	ds_load_u16_d16 v236, v175 offset:5408
	ds_load_u16_d16 v237, v175 offset:5664
	ds_load_u16_d16 v238, v175 offset:5920
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v231, v175 offset:4256
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v239, v175 offset:4320
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v66, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v92.h
	v_mov_b16_e32 v92.l, v74.h
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[207:214], v[215:222], v[17:24]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v73.h
	v_cmp_o_f32_e64 s1, v73, v73
	v_and_b32_e32 v67, 1, v92
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[240:247], v[215:222], v[1:8]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v129, v175 offset:6464
	ds_load_u16_d16 v217, v175 offset:6656
	ds_load_u16_d16 v130, v175 offset:6720
	ds_load_u16_d16 v218, v175 offset:6912
	ds_load_u16_d16 v131, v175 offset:6976
	ds_load_u16_d16 v219, v175 offset:7168
	ds_load_u16_d16 v132, v175 offset:7232
	ds_load_u16_d16 v220, v175 offset:7424
	ds_load_u16_d16 v133, v175 offset:7488
	ds_load_u16_d16 v221, v175 offset:7680
	ds_load_u16_d16 v134, v175 offset:7744
	ds_load_u16_d16 v222, v175 offset:7936
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v67, v74, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v73, v66, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s1
	v_permlanex16_b32 v66, v67, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v207, v66, v67, v125
	v_perm_b32 v208, v66, v67, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v192, v81
	v_sub_f32_e32 v67, v191, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v67, v67
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v66, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0, v67, s87
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v66.h, v92.h
	v_mov_b16_e32 v66.l, v75.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v92.l, v76.h
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_cmp_o_f32_e64 s1, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v67, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v75, v66, 0x7fff
	v_add3_u32 v67, v76, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s1
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v67, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v209, v66, v67, v125
	v_perm_b32 v210, v66, v67, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v96, v81
	v_sub_f32_e32 v67, v95, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v66, s20
	v_cndmask_b32_e64 v78, 0, v67, s86
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v66.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v66.l, v77.h
	v_mov_b16_e32 v92.l, v78.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_cmp_o_f32_e64 s1, v77, v77
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 1, v92
	v_add3_u32 v66, v77, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v78, v67, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	v_permlanex16_b32 v66, v67, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v211, v66, v67, v125
	v_perm_b32 v212, v66, v67, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v94, v81
	v_sub_f32_e32 v67, v93, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v67, v67
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v66, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v80, 0, v67, s85
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v66.h, v92.h
	v_mov_b16_e32 v66.l, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v92.l, v80.h
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cmp_o_f32_e64 s1, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v67, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v79, v66, 0x7fff
	v_add3_u32 v67, v80, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s1
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v67, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v213, v66, v67, v125
	v_perm_b32 v214, v66, v67, v174
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v66, v175 offset:4416
	ds_load_u16_d16 v225, v175 offset:4608
	ds_load_u16_d16 v67, v175 offset:4672
	ds_load_u16_d16 v226, v175 offset:4864
	ds_load_u16_d16 v68, v175 offset:4928
	ds_load_u16_d16 v227, v175 offset:5120
	ds_load_u16_d16 v69, v175 offset:5184
	ds_load_u16_d16 v228, v175 offset:5376
	ds_load_u16_d16 v70, v175 offset:5440
	ds_load_u16_d16 v229, v175 offset:5632
	ds_load_u16_d16 v71, v175 offset:5696
	ds_load_u16_d16 v230, v175 offset:5888
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v66, v175 offset:4544
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v225, v175 offset:4736
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v67, v175 offset:4800
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v226, v175 offset:4992
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v68, v175 offset:5056
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v227, v175 offset:5248
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v69, v175 offset:5312
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v228, v175 offset:5504
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v70, v175 offset:5568
	ds_load_u16_d16 v72, v175 offset:5952
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v229, v175 offset:5760
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v71, v175 offset:5824
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v230, v175 offset:6016
	ds_load_u16_d16_hi v224, v175 offset:4480
	ds_load_u16_d16 v240, v175 offset:4448
	ds_load_u16_d16 v241, v175 offset:4704
	ds_load_u16_d16 v242, v175 offset:4960
	ds_load_u16_d16 v243, v175 offset:5216
	ds_load_u16_d16 v244, v175 offset:5472
	ds_load_u16_d16 v245, v175 offset:5728
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v72, v175 offset:6080
	ds_load_u16_d16 v215, v175 offset:6144
	ds_load_u16_d16 v128, v175 offset:6208
	ds_load_u16_d16 v246, v175 offset:5984
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[223:230], v[207:214], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v232, v175 offset:4512
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v240, v175 offset:4576
	ds_load_u16_d16_hi v233, v175 offset:4768
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v241, v175 offset:4832
	ds_load_u16_d16_hi v234, v175 offset:5024
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v242, v175 offset:5088
	ds_load_u16_d16_hi v235, v175 offset:5280
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v243, v175 offset:5344
	ds_load_u16_d16_hi v236, v175 offset:5536
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v244, v175 offset:5600
	ds_load_u16_d16_hi v237, v175 offset:5792
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v245, v175 offset:5856
	ds_load_u16_d16_hi v238, v175 offset:6048
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v246, v175 offset:6112
	ds_load_u16_d16 v216, v175 offset:6400
	ds_load_u16_d16_hi v215, v175 offset:6272
	ds_load_u16_d16 v223, v175 offset:6176
	ds_load_u16_d16 v136, v175 offset:6240
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[207:214], v[9:16]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v88, v81
	v_sub_f32_e32 v66, v87, v81
	v_sub_f32_e32 v68, v89, v81
	v_sub_f32_e32 v70, v86, v81
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v129, v175 offset:6592
	ds_load_u16_d16_hi v217, v175 offset:6784
	ds_load_u16_d16_hi v130, v175 offset:6848
	ds_load_u16_d16_hi v218, v175 offset:7040
	ds_load_u16_d16_hi v131, v175 offset:7104
	ds_load_u16_d16_hi v219, v175 offset:7296
	ds_load_u16_d16_hi v132, v175 offset:7360
	ds_load_u16_d16_hi v220, v175 offset:7552
	ds_load_u16_d16_hi v133, v175 offset:7616
	ds_load_u16_d16_hi v221, v175 offset:7808
	ds_load_u16_d16 v135, v175 offset:8000
	ds_load_u16_d16_hi v134, v175 offset:7872
	ds_load_u16_d16_hi v222, v175 offset:8064
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v216, v175 offset:6528
	ds_load_u16_d16 v137, v175 offset:6496
	ds_load_u16_d16 v138, v175 offset:6752
	ds_load_u16_d16 v139, v175 offset:7008
	ds_load_u16_d16 v140, v175 offset:7264
	ds_load_u16_d16 v141, v175 offset:7520
	ds_load_u16_d16 v142, v175 offset:7776
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v72, v83, v81
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v135, v175 offset:8128
	ds_load_u16_d16 v143, v175 offset:8032
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v65, s16
	v_cndmask_b32_e64 v88, 0, v66, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.h, v92.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v68, s13
	v_cndmask_b32_e64 v86, 0, v70, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.l, v87.h
	v_mov_b16_e32 v92.l, v88.h
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_cmp_o_f32_e64 s1, v87, v87
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v92
	v_mov_b16_e32 v92.l, v89.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v224, v175 offset:6432
	ds_load_u16_d16 v225, v175 offset:6688
	ds_load_u16_d16 v226, v175 offset:6944
	ds_load_u16_d16 v227, v175 offset:7200
	ds_load_u16_d16 v228, v175 offset:7456
	ds_load_u16_d16 v229, v175 offset:7712
	ds_load_u16_d16 v230, v175 offset:7968
	ds_load_u16_d16_hi v223, v175 offset:6304
	ds_load_u16_d16_hi v136, v175 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v224, v175 offset:6560
	ds_load_u16_d16_hi v137, v175 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v225, v175 offset:6816
	ds_load_u16_d16_hi v138, v175 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v226, v175 offset:7072
	ds_load_u16_d16_hi v139, v175 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v227, v175 offset:7328
	ds_load_u16_d16_hi v140, v175 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v228, v175 offset:7584
	ds_load_u16_d16_hi v141, v175 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v229, v175 offset:7840
	ds_load_u16_d16_hi v142, v175 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v230, v175 offset:8096
	ds_load_u16_d16_hi v143, v175 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v87, v65, 0x7fff
	v_add3_u32 v66, v88, v66, 0x7fff
	v_and_b32_e32 v68, 1, v92
	v_mov_b16_e32 v92.l, v86.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v72, s82
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v68, v89, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_and_b32_e32 v70, 1, v92
	v_mov_b16_e32 v92.l, v83.h
	v_permlanex16_b32 v67, v66, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v128, v175 offset:6336
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v70, v86, v70, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_perm_b32 v65, v67, v66, v125
	v_perm_b32 v66, v67, v66, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v67, v84, v81 :: v_dual_and_b32 v72, 1, v92
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[231:238], v[207:214], v[17:24]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 690 49 is_stmt 1              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v72, v83, v72, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[239:246], v[207:214], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 1              ; attention.py:690:33
	v_cndmask_b32_e64 v84, 0, v67, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.h, v92.h
	v_mov_b16_e32 v67.l, v84.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v84, v84
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v84, v67, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v68, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v69, v68, v125
	v_perm_b32 v68, v69, v68, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v85, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, 0, v69, s97
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v69.h, v92.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v69.l, v85.h
	v_cmp_o_f32_e64 s1, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v85, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s1
	v_permlanex16_b32 v71, v70, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v71, v70, v125
	v_perm_b32 v70, v71, v70, v174
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v82, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v71, s83
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.h, v92.h
	v_mov_b16_e32 v71.l, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v82, v82
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v82, v71, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v92, v72, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v92, v72, v125
	v_perm_b32 v72, v92, v72, v174
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[215:222], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[223:230], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[128:135], v[65:72], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[136:143], v[65:72], v[1:8]
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v91, v90
	v_dual_add_f32 v66, v193, v194 :: v_dual_add_f32 v67, v196, v197
	v_dual_add_f32 v68, v198, v199 :: v_dual_add_f32 v69, v195, v200
	v_add_f32_e32 v70, v201, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v65, v65, v66
	v_add_f32_e32 v72, v77, v78
	v_add_f32_e32 v66, v67, v68
	v_add_f32_e32 v68, v203, v204
	v_dual_add_f32 v71, v75, v76 :: v_dual_add_f32 v76, v85, v86
	v_add_f32_e32 v67, v69, v70
	v_add_f32_e32 v69, v205, v206
	v_add_f32_e32 v70, v73, v74
	v_dual_add_f32 v74, v87, v88 :: v_dual_add_f32 v77, v82, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v73, v79, v80 :: v_dual_add_f32 v68, v68, v69
	v_add_f32_e32 v75, v84, v89
	v_add_f32_e32 v69, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v65, v65, v66 :: v_dual_add_f32 v70, v72, v73
	v_add_f32_e32 v72, v76, v77
	v_dual_add_f32 v66, v67, v68 :: v_dual_add_f32 v71, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v65, v65, v66 :: v_dual_add_f32 v68, v71, v72
	v_add_f32_e32 v67, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v66, v67, v68
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v66, v65, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v66, v187, v188
	v_dual_mov_b32 v188, v81 :: v_dual_mov_b32 v187, v66
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v127
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s1, s98, s75
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v213, s98, v169
	v_writelane_b32 v254, s1, 22
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s1, s1, s71
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s30, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 2, v127
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v66, s1, v162, 1
	v_add_lshl_u32 v67, s1, v163, 1
	v_add_lshl_u32 v68, s1, v99, 1
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s30
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v69, s1, v159, 1
	v_add_lshl_u32 v70, s1, v100, 1
	v_add_lshl_u32 v71, s1, v101, 1
	v_add_lshl_u32 v72, s1, v102, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s31, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 4, v127
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v73, s1, v160, 1
	v_add_lshl_u32 v74, s1, v103, 1
	v_add_lshl_u32 v75, s1, v104, 1
	v_add_lshl_u32 v76, s1, v105, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v77, s1, v98, 1
	v_add_lshl_u32 v78, s1, v106, 1
	v_add_lshl_u32 v79, s1, v107, 1
	v_add_lshl_u32 v80, s1, v108, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s33, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 6, v127
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v81, s1, v161, 1
	v_add_lshl_u32 v82, s1, v109, 1
	v_add_lshl_u32 v83, s1, v110, 1
	v_add_lshl_u32 v84, s1, v111, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v85, s1, v112, 1
	v_add_lshl_u32 v86, s1, v113, 1
	v_add_lshl_u32 v87, s1, v114, 1
	v_add_lshl_u32 v88, s1, v115, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s34, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 8, v127
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v89, s1, v116, 1
	v_add_lshl_u32 v90, s1, v117, 1
	v_add_lshl_u32 v91, s1, v118, 1
	v_add_lshl_u32 v92, s1, v119, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v93, s1, v120, 1
	v_add_lshl_u32 v94, s1, v121, 1
	v_add_lshl_u32 v95, s1, v122, 1
	v_add_lshl_u32 v96, s1, v123, 1
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 10, v127
	v_writelane_b32 v254, s30, 23
	v_or_b32_e32 v214, 2, v213
	v_or_b32_e32 v207, 6, v213
	v_or_b32_e32 v215, 4, v213
	v_or_b32_e32 v65, s98, v65
	v_writelane_b32 v254, s31, 24
	v_or_b32_e32 v208, 10, v213
	v_or_b32_e32 v216, 8, v213
	v_or_b32_e32 v209, 14, v213
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s36, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v248
	v_writelane_b32 v254, s33, 25
	v_or_b32_e32 v217, 12, v213
	v_or_b32_e32 v210, 18, v213
	v_or_b32_e32 v218, 16, v213
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s37, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v249
	v_writelane_b32 v254, s34, 26
	v_or_b32_e32 v211, 22, v213
	v_or_b32_e32 v219, 20, v213
	v_or_b32_e32 v212, 26, v213
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s35, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 16, v127
	v_writelane_b32 v254, s38, 27
	v_or_b32_e32 v220, 24, v213
	v_or_b32_e32 v206, 28, v213
	v_or_b32_e32 v205, 52, v213
	v_or_b32_e32 v65, s98, v65
	v_writelane_b32 v254, s36, 28
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s41, s99, v208
	v_cmp_gt_i32_e64 s42, s99, v216
	v_cmp_gt_i32_e64 s43, s99, v209
	v_cmp_gt_i32_e64 s29, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v250
	v_writelane_b32 v254, s37, 29
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s44, s99, v217
	v_cmp_gt_i32_e64 s45, s99, v210
	v_cmp_gt_i32_e64 s46, s99, v218
	v_cmp_gt_i32_e64 s27, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v251
	v_writelane_b32 v254, s35, 30
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s47, s99, v211
	v_cmp_gt_i32_e64 s48, s99, v219
	v_writelane_b32 v255, s27, 0
	v_cmp_gt_i32_e64 s28, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v252
	v_writelane_b32 v254, s29, 31
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s49, s99, v212
	v_cmp_gt_i32_e64 s50, s99, v220
	v_writelane_b32 v255, s28, 1
	v_cmp_gt_i32_e64 s25, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 24, v127
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s52, s99, v206
	v_cmp_gt_i32_e64 s64, s99, v205
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s84, s93, s45
	v_writelane_b32 v255, s25, 2
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v65
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s30, s93, s48
	s_and_b32 s96, s93, s47
	s_and_b32 s104, s93, s50
	s_and_b32 vcc_hi, s93, s49
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s26, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s26, 3
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s23, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s23, 4
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s24, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s24, 5
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s6, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, 32, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s6, 6
	v_or_b32_e32 v65, s98, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s22, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v144
	v_writelane_b32 v255, s22, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s20, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v145
	v_writelane_b32 v255, s20, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s21, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v146
	v_writelane_b32 v255, s21, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s18, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v147
	v_writelane_b32 v255, s18, 10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s19, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v148
	v_writelane_b32 v255, s19, 11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s16, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v149
	v_writelane_b32 v255, s16, 12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s17, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v150
	v_writelane_b32 v255, s17, 13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v151
	v_writelane_b32 v255, s3, 14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s15, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v152
	v_writelane_b32 v255, s15, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s13, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v153
	v_writelane_b32 v255, s13, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s14, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v154
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s7, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s12, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v156
	v_writelane_b32 v255, s12, 17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s5, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v157
	v_writelane_b32 v255, s5, 18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s40, s99, v65
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s98, v158
	v_writelane_b32 v255, s14, 19
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s39, s99, v65
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v65, s1, v97, 1
	v_writelane_b32 v255, s40, 20
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s31
	v_writelane_b32 v255, s7, 21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s33
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s31, s93, s46
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s34
	v_writelane_b32 v255, s39, 22
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s38
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s34, s93, s43
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s36
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s36, s93, s41
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s37
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s37, s93, s42
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s35
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s35, s93, s44
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s29
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x7
	buffer_load_u16 v65, v65, s[8:11], 0 offen
	buffer_load_u16 v66, v66, s[8:11], 0 offen
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	buffer_load_u16 v68, v68, s[8:11], 0 offen
	buffer_load_u16 v69, v69, s[8:11], 0 offen
	buffer_load_u16 v70, v70, s[8:11], 0 offen
	buffer_load_u16 v71, v71, s[8:11], 0 offen
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s27
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s28
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s25
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s26
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s23
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s24
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s6
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s22
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	buffer_load_u16 v78, v78, s[8:11], 0 offen
	buffer_load_u16 v79, v79, s[8:11], 0 offen
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s20
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s18
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s19
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s16
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s17
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s3
	.loc	1 660 65 is_stmt 0              ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s99, v214
	.loc	1 658 32 is_stmt 1              ; attention.py:658:32
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s15
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v81, v81, s[8:11], 0 offen
	buffer_load_u16 v82, v82, s[8:11], 0 offen
	buffer_load_u16 v83, v83, s[8:11], 0 offen
	buffer_load_u16 v85, v85, s[8:11], 0 offen
	buffer_load_u16 v86, v86, s[8:11], 0 offen
	buffer_load_u16 v87, v87, s[8:11], 0 offen
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s13
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s70, s93, s3
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s5
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s14
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_u16 v89, v89, s[8:11], 0 offen
	buffer_load_u16 v90, v90, s[8:11], 0 offen
	buffer_load_u16 v91, v91, s[8:11], 0 offen
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s40
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s12, v254, 5
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s7
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_u16 v93, v93, s[8:11], 0 offen
	buffer_load_u16 v94, v94, s[8:11], 0 offen
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s94, s39
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s19, v254, 12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	s_clause 0x5
	buffer_load_u16 v80, v80, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	buffer_load_u16 v88, v88, s[8:11], 0 offen
	buffer_load_u16 v84, v84, s[8:11], 0 offen
	buffer_load_u16 v96, v96, s[8:11], 0 offen
	buffer_load_u16 v95, v95, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s13, v254, 6
	v_readlane_b32 s14, v254, 7
	v_readlane_b32 s15, v254, 8
	v_readlane_b32 s16, v254, 9
	v_readlane_b32 s17, v254, 10
	v_readlane_b32 s18, v254, 11
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e32 vcc_lo, s99, v213
	v_cmp_gt_i32_e64 s39, s99, v207
	v_cmp_gt_i32_e64 s40, s99, v215
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s7, s93, s52
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v164, v65
	s_waitcnt vmcnt(27)
	ds_store_b16 v164, v69 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v164, v73 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v164, v77 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v164, v81 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v164, v85 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v164, v89 offset:6144
	s_waitcnt vmcnt(9)
	ds_store_b16 v164, v91 offset:7168
	ds_store_b16 v165, v66
	ds_store_b16 v165, v70 offset:1024
	ds_store_b16 v165, v74 offset:2048
	ds_store_b16 v165, v78 offset:3072
	ds_store_b16 v165, v82 offset:4096
	ds_store_b16 v165, v86 offset:5120
	ds_store_b16 v165, v90 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v165, v92 offset:7168
	ds_store_b16 v166, v67
	ds_store_b16 v166, v71 offset:1024
	ds_store_b16 v166, v75 offset:2048
	ds_store_b16 v166, v79 offset:3072
	ds_store_b16 v166, v83 offset:4096
	ds_store_b16 v166, v87 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v166, v93 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v166, v94 offset:7168
	ds_store_b16 v167, v68
	ds_store_b16 v167, v72 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v167, v76 offset:2048
	ds_store_b16 v167, v80 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v167, v84 offset:4096
	ds_store_b16 v167, v88 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v167, v95 offset:6144
	ds_store_b16 v167, v96 offset:7168
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v204, s19 :: v_dual_add_nc_u32 v65, 0, v170
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v176
	ds_load_b128 v[73:76], v65
	ds_load_b128 v[81:84], v65 offset:2048
	ds_load_b128 v[85:88], v176 offset:2048
	ds_load_b128 v[93:96], v176 offset:4096
	ds_load_b128 v[89:92], v65 offset:4096
	ds_load_b128 v[189:192], v65 offset:6144
	ds_load_b128 v[193:196], v176 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v203, s18 :: v_dual_mov_b32 v202, s17
	v_dual_mov_b32 v201, s16 :: v_dual_mov_b32 v200, s15
	v_dual_mov_b32 v199, s14 :: v_dual_mov_b32 v198, s13
	v_mov_b32_e32 v197, s12
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s69, s93, vcc_lo
	s_and_b32 s38, s93, s40
	s_and_b32 s33, s93, s39
	s_and_b32 s14, s93, s64
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, s74
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[197:204]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[33:40], v[197:204]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[89:96], v[33:40], v[197:204]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[189:196], v[33:40], v[197:204]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[193:196], v178
	ds_load_b128 v[189:192], v177
	ds_load_b128 v[197:200], v177 offset:2048
	ds_load_b128 v[201:204], v178 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[189:196], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[197:204], v[41:48], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[193:196], v178 offset:4096
	ds_load_b128 v[189:192], v177 offset:4096
	ds_load_b128 v[197:200], v177 offset:6144
	ds_load_b128 v[201:204], v178 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[189:196], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[197:204], v[41:48], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[193:196], v180
	ds_load_b128 v[189:192], v179
	ds_load_b128 v[197:200], v179 offset:2048
	ds_load_b128 v[201:204], v180 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[189:196], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[197:204], v[49:56], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[193:196], v180 offset:4096
	ds_load_b128 v[189:192], v179 offset:4096
	ds_load_b128 v[197:200], v179 offset:6144
	ds_load_b128 v[201:204], v180 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[189:196], v[49:56], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[197:204], v[49:56], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[193:196], v182
	ds_load_b128 v[189:192], v181
	ds_load_b128 v[197:200], v181 offset:2048
	ds_load_b128 v[201:204], v182 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[189:196], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[197:204], v[57:64], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[193:196], v182 offset:4096
	ds_load_b128 v[189:192], v181 offset:4096
	ds_load_b128 v[197:200], v181 offset:6144
	ds_load_b128 v[201:204], v182 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[189:196], v[57:64], v[81:88]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v190, 30, v213
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[197:204], v[57:64], v[89:96]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v192, 34, v213
	v_or_b32_e32 v194, 32, v213
	v_or_b32_e32 v193, 38, v213
	v_or_b32_e32 v199, 36, v213
	v_or_b32_e32 v196, 42, v213
	v_or_b32_e32 v201, 40, v213
	v_or_b32_e32 v197, 46, v213
	v_or_b32_e32 v204, 44, v213
	v_or_b32_e32 v198, 50, v213
	v_or_b32_e32 v202, 48, v213
	v_or_b32_e32 v200, 54, v213
	v_or_b32_e32 v191, 58, v213
	v_or_b32_e32 v203, 56, v213
	v_or_b32_e32 v189, 62, v213
	v_or_b32_e32 v195, 60, v213
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s51, s99, v190
	v_cmp_gt_i32_e64 s53, s99, v192
	v_cmp_gt_i32_e64 s54, s99, v194
	v_cmp_gt_i32_e64 s55, s99, v193
	v_cmp_gt_i32_e64 s56, s99, v199
	v_cmp_gt_i32_e64 s57, s99, v196
	v_cmp_gt_i32_e64 s58, s99, v201
	v_cmp_gt_i32_e64 s59, s99, v197
	v_cmp_gt_i32_e64 s60, s99, v204
	v_cmp_gt_i32_e64 s61, s99, v198
	v_cmp_gt_i32_e64 s62, s99, v202
	v_cmp_gt_i32_e64 s63, s99, v200
	v_cmp_gt_i32_e64 s65, s99, v191
	v_cmp_gt_i32_e64 s66, s99, v203
	v_cmp_gt_i32_e64 s67, s99, v189
	v_cmp_gt_i32_e64 s68, s99, v195
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s95, s93, s51
	s_and_b32 s5, s93, s54
	s_and_b32 s23, s93, s53
	s_and_b32 s22, s93, s56
	s_and_b32 s87, s93, s55
	s_and_b32 s20, s93, s58
	s_and_b32 s86, s93, s57
	s_and_b32 s18, s93, s60
	s_and_b32 s85, s93, s59
	s_and_b32 s16, s93, s62
	s_and_b32 s15, s93, s61
	s_and_b32 s13, s93, s63
	s_and_b32 s97, s93, s66
	s_and_b32 s6, s93, s65
	s_and_b32 s83, s93, s68
	s_and_b32 s82, s93, s67
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v213, v171
	v_cmp_le_i32_e64 s3, v214, v171
	v_cmp_le_i32_e64 s39, v215, v171
	v_cmp_le_i32_e64 s66, v191, v171
	v_cmp_le_i32_e64 s41, v216, v171
	v_cmp_le_i32_e64 s42, v208, v171
	s_mov_b32 s24, s69
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s69, vcc_lo, s69
	s_and_b32 s3, s3, s70
	s_mov_b32 s12, s70
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s43, v217, v171
	v_cmp_le_i32_e64 s44, v209, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s39, s39, s38
	s_mov_b32 s0, s6
	s_and_b32 s66, s66, s6
	s_and_not1_b32 s70, s24, exec_lo
	s_and_b32 s69, s69, exec_lo
	s_mov_b32 s6, s38
	s_and_not1_b32 s38, s12, exec_lo
	s_and_b32 s3, s3, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s45, v218, v171
	v_cmp_le_i32_e64 s46, v210, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s41, s41, s37
	s_and_b32 s42, s42, s36
	s_or_b32 s69, s70, s69
	s_or_b32 s70, s38, s3
	s_and_not1_b32 s3, s6, exec_lo
	s_and_b32 s39, s39, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s47, v219, v171
	v_cmp_le_i32_e64 s48, v211, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s43, s43, s35
	s_and_b32 s44, s44, s34
	s_or_b32 s38, s3, s39
	s_and_not1_b32 s3, s37, exec_lo
	s_and_b32 s37, s41, exec_lo
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s39, s42, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s49, v220, v171
	v_cmp_le_i32_e64 s50, v212, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s45, s45, s31
	s_and_b32 s46, s46, s84
	s_or_b32 s37, s3, s37
	s_or_b32 s36, s36, s39
	s_and_not1_b32 s3, s35, exec_lo
	s_and_b32 s35, s43, exec_lo
	s_and_not1_b32 s34, s34, exec_lo
	s_and_b32 s39, s44, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s51, v206, v171
	v_cmp_le_i32_e64 s52, v190, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s47, s47, s30
	s_and_b32 s48, s48, s96
	s_or_b32 s35, s3, s35
	s_or_b32 s34, s34, s39
	s_and_not1_b32 s3, s31, exec_lo
	s_and_b32 s31, s45, exec_lo
	s_and_not1_b32 s1, s84, exec_lo
	s_and_b32 s39, s46, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s53, v194, v171
	v_cmp_le_i32_e64 s54, v192, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s49, s49, s104
	s_and_b32 s50, s50, vcc_hi
	s_or_b32 s31, s3, s31
	s_or_b32 s84, s1, s39
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s30, s47, exec_lo
	s_and_not1_b32 s29, s96, exec_lo
	s_and_b32 s39, s48, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s55, v199, v171
	v_cmp_le_i32_e64 s56, v193, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s51, s51, s7
	s_and_b32 s52, s52, s95
	s_or_b32 s30, s3, s30
	s_or_b32 s96, s29, s39
	s_and_not1_b32 s3, s104, exec_lo
	s_and_b32 s28, s49, exec_lo
	s_and_not1_b32 s27, vcc_hi, exec_lo
	s_and_b32 s39, s50, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s57, v201, v171
	v_cmp_le_i32_e64 s58, v196, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s53, s53, s5
	s_and_b32 s54, s54, s23
	s_or_b32 s104, s3, s28
	s_or_b32 vcc_hi, s27, s39
	s_and_not1_b32 s3, s7, exec_lo
	s_and_b32 s26, s51, exec_lo
	s_and_not1_b32 s25, s95, exec_lo
	s_and_b32 s39, s52, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s59, v204, v171
	v_cmp_le_i32_e64 s60, v197, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s55, s55, s22
	s_and_b32 s56, s56, s87
	s_or_b32 s7, s3, s26
	s_or_b32 s95, s25, s39
	s_and_not1_b32 s3, s5, exec_lo
	s_and_b32 s24, s53, exec_lo
	s_and_not1_b32 s23, s23, exec_lo
	s_and_b32 s39, s54, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s61, v202, v171
	v_cmp_le_i32_e64 s62, v198, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s57, s57, s20
	s_and_b32 s58, s58, s86
	s_or_b32 s5, s3, s24
	s_or_b32 s23, s23, s39
	s_and_not1_b32 s3, s22, exec_lo
	s_and_b32 s22, s55, exec_lo
	s_and_not1_b32 s21, s87, exec_lo
	s_and_b32 s39, s56, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s40, v207, v171
	v_cmp_le_i32_e64 s63, v205, v171
	v_cmp_le_i32_e64 s64, v200, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s59, s59, s18
	s_and_b32 s60, s60, s85
	s_or_b32 s22, s3, s22
	s_or_b32 s87, s21, s39
	s_and_not1_b32 s3, s20, exec_lo
	s_and_b32 s20, s57, exec_lo
	s_and_not1_b32 s19, s86, exec_lo
	s_and_b32 s39, s58, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s65, v203, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s61, s61, s16
	s_and_b32 s62, s62, s15
	s_or_b32 s20, s3, s20
	s_or_b32 s86, s19, s39
	s_and_not1_b32 s3, s18, exec_lo
	s_and_b32 s18, s59, exec_lo
	s_and_not1_b32 s17, s85, exec_lo
	s_and_b32 s39, s60, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s67, v195, v171
	v_cmp_le_i32_e64 s68, v189, v171
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s40, s40, s33
	s_and_b32 s63, s63, s14
	s_and_b32 s64, s64, s13
	s_or_b32 s18, s3, s18
	s_or_b32 s85, s17, s39
	s_and_not1_b32 s3, s16, exec_lo
	s_and_b32 s16, s61, exec_lo
	s_and_not1_b32 s15, s15, exec_lo
	s_and_b32 s39, s62, exec_lo
	s_and_b32 s65, s65, s97
	s_and_not1_b32 s33, s33, exec_lo
	s_and_b32 s40, s40, exec_lo
	s_or_b32 s16, s3, s16
	s_or_b32 s15, s15, s39
	s_and_not1_b32 s3, s14, exec_lo
	s_and_b32 s14, s63, exec_lo
	s_and_not1_b32 s13, s13, exec_lo
	s_and_b32 s39, s64, exec_lo
	s_and_b32 s67, s67, s83
	s_and_b32 s68, s68, s82
	s_or_b32 s33, s33, s40
	s_or_b32 s14, s3, s14
	s_or_b32 s13, s13, s39
	s_and_not1_b32 s3, s97, exec_lo
	s_and_b32 s12, s65, exec_lo
	s_and_not1_b32 s39, s0, exec_lo
	s_and_b32 s40, s66, exec_lo
	s_or_b32 s97, s3, s12
	s_or_b32 s6, s39, s40
	s_and_not1_b32 s3, s83, exec_lo
	s_and_b32 s39, s67, exec_lo
	s_and_not1_b32 s40, s82, exec_lo
	s_and_b32 s41, s68, exec_lo
	s_or_b32 s83, s3, s39
	s_or_b32 s82, s40, s41
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s72
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v255, s98, 23
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v213, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v213, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v214, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s40, v214, v173
	v_writelane_b32 v255, s100, 24
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s41, v215, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s42, v215, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s43, v207, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s44, v207, v173
	v_writelane_b32 v255, s101, 25
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s45, v216, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s46, v216, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s47, v208, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s48, v208, v173
	v_writelane_b32 v255, s102, 26
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s55, v210, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s56, v210, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s67, v194, v172
	s_mov_b32 s8, s85
	v_writelane_b32 v255, s103, 27
	v_cmp_ge_i32_e64 s28, v203, v172
	s_mov_b32 s101, s22
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s85, v194, v173
	s_mov_b32 s22, s6
	s_mov_b32 s6, s97
	s_mov_b32 s97, s38
	v_cmp_le_i32_e64 s38, v203, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s12, vcc_lo, s3
	s_and_b32 s40, s39, s40
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s49, v217, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s50, v217, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s51, v209, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s52, v209, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s41, s41, s42
	s_and_b32 s12, s12, s69
	s_and_b32 s40, s40, s70
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s53, v218, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s54, v218, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s42, s43, s44
	s_and_b32 s41, s41, s97
	s_and_b32 s43, s45, s46
	s_and_b32 s44, s47, s48
	s_and_b32 s48, s55, s56
	s_and_b32 s55, s67, s85
	s_and_b32 s67, s28, s38
	s_and_not1_b32 s69, s69, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s38, s70, exec_lo
	s_and_b32 s40, s40, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s57, v219, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s58, v219, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s59, v211, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s60, v211, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s43, s43, s37
	s_and_b32 s44, s44, s36
	s_and_b32 s45, s49, s50
	s_and_b32 s46, s51, s52
	s_or_b32 s69, s69, s12
	s_or_b32 s70, s38, s40
	s_and_not1_b32 s12, s97, exec_lo
	s_and_b32 s40, s41, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s61, v220, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s62, v220, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s63, v212, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s64, v212, v173
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v199, v172
	s_mov_b32 s100, s87
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s87, v199, v173
	s_mov_b32 s98, s16
	s_mov_b32 s16, s84
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s45, s45, s35
	s_and_b32 s46, s46, s34
	s_and_b32 s47, s53, s54
	s_or_b32 s38, s12, s40
	s_and_not1_b32 s12, s37, exec_lo
	s_and_b32 s37, s43, exec_lo
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s40, s44, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s65, v206, v172
	v_cmp_ge_i32_e64 s66, v190, v172
	v_cmp_ge_i32_e64 s68, v192, v172
	s_mov_b32 s10, s86
	s_mov_b32 s11, s20
	v_cmp_ge_i32_e64 s29, v191, v172
	s_mov_b32 s20, s83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s83, v206, v173
	v_cmp_le_i32_e64 s84, v190, v173
	v_cmp_le_i32_e64 s86, v192, v173
	v_cmp_le_i32_e32 vcc_lo, v191, v173
	s_mov_b32 s4, s96
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s47, s47, s31
	s_and_b32 s48, s48, s16
	s_and_b32 s49, s57, s58
	s_and_b32 s50, s59, s60
	s_or_b32 s37, s12, s37
	s_or_b32 s36, s36, s40
	s_and_not1_b32 s12, s35, exec_lo
	s_and_b32 s35, s45, exec_lo
	s_and_not1_b32 s34, s34, exec_lo
	s_and_b32 s40, s46, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v200, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s96, v200, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s49, s49, s30
	s_and_b32 s50, s50, s4
	s_and_b32 s51, s61, s62
	s_and_b32 s52, s63, s64
	s_and_b32 s57, s1, s87
	s_or_b32 s35, s12, s35
	s_or_b32 s34, s34, s40
	s_and_not1_b32 s12, s31, exec_lo
	s_and_b32 s31, s47, exec_lo
	s_and_not1_b32 s1, s16, exec_lo
	s_and_b32 s40, s48, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s0, v193, v172
	v_cmp_ge_i32_e64 s25, v198, v172
	v_cmp_ge_i32_e64 s26, v205, v172
	s_mov_b32 s103, s95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s88, v193, v173
	v_cmp_le_i32_e64 s94, v198, v173
	v_cmp_le_i32_e64 s95, v205, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s51, s51, s104
	s_and_b32 s52, s52, vcc_hi
	s_and_b32 s53, s65, s83
	s_and_b32 s54, s66, s84
	s_and_b32 s56, s68, s86
	s_and_b32 s68, s29, vcc_lo
	s_or_b32 s31, s12, s31
	s_or_b32 s84, s1, s40
	s_and_not1_b32 s12, s30, exec_lo
	s_and_b32 s30, s49, exec_lo
	s_and_not1_b32 s29, s4, exec_lo
	s_and_b32 s40, s50, exec_lo
	s_mov_b32 s17, s13
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v201, v172
	s_mov_b32 s19, s14
	v_cmp_ge_i32_e64 s14, v196, v172
	v_cmp_ge_i32_e64 s24, v202, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s89, v201, v173
	v_cmp_le_i32_e64 s90, v196, v173
	v_cmp_le_i32_e64 s93, v202, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s53, s53, s7
	s_and_b32 s54, s54, s103
	s_and_b32 s66, s27, s96
	s_or_b32 s30, s12, s30
	s_or_b32 s96, s29, s40
	s_and_not1_b32 s12, s104, exec_lo
	s_and_b32 s28, s51, exec_lo
	s_and_not1_b32 s27, vcc_hi, exec_lo
	s_and_b32 s40, s52, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v204, v172
	v_cmp_ge_i32_e64 s2, v197, v172
	v_cmp_ge_i32_e64 s81, v195, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s91, v204, v173
	v_cmp_le_i32_e64 s92, v197, v173
	v_cmp_le_i32_e64 s3, v195, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s55, s55, s5
	s_and_b32 s56, s56, s23
	s_and_b32 s58, s0, s88
	s_and_b32 s64, s25, s94
	s_and_b32 s65, s26, s95
	s_or_b32 s104, s12, s28
	s_or_b32 vcc_hi, s27, s40
	s_and_not1_b32 s12, s7, exec_lo
	s_and_b32 s26, s53, exec_lo
	s_and_not1_b32 s25, s103, exec_lo
	s_and_b32 s40, s54, exec_lo
	s_mov_b32 s9, s18
	s_mov_b32 s18, s82
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s82, v189, v172
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s39, v189, v173
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s57, s57, s101
	s_and_b32 s58, s58, s100
	s_and_b32 s59, s13, s89
	s_and_b32 s60, s14, s90
	s_and_b32 s63, s24, s93
	s_or_b32 s7, s12, s26
	s_or_b32 s95, s25, s40
	s_and_not1_b32 s12, s5, exec_lo
	s_and_b32 s24, s55, exec_lo
	s_and_not1_b32 s23, s23, exec_lo
	s_and_b32 s40, s56, exec_lo
	s_and_b32 s59, s59, s11
	s_and_b32 s60, s60, s10
	s_and_b32 s61, s21, s91
	s_and_b32 s62, s2, s92
	s_and_b32 s68, s68, s22
	s_mov_b32 s88, s22
	s_and_b32 s3, s81, s3
	s_or_b32 s5, s12, s24
	s_or_b32 s23, s23, s40
	s_and_not1_b32 s12, s101, exec_lo
	s_and_b32 s22, s57, exec_lo
	s_and_not1_b32 s21, s100, exec_lo
	s_and_b32 s40, s58, exec_lo
	s_and_b32 s61, s61, s9
	s_and_b32 s62, s62, s8
	s_mov_b32 s13, s19
	s_and_b32 s65, s65, s19
	s_and_b32 s39, s82, s39
	s_and_b32 s3, s3, s20
	s_mov_b32 s83, s20
	s_or_b32 s22, s12, s22
	s_or_b32 s87, s21, s40
	s_and_not1_b32 s12, s11, exec_lo
	s_and_b32 s20, s59, exec_lo
	s_and_not1_b32 s19, s10, exec_lo
	s_and_b32 s40, s60, exec_lo
	s_and_b32 s63, s63, s98
	s_and_b32 s64, s64, s15
	s_mov_b32 s0, s17
	s_and_b32 s66, s66, s17
	s_and_b32 s39, s39, s18
	s_mov_b32 s82, s18
	s_or_b32 s20, s12, s20
	s_or_b32 s86, s19, s40
	s_and_not1_b32 s12, s9, exec_lo
	s_and_b32 s18, s61, exec_lo
	s_and_not1_b32 s17, s8, exec_lo
	s_and_b32 s40, s62, exec_lo
	s_or_b32 s18, s12, s18
	s_or_b32 s85, s17, s40
	s_and_not1_b32 s12, s98, exec_lo
	s_and_b32 s16, s63, exec_lo
	s_and_not1_b32 s15, s15, exec_lo
	s_and_b32 s40, s64, exec_lo
	s_and_b32 s42, s42, s33
	s_and_b32 s67, s67, s6
	s_or_b32 s16, s12, s16
	s_or_b32 s15, s15, s40
	s_and_not1_b32 s12, s13, exec_lo
	s_and_b32 s14, s65, exec_lo
	s_and_not1_b32 s13, s0, exec_lo
	s_and_b32 s40, s66, exec_lo
	s_and_not1_b32 s33, s33, exec_lo
	s_and_b32 s41, s42, exec_lo
	v_readlane_b32 s100, v255, 24
	v_readlane_b32 s8, v254, 18
	s_or_b32 s14, s12, s14
	s_or_b32 s13, s13, s40
	s_and_not1_b32 s12, s6, exec_lo
	s_and_b32 s40, s67, exec_lo
	v_readlane_b32 s101, v255, 25
	v_readlane_b32 s102, v255, 26
	v_readlane_b32 s103, v255, 27
	v_readlane_b32 s9, v254, 19
	v_readlane_b32 s10, v254, 20
	v_readlane_b32 s11, v254, 21
	v_readlane_b32 s2, v254, 17
	v_readlane_b32 s98, v255, 23
	v_readlane_b32 s4, v254, 16
	v_readlane_b32 s94, v254, 15
	v_readlane_b32 s93, v254, 14
	v_readlane_b32 s92, v254, 13
	s_or_b32 s33, s33, s41
	s_and_not1_b32 s41, s88, exec_lo
	s_and_b32 s42, s68, exec_lo
	s_or_b32 s97, s12, s40
	s_and_not1_b32 s12, s83, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s40, s82, exec_lo
	s_and_b32 s39, s39, exec_lo
	s_mov_b32 s81, 0x76543210
	s_or_b32 s6, s41, s42
	s_or_b32 s83, s12, s3
	s_or_b32 s82, s40, s39
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:4
	scratch_load_b32 v86, off, off
	v_readlane_b32 s40, v254, 1
	v_readlane_b32 s42, v254, 3
	v_readlane_b32 s41, v254, 2
	v_readlane_b32 s45, v254, 0
	v_readlane_b32 s43, v254, 4
	s_waitcnt vmcnt(1)
	v_cmp_eq_u32_e64 s42, 0, v69
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v64, null, v66, v66, v25
	v_div_scale_f32 v67, null, v66, v66, v26
	v_div_scale_f32 v73, null, v66, v66, v28
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v67
	v_div_scale_f32 v71, null, v66, v66, v27
	v_rcp_f32_e32 v75, v73
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v52, 1, v69
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v69, vcc_lo, v25, v66, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v72, v71
	v_div_scale_f32 v74, s0, v26, v66, v26
	v_fma_f32 v54, -v64, v65, 1.0
	v_fma_f32 v60, -v67, v68, 1.0
	v_div_scale_f32 v79, null, v66, v66, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v73, v75, 1.0
	v_dual_fmac_f32 v65, v54, v65 :: v_dual_fmac_f32 v68, v60, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v71, v72, 1.0
	v_div_scale_f32 v81, null, v66, v66, v18
	v_dual_mul_f32 v70, v69, v65 :: v_dual_fmac_f32 v75, v78, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v74, v68
	v_fmac_f32_e32 v72, v77, v72
	v_div_scale_f32 v77, s1, v27, v66, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v62, -v64, v70, v69
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v63, 1, v52
	.loc	1 844 63                        ; attention.py:844:63
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s31, s92, v52
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 55, v52
	v_or_b32_e32 v33, 54, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v70, v62, v65
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v62, 2, v52
	v_or_b32_e32 v34, 53, v52
	v_or_b32_e32 v35, 52, v52
	v_or_b32_e32 v36, 51, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v64, -v64, v70, v69
	v_fma_f32 v69, -v67, v76, v74
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v37, 50, v52
	v_or_b32_e32 v38, 49, v52
	v_or_b32_e32 v39, 48, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v64, v64, v65, v70
	v_fmac_f32_e32 v76, v69, v68
	v_mul_f32_e32 v65, v77, v72
	v_div_scale_f32 v69, null, v66, v66, v29
	v_div_scale_f32 v70, s3, v28, v66, v28
	v_div_fixup_f32 v25, v64, v66, v25
	v_fma_f32 v64, -v67, v76, v74
	v_fma_f32 v67, -v71, v65, v77
	v_rcp_f32_e32 v74, v69
	v_mul_f32_e32 v78, v70, v75
	s_mov_b32 vcc_lo, s0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v66
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v65, v67, v72
	v_rcp_f32_e32 v67, v79
	v_div_fmas_f32 v64, v64, v68, v76
	v_fma_f32 v68, -v73, v78, v70
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v76, -v69, v74, 1.0
	v_div_fixup_f32 v26, v64, v66, v26
	v_fma_f32 v64, -v71, v65, v77
	v_fmac_f32_e32 v78, v68, v75
	v_div_scale_f32 v68, s4, v29, v66, v29
	v_fmac_f32_e32 v74, v76, v74
	v_fma_f32 v71, -v79, v67, 1.0
	v_div_scale_f32 v76, null, v66, v66, v31
	v_div_fmas_f32 v64, v64, v72, v65
	v_fma_f32 v65, -v73, v78, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v70, v68, v74 :: v_dual_fmac_f32 v67, v71, v67
	v_rcp_f32_e32 v71, v76
	v_div_scale_f32 v72, s1, v30, v66, v30
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v64, v66, v27
	v_div_fmas_f32 v65, v65, v75, v78
	v_fma_f32 v75, -v69, v70, v68
	v_mul_f32_e32 v77, v72, v67
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v73, null, v66, v66, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v76, v71, 1.0
	v_fma_f32 v64, -v79, v77, v72
	v_fmac_f32_e32 v70, v75, v74
	v_div_scale_f32 v75, null, v66, v66, v17
	v_div_fixup_f32 v28, v65, v66, v28
	v_fmac_f32_e32 v71, v78, v71
	v_div_scale_f32 v65, s3, v31, v66, v31
	v_fmac_f32_e32 v77, v64, v67
	v_fma_f32 v68, -v69, v70, v68
	v_rcp_f32_e32 v69, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v64, v65, v71
	v_rcp_f32_e32 v80, v73
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v68, v68, v74, v70
	v_fma_f32 v70, -v79, v77, v72
	v_fma_f32 v72, -v76, v64, v65
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v29, v68, v66, v29
	v_fma_f32 v79, -v75, v69, 1.0
	v_div_fmas_f32 v67, v70, v67, v77
	v_fmac_f32_e32 v64, v72, v71
	v_div_scale_f32 v77, s1, v17, v66, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v79, v69
	v_div_fixup_f32 v30, v67, v66, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v76, v64, v65
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, null, v66, v66, v20
	v_mul_f32_e32 v67, v77, v69
	v_div_fmas_f32 v64, v65, v71, v64
	v_fma_f32 v78, -v73, v80, 1.0
	v_rcp_f32_e32 v70, v81
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v71, -v75, v67, v77
	v_div_fixup_f32 v31, v64, v66, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s33, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v67, v71, v69
	v_rcp_f32_e32 v71, v76
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s34, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v68, -v81, v70, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s35, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v64, -v75, v67, v77
	v_div_scale_f32 v75, s4, v19, v66, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v68, v70
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v40, 39, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v77, -v76, v71, 1.0
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s5, v32, v66, v32
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, null, v66, v66, v22
	v_mul_f32_e32 v74, v78, v80
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v41, 38, v52
	v_or_b32_e32 v42, 37, v52
	v_or_b32_e32 v43, 36, v52
	v_or_b32_e32 v44, 35, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v72, -v73, v74, v78
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v45, 34, v52
	v_or_b32_e32 v46, 33, v52
	v_or_b32_e32 v47, 32, v52
	v_or_b32_e32 v48, 23, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v74, v72, v80
	v_div_scale_f32 v72, null, v66, v66, v19
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v49, 22, v52
	v_or_b32_e32 v50, 21, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v65, -v73, v74, v78
	v_rcp_f32_e32 v68, v72
	v_div_scale_f32 v73, s3, v18, v66, v18
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v51, 20, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v80, v74
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v80, v77
	v_div_fmas_f32 v64, v64, v69, v67
	v_div_scale_f32 v69, s1, v20, v66, v20
	v_fma_f32 v78, -v72, v68, 1.0
	v_div_fixup_f32 v32, v65, v66, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v64, v66, v17
	v_mul_f32_e32 v79, v69, v71
	v_mul_f32_e32 v74, v73, v70
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, null, v66, v66, v21
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v81, v74, v73
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v67, v78
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v53, 19, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v74, v65, v70 :: v_dual_mul_f32 v65, v75, v68
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v54, 18, v52
	v_or_b32_e32 v55, 17, v52
	v_or_b32_e32 v56, 16, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v64, -v81, v74, v73
	v_fma_f32 v73, -v72, v65, v75
	v_fma_f32 v81, -v78, v67, 1.0
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v57, 7, v52
	v_or_b32_e32 v58, 6, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v64, v64, v70, v74
	v_fmac_f32_e32 v65, v73, v68
	v_fma_f32 v70, -v76, v79, v69
	v_fmac_f32_e32 v67, v81, v67
	v_div_scale_f32 v73, s3, v21, v66, v21
	v_fma_f32 v74, -v77, v80, 1.0
	v_div_fixup_f32 v18, v64, v66, v18
	v_fma_f32 v64, -v72, v65, v75
	v_fmac_f32_e32 v79, v70, v71
	v_mul_f32_e32 v70, v73, v67
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v72, s5, v22, v66, v22
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v74, null, v66, v66, v23
	v_div_fmas_f32 v64, v64, v68, v65
	v_fma_f32 v65, -v76, v79, v69
	v_fma_f32 v68, -v78, v70, v73
	v_mul_f32_e32 v75, v72, v80
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v19, v64, v66, v19
	v_div_fmas_f32 v65, v65, v71, v79
	v_fmac_f32_e32 v70, v68, v67
	v_fma_f32 v71, -v77, v75, v72
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v69, v74
	v_div_scale_f32 v76, null, v66, v66, v24
	v_fma_f32 v64, -v78, v70, v73
	v_fmac_f32_e32 v75, v71, v80
	v_div_scale_f32 v78, null, v66, v66, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v68, v76
	v_div_fmas_f32 v64, v64, v67, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v67, -v77, v75, v72
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v79, -v74, v69, 1.0
	v_div_scale_f32 v72, s3, v24, v66, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v80, v75
	v_div_scale_f32 v80, null, v66, v66, v12
	v_fmac_f32_e32 v69, v79, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v76, v68, 1.0
	v_div_fixup_f32 v22, v67, v66, v22
	v_rcp_f32_e32 v67, v78
	v_rcp_f32_e32 v82, v80
	v_div_fixup_f32 v20, v65, v66, v20
	v_div_scale_f32 v65, s1, v23, v66, v23
	v_div_fixup_f32 v21, v64, v66, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v79, -v78, v67, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v59, 5, v52
	v_or_b32_e32 v60, 4, v52
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v67, v79, v67
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, null, v66, v66, v9
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v61, 3, v52
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s92, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v77, v72, v68
	v_rcp_f32_e32 v73, v71
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s31, s93, s31
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s92, v62
	v_cmp_gt_i32_e64 s28, s92, v61
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fma_f32 v64, -v76, v77, v72
	v_mul_f32_e32 v70, v65, v69
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s30, s93, s30
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v77, v64, v68
	v_fma_f32 v75, -v74, v70, v65
	v_div_scale_f32 v64, s4, v9, v66, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s29, s93, s29
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s92, v59
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fmac_f32_e32 v70, v75, v69
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s28, s93, s28
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s92, v60
	v_cmp_gt_i32_e64 s25, s92, v58
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fma_f32 v65, -v74, v70, v65
	v_div_scale_f32 v74, null, v66, v66, v11
	v_fmac_f32_e32 v73, v75, v73
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s26, s93, s26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v69, v70
	v_fma_f32 v69, -v76, v77, v72
	v_div_scale_f32 v72, s1, v10, v66, v10
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v75, v74
	v_div_fixup_f32 v23, v65, v66, v23
	v_mul_f32_e32 v81, v72, v67
	v_div_fmas_f32 v68, v69, v68, v77
	s_mov_b32 vcc_lo, s4
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s27, s93, s27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v69, -v78, v81, v72
	v_div_fixup_f32 v24, v68, v66, v24
	v_fma_f32 v68, -v80, v82, 1.0
	v_fma_f32 v76, -v74, v75, 1.0
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s25, s93, s25
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s92, v57
	.loc	1 841 19 is_stmt 1              ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v82, v68, v82
	v_dual_mul_f32 v70, v64, v73 :: v_dual_fmac_f32 v81, v69, v67
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, s5, v11, v66, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v71, v70, v64
	v_div_scale_f32 v69, null, v66, v66, v13
	v_mul_f32_e32 v77, v76, v75
	v_div_scale_f32 v68, s3, v12, v66, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v79, v73
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s92, v55
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v65, -v74, v77, v76
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s92, v56
	v_cmp_gt_i32_e64 s21, s92, v54
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v64, -v71, v70, v64
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s24, s93, s24
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v77, v65, v75
	v_rcp_f32_e32 v65, v69
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s22, s93, s22
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v64, v64, v73, v70
	v_fma_f32 v70, -v78, v81, v72
	v_div_scale_f32 v72, null, v66, v66, v14
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v9, v64, v66, v9
	v_div_fmas_f32 v67, v70, v67, v81
	v_fma_f32 v70, -v74, v77, v76
	v_rcp_f32_e32 v74, v72
	v_fma_f32 v73, -v69, v65, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v10, v67, v66, v10
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s23, s93, s23
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, s1, v13, v66, v13
	v_mul_f32_e32 v71, v68, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v72, v74, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v64, v73, v65
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s21, s93, s21
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s92, v53
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fmac_f32_e32 v74, v67, v74
	v_div_fmas_f32 v70, v70, v75, v77
	v_fma_f32 v75, -v80, v71, v68
	v_div_scale_f32 v67, s4, v14, v66, v14
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v70, v66, v11
	v_div_scale_f32 v70, null, v66, v66, v15
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s18, s92, v50
	v_cmp_gt_i32_e64 s19, s92, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_rcp_f32_e32 v76, v70
	v_fmac_f32_e32 v71, v75, v82
	v_fma_f32 v75, -v69, v64, v73
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s92, v49
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 s20, s93, s20
	s_and_b32 s18, s93, s18
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fma_f32 v68, -v80, v71, v68
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s19, s93, s19
	s_and_b32 s17, s93, s17
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s92, v48
	v_cmp_gt_i32_e64 s14, s92, v46
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_fmas_f32 v68, v68, v82, v71
	v_mul_f32_e32 v71, v67, v74
	v_fmac_f32_e32 v64, v75, v65
	v_div_scale_f32 v75, null, v66, v66, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v68, v66, v12
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v68, -v69, v64, v73
	v_fma_f32 v69, -v72, v71, v67
	v_fma_f32 v73, -v70, v76, 1.0
	v_rcp_f32_e32 v77, v75
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s92, v47
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v71, v69, v74
	v_div_fmas_f32 v64, v68, v65, v64
	v_div_scale_f32 v65, null, v66, v66, v1
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v68, s1, v15, v66, v15
	v_div_scale_f32 v73, null, v66, v66, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v69, v65
	v_div_fixup_f32 v13, v64, v66, v13
	v_fma_f32 v64, -v75, v77, 1.0
	v_fma_f32 v67, -v72, v71, v67
	v_mul_f32_e32 v72, v68, v76
	v_rcp_f32_e32 v79, v73
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v80, s4, v1, v66, v1
	v_div_fmas_f32 v67, v67, v74, v71
	v_fma_f32 v71, -v70, v72, v68
	v_fmac_f32_e32 v77, v64, v77
	v_div_scale_f32 v64, s3, v16, v66, v16
	v_fma_f32 v78, -v65, v69, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v73, v79, 1.0
	v_fmac_f32_e32 v72, v71, v76
	v_mul_f32_e32 v74, v64, v77
	v_div_fixup_f32 v14, v67, v66, v14
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s5, v2, v66, v2
	v_fmac_f32_e32 v69, v78, v69
	v_div_scale_f32 v78, null, v66, v66, v3
	v_fma_f32 v71, -v75, v74, v64
	v_fma_f32 v67, -v70, v72, v68
	v_mul_f32_e32 v70, v81, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v78
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v74, v71, v77
	v_div_fmas_f32 v67, v67, v76, v72
	v_div_scale_f32 v72, null, v66, v66, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v64, -v75, v74, v64
	v_div_fixup_f32 v15, v67, v66, v15
	v_div_scale_f32 v76, null, v66, v66, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v71, -v78, v82, 1.0
	v_mul_f32_e32 v83, v80, v69
	v_div_fmas_f32 v64, v64, v77, v74
	v_rcp_f32_e32 v74, v72
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v82, v71, v82
	v_fma_f32 v68, -v65, v83, v80
	v_div_scale_f32 v71, s1, v3, v66, v3
	v_div_fixup_f32 v16, v64, v66, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v83, v68, v69
	v_fma_f32 v68, -v73, v70, v81
	v_fma_f32 v67, -v72, v74, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s92, v45
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 s16, s93, s16
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fmac_f32_e32 v74, v67, v74
	v_fmac_f32_e32 v70, v68, v79
	v_mul_f32_e32 v68, v71, v82
	v_fma_f32 v65, -v65, v83, v80
	v_div_scale_f32 v67, null, v66, v66, v6
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s14, s93, s14
	s_and_b32 s15, s93, s15
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v69, v83
	v_fma_f32 v69, -v73, v70, v81
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v73, -v78, v68, v71
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s93, s13
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v1, v65, v66, v1
	v_div_fmas_f32 v69, v69, v79, v70
	v_div_scale_f32 v65, null, v66, v66, v5
	v_fmac_f32_e32 v68, v73, v82
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v2, v69, v66, v2
	v_div_scale_f32 v69, null, v66, v66, v7
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s92, v44
	v_cmp_gt_i32_e64 s10, s92, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_rcp_f32_e32 v73, v69
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s11, s92, v43
	v_cmp_gt_i32_e64 s9, s92, v41
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 s12, s93, s12
	s_and_b32 s10, s93, s10
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s92, v34
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s11, s93, s11
	s_and_b32 s9, s93, s9
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s7, s92, v33
	v_cmp_gt_i32_e64 s6, s92, v0
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fma_f32 v80, -v69, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v64, -v78, v68, v71
	v_rcp_f32_e32 v71, v67
	v_rcp_f32_e32 v78, v76
	v_div_scale_f32 v80, s4, v7, v66, v7
	v_div_fmas_f32 v64, v64, v82, v68
	v_rcp_f32_e32 v68, v65
	v_div_scale_f32 v70, vcc_lo, v4, v66, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v80, v73
	v_div_fixup_f32 v3, v64, v66, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v77, -v67, v71, 1.0
	v_fma_f32 v82, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v64, -v65, v68, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v77, v71
	v_mul_f32_e32 v75, v70, v74
	v_div_scale_f32 v77, s3, v6, v66, v6
	v_fmac_f32_e32 v68, v64, v68
	v_div_scale_f32 v64, s1, v5, v66, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v72, v75, v70
	v_mul_f32_e32 v83, v77, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v64, v68
	v_fmac_f32_e32 v75, v79, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v65, v81, v64
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s5, v8, v66, v8
	v_fma_f32 v70, -v72, v75, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v79, v68
	v_fma_f32 v79, -v69, v84, v80
	v_mul_f32_e32 v85, v82, v78
	v_fma_f32 v72, -v67, v83, v77
	v_div_fmas_f32 v70, v70, v74, v75
	v_fma_f32 v64, -v65, v81, v64
	v_fmac_f32_e32 v84, v79, v73
	v_fma_f32 v65, -v76, v85, v82
	v_fmac_f32_e32 v83, v72, v71
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v70, v66, v4
	v_div_fmas_f32 v64, v64, v68, v81
	v_fmac_f32_e32 v85, v65, v78
	v_fma_f32 v67, -v67, v83, v77
	v_fma_f32 v65, -v69, v84, v80
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v64, v66, v5
	v_fma_f32 v68, -v76, v85, v82
	v_div_fmas_f32 v67, v67, v71, v83
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v64, 0, v1, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v73, v84
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v67, v66, v6
	v_div_fmas_f32 v68, v68, v78, v85
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v65, v66, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v65, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v8, v68, v66, v8
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v65, v25, v65, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v25, v26, v66, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s33
	v_bfe_u32 v65, v29, 16, 1
	v_bfe_u32 v66, v30, 16, 1
	v_cmp_o_f32_e64 s33, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s34
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s35
	v_add3_u32 v28, v29, v65, 0x7fff
	v_cmp_o_f32_e64 s34, v29, v29
	v_add3_u32 v29, v30, v66, 0x7fff
	v_cmp_o_f32_e64 s35, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s33
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s34
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s35
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s33, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s35, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s33
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s34
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s33, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s35
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s35, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s33
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s34
	v_cmp_o_f32_e64 s33, v21, v21
	v_cmp_o_f32_e64 s34, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s35
	v_bfe_u32 v19, v23, 16, 1
	v_cmp_o_f32_e64 s35, v23, v23
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s33
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s34
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_bfe_u32 v23, v10, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cmp_o_f32_e64 s34, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s35
	v_add3_u32 v9, v10, v23, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s33, v24, v24
	v_cmp_o_f32_e64 s35, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s34
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s33
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s33, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s34, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s35
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s35, v13, v13
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s33
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s34
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s35
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s33, v14, v14
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s34, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s35, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s33
	v_bfe_u32 v13, v64, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s34
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s35
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v13, v64, v13, 0x7fff
	v_cmp_o_f32_e64 s33, v64, v64
	v_add3_u32 v15, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s34, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s35, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_bfe_u32 v14, v5, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s33
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s34
	v_cmp_o_f32_e64 s33, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v14, v5, v14, 0x7fff
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e64 s34, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s35
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s35, v6, v6
	v_add3_u32 v6, v7, v15, 0x7fff
	v_cmp_o_f32_e64 s36, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s37, v8, v8
	v_cndmask_b32_e64 v7, v17, v26, s42
	v_cndmask_b32_e64 v8, v26, v17, s42
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s34
	v_cndmask_b32_e64 v14, v20, v29, s42
	v_cndmask_b32_e64 v15, v29, v20, s42
	v_cndmask_b32_e64 v16, v19, v18, s42
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e64 v18, v18, v19, s42
	v_cndmask_b32_e64 v19, v12, v9, s42
	v_cndmask_b32_e64 v9, v9, v12, s42
	v_cndmask_b32_e64 v12, 0x1054, v17, s42
	v_cndmask_b32_e64 v17, 0x3276, v20, s42
	.loc	1 843 24                        ; attention.py:843:24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s45, v86
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s33
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s35
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s36
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s37
	v_cndmask_b32_e64 v6, v25, v28, s42
	v_lshl_or_b32 v17, v17, 8, v17
	v_and_b32_e32 v12, 0x540054, v12
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v1, v1, s92
	s_mov_b32 s33, 0x76543210
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v20, v11, v10, s42
	v_cndmask_b32_e64 v10, v10, v11, s42
	v_cndmask_b32_e64 v11, v3, v13, s42
	v_cndmask_b32_e64 v3, v13, v3, s42
	v_cndmask_b32_e64 v13, v4, v2, s42
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v2, v2, v4, s42
	v_permlanex16_b32 v4, v6, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s33, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_cndmask_b32_e64 v5, v28, v25, s42
	v_lshl_or_b32 v12, v17, 4, v17
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v52, v1, v52, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.h, 0
	v_and_b32_e32 v8, 0x5040504, v8
	v_permlanex16_b32 v15, v15, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v18, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v10, v10, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v4, v5, v8
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v63, v1, v63, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s31
	v_add_lshl_u32 v62, v1, v62, 1
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v4, v4, v5, v12
	v_perm_b32 v5, v6, v7, v8
	v_perm_b32 v6, v6, v7, v12
	v_perm_b32 v7, v15, v14, v8
	v_perm_b32 v14, v15, v14, v12
	v_perm_b32 v15, v17, v16, v8
	v_perm_b32 v16, v17, v16, v12
	v_perm_b32 v17, v9, v19, v8
	v_perm_b32 v9, v9, v19, v12
	v_perm_b32 v19, v10, v20, v8
	v_perm_b32 v10, v10, v20, v12
	v_perm_b32 v20, v3, v11, v8
	v_perm_b32 v3, v3, v11, v12
	v_mov_b16_e32 v11.l, v18.h
	v_mov_b16_e32 v11.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v63, 0x80000000, v63, s30
	buffer_store_b16 v18, v52, s[40:43], 0 offen
	v_add_lshl_u32 v18, v1, v61, 1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s29
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v2, v2, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v11, v63, s[40:43], 0 offen
	buffer_store_b16 v4, v62, s[40:43], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v18, s28
	v_add_lshl_u32 v18, v1, v59, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.l, v4.h
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v4, v1, v60, 1
	v_add_lshl_u32 v52, v1, v58, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v2, v13, v8
	v_perm_b32 v2, v2, v13, v12
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s27
	v_cndmask_b32_e64 v52, 0x80000000, v52, s25
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v68, v11, s[40:43], 0 offen
	buffer_store_b16 v5, v4, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v57, 1
	s_clause 0x1
	buffer_store_b16 v13, v18, s[40:43], 0 offen
	buffer_store_b16 v6, v52, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v55, 1
	v_add_lshl_u32 v5, v1, v56, 1
	v_add_lshl_u32 v11, v1, v54, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v12.h, v68.h
	v_mov_b16_e32 v22.l, v7.h
	v_mov_b16_e32 v22.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s23
	v_cndmask_b32_e64 v11, 0x80000000, v11, s21
	s_clause 0x1
	buffer_store_b16 v12, v4, s[40:43], 0 offen
	buffer_store_b16 v7, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v53, 1
	s_clause 0x1
	buffer_store_b16 v22, v6, s[40:43], 0 offen
	buffer_store_b16 v14, v11, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v50, 1
	v_add_lshl_u32 v5, v1, v51, 1
	v_add_lshl_u32 v7, v1, v49, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v68.h
	v_mov_b16_e32 v24.l, v15.h
	v_mov_b16_e32 v24.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s20
	v_cndmask_b32_e64 v6, 0x80000000, v6, s18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s19
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	s_clause 0x1
	buffer_store_b16 v21, v4, s[40:43], 0 offen
	buffer_store_b16 v15, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v48, 1
	s_clause 0x1
	buffer_store_b16 v24, v6, s[40:43], 0 offen
	buffer_store_b16 v16, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_add_lshl_u32 v5, v1, v47, 1
	v_add_lshl_u32 v7, v1, v45, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v68.h
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e32 v26.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s16
	v_cndmask_b32_e64 v6, 0x80000000, v6, s14
	v_cndmask_b32_e64 v5, 0x80000000, v5, s15
	v_cndmask_b32_e64 v7, 0x80000000, v7, s13
	s_clause 0x1
	buffer_store_b16 v23, v4, s[40:43], 0 offen
	buffer_store_b16 v17, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	s_clause 0x1
	buffer_store_b16 v26, v6, s[40:43], 0 offen
	buffer_store_b16 v9, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_add_lshl_u32 v5, v1, v43, 1
	v_add_lshl_u32 v7, v1, v41, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v25.l, v9.h
	v_mov_b16_e32 v25.h, v68.h
	v_mov_b16_e32 v28.l, v19.h
	v_mov_b16_e32 v28.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	v_cndmask_b32_e64 v5, 0x80000000, v5, s11
	v_cndmask_b32_e64 v7, 0x80000000, v7, s9
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s92, v40
	v_cmp_gt_i32_e64 s3, s92, v38
	v_cmp_gt_i32_e64 s4, s92, v39
	v_cmp_gt_i32_e64 s1, s92, v37
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v25, v4, s[40:43], 0 offen
	buffer_store_b16 v19, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	s_clause 0x1
	buffer_store_b16 v28, v6, s[40:43], 0 offen
	buffer_store_b16 v10, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	v_add_lshl_u32 v5, v1, v39, 1
	v_add_lshl_u32 v7, v1, v37, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s5, s93, s5
	s_and_b32 s3, s93, s3
	s_and_b32 s4, s93, s4
	s_and_b32 s1, s93, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v27.l, v10.h
	v_mov_b16_e32 v27.h, v68.h
	v_mov_b16_e32 v30.l, v20.h
	v_mov_b16_e32 v30.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s92, v35
	v_cmp_gt_i32_e64 s0, s92, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	s_clause 0x3
	buffer_store_b16 v27, v4, s[40:43], 0 offen
	buffer_store_b16 v20, v5, s[40:43], 0 offen
	buffer_store_b16 v30, v6, s[40:43], 0 offen
	buffer_store_b16 v3, v7, s[40:43], 0 offen
	v_add_lshl_u32 v3, v1, v35, 1
	v_add_lshl_u32 v4, v1, v36, 1
	v_add_lshl_u32 v5, v1, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s93, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v6, v1, v33, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s0, s93, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v1, v0, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s93, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s93, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v32.l, v8.h
	v_mov_b16_e32 v32.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s93, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v29, v4, s[40:43], 0 offen
	buffer_store_b16 v8, v3, s[40:43], 0 offen
	buffer_store_b16 v32, v1, s[40:43], 0 offen
	buffer_store_b16 v2, v5, s[40:43], 0 offen
	buffer_store_b16 v31, v0, s[40:43], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 12
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 12
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23168
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 12
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
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x75 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x4f DW_TAG_subprogram
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
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp21                         ; DW_AT_low_pc
	.long	.Ltmp24-.Ltmp21                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 12
    .sgpr_count:     107
    .sgpr_spill_count: 60
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 2
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
