	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[40:43], s[0:1], 0x4c
	s_load_b32 s66, s[0:1], 0x5c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v90, 6, v0
	v_and_b32_e32 v74, 63, v0
	s_load_b64 s[44:45], s[0:1], 0x0
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_or_b32_e32 v91, 2, v90
	v_or_b32_e32 v92, 4, v90
	v_or_b32_e32 v93, 6, v90
	v_or_b32_e32 v94, 8, v90
	v_or_b32_e32 v95, 10, v90
	v_or_b32_e32 v96, 12, v90
	v_or_b32_e32 v97, 14, v90
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[75:76], null, s66, v90, v[74:75]
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s64, s3, s42
	s_cselect_b32 s49, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s4, s40
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s65, s2, 6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s50, s66, 54
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s25, s66, v74
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[76:77], null, s66, 6, v[75:76]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s65, v91
	v_or_b32_e32 v3, s65, v92
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v98, s66, 1, v75
	s_mul_i32 s71, s66, 62
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s65, v93
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v99, s66, 2, v75
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s65, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s5, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s65, v90
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[77:78], null, s66, 10, v[75:76]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s65, v95
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v28, 54, v1
	v_or_b32_e32 v31, 60, v1
	v_or_b32_e32 v32, 62, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 16, v1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s42, v28
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, 18, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v12, 20, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s2, s5, s6
	s_abs_i32 s6, s3
	s_add_i32 s5, s5, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, 22, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s2, s6, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v14, 24, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s5, s2, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v15, 26, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s5, s6, s5
	s_add_i32 s6, s2, 1
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, 28, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, 30, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s48, s6, s2
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s2, s41
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v18, 32, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, 34, v1
	v_or_b32_e32 v20, 38, v1
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, 40, v1
	v_or_b32_e32 v22, 42, v1
	v_or_b32_e32 v23, 44, v1
	v_or_b32_e32 v24, 46, v1
	v_or_b32_e32 v25, 48, v1
	v_or_b32_e32 v26, 50, v1
	v_or_b32_e32 v27, 52, v1
	v_or_b32_e32 v29, 56, v1
	v_or_b32_e32 v30, 58, v1
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s5, v10
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, 36, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v100, s66, 3, v75
	v_mad_u64_u32 v[78:79], null, s66, 12, v[75:76]
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s42, v4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, s65, v96
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[79:80], null, s66, 14, v[75:76]
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s5, s5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s9, s42, v5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v8, s65, v97
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s42, v6
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s6, s6, s5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s11, s42, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s12, s42, v8
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s40, s41
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s60, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, s42, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s77, s66, 18
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, s42, v31
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s68, s6, s5
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s64, s64, s65
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s42, v32
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s80, s64, s66
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s42, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_add_nc_u32_e32 v33, s80, v75
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s25
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s42, v2
	v_cmp_gt_i32_e64 s7, s42, v3
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v2, s80, v98, 1
	v_add_lshl_u32 v31, v33, s50, 1
	v_add_lshl_u32 v32, v33, s71, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s5, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s80, v99, 1
	v_add_lshl_u32 v4, s80, v76, 1
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v5, s80, v100, 1
	v_add_lshl_u32 v6, s80, v77, 1
	v_add_lshl_u32 v7, s80, v78, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s6, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s78, s66, 4
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s7, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v8, s80, v79, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s8, s25
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s14, s42, v11
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s9, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v9, v33, s78, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s10, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s76, s66, 20
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s11, s25
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s15, s42, v12
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s12, s25
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s42, v10
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v10, v33, s77, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s13, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s75, s66, 22
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s16, s42, v13
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v11, v33, s76, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s14, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s74, s66, 24
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s17, s42, v14
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v12, v33, s75, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s15, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s73, s66, 26
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s42, v15
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v13, v33, s74, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s16, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s72, s66, 28
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s19, s42, v16
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v14, v33, s73, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s17, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s70, s66, 30
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s42, v17
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v15, v33, s72, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s18, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s79, s66, 5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s21, s42, v18
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v16, v33, s70, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s19, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s69, s66, 34
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s22, s42, v19
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v17, v33, s79, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s20, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s63, s66, 36
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v18, v33, s69, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s21, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s62, s66, 38
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s42, v20
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v19, v33, s63, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s22, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s61, s66, 40
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s26, s42, v21
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v20, v33, s62, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s23, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s59, s66, 42
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s27, s42, v22
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v21, v33, s61, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s24, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s58, s66, 44
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s28, s42, v23
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v22, v33, s59, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s26, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s57, s66, 46
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s29, s42, v24
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v23, v33, s58, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s27, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s56, s66, 48
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s30, s42, v25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v24, v33, s57, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s28, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s55, s66, 56
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s34, s42, v29
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v25, v33, s56, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s29, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s52, s66, 50
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s31, s42, v26
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v26, v33, s55, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s30, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s54, s66, 58
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s33, s42, v27
	v_cmp_gt_i32_e64 s35, s42, v30
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v27, v33, s52, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s34, s25
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s53, s66, 52
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v29, v33, s54, 1
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s51, s66, 60
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s31, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v28, v33, s53, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s35, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v30, v33, s51, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s33, s25
	s_and_b32 s4, s4, s25
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	s_and_b32 s45, s45, 0xffff
	s_clause 0x1f
	buffer_load_u16 v1, v1, s[44:47], 0 offen
	buffer_load_u16 v2, v2, s[44:47], 0 offen
	buffer_load_u16 v3, v3, s[44:47], 0 offen
	buffer_load_u16 v4, v4, s[44:47], 0 offen
	buffer_load_u16 v5, v5, s[44:47], 0 offen
	buffer_load_u16 v6, v6, s[44:47], 0 offen
	buffer_load_u16 v7, v7, s[44:47], 0 offen
	buffer_load_u16 v8, v8, s[44:47], 0 offen
	buffer_load_u16 v9, v9, s[44:47], 0 offen
	buffer_load_u16 v10, v10, s[44:47], 0 offen
	buffer_load_u16 v11, v11, s[44:47], 0 offen
	buffer_load_u16 v13, v13, s[44:47], 0 offen
	buffer_load_u16 v14, v14, s[44:47], 0 offen
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	buffer_load_u16 v17, v17, s[44:47], 0 offen
	buffer_load_u16 v18, v18, s[44:47], 0 offen
	buffer_load_u16 v19, v19, s[44:47], 0 offen
	buffer_load_u16 v21, v21, s[44:47], 0 offen
	buffer_load_u16 v22, v22, s[44:47], 0 offen
	buffer_load_u16 v23, v23, s[44:47], 0 offen
	buffer_load_u16 v25, v25, s[44:47], 0 offen
	buffer_load_u16 v26, v26, s[44:47], 0 offen
	buffer_load_u16 v27, v27, s[44:47], 0 offen
	buffer_load_u16 v29, v29, s[44:47], 0 offen
	buffer_load_u16 v28, v28, s[44:47], 0 offen
	buffer_load_u16 v30, v30, s[44:47], 0 offen
	buffer_load_u16 v12, v12, s[44:47], 0 offen
	buffer_load_u16 v16, v16, s[44:47], 0 offen
	buffer_load_u16 v20, v20, s[44:47], 0 offen
	buffer_load_u16 v24, v24, s[44:47], 0 offen
	buffer_load_u16 v31, v31, s[44:47], 0 offen
	buffer_load_u16 v32, v32, s[44:47], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v33, v0, 6, 1
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s68, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v80, 1, v74
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s2, s60
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s7, s43, 15
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s5, s6
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s5
	s_mov_b32 s47, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v33, v33, v80
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s2, s2, 28
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v102, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v107, 0, v34
	v_add_nc_u32_e32 v108, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v109, 0, v33
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s8, v36
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s68, s7, -16
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v102, v1
	s_waitcnt vmcnt(27)
	ds_store_b16 v102, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v102, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v102, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v102, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v102, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v102, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v102, v26 offset:7168
	ds_store_b16 v107, v2
	ds_store_b16 v107, v6 offset:1024
	ds_store_b16 v107, v10 offset:2048
	ds_store_b16 v107, v14 offset:3072
	ds_store_b16 v107, v18 offset:4096
	ds_store_b16 v107, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v107, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v107, v29 offset:7168
	ds_store_b16 v108, v3
	ds_store_b16 v108, v7 offset:1024
	ds_store_b16 v108, v11 offset:2048
	ds_store_b16 v108, v15 offset:3072
	ds_store_b16 v108, v19 offset:4096
	ds_store_b16 v108, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v108, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v108, v30 offset:7168
	ds_store_b16 v109, v4
	ds_store_b16 v109, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v109, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v109, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v109, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v109, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v109, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v109, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s65, s38
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s65, s37
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s39
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s39
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s43, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s4, s9, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s2, s2, -16
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s47, s4, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s68, s68, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v1, 0, 1, s49
	v_and_b32_e32 v65, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s49
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s4, 1, v1
	v_lshlrev_b32_e32 v1, 4, v0
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s65, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s43, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s9, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s2, s2, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s68, s68, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s46, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v103, 15, v0
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_and_b32_e32 v82, 16, v0
	v_and_b32_e32 v101, 0x70, v1
	v_and_b32_e32 v104, 64, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v106, 1, v65
	v_dual_mov_b32 v4, v8 :: v_dual_and_b32 v105, 0x70, v0
	v_mov_b32_e32 v7, v8
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v89, 1, v82
	v_cmp_eq_u32_e64 s2, 0, v82
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
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
	v_mov_b32_e32 v69, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v73, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v66, v8
	v_mov_b32_e32 v71, v8
	v_mov_b32_e32 v70, v8
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s47, s68
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s9, s3, s40
	s_mul_f32 s8, s8, 0x4f7ffffe
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v1, 7, v103
	v_lshlrev_b32_e32 v2, 6, v65
	s_ashr_i32 s9, s9, 31
	s_cvt_u32_f32 s8, s8
	s_xor_b32 s11, s48, s9
	s_sub_i32 s10, 0, s5
	s_sub_i32 s16, s11, s9
	v_or3_b32 v2, v1, v2, v101
	s_mul_i32 s9, s16, s40
	s_mul_i32 s10, s10, s8
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s9, s8, s10
	v_add_nc_u32_e32 v3, 0, v2
	s_clause 0x1
	s_load_b32 s69, s[0:1], 0x7c
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_abs_i32 s10, s3
	s_add_i32 s8, s8, s9
	v_xad_u32 v4, v2, 16, 0
	s_mul_hi_u32 s8, s10, s8
	v_xad_u32 v9, 0x60, v2, 0
	s_ashr_i32 s9, s3, 31
	s_ashr_i32 s6, s6, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s11, s8, s5
	ds_load_b128 v[33:36], v3
	ds_load_b128 v[37:40], v4
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v3, 4, v105
	v_xad_u32 v5, v2, 32, 0
	v_xad_u32 v6, v2, 48, 0
	v_xad_u32 v7, v2, 64, 0
	v_xad_u32 v8, 0x50, v2, 0
	v_xad_u32 v2, 0x70, v2, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s6, s9, s6
	s_sub_i32 s9, s10, s11
	s_ashr_i32 s7, s7, 4
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	ds_load_b128 v[57:60], v9
	ds_load_b128 v[61:64], v2
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v2, s65, v3
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x8
	s_load_b128 s[52:55], s[0:1], 0x28
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s0, s10, s8
	s_cselect_b32 s1, s11, s9
	s_add_i32 s8, s0, 1
	s_cmp_ge_u32 s1, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 48, v2
	v_or_b32_e32 v118, v1, v101
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s0, s8, s0
	.loc	1 734 33                        ; attention.py:734:33
	s_mul_i32 s1, s16, s41
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s0, s0, s6
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v116, s39, v9
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s42, v9
	v_and_b32_e32 v9, 60, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v3
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s0, s0, s6
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[45:48], v6
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[53:56], v8
	.loc	1 734 33                        ; attention.py:734:33
	s_add_i32 s74, s0, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 24, v2
	v_or_b32_e32 v7, 32, v2
	v_or_b32_e32 v8, 40, v2
	v_or_b32_e32 v10, 56, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v110, s39, v2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s42, v2
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v2, 0, v80
	v_lshrrev_b32_e32 v3, 3, v65
	v_lshl_or_b32 v9, v65, 4, v9
	v_lshrrev_b32_e32 v17, 5, v65
	v_lshrrev_b32_e32 v19, 2, v82
	v_mad_u64_u32 v[80:81], null, s69, v103, v[1:2]
	v_lshlrev_b32_e32 v1, 2, v65
	v_xor_b32_e32 v3, v9, v3
	v_mov_b32_e32 v65, 0
	v_and_b32_e32 v13, 1, v0
	v_and_b32_e32 v12, 14, v0
	v_lshl_or_b32 v1, v103, 3, v1
	v_lshlrev_b32_e32 v14, 2, v105
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v117, s39, v10
	v_lshlrev_b32_e32 v15, 5, v13
	v_lshl_or_b32 v119, v13, 6, v3
	v_xor_b32_e32 v1, v1, v106
	v_lshl_or_b32 v13, v13, 2, v17
	v_mov_b32_e32 v17, 0x5410
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s11, s42, v10
	v_xor_b32_e32 v10, 0x60, v118
	v_or_b32_e32 v121, v1, v19
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[81:82], null, s46, v90, v[74:75]
	v_cndmask_b32_e64 v1, 0x1054, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v130, 0, v10
	v_xor_b32_e32 v17, 0x240, v121
	v_mov_b32_e32 v10, v65
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s71, s7, 3
	v_lshl_or_b32 v1, v1, 8, v1
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[83:84], null, s15, 24, v[80:81]
	v_add_nc_u32_e32 v140, 0, v17
	v_mov_b32_e32 v17, 0
	v_lshlrev_b32_e32 v9, 1, v12
	v_lshl_or_b32 v14, v12, 8, v14
	v_mul_u32_u24_e32 v12, 0x48, v12
	v_and_b32_e32 v1, 0x540054, v1
	v_mad_u64_u32 v[84:85], null, s15, 40, v[80:81]
	.loc	1 734 32                        ; attention.py:734:32
	s_mul_i32 s70, s74, s43
	v_or3_b32 v122, v12, v13, v89
	v_cndmask_b32_e64 v12, 0x3276, v20, s2
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s73, s74, s71
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s74, s74, s7
	v_dual_mov_b32 v28, v65 :: v_dual_add_nc_u32 v111, s39, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v12, 8, v12
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v112, s39, v5
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v113, s39, v6
	v_dual_mov_b32 v27, v65 :: v_dual_add_nc_u32 v114, s39, v7
	v_and_b32_e32 v12, 0x760076, v12
	v_dual_mov_b32 v32, v65 :: v_dual_add_nc_u32 v115, s39, v8
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s42, v4
	v_cmp_gt_i32_e64 s6, s42, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v12, v12, 4, v12
	v_cmp_gt_i32_e64 s7, s42, v6
	v_cmp_gt_i32_e64 s8, s42, v7
	v_cmp_gt_i32_e64 s9, s42, v8
	v_xor_b32_e32 v4, 16, v118
	v_and_b32_e32 v124, 0x7060706, v12
	v_mov_b32_e32 v12, v65
	v_or3_b32 v120, v14, v15, v9
	v_xor_b32_e32 v5, 32, v118
	v_xor_b32_e32 v6, 48, v118
	v_xor_b32_e32 v7, 64, v118
	v_xor_b32_e32 v8, 0x50, v118
	v_xor_b32_e32 v16, 16, v120
	v_xor_b32_e32 v11, 0x70, v118
	v_xor_b32_e32 v3, 0x810, v119
	v_xor_b32_e32 v9, 4, v120
	v_xor_b32_e32 v14, 8, v120
	v_add_nc_u32_e32 v136, 0, v16
	v_mov_b32_e32 v16, v65
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v15, 12, v120
	v_xor_b32_e32 v18, 20, v120
	v_xor_b32_e32 v21, 24, v120
	v_xor_b32_e32 v13, 28, v120
	v_xor_b32_e32 v19, 16, v122
	v_xor_b32_e32 v20, 32, v122
	v_xor_b32_e32 v22, 48, v122
	v_xor_b32_e32 v23, 64, v122
	v_xor_b32_e32 v24, 0x50, v122
	v_xor_b32_e32 v25, 0x60, v122
	v_xor_b32_e32 v26, 0x70, v122
	v_and_b32_e32 v123, 0x5040504, v1
	v_lshlrev_b32_e32 v1, 2, v104
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[85:86], null, s15, 48, v[80:81]
	v_mad_u64_u32 v[86:87], null, s15, 56, v[80:81]
	v_mad_u64_u32 v[87:88], null, s46, 6, v[81:82]
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s72, s12, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s12, s15, s65
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s13, s16, s13
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s46, v74
	v_add_nc_u32_e32 v125, 0, v4
	v_add_nc_u32_e32 v126, 0, v5
	v_add_nc_u32_e32 v127, 0, v6
	v_add_nc_u32_e32 v128, 0, v7
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_add_nc_u32 v129, 0, v8
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_add_nc_u32 v131, 0, v11
	v_add_nc_u32_e32 v132, 0, v3
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v133, 0, v9
	v_add_nc_u32_e32 v134, 0, v14
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_add_nc_u32 v135, 0, v15
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v137, 0, v18
	v_dual_mov_b32 v5, v65 :: v_dual_add_nc_u32 v138, 0, v21
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v139, 0, v13
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v141, 0, v19
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_add_nc_u32 v142, 0, v20
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v143, 0, v22
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_add_nc_u32 v144, 0, v23
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_add_nc_u32 v145, 0, v24
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_add_nc_u32 v146, 0, v25
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_add_nc_u32 v147, 0, v26
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, v65
	v_mov_b32_e32 v29, v65
	v_mov_b32_e32 v31, v65
	v_mov_b32_e32 v18, v65
	v_mov_b32_e32 v19, v65
	v_mov_b32_e32 v20, v65
	v_mov_b32_e32 v21, v65
	v_mov_b32_e32 v22, v65
	v_mov_b32_e32 v23, v65
	v_dual_mov_b32 v24, v65 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v14, v65
	v_mov_b32_e32 v15, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v148, v2, v1
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	v_subrev_nc_u32_e32 v149, s37, v110
	v_subrev_nc_u32_e32 v150, s37, v111
	v_subrev_nc_u32_e32 v151, s37, v112
	v_subrev_nc_u32_e32 v152, s37, v113
	v_subrev_nc_u32_e32 v153, s37, v114
	v_subrev_nc_u32_e32 v154, s37, v115
	v_subrev_nc_u32_e32 v155, s37, v116
	v_subrev_nc_u32_e32 v156, s37, v117
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_add_nc_u32 v157, s38, v110
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_add_nc_u32 v158, s38, v111
	v_dual_mov_b32 v88, 0xff800000 :: v_dual_add_nc_u32 v159, s38, v112
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v160, s38, v113
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v161, s38, v114
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v162, s38, v115
	v_add_nc_u32_e32 v163, s38, v116
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v164, s38, v117
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v165, s15, 3, v80
	v_lshl_add_u32 v166, s15, 4, v80
	v_lshl_add_u32 v167, s15, 5, v80
	v_lshl_add_u32 v168, s46, 1, v81
	v_lshl_add_u32 v169, s46, 2, v81
	v_lshl_add_u32 v170, v103, 1, 0
	v_mov_b32_e32 v175, 0
	v_mov_b32_e32 v179, 0xff800000
	v_mov_b32_e32 v181, 0xff800000
	v_mov_b32_e32 v183, 0xff800000
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s14
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_add_i32 s75, s13, s12
	s_and_b32 s49, s49, 0xffff
	s_add_i32 s75, s75, s3
	s_and_b32 s57, s55, 0xffff
	s_mov_b32 s56, s54
	s_and_b32 s61, s51, 0xffff
	s_mov_b32 s60, s50
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s50, s58
	s_mov_b32 s51, s59
	s_mov_b32 s76, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s3, s47, s69
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s20, s47, 4
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s3, s75, s3
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s20, s20, s74
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v186, s3, v80, 2
	v_add_lshl_u32 v195, s3, v165, 2
	v_add_lshl_u32 v196, s3, v166, 2
	v_add_lshl_u32 v197, s3, v83, 2
	v_add_lshl_u32 v198, s3, v167, 2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s28
	v_add_lshl_u32 v199, s3, v84, 2
	v_add_lshl_u32 v200, s3, v85, 2
	v_add_lshl_u32 v201, s3, v86, 2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s29
	v_cndmask_b32_e64 v196, 0x80000000, v196, s30
	v_cndmask_b32_e64 v197, 0x80000000, v197, s38
	v_cndmask_b32_e64 v198, 0x80000000, v198, s40
	v_cndmask_b32_e64 v199, 0x80000000, v199, s37
	v_cndmask_b32_e64 v200, 0x80000000, v200, s41
	v_cndmask_b32_e64 v201, 0x80000000, v201, s39
	s_clause 0x7
	buffer_load_b32 v208, v186, s[56:59], 0 offen
	buffer_load_b32 v209, v195, s[56:59], 0 offen
	buffer_load_b32 v210, v196, s[56:59], 0 offen
	buffer_load_b32 v211, v197, s[56:59], 0 offen
	buffer_load_b32 v212, v198, s[56:59], 0 offen
	buffer_load_b32 v214, v200, s[56:59], 0 offen
	buffer_load_b32 v213, v199, s[56:59], 0 offen
	buffer_load_b32 v215, v201, s[56:59], 0 offen
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v189, v189, v189 :: v_dual_add_nc_u32 v198, 0, v119
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s47, 1
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v190, v190, v190 :: v_dual_add_nc_u32 v199, 0, v120
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v223, s3, v90
	v_or_b32_e32 v224, s3, v91
	v_or_b32_e32 v225, s3, v92
	v_or_b32_e32 v226, s3, v93
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s3, s3, s73
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v187, v187, v187 :: v_dual_add_nc_u32 v216, 0, v121
	.loc	1 774 30                        ; attention.py:774:30
	s_mul_i32 s3, s3, s46
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v206, v88, v88 :: v_dual_add_nc_u32 v229, s3, v87
	v_dual_max_f32 v207, v184, v184 :: v_dual_add_nc_u32 v222, s3, v81
	v_add_nc_u32_e32 v227, s3, v168
	v_add_nc_u32_e32 v228, s3, v169
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s3, s71, v223
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v223, v223, 1, 1
	v_lshl_or_b32 v224, v224, 1, 1
	v_lshl_or_b32 v225, v225, 1, 1
	v_lshl_or_b32 v226, v226, 1, 1
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v188, v188, v188 :: v_dual_add_nc_u32 v217, 0, v122
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s20, s20, s46
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s3, s0, s3
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v230, s20, v74, 1
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s23, s43, v223
	v_cmp_gt_i32_e64 s22, s43, v224
	v_cmp_gt_i32_e64 s21, s43, v225
	v_cmp_gt_i32_e64 s20, s43, v226
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v224, 0x80000000, v222, s3
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v230, 0x80000000, v230, s0
	.loc	1 775 32                        ; attention.py:775:32
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s54, s58
	s_mov_b32 s55, s59
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v185
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v186.h, 0
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v191, v191, v191 :: v_dual_max_f32 v192, v192, v192
	v_dual_max_f32 v193, v193, v193 :: v_dual_max_f32 v194, v194, v194
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v218.h, v186.h
	v_mov_b16_e64 v219.h, v186.h
	v_mov_b16_e64 v220.h, v186.h
	v_mov_b16_e64 v221.h, v186.h
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v200, v179, v179 :: v_dual_max_f32 v201, v180, v180
	v_dual_max_f32 v202, v181, v181 :: v_dual_max_f32 v203, v182, v182
	v_dual_max_f32 v204, v183, v183 :: v_dual_max_f32 v205, v82, v82
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v179
	v_cmp_neq_f32_e64 s16, 0xff800000, v181
	v_cmp_neq_f32_e64 s14, 0xff800000, v183
	v_cmp_neq_f32_e64 s12, 0xff800000, v88
	v_cmp_neq_f32_e64 s13, 0xff800000, v82
	v_cmp_neq_f32_e64 s17, 0xff800000, v180
	v_cmp_neq_f32_e64 s15, 0xff800000, v182
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v184
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v195.h, v186.h
	v_mov_b16_e64 v197.h, v186.h
	v_mov_b16_e64 v196.h, v186.h
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s47, s47, 16
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v208, 0xff800000, v208, s28
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v209, 0xff800000, v209, s29
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v210, 0xff800000, v210, s30
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v211, 0xff800000, v211, s38
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v212, 0xff800000, v212, s40
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v214, 0xff800000, v214, s41
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v213, 0xff800000, v213, s37
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v215, 0xff800000, v215, s39
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v210
	v_cmp_neq_f32_e64 s24, 0xff800000, v208
	v_cmp_neq_f32_e64 s35, 0xff800000, v214
	v_cmp_neq_f32_e64 s31, 0xff800000, v211
	v_cmp_neq_f32_e64 s34, 0xff800000, v213
	v_cmp_neq_f32_e64 s36, 0xff800000, v215
	v_cmp_neq_f32_e64 s33, 0xff800000, v212
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s30, s30, s27
	s_and_b32 s27, s41, s35
	s_and_b32 s28, s28, s24
	s_and_b32 s31, s38, s31
	s_and_b32 s35, s37, s34
	s_and_b32 s34, s39, s36
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	ds_store_2addr_b32 v198, v208, v210 offset1:32
	ds_store_2addr_b32 v198, v212, v214 offset0:64 offset1:96
	ds_store_2addr_b32 v132, v209, v211 offset1:32
	ds_store_2addr_b32 v132, v213, v215 offset0:64 offset1:96
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v209
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	v_cndmask_b32_e64 v209, 0, 1, s30
	v_cndmask_b32_e64 v210, 0, 1, s27
	v_cndmask_b32_e64 v208, 0, 1, s28
	v_cndmask_b32_e64 v213, 0, 1, s31
	v_cndmask_b32_e64 v215, 0, 1, s34
	s_and_b32 s33, s40, s33
	v_mov_b16_e64 v186.l, v210.l
	v_cndmask_b32_e64 v212, 0, 1, s33
	v_mov_b16_e64 v196.l, v209.l
	v_cndmask_b32_e64 v214, 0, 1, s35
	v_mov_b16_e64 v197.l, v208.l
	v_mov_b16_e64 v208.l, v215.l
	v_mov_b16_e64 v210.l, v213.l
	s_and_b32 s29, s29, s26
	v_mov_b16_e64 v195.l, v212.l
	v_lshlrev_b16 v186.l, 8, v186.l
	v_lshlrev_b16 v196.l, 8, v196.l
	v_cndmask_b32_e64 v211, 0, 1, s29
	v_mov_b16_e64 v209.l, v214.l
	v_lshlrev_b16 v208.l, 8, v208.l
	v_lshlrev_b16 v208.h, 8, v210.l
	v_or_b16 v214.h, v195.l, v186.l
	v_or_b16 v214.l, v197.l, v196.l
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v209.h, v209.l, v208.l
	v_or_b16 v209.l, v211.l, v208.h
	.loc	1 762 35                        ; attention.py:762:35
	s_barrier
	ds_load_b32 v222, v199
	ds_load_b32 v223, v133
	ds_load_b32 v225, v134
	ds_load_b32 v226, v135
	ds_load_b32 v231, v136
	ds_load_b32 v232, v137
	ds_load_b32 v233, v138
	ds_load_b32 v234, v139
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v216, v214
	ds_store_b32 v140, v209
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v186, v217
	ds_load_u8_d16 v195, v141
	ds_load_u8_d16 v196, v142
	ds_load_u8_d16 v197, v143
	ds_load_u8_d16 v208, v144
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v208, v145
	ds_load_u8_d16 v209, v146
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v209, v147
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s47, s68
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v210, 0x3fb8aa3b, v222
	v_dual_mul_f32 v212, 0x3fb8aa3b, v223 :: v_dual_mul_f32 v213, 0x3fb8aa3b, v225
	v_mul_f32_e32 v211, 0x3fb8aa3b, v226
	v_dual_mul_f32 v215, 0x3fb8aa3b, v231 :: v_dual_mul_f32 v222, 0x3fb8aa3b, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v210, s72, v66
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_and_b16 v66.l, 1, v186.l
	v_and_b16 v66.h, 1, v195.l
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v212, s72, v67 :: v_dual_fmac_f32 v215, s72, v70
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v67.l, 1, v196.l
	v_and_b16 v67.h, 1, v197.l
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v214, 0x3fb8aa3b, v233 :: v_dual_fmac_f32 v213, s72, v68
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v68.l, 1, v208.l
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v216, 0x3fb8aa3b, v234 :: v_dual_fmac_f32 v211, s72, v69
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v68.h, 1, v208.h
	v_and_b16 v69.l, 1, v209.l
	v_and_b16 v69.h, 1, v209.h
	v_cmp_eq_u16_e64 s24, 1, v66.l
	v_cmp_eq_u16_e64 s26, 1, v66.h
	v_cmp_eq_u16_e64 s36, 1, v67.l
	v_cmp_eq_u16_e64 s37, 1, v67.h
	v_cmp_eq_u16_e64 s38, 1, v68.l
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v222, s72, v71
	v_fmac_f32_e32 v214, s72, v72
	v_fmac_f32_e32 v216, s72, v73
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s39, 1, v68.h
	v_cmp_eq_u16_e64 s40, 1, v69.l
	v_cmp_eq_u16_e64 s41, 1, v69.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v68, 0xff800000, v210, s24
	v_cndmask_b32_e64 v69, 0xff800000, v212, s26
	v_cndmask_b32_e64 v208, 0xff800000, v213, s36
	v_cndmask_b32_e64 v209, 0xff800000, v211, s37
	v_cndmask_b32_e64 v210, 0xff800000, v215, s38
	v_cndmask_b32_e64 v217, 0xff800000, v222, s39
	v_cndmask_b32_e64 v214, 0xff800000, v214, s40
	v_cndmask_b32_e64 v225, 0xff800000, v216, s41
	ds_store_b32 v199, v68
	ds_store_b32 v133, v69
	ds_store_b32 v134, v208
	ds_store_b32 v135, v209
	ds_store_b32 v136, v210
	ds_store_b32 v137, v217
	ds_store_b32 v138, v214
	ds_store_b32 v139, v225
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[72:73], v198 offset0:64 offset1:96
	ds_load_2addr_b32 v[66:67], v198 offset1:32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v199, v68, v69, v208
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[70:71], v132 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v211, v209, v210, v217
	v_max_f32_e32 v212, v214, v225
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[222:223], v132 offset0:64 offset1:96
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v216, 0x80000000, v229, s3
	v_cndmask_b32_e64 v213, 0x80000000, v227, s3
	v_cndmask_b32_e64 v215, 0x80000000, v228, s3
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(3)
	v_max_f32_e32 v233, v72, v72
	v_max3_f32 v198, v199, v211, v212
.Ltmp6:
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x3
	buffer_load_u8 v211, v224, s[60:63], 0 offen
	buffer_load_u8 v212, v213, s[60:63], 0 offen
	buffer_load_u8 v213, v215, s[60:63], 0 offen
	buffer_load_u8 v215, v216, s[60:63], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v216, v230, s[52:55], 0 offen
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v226, v70
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v228, v67 :: v_dual_max_f32 v235, v222, v222
	v_permlanex16_b32 v199, v198, s76, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v224, v66, v66 :: v_dual_max_f32 v237, v73, v73
	v_max_f32_e32 v239, v223, v223
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v226, v226 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v198, v185, v198, v199
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v199, v66 :: v_dual_mov_b32 v230, v71
	v_mov_b32_e32 v234, v222
	v_dual_mov_b32 v232, v72 :: v_dual_sub_f32 v69, v69, v198
.Ltmp12:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v185, v185, v198
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v199, v199 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v236, v73
	v_dual_mov_b32 v238, v223 :: v_dual_sub_f32 v217, v217, v198
.Ltmp14:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v209, v209, v198
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v228, v228 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v210, v210, v198
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v230, v230 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v234, v234 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v185, v185
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v199, v199, v199 :: v_dual_sub_f32 v214, v214, v198
	v_max_f32_e32 v227, v70, v70
	v_max_f32_e32 v229, v67, v67
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v232, v232 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v236, v236 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v240, v210
	v_exp_f32_e32 v210, v217
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v217, v228, v228
	v_max_f32_e32 v199, v224, v199
.Ltmp23:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v241, v214
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v214, v226, v226
	v_max_f32_e32 v226, v230, v230
	v_dual_max_f32 v230, v234, v234 :: v_dual_max_f32 v231, v71, v71
.Ltmp25:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v68, v68, v198
	v_dual_sub_f32 v225, v225, v198 :: v_dual_max_f32 v228, v232, v232
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v232, v236, v236
.Ltmp27:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v185, 0, v185, s19
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v224, v227, v214 :: v_dual_max_f32 v227, v229, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v229, v235, v230 :: v_dual_max_f32 v230, v237, v232
.Ltmp29:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v185
	v_mul_f32_e32 v17, v17, v185
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v238, v238 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v237, v229 :: v_dual_max_f32 v226, v231, v226
.Ltmp31:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v208, v208, v198
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v209, v209
	v_exp_f32_e32 v225, v225
.Ltmp32:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v235, v226
.Ltmp33:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v208, v208
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v234, v238, v238 :: v_dual_mul_f32 v25, v25, v185
	v_max_f32_e32 v228, v233, v228
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v232, v199 :: v_dual_mul_f32 v21, v21, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v231, v239, v234
.Ltmp37:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v217, 0, v69, s26
	v_cndmask_b32_e64 v68, 0, v68, s24
	v_cndmask_b32_e64 v214, 0, v209, s37
	v_cndmask_b32_e64 v69, 0, v208, s36
	v_cndmask_b32_e64 v208, 0, v240, s38
	v_cndmask_b32_e64 v209, 0, v225, s41
	v_cndmask_b32_e64 v225, 0, v241, s40
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v234, v227 :: v_dual_mul_f32 v9, v9, v185
	v_dual_mov_b32 v236, v228 :: v_dual_mul_f32 v31, v31, v185
	v_dual_mov_b32 v238, v230 :: v_dual_mul_f32 v19, v19, v185
	v_mov_b32_e32 v239, v231
.Ltmp39:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v185
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v233, v224
.Ltmp41:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v218.l, v68.h
	v_mov_b16_e64 v219.l, v69.h
	v_mov_b16_e64 v220.l, v208.h
	v_mov_b16_e64 v221.l, v225.h
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v232, v232 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v185
	v_mul_f32_e32 v28, v28, v185
	v_mul_f32_e32 v30, v30, v185
	v_mul_f32_e32 v22, v22, v185
	v_mul_f32_e32 v23, v23, v185
	v_mul_f32_e32 v24, v24, v185
	v_mul_f32_e32 v10, v10, v185
	v_mul_f32_e32 v11, v11, v185
	v_mul_f32_e32 v12, v12, v185
	v_mul_f32_e32 v14, v14, v185
	v_mul_f32_e32 v15, v15, v185
	v_mul_f32_e32 v16, v16, v185
	v_mul_f32_e32 v2, v2, v185
	v_mul_f32_e32 v3, v3, v185
	v_mul_f32_e32 v4, v4, v185
	v_mul_f32_e32 v5, v5, v185
	v_mul_f32_e32 v6, v6, v185
	v_mul_f32_e32 v7, v7, v185
	v_mul_f32_e32 v8, v8, v185
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v233, v233 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v234, v234 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v32, v32, v185
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v235, v235 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v185
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v236, v236 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v18, v18, v185
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v238, v238 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v20, v20, v185
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v239, v239 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v185
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v185, 1, v218
	v_and_b32_e32 v218, 1, v219
	v_and_b32_e32 v219, 1, v220
	v_and_b32_e32 v220, 1, v221
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v221, v232, v232 :: v_dual_max_f32 v232, v233, v233
	v_max_f32_e32 v233, v234, v234
.Ltmp55:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s36, v68, v68
	v_add3_u32 v68, v68, v185, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v199, v221
.Ltmp57:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v185, v208, v219, 0x7fff
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v219, v227, v233
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v237, v237 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v234, v235, v235
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v227, v199
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v235, v236, v236
.Ltmp63:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s37, v69, v69
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v236, v237, v237
.Ltmp65:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v69, v69, v218, 0x7fff
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v227, v227 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v237, v238, v238
	v_max_f32_e32 v221, v228, v235
.Ltmp68:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v210, 0, v210, s39
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s38, v208, v208
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v227, v227, v227
.Ltmp70:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s39, v225, v225
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v238, v239, v239
.Ltmp72:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v185.l, 0x7fff, v69.h, s37
	v_cndmask_b16 v69.l, 0x7fff, v185.h, s38
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v199, v227
.Ltmp74:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s26, v217, v217
	v_cmp_o_f32_e64 s3, v214, v214
	v_cmp_o_f32_e64 s24, v210, v210
	v_cmp_o_f32_e64 s19, v209, v209
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v227, v199
.Ltmp76:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v227, v227 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v227, v227, v227 :: v_dual_max_f32 v218, v224, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v224, v229, v236 :: v_dual_max_f32 v199, v199, v227
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v228, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v232, v224 :: v_dual_mov_b32 v229, v219
.Ltmp80:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v187, v187, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v228, v228 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v232, v232 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v229, v229 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v199, v200, v199
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v66, v66, v187
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v228, v228, v228 :: v_dual_max_f32 v229, v229, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v232, v232, v232 :: v_dual_sub_f32 v179, v179, v199
.Ltmp84:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v219, v219, v229
.Ltmp86:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v179, v179
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v229, v219
.Ltmp88:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v208, v225, v220, 0x7fff
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v225, v230, v237
	v_max_f32_e32 v220, v226, v234
	v_dual_max_f32 v226, v231, v238 :: v_dual_mov_b32 v231, v221
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v229, v229 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v233, v225 :: v_dual_mov_b32 v230, v220
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v224, v224, v232
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v231, v231 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v229, v229, v229
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v233, v233 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v234, v226
	v_mov_b32_dpp v230, v230 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v231, v231, v231
	v_max_f32_e32 v219, v219, v229
	v_max_f32_e32 v233, v233, v233
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v234, v234 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v230, v230, v230 :: v_dual_max_f32 v221, v221, v231
	v_dual_max_f32 v218, v218, v228 :: v_dual_max_f32 v225, v225, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v234, v234, v234
	v_dual_max_f32 v220, v220, v230 :: v_dual_mov_b32 v231, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v228, v218 :: v_dual_mov_b32 v233, v225
.Ltmp99:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v189, v189, v219 :: v_dual_mov_b32 v230, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v231, v231 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v228, v228 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v233, v233 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v226, v226, v234
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v230, v230 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v231, v231, v231 :: v_dual_mov_b32 v232, v224
	v_dual_max_f32 v233, v233, v233 :: v_dual_mov_b32 v234, v226
	v_max_f32_e32 v228, v228, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v230, v230, v230 :: v_dual_max_f32 v221, v221, v231
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v232, v232 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v225, v225, v233
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v234, v234 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v218, v218, v228
	v_max_f32_e32 v220, v220, v230
	v_dual_max_f32 v232, v232, v232 :: v_dual_max_f32 v191, v191, v221
	v_dual_max_f32 v234, v234, v234 :: v_dual_max_f32 v193, v193, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v200, v201, v218
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v224, v224, v232 :: v_dual_max_f32 v201, v202, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v226, v226, v234
.Ltmp110:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v202, v203, v220 :: v_dual_sub_f32 v73, v73, v193
	v_max_f32_e32 v203, v204, v221
	v_max_f32_e32 v188, v188, v218
	v_dual_max_f32 v190, v190, v220 :: v_dual_sub_f32 v181, v181, v201
	v_dual_max_f32 v204, v205, v224 :: v_dual_max_f32 v205, v206, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v192, v192, v224 :: v_dual_sub_f32 v183, v183, v203
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v71, v71, v190
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v73, v73
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v66, 0, v66, s28
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_dual_max_f32 v194, v194, v226 :: v_dual_sub_f32 v67, v67, v189
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v219, v183
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v71, v71
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v206, v207, v226
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v183, 0, v179, s18
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v67, v67
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v181, v181
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v73, 0, v73, s27
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v82, v82, v204
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v207, v222, v192 :: v_dual_sub_f32 v218, v223, v194
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v179, 0, v219, s14
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v219, v66
.Ltmp112:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v71, 0, v71, s31
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v88, v88, v205 :: v_dual_mov_b32 v225, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v67, 0, v67, s30
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v219, v219 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v180, v180, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v221, v88
.Ltmp115:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v225, v225 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v70, v70, v188
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v66, v66, v219
.Ltmp118:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v72, v72, v191
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v220, v82
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v82, 0, v181, s16
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v73, v73, v225
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v219, v66
.Ltmp121:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v70, v70
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v181, 0, v221, s12
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v221, v67
.Ltmp123:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v180, v180
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v225, v73
.Ltmp125:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v207, v207
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v219, v219 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v221, v221 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v184, v184, v206
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v72, 0, v72, s33
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v182, v182, v202
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v70, 0, v70, s29
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v67, v67, v221
.Ltmp129:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v222, v184
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v223, v72
.Ltmp131:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v182, v182
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v184, 0, v180, s17
	v_cndmask_b32_e64 v180, 0, v220, s13
.Ltmp132:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v220, v70
	v_mov_b32_dpp v225, v225 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v207, 0, v207, s35
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v223, v223 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v221, v67
	v_mov_b32_dpp v220, v220 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v73, v73, v225
.Ltmp136:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v88, 0, v182, s15
	v_cndmask_b32_e32 v182, 0, v222, vcc_lo
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v222, v71
	v_mov_b32_dpp v221, v221 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v225, v73
.Ltmp138:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v208.l, 0x7fff, v68.h, s36
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(4)
	v_and_b16 v68.h, v211.l, 15
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v222, v222 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v67, v67, v221 :: v_dual_add_f32 v70, v70, v220
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v225, v225 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp142:
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v68.h
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v71, v71, v222
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v221, v67 :: v_dual_mov_b32 v220, v70
.Ltmp145:
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(2)
	v_and_b16 v185.h, v213.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v196.l, 4, v213.l
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v222, v71
	v_mov_b32_dpp v221, v221 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v220, v220 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v186.l, 4, v211.l
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v68.l, 0x7fff, v208.h, s39
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v222, v222 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v67, v67, v221 :: v_dual_add_f32 v70, v70, v220
.Ltmp150:
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(1)
	v_and_b16 v208.h, v215.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v195.l, 4, v215.l
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v71, v71, v222
.Ltmp152:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v69.h, v212.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v197.l, 4, v212.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s14, 7, v208.h
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v195, 0, v195, s20
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v222, v71
.Ltmp154:
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v196, 0, v196, s21
	v_cndmask_b32_e64 v197, 0, v197, s22
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s12, 7, v69.h
	v_cmp_lt_u16_e64 s13, 7, v185.h
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v222, v222 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v66, v66, v219
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v224, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v221, v71, v222
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v219, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v224, v224 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v219, v219 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v207, v207, v224 :: v_dual_add_f32 v66, v66, v219
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v224, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v224, v224 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v72, v72, v223 :: v_dual_add_f32 v207, v207, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v223, v72
.Ltmp164:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v218, v218
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v224, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v223, v223 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v224, v224 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v72, v72, v223
.Ltmp167:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v218, 0, v218, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v222, v207, v224 :: v_dual_mov_b32 v223, v72
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v226, v218 :: v_dual_add_f32 v207, v73, v225
	v_mov_b32_e32 v220, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v225, v222
	v_mov_b32_dpp v223, v223 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v226, v226 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v219, v207
	v_mov_b32_dpp v220, v220 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v73, v67
	v_mov_b32_dpp v225, v225 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v218, v218, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v72, v72, v223 :: v_dual_add_f32 v227, v70, v220
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v70, v66 :: v_dual_mov_b32 v223, v221
	v_mov_b32_e32 v226, v218
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v71, v227
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v223, v223 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v226, v226 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v219, v219 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v70, v66, v70
	v_add_f32_e32 v66, v67, v73
	v_dual_add_f32 v218, v218, v226 :: v_dual_add_f32 v67, v221, v223
.Ltmp173:
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v221, 15, v211
	v_and_b32_e32 v223, 15, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v71, v227, v71 :: v_dual_mov_b32 v226, v218
	v_add_f32_e32 v73, v222, v225
.Ltmp175:
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v213, -16, v221
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v211, 16, v216
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v216, -16, v223
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v226, v226 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v73, v174, v180
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e32 v213, v221, v213, vcc_lo
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v71, v178, v184
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v216, v223, v216, s13
.Ltmp178:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v218, v218, v226
.Ltmp179:
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v223, -16, v197
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v213, v213
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v224, v72
.Ltmp181:
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s13, 7, v196
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v216, v216
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v67, v172, v88
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v213, v213, v211
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v224, v224 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v178, v71
.Ltmp183:
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v216, v216, v211
	v_mov_b32_e32 v172, v67
	v_mov_b32_e32 v174, v73
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v72, v72, v224
.Ltmp185:
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v224, 15, v215
	v_mov_b32_e32 v180, v200
	v_mov_b32_e32 v88, v205
	v_mov_b32_e32 v184, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v225, -16, v224
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b32_e64 v221, v224, v225, s14
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v225, -16, v195
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s14, 7, v195
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v224, -16, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v221, v221
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v195, v195, v225, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v196, v196, v224, s13
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s13, v216, v216
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_dual_mul_f32 v221, v211, v221 :: v_dual_fmac_f32 v70, v177, v183
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v195, v195
	.loc	1 784 29 is_stmt 1              ; attention.py:784:29
	v_and_b32_e32 v222, 15, v212
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v212, 0, v186, s23
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v186.l, v217.h
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v196, v196
	v_mul_f32_e32 v195, v211, v195
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v215, -16, v222
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v212
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v226, 1, v186
	v_mov_b16_e64 v186.l, v214.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v196, v211, v196
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v215, v222, v215, s12
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v222, -16, v212
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s12, 7, v197
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_add3_u32 v217, v217, v226, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v224, v221, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v215, v215
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e32 v212, v212, v222, vcc_lo
	v_cndmask_b32_e64 v197, v197, v223, s12
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v222, 1, v186
	v_mov_b16_e64 v186.l, v210.h
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v220, v218 :: v_dual_mul_f32 v215, v215, v211
.Ltmp187:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v212, v212
	v_cvt_f32_i32_e32 v197, v197
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v223, 1, v186
	v_mov_b16_e64 v186.l, v209.h
	v_add3_u32 v214, v214, v222, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v212, v212, v211 :: v_dual_mov_b32 v177, v70
	v_mul_f32_e32 v197, v197, v211
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_bfe_u32 v211, v213, 16, 1
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cndmask_b16 v208.h, 0x7fff, v217.h, s26
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v217, v215, 16, 1
	v_bfe_u32 v222, v216, 16, 1
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v236, v210, v223, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v210, v213, v211, 0x7fff
	v_bfe_u32 v211, v212, 16, 1
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v66, v171, v82
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v186, 1, v186
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	v_cmp_o_f32_e64 s12, v215, v215
	v_cmp_o_f32_e64 s14, v221, v221
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v185.h, 0x7fff, v214.h, s3
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v213, v215, v217, 0x7fff
	v_bfe_u32 v214, v197, 16, 1
	v_add3_u32 v215, v216, v222, 0x7fff
	v_bfe_u32 v216, v196, 16, 1
	v_add3_u32 v217, v221, v224, 0x7fff
	v_bfe_u32 v221, v195, 16, 1
	v_cmp_o_f32_e64 s3, v212, v212
	v_mov_b32_e32 v171, v66
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v245, v209, v186, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v209, v212, v211, 0x7fff
	v_cmp_o_f32_e64 s15, v197, v197
	v_cmp_o_f32_e64 s16, v196, v196
	v_cmp_o_f32_e64 s17, v195, v195
	v_cndmask_b16 v68.h, 0x7fff, v210.h, vcc_lo
	v_add3_u32 v197, v197, v214, 0x7fff
	v_add3_u32 v196, v196, v216, 0x7fff
	v_add3_u32 v210, v195, v221, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v213.h, s12
	v_cndmask_b16 v186.l, 0x7fff, v215.h, s13
	v_cndmask_b16 v186.h, 0x7fff, v217.h, s14
	v_cndmask_b16 v195.l, 0x7fff, v209.h, s3
	v_cndmask_b16 v195.h, 0x7fff, v197.h, s15
	v_cndmask_b16 v196.l, 0x7fff, v196.h, s16
	v_cndmask_b16 v196.h, 0x7fff, v210.h, s17
	ds_store_b16_d16_hi v148, v68
	ds_store_b16_d16_hi v148, v69 offset:512
	ds_store_b16 v148, v186 offset:1024
	ds_store_b16_d16_hi v148, v186 offset:1536
	ds_store_b16 v148, v195 offset:128
	ds_store_b16_d16_hi v148, v195 offset:640
	ds_store_b16 v148, v196 offset:1152
	ds_store_b16_d16_hi v148, v196 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v211, v170 offset:512
	ds_load_u16_d16 v222, v170 offset:288
	ds_load_u16_d16 v231, v170 offset:608
	ds_load_u16_d16 v230, v170 offset:352
	ds_load_u16_d16 v239, v170 offset:576
	ds_load_u16_d16 v240, v170 offset:832
	ds_load_u16_d16 v241, v170 offset:1088
	ds_load_u16_d16 v242, v170 offset:1344
	ds_load_u16_d16 v243, v170 offset:1600
	ds_load_u16_d16 v244, v170 offset:1856
	ds_load_u16_d16 v212, v170 offset:768
	ds_load_u16_d16 v223, v170 offset:544
	ds_load_u16_d16 v210, v170 offset:256
	ds_load_u16_d16 v238, v170 offset:320
	ds_load_u16_d16 v209, v170
	ds_load_u16_d16 v221, v170 offset:32
	ds_load_u16_d16 v237, v170 offset:64
	ds_load_u16_d16 v229, v170 offset:96
	ds_load_u16_d16 v213, v170 offset:1024
	ds_load_u16_d16 v224, v170 offset:800
	ds_load_u16_d16 v232, v170 offset:864
	ds_load_u16_d16 v214, v170 offset:1280
	ds_load_u16_d16 v225, v170 offset:1056
	ds_load_u16_d16 v233, v170 offset:1120
	ds_load_u16_d16 v215, v170 offset:1536
	ds_load_u16_d16 v226, v170 offset:1312
	ds_load_u16_d16 v234, v170 offset:1376
	ds_load_u16_d16 v216, v170 offset:1792
	ds_load_u16_d16 v227, v170 offset:1568
	ds_load_u16_d16 v235, v170 offset:1632
	ds_load_u16_d16 v228, v170 offset:1824
	ds_load_u16_d16 v236, v170 offset:1888
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v230, v170 offset:480
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v239, v170 offset:704
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v240, v170 offset:960
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v241, v170 offset:1216
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v242, v170 offset:1472
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v243, v170 offset:1728
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v244, v170 offset:1984
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v209, v170 offset:128
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v221, v170 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v237, v170 offset:192
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v229, v170 offset:224
	ds_load_u16_d16_hi v211, v170 offset:640
	ds_load_u16_d16_hi v210, v170 offset:384
	ds_load_u16_d16_hi v222, v170 offset:416
	ds_load_u16_d16_hi v238, v170 offset:448
	ds_load_u16_d16_hi v212, v170 offset:896
	ds_load_u16_d16_hi v223, v170 offset:672
	ds_load_u16_d16_hi v231, v170 offset:736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v213, v170 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v224, v170 offset:928
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v232, v170 offset:992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v214, v170 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v225, v170 offset:1184
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v233, v170 offset:1248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v215, v170 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v226, v170 offset:1440
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v234, v170 offset:1504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v216, v170 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v227, v170 offset:1696
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v235, v170 offset:1760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v228, v170 offset:1952
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(31)
	v_cndmask_b16 v69.h, 0x7fff, v236.h, s24
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16_hi v236, v170 offset:2016
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v68.h, 0x7fff, v245.h, s19
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v220, v220 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp189:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v246, v208, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v195, v69, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v186, v185, s76, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v196, v68, s76, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v72, v173, v179 :: v_dual_mov_b32 v179, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v249, v195, v69, v123
	v_perm_b32 v250, v195, v69, v124
	v_perm_b32 v251, v196, v68, v123
	v_perm_b32 v252, v196, v68, v124
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v68, v207, v219 :: v_dual_mov_b32 v173, v72
	v_add_f32_e32 v69, v218, v220
.Ltmp191:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v245, v246, v208, v123
	v_perm_b32 v246, v246, v208, v124
	v_perm_b32 v247, v186, v185, v123
	v_perm_b32 v248, v186, v185, v124
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v68, v175, v181 :: v_dual_fmac_f32 v69, v176, v182
	v_mov_b32_e32 v185, v198
	v_mov_b32_e32 v181, v201
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[209:216], v[245:252], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[221:228], v[245:252], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[237:244], v[245:252], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[229:236], v[245:252], v[1:8]
	v_dual_mov_b32 v175, v68 :: v_dual_mov_b32 v176, v69
	v_dual_mov_b32 v182, v202 :: v_dual_mov_b32 v183, v203
	v_mov_b32_e32 v82, v204
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v66, s47, v90
	v_or_b32_e32 v67, s47, v91
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s3, s47, s70
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v68, s47, v92
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s18, s3, s66
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e32 vcc_lo, s43, v66
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v69, s47, v93
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s3, s43, v67
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v66, s18, v75, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v70, s47, v94
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s12, s43, v68
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v67, s18, v98, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v71, s47, v95
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, vcc_lo
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s13, s43, v69
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v68, s18, v99, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v72, s47, v96
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s3
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s14, s43, v70
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v69, s18, v76, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v73, s47, v97
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s12
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s15, s43, v71
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v70, s18, v100, 1
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s13
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s16, s43, v72
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v71, s18, v77, 1
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s14
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s17, s43, v73
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v72, s18, v78, 1
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s15
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v73, s18, v79, 1
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s16
	.loc	1 736 32                        ; attention.py:736:32
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_add_nc_u32 v195, 0, v118
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s25, s17
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u16 v186, v66, s[48:51], 0 offen
	buffer_load_u16 v70, v70, s[48:51], 0 offen
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	buffer_load_u16 v71, v71, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v72, v72, s[48:51], 0 offen
	buffer_load_u16 v69, v69, s[48:51], 0 offen
	buffer_load_u16 v73, v73, s[48:51], 0 offen
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v66, v65
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v102, v186
	s_waitcnt vmcnt(6)
	ds_store_b16 v102, v70 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v107, v67
	s_waitcnt vmcnt(4)
	ds_store_b16 v107, v71 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v108, v68
	s_waitcnt vmcnt(2)
	ds_store_b16 v108, v72 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v109, v69
	s_waitcnt vmcnt(0)
	ds_store_b16 v109, v73 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[195:198], v195
	ds_load_b128 v[199:202], v125
	ds_load_b128 v[203:206], v126
	ds_load_b128 v[207:210], v127
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v72, v65
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[211:214], v128
	ds_load_b128 v[215:218], v129
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[219:222], v130
	ds_load_b128 v[223:226], v131
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v186, s47, v103
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[195:202], v[33:40], v[66:73]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s3, s43, v186
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[203:210], v[41:48], v[66:73]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s28, s1, s3
	s_and_b32 s29, s5, s3
	s_and_b32 s30, s6, s3
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[211:218], v[49:56], v[66:73]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s38, s7, s3
	s_and_b32 s40, s8, s3
	s_and_b32 s37, s9, s3
	s_and_b32 s41, s10, s3
	s_and_b32 s39, s11, s3
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[219:226], v[57:64], v[66:73]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v186, v110
	v_cmp_le_i32_e64 s3, v186, v111
	v_cmp_le_i32_e64 s12, v186, v112
	v_cmp_le_i32_e64 s13, v186, v113
	v_cmp_le_i32_e64 s14, v186, v114
	v_cmp_le_i32_e64 s15, v186, v115
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s18, vcc_lo, s28
	s_and_b32 s3, s3, s29
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s16, v186, v116
	v_cmp_le_i32_e64 s17, v186, v117
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s12, s12, s30
	s_and_b32 s13, s13, s38
	s_and_not1_b32 s19, s28, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s29, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s40
	s_and_b32 s15, s15, s37
	s_or_b32 s28, s19, s18
	s_or_b32 s29, s20, s3
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s38, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s41
	s_and_b32 s17, s17, s39
	s_or_b32 s30, s3, s12
	s_or_b32 s38, s18, s13
	s_and_not1_b32 s3, s40, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s37, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s40, s3, s12
	s_or_b32 s37, s13, s14
	s_and_not1_b32 s3, s41, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s39, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s41, s3, s12
	s_or_b32 s39, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v186, v149
	v_cmp_ge_i32_e64 s3, v186, v150
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s18, v186, v157
	v_cmp_le_i32_e64 s19, v186, v158
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v186, v151
	v_cmp_ge_i32_e64 s13, v186, v152
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s20, v186, v159
	v_cmp_le_i32_e64 s21, v186, v160
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v186, v153
	v_cmp_ge_i32_e64 s15, v186, v154
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s22, v186, v161
	v_cmp_le_i32_e64 s23, v186, v162
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v186, v155
	v_cmp_ge_i32_e64 s17, v186, v156
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s24, v186, v163
	v_cmp_le_i32_e64 s26, v186, v164
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s18, s18, s28
	s_and_b32 s3, s3, s29
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s30
	s_and_b32 s13, s13, s38
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s28, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s29, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s40
	s_and_b32 s15, s15, s37
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s26
	s_or_b32 s28, s19, s18
	s_or_b32 s29, s20, s3
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s38, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s41
	s_and_b32 s17, s17, s39
	s_or_b32 s30, s3, s12
	s_or_b32 s38, s18, s13
	s_and_not1_b32 s3, s40, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s37, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s40, s3, s12
	s_or_b32 s37, s13, s14
	s_and_not1_b32 s3, s41, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s39, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s41, s3, s12
	s_or_b32 s39, s13, s14
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshrrev_b32_e32 v33, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v37, 3, v104
	v_add_nc_u32_e32 v38, 0, v105
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v35, 4, v33
	v_and_b32_e32 v36, 0x80, v0
	s_barrier
	ds_store_b128 v38, v[70:73]
	ds_store_b128 v38, v[66:69] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v36, 0, v35, v36
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v63, v106, v103
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v61, 2, v89
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s33, s46, v89
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 55, v89
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v36, v36, v37, v101
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v75, s65, v63
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s46, v61
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v33, 54, v89
	v_or_b32_e32 v34, 53, v89
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v64, v36
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s42, v75
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v35, 52, v89
	v_or_b32_e32 v36, 51, v89
	v_or_b32_e32 v37, 50, v89
	v_or_b32_e32 v38, 49, v89
	v_or_b32_e32 v39, 48, v89
	v_or_b32_e32 v40, 39, v89
	v_or_b32_e32 v41, 38, v89
	v_or_b32_e32 v42, 37, v89
	v_or_b32_e32 v43, 36, v89
	v_or_b32_e32 v44, 35, v89
	v_or_b32_e32 v45, 34, v89
	v_or_b32_e32 v46, 33, v89
	v_or_b32_e32 v47, 32, v89
	v_or_b32_e32 v48, 23, v89
	v_or_b32_e32 v49, 22, v89
	v_or_b32_e32 v50, 21, v89
	v_or_b32_e32 v51, 20, v89
	v_or_b32_e32 v52, 19, v89
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v66, null, v64, v64, v26
	v_div_scale_f32 v65, null, v64, v64, v25
	v_div_scale_f32 v74, s1, v26, v64, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v66
	v_rcp_f32_e32 v67, v65
	v_div_scale_f32 v69, null, v64, v64, v27
	v_div_scale_f32 v70, vcc_lo, v25, v64, v25
	v_div_scale_f32 v73, null, v64, v64, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v71, v69
	v_div_scale_f32 v79, s3, v27, v64, v27
	v_fma_f32 v72, -v66, v68, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v65, v67, 1.0
	v_rcp_f32_e32 v76, v73
	v_div_scale_f32 v81, null, v64, v64, v18
	v_dual_fmac_f32 v68, v72, v68 :: v_dual_fmac_f32 v67, v62, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v69, v71, 1.0
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v53, 18, v89
	v_or_b32_e32 v54, 17, v89
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v77, v74, v68
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v55, 16, v89
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v71, v62, v71
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v62, 1, v89
	v_or_b32_e32 v56, 7, v89
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v80, -v66, v77, v74
	v_mul_f32_e32 v72, v70, v67
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v57, 6, v89
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s31, s46, v62
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v58, 5, v89
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v77, v80, v68
	v_fma_f32 v78, -v65, v72, v70
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v59, 4, v89
	v_or_b32_e32 v60, 3, v89
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s46, v58
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v66, -v66, v77, v74
	v_fmac_f32_e32 v72, v78, v67
	v_div_scale_f32 v78, s4, v28, v64, v28
	v_div_scale_f32 v74, null, v64, v64, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v65, -v65, v72, v70
	v_fma_f32 v70, -v73, v76, 1.0
	v_mul_f32_e32 v75, v79, v71
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s46, v60
	v_cmp_gt_i32_e64 s28, s46, v59
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v67, v72
	v_div_scale_f32 v67, null, v64, v64, v29
	v_fmac_f32_e32 v76, v70, v76
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v25, v65, v64, v25
	v_fma_f32 v65, -v69, v75, v79
	v_rcp_f32_e32 v70, v67
	v_mul_f32_e32 v72, v78, v76
	v_div_fmas_f32 v66, v66, v68, v77
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v75, v65, v71
	v_rcp_f32_e32 v65, v74
	v_fma_f32 v68, -v73, v72, v78
	v_div_fixup_f32 v26, v66, v64, v26
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v64
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v66, -v69, v75, v79
	v_fma_f32 v77, -v67, v70, 1.0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s46, v57
	v_cmp_gt_i32_e64 s25, s46, v56
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fmas_f32 v66, v66, v71, v75
	v_fmac_f32_e32 v70, v77, v70
	v_fma_f32 v69, -v74, v65, 1.0
	v_div_scale_f32 v77, null, v64, v64, v31
	v_fmac_f32_e32 v72, v68, v76
	v_div_scale_f32 v68, s5, v29, v64, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v69, v65
	v_rcp_f32_e32 v69, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v73, v72, v78
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v75, s3, v30, v64, v30
	v_div_fixup_f32 v27, v66, v64, v27
	v_div_fmas_f32 v71, v71, v76, v72
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v78, null, v64, v64, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v77, v69, 1.0
	v_div_fixup_f32 v28, v71, v64, v28
	v_div_scale_f32 v71, s4, v31, v64, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v78
	v_fmac_f32_e32 v69, v79, v69
	v_mul_f32_e32 v73, v68, v70
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s34, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v72, -v67, v73, v68
	v_mul_f32_e32 v76, v75, v65
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s35, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v79, -v78, v80, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s36, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v73, v72, v70
	v_div_scale_f32 v72, null, v64, v64, v17
	v_fma_f32 v66, -v74, v76, v75
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v73, v68
	v_rcp_f32_e32 v68, v72
	v_div_scale_f32 v79, s6, v32, v64, v32
	v_fmac_f32_e32 v76, v66, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v70, v73
	s_mov_b32 vcc_lo, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s46, v55
	v_cmp_gt_i32_e64 s23, s46, v54
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v70, -v74, v76, v75
	v_div_fixup_f32 v29, v67, v64, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v72, v68, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s46, v53
	v_cmp_gt_i32_e64 s21, s46, v52
	v_cmp_gt_i32_e64 s20, s46, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v68, v75, v68
	v_div_scale_f32 v75, s3, v17, v64, v17
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s46, v50
	v_cmp_gt_i32_e64 s18, s46, v49
	v_cmp_gt_i32_e64 s17, s46, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v67, v75, v68
	v_mul_f32_e32 v66, v71, v69
	v_div_fmas_f32 v65, v70, v65, v76
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v70, v81
	v_div_scale_f32 v76, s4, v18, v64, v18
	v_fma_f32 v73, -v77, v66, v71
	v_div_fixup_f32 v30, v65, v64, v30
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s46, v47
	v_cmp_gt_i32_e64 s15, s46, v46
	v_cmp_gt_i32_e64 s14, s46, v45
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v66, v73, v69
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s46, v44
	v_cmp_gt_i32_e64 s12, s46, v43
	v_cmp_gt_i32_e64 s11, s46, v42
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v65, -v77, v66, v71
	v_div_scale_f32 v77, null, v64, v64, v20
	v_fma_f32 v71, -v81, v70, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s46, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v69, v66
	v_fma_f32 v69, -v72, v67, v75
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v70, v71, v70
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s46, v34
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v31, v65, v64, v31
	v_fmac_f32_e32 v67, v69, v68
	v_rcp_f32_e32 v69, v77
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s46, v33
	v_cmp_gt_i32_e64 s7, s46, v0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v65, -v72, v67, v75
	v_div_scale_f32 v72, s5, v19, v64, v19
	.loc	1 846 17 is_stmt 1              ; attention.py:846:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v75, -v77, v69, 1.0
	v_fmac_f32_e32 v69, v75, v69
	v_mul_f32_e32 v74, v79, v80
	v_div_scale_f32 v75, null, v64, v64, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v78, v74, v79
	v_fmac_f32_e32 v74, v73, v80
	v_div_scale_f32 v73, null, v64, v64, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v78, v74, v79
	v_rcp_f32_e32 v71, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v73, v71, 1.0
	v_fmac_f32_e32 v71, v78, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v80, v74
	v_mul_f32_e32 v74, v76, v70
	v_div_scale_f32 v78, null, v64, v64, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v66, v64, v32
	v_fma_f32 v66, -v81, v74, v76
	v_div_fmas_f32 v65, v65, v68, v67
	v_rcp_f32_e32 v67, v78
	v_div_scale_f32 v68, s3, v20, v64, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, v66, v70
	v_mul_f32_e32 v66, v72, v71
	v_div_fixup_f32 v17, v65, v64, v17
	v_rcp_f32_e32 v80, v75
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v65, -v81, v74, v76
	v_fma_f32 v76, -v73, v66, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v78, v67, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v65, v70, v74
	v_fmac_f32_e32 v66, v76, v71
	v_mul_f32_e32 v79, v68, v69
	v_fmac_f32_e32 v67, v81, v67
	v_div_scale_f32 v74, s4, v21, v64, v21
	v_fma_f32 v76, -v75, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v77, v79, v68
	v_div_fixup_f32 v18, v65, v64, v18
	v_fma_f32 v65, -v73, v66, v72
	v_div_scale_f32 v73, null, v64, v64, v23
	v_fmac_f32_e32 v79, v70, v69
	v_mul_f32_e32 v70, v74, v67
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v80, v76, v80
	v_div_scale_f32 v72, s6, v22, v64, v22
	v_div_fmas_f32 v65, v65, v71, v66
	v_fma_f32 v66, -v77, v79, v68
	v_fma_f32 v68, -v78, v70, v74
	v_rcp_f32_e32 v71, v73
	v_div_scale_f32 v77, null, v64, v64, v24
	v_mul_f32_e32 v76, v72, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v67
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v68, v77
	v_div_fmas_f32 v66, v66, v69, v79
	v_fma_f32 v69, -v75, v76, v72
	v_div_fixup_f32 v19, v65, v64, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v73, v71, 1.0
	v_fma_f32 v65, -v78, v70, v74
	v_div_fixup_f32 v20, v66, v64, v20
	v_fmac_f32_e32 v76, v69, v80
	v_div_scale_f32 v66, s3, v23, v64, v23
	v_fmac_f32_e32 v71, v79, v71
	v_fma_f32 v69, -v77, v68, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v78, null, v64, v64, v10
	v_div_fmas_f32 v65, v65, v67, v70
	v_mul_f32_e32 v70, v66, v71
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, null, v64, v64, v9
	v_fma_f32 v67, -v75, v76, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v73, v70, v66
	v_div_scale_f32 v72, s4, v24, v64, v24
	v_rcp_f32_e32 v74, v69
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v70, v75, v71
	v_div_fmas_f32 v67, v67, v80, v76
	v_mul_f32_e32 v76, v72, v68
	v_div_fixup_f32 v21, v65, v64, v21
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v66, -v73, v70, v66
	v_div_scale_f32 v73, null, v64, v64, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v69, v74, 1.0
	v_div_fixup_f32 v22, v67, v64, v22
	v_fma_f32 v65, -v77, v76, v72
	v_rcp_f32_e32 v67, v78
	v_div_fmas_f32 v66, v66, v71, v70
	v_fmac_f32_e32 v74, v75, v74
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v76, v65, v68
	v_div_scale_f32 v65, s5, v9, v64, v9
	v_div_scale_f32 v80, null, v64, v64, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v70, -v77, v76, v72
	v_fma_f32 v79, -v78, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v71, v65, v74
	v_div_scale_f32 v72, s3, v10, v64, v10
	v_fma_f32 v77, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v79, v67
	v_fma_f32 v79, -v69, v71, v65
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v82, v80
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, s6, v11, v64, v11
	v_mul_f32_e32 v81, v72, v67
	v_div_fmas_f32 v68, v70, v68, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v71, v79, v74 :: v_dual_mul_f32 v76, v77, v75
	v_div_fixup_f32 v23, v66, v64, v23
	v_fma_f32 v70, -v78, v81, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v68, v64, v24
	v_fma_f32 v65, -v69, v71, v65
	v_fma_f32 v66, -v73, v76, v77
	v_div_scale_f32 v69, null, v64, v64, v13
	v_fmac_f32_e32 v81, v70, v67
	v_fma_f32 v68, -v80, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v66, v75
	v_rcp_f32_e32 v66, v69
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v70, -v78, v81, v72
	v_fmac_f32_e32 v82, v68, v82
	v_div_scale_f32 v68, s4, v12, v64, v12
	v_div_fmas_f32 v65, v65, v74, v71
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v72, null, v64, v64, v14
	v_div_fmas_f32 v67, v70, v67, v81
	v_fma_f32 v70, -v73, v76, v77
	v_mul_f32_e32 v71, v68, v82
	v_fma_f32 v73, -v69, v66, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v74, v72
	v_div_fmas_f32 v70, v70, v75, v76
	v_fma_f32 v75, -v80, v71, v68
	v_fmac_f32_e32 v66, v73, v66
	v_div_scale_f32 v73, s3, v13, v64, v13
	v_div_fixup_f32 v9, v65, v64, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v75, v82
	v_div_fixup_f32 v10, v67, v64, v10
	v_mul_f32_e32 v65, v73, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v67, -v72, v74, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v68, -v80, v71, v68
	v_div_fixup_f32 v11, v70, v64, v11
	v_fma_f32 v75, -v69, v65, v73
	v_div_scale_f32 v70, null, v64, v64, v15
	v_fmac_f32_e32 v74, v67, v74
	v_div_scale_f32 v67, s5, v14, v64, v14
	v_div_fmas_f32 v68, v68, v82, v71
	v_fmac_f32_e32 v65, v75, v66
	v_rcp_f32_e32 v76, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v71, v67, v74
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v68, v64, v12
	v_fma_f32 v68, -v69, v65, v73
	v_div_scale_f32 v75, null, v64, v64, v16
	v_fma_f32 v69, -v72, v71, v67
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v65, v68, v66, v65
	v_div_scale_f32 v66, null, v64, v64, v1
	v_fma_f32 v73, -v70, v76, 1.0
	v_rcp_f32_e32 v77, v75
	v_fmac_f32_e32 v71, v69, v74
	v_rcp_f32_e32 v69, v66
	v_div_scale_f32 v68, s3, v15, v64, v15
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v73, null, v64, v64, v2
	v_div_fixup_f32 v13, v65, v64, v13
	v_fma_f32 v67, -v72, v71, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v75, v77, 1.0
	v_rcp_f32_e32 v79, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v66, v69, 1.0
	v_mul_f32_e32 v72, v68, v76
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v77, v65, v77
	v_div_scale_f32 v65, s4, v16, v64, v16
	v_fmac_f32_e32 v69, v78, v69
	v_div_scale_f32 v78, null, v64, v64, v3
	v_div_fmas_f32 v67, v67, v74, v71
	v_fma_f32 v71, -v70, v72, v68
	v_mul_f32_e32 v74, v65, v77
	v_div_scale_f32 v80, s5, v1, v64, v1
	v_fma_f32 v81, -v73, v79, 1.0
	v_rcp_f32_e32 v82, v78
	v_fmac_f32_e32 v72, v71, v76
	v_fma_f32 v71, -v75, v74, v65
	v_mul_f32_e32 v83, v80, v69
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s6, v2, v64, v2
	v_div_fixup_f32 v14, v67, v64, v14
	v_fma_f32 v67, -v70, v72, v68
	v_fmac_f32_e32 v74, v71, v77
	v_fma_f32 v68, -v66, v83, v80
	v_mul_f32_e32 v70, v81, v79
	v_fma_f32 v71, -v78, v82, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v75, v74, v65
	v_fmac_f32_e32 v83, v68, v69
	v_fma_f32 v68, -v73, v70, v81
	v_fmac_f32_e32 v82, v71, v82
	v_div_scale_f32 v71, s3, v3, v64, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v66, v83, v80
	v_fmac_f32_e32 v70, v68, v79
	v_div_fmas_f32 v67, v67, v76, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v68, v71, v82
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v72, null, v64, v64, v4
	v_div_fmas_f32 v65, v65, v77, v74
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v67, v64, v15
	v_div_fmas_f32 v66, v66, v69, v83
	v_fma_f32 v69, -v73, v70, v81
	v_fma_f32 v73, -v78, v68, v71
	v_rcp_f32_e32 v74, v72
	v_div_fixup_f32 v16, v65, v64, v16
	v_div_fixup_f32 v1, v66, v64, v1
	v_div_scale_f32 v66, null, v64, v64, v5
	v_fmac_f32_e32 v68, v73, v82
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v76, null, v64, v64, v8
	v_div_fmas_f32 v69, v69, v79, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v78, v68, v71
	v_fma_f32 v67, -v72, v74, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v78, v76
	v_div_fixup_f32 v2, v69, v64, v2
	v_div_fmas_f32 v65, v65, v82, v68
	v_rcp_f32_e32 v68, v66
	v_fmac_f32_e32 v74, v67, v74
	v_div_scale_f32 v67, null, v64, v64, v6
	v_div_scale_f32 v69, null, v64, v64, v7
	v_div_scale_f32 v70, vcc_lo, v4, v64, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v67
	v_rcp_f32_e32 v73, v69
	v_div_fixup_f32 v3, v65, v64, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v65, -v66, v68, 1.0
	v_mul_f32_e32 v75, v70, v74
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v68, v65, v68
	v_div_scale_f32 v65, s3, v5, v64, v5
	v_fma_f32 v77, -v67, v71, 1.0
	v_fma_f32 v80, -v69, v73, 1.0
	v_fma_f32 v79, -v72, v75, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, v65, v68 :: v_dual_fmac_f32 v78, v82, v78
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, s4, v6, v64, v6
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, s5, v7, v64, v7
	v_fmac_f32_e32 v75, v79, v74
	v_fma_f32 v79, -v66, v81, v65
	v_div_scale_f32 v82, s6, v8, v64, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v83, v77, v71 :: v_dual_mul_f32 v84, v80, v73
	v_fmac_f32_e32 v81, v79, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v82, v78
	v_fma_f32 v70, -v72, v75, v70
	v_fma_f32 v72, -v67, v83, v77
	v_fma_f32 v79, -v69, v84, v80
	v_fma_f32 v65, -v66, v81, v65
	v_fma_f32 v66, -v76, v85, v82
	v_div_fmas_f32 v70, v70, v74, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v72, v71 :: v_dual_fmac_f32 v84, v79, v73
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v85, v66, v78
	v_div_fmas_f32 v65, v65, v68, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v67, -v67, v83, v77
	v_fma_f32 v66, -v69, v84, v80
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v68, -v76, v85, v82
	v_div_fixup_f32 v4, v70, v64, v4
	v_div_fmas_f32 v67, v67, v71, v83
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v65, v64, v5
	v_div_fmas_f32 v66, v66, v73, v84
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v67, v64, v6
	v_div_fmas_f32 v68, v68, v78, v85
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v65, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v66, v64, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v66, v27, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v8, v68, v64, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v64, 0, v1, s1
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_nc_u32_e32 v1, s64, v63
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v63, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v63, v25, v63, 0x7fff
	v_add3_u32 v25, v26, v65, 0x7fff
	v_add3_u32 v26, v27, v66, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v65, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v63.h, s34
	v_bfe_u32 v63, v29, 16, 1
	v_cmp_o_f32_e64 s34, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s35
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s36
	v_add3_u32 v28, v29, v63, 0x7fff
	v_cmp_o_f32_e64 s35, v29, v29
	v_add3_u32 v29, v30, v65, 0x7fff
	v_cmp_o_f32_e64 s36, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s34
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s35
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s36
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s34, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s36, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s34
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s34, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s36
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s36, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s34
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s35
	v_cmp_o_f32_e64 s34, v21, v21
	v_cmp_o_f32_e64 s35, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s36
	v_bfe_u32 v19, v23, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s35
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s36, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s35, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s34, v24, v24
	v_cmp_o_f32_e64 s36, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s35
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s34
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s34, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s35, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s36
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s36, v13, v13
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s34
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s35
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s34, v14, v14
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s35, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s36, v16, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s34
	v_bfe_u32 v13, v64, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s35
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s36
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v13, v64, v13, 0x7fff
	v_cmp_o_f32_e64 s34, v64, v64
	v_add3_u32 v15, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s35, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s36, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_bfe_u32 v14, v5, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s34
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s35
	v_cmp_o_f32_e64 s34, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v14, v5, v14, 0x7fff
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e64 s35, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s36
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s36, v6, v6
	v_add3_u32 v6, v7, v15, 0x7fff
	v_cmp_o_f32_e64 s37, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s38, v8, v8
	v_cndmask_b32_e64 v7, v17, v26, s2
	v_cndmask_b32_e64 v8, v26, v17, s2
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s35
	v_cndmask_b32_e64 v14, v20, v29, s2
	v_cndmask_b32_e64 v15, v29, v20, s2
	v_cndmask_b32_e64 v16, v19, v18, s2
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e64 v18, v18, v19, s2
	v_cndmask_b32_e64 v19, v12, v9, s2
	v_cndmask_b32_e64 v9, v9, v12, s2
	v_cndmask_b32_e64 v12, 0x1054, v17, s2
	v_cndmask_b32_e64 v17, 0x3276, v20, s2
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s36
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s37
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s38
	v_cndmask_b32_e64 v6, v25, v28, s2
	v_lshl_or_b32 v17, v17, 8, v17
	s_mov_b32 s34, 0x76543210
	v_and_b32_e32 v12, 0x540054, v12
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v1, v1, s46
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v20, v11, v10, s2
	v_cndmask_b32_e64 v10, v10, v11, s2
	v_cndmask_b32_e64 v11, v3, v13, s2
	v_cndmask_b32_e64 v3, v13, v3, s2
	v_cndmask_b32_e64 v13, v4, v2, s2
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v2, v2, v4, s2
	v_permlanex16_b32 v4, v6, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_cndmask_b32_e64 v5, v28, v25, s2
	v_lshl_or_b32 v12, v17, 4, v17
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v63, v1, v89, 1
	v_add_lshl_u32 v62, v1, v62, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v8, 0x5040504, v8
	v_mov_b16_e32 v67.h, 0
	v_permlanex16_b32 v15, v15, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v18, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v10, v10, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v4, v5, v8
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s33
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v61, v1, v61, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s31
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s46, v40
	.loc	1 846 17 is_stmt 1              ; attention.py:846:17
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s30
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s46, v39
	v_cmp_gt_i32_e64 s4, s46, v38
	v_cmp_gt_i32_e64 s3, s46, v37
	v_cmp_gt_i32_e64 s1, s46, v36
	v_cmp_gt_i32_e32 vcc_lo, s46, v35
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
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
	v_mov_b16_e32 v11.h, v67.h
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_store_b16 v18, v63, s[44:47], 0 offen
	v_add_lshl_u32 v18, v1, v60, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v67.l, v4.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v11, v62, s[44:47], 0 offen
	buffer_store_b16 v4, v61, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v59, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s29
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v2, v2, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v11, 0x80000000, v18, s2
	v_add_lshl_u32 v18, v1, v58, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s28
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v57, v1, v57, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s27
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v2, v13, v8
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s26
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v2, v13, v12
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x1
	buffer_store_b16 v67, v11, s[44:47], 0 offen
	buffer_store_b16 v5, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v56, 1
	v_add_lshl_u32 v5, v1, v55, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s25
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[44:47], 0 offen
	buffer_store_b16 v6, v57, s[44:47], 0 offen
	v_add_lshl_u32 v6, v1, v54, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s24
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v12.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v11, v1, v53, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s23
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v22.l, v7.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s22
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v22.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_store_b16 v12, v4, s[44:47], 0 offen
	buffer_store_b16 v7, v5, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v52, 1
	v_add_lshl_u32 v5, v1, v51, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s21
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[44:47], 0 offen
	buffer_store_b16 v14, v11, s[44:47], 0 offen
	v_add_lshl_u32 v6, v1, v50, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s20
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v49, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s19
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v24.l, v15.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s18
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v24.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v21, v4, s[44:47], 0 offen
	buffer_store_b16 v15, v5, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v48, 1
	v_add_lshl_u32 v5, v1, v47, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s17
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v24, v6, s[44:47], 0 offen
	buffer_store_b16 v16, v7, s[44:47], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s16
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v45, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s15
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v26.l, v17.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s14
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v26.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v23, v4, s[44:47], 0 offen
	buffer_store_b16 v17, v5, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s13
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v26, v6, s[44:47], 0 offen
	buffer_store_b16 v9, v7, s[44:47], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s12
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v25.l, v9.h
	v_mov_b16_e32 v25.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v41, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s11
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v28.l, v19.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s10
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v28.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v25, v4, s[44:47], 0 offen
	buffer_store_b16 v19, v5, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	v_add_lshl_u32 v5, v1, v39, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s6
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v28, v6, s[44:47], 0 offen
	buffer_store_b16 v10, v7, s[44:47], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s5
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v37, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s4
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v27.l, v10.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s3
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v27.h, v67.h
	v_mov_b16_e32 v30.l, v20.h
	v_mov_b16_e32 v30.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x3
	buffer_store_b16 v27, v4, s[44:47], 0 offen
	buffer_store_b16 v20, v5, s[44:47], 0 offen
	buffer_store_b16 v30, v6, s[44:47], 0 offen
	buffer_store_b16 v3, v7, s[44:47], 0 offen
	v_add_lshl_u32 v3, v1, v35, 1
	v_add_lshl_u32 v4, v1, v36, 1
	v_add_lshl_u32 v5, v1, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v6, v1, v33, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s9
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v29.h, v67.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v32.l, v8.h
	v_mov_b16_e32 v32.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v29, v4, s[44:47], 0 offen
	buffer_store_b16 v8, v3, s[44:47], 0 offen
	buffer_store_b16 v32, v1, s[44:47], 0 offen
	buffer_store_b16 v2, v5, s[44:47], 0 offen
	buffer_store_b16 v31, v0, s[44:47], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp192:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 253
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 253
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17652
; TotalNumSgprs: 83
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 253
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     253
    .vgpr_spill_count: 0
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
