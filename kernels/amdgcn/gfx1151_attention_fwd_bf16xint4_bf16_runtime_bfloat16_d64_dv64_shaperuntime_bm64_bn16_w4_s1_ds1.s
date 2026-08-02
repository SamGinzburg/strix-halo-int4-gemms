	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[56:59], s[0:1], 0x80
	s_load_b128 s[36:39], s[0:1], 0x4c
	s_load_b32 s62, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v93, 6, v0
	v_and_b32_e32 v74, 63, v0
	s_load_b64 s[40:41], s[0:1], 0x0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_or_b32_e32 v94, 2, v93
	v_or_b32_e32 v95, 4, v93
	v_or_b32_e32 v96, 6, v93
	v_or_b32_e32 v97, 8, v93
	v_or_b32_e32 v98, 10, v93
	v_or_b32_e32 v99, 12, v93
	v_or_b32_e32 v100, 14, v93
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s56
	s_bitcmp1_b32 s56, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[75:76], null, s62, v93, v[74:75]
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s60, s3, s38
	s_cselect_b32 s45, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s36
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s61, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s46, s62, 54
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s25, s62, v74
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[76:77], null, s62, 6, v[75:76]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s61, v94
	v_or_b32_e32 v3, s61, v95
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v101, s62, 1, v75
	s_mul_i32 s71, s62, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s61, v96
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v102, s62, 2, v75
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s61, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s61, v93
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[77:78], null, s62, 10, v[75:76]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s61, v98
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, 54, v1
	v_or_b32_e32 v31, 60, v1
	v_or_b32_e32 v32, 62, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, 16, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s38, v28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, 18, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, 20, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s5, s6
	s_abs_i32 s6, s3
	s_add_i32 s5, s5, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, 22, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, 24, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, 26, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s5, s6, s5
	s_add_i32 s6, s2, 1
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, 28, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, 30, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s44, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s37
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, 32, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, 34, v1
	v_or_b32_e32 v20, 38, v1
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, 40, v1
	v_or_b32_e32 v22, 42, v1
	v_or_b32_e32 v23, 44, v1
	v_or_b32_e32 v24, 46, v1
	v_or_b32_e32 v25, 48, v1
	v_or_b32_e32 v26, 50, v1
	v_or_b32_e32 v27, 52, v1
	v_or_b32_e32 v29, 56, v1
	v_or_b32_e32 v30, 58, v1
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v103, s62, 3, v75
	v_mad_u64_u32 v[78:79], null, s62, 12, v[75:76]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s38, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s61, v99
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[79:80], null, s62, 14, v[75:76]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s38, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s61, v100
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s38, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s38, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s38, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s36, s37
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s64, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s38, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s77, s62, 18
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s38, v31
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s68, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s60, s60, s61
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s38, v32
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s80, s60, s62
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s38, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s80, v75
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s25
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s38, v2
	v_cmp_gt_i32_e64 s7, s38, v3
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v2, s80, v101, 1
	v_add_lshl_u32 v31, v33, s46, 1
	v_add_lshl_u32 v32, v33, s71, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s5, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s80, v102, 1
	v_add_lshl_u32 v4, s80, v76, 1
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v5, s80, v103, 1
	v_add_lshl_u32 v6, s80, v77, 1
	v_add_lshl_u32 v7, s80, v78, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s6, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s78, s62, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s7, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s80, v79, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s8, s25
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s38, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s9, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, v33, s78, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s10, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s76, s62, 20
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s11, s25
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s38, v12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s12, s25
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s38, v10
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v10, v33, s77, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s13, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s75, s62, 22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s38, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, v33, s76, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s14, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s74, s62, 24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s38, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, v33, s75, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s15, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s73, s62, 26
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s38, v15
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, v33, s74, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s16, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s72, s62, 28
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s38, v16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v33, s73, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s17, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s70, s62, 30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s38, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, v33, s72, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s18, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s79, s62, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s38, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v33, s70, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s19, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s69, s62, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s38, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s79, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s20, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s67, s62, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s69, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s21, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s66, s62, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s38, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s67, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s22, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s65, s62, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s38, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s66, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s23, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s62, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s38, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s65, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s24, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s62, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s38, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s55, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s26, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s62, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s38, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s54, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s27, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s52, s62, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s38, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s53, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s28, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s51, s62, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s38, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s52, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s29, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s48, s62, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s38, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s51, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s30, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s50, s62, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s38, v27
	v_cmp_gt_i32_e64 s35, s38, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s48, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s34, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s49, s62, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s50, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s47, s62, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s31, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s49, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s35, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v30, v33, s47, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s33, s25
	s_and_b32 s4, s4, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	s_and_b32 s41, s41, 0xffff
	s_clause 0x1f
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	buffer_load_u16 v3, v3, s[40:43], 0 offen
	buffer_load_u16 v4, v4, s[40:43], 0 offen
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	buffer_load_u16 v10, v10, s[40:43], 0 offen
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v29, v29, s[40:43], 0 offen
	buffer_load_u16 v28, v28, s[40:43], 0 offen
	buffer_load_u16 v30, v30, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v31, v31, s[40:43], 0 offen
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v33, v0, 6, 1
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s68, s64
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v80, 1, v74
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s64
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s39, 15
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s5
	s_mov_b32 s27, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v80
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s2, s2, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v105, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v110, 0, v34
	v_add_nc_u32_e32 v111, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v112, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s33, s7, -16
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s56, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v105, v1
	s_waitcnt vmcnt(27)
	ds_store_b16 v105, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v105, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v105, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v105, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v105, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v105, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v105, v26 offset:7168
	ds_store_b16 v110, v2
	ds_store_b16 v110, v6 offset:1024
	ds_store_b16 v110, v10 offset:2048
	ds_store_b16 v110, v14 offset:3072
	ds_store_b16 v110, v18 offset:4096
	ds_store_b16 v110, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v110, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v110, v29 offset:7168
	ds_store_b16 v111, v3
	ds_store_b16 v111, v7 offset:1024
	ds_store_b16 v111, v11 offset:2048
	ds_store_b16 v111, v15 offset:3072
	ds_store_b16 v111, v19 offset:4096
	ds_store_b16 v111, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v111, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v111, v30 offset:7168
	ds_store_b16 v112, v4
	ds_store_b16 v112, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v112, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v112, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v112, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v112, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v112, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v112, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s61, s58
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s61, s57
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s59
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s59
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s39, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s4, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s27, s4, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s33, s33, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s45
	v_and_b32_e32 v65, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s4, 1, v1
	v_lshlrev_b32_e32 v1, 4, v0
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s61, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s39, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s9, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s2, s2, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s33, s33, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v81, 16, v0
	v_and_b32_e32 v106, 15, v0
	v_and_b32_e32 v104, 0x70, v1
	v_and_b32_e32 v107, 64, v0
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v109, 1, v65
	v_dual_mov_b32 v3, v8 :: v_dual_and_b32 v108, 0x70, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v92, 1, v81
	v_cmp_eq_u32_e64 s2, 0, v81
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
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
	v_mov_b32_e32 v73, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v69, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v71, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v66, v8
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s27, s33
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s9, s3, s36
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s9, s9, 31
	v_and_b32_e32 v11, 14, v0
	s_xor_b32 s11, s44, s9
	s_cvt_u32_f32 s8, s8
	v_lshrrev_b32_e32 v12, 4, v0
	v_lshlrev_b32_e32 v13, 1, v107
	s_sub_i32 s10, 0, s5
	s_sub_i32 s16, s11, s9
	s_mul_i32 s10, s10, s8
	s_mul_i32 s9, s16, s36
	v_dual_mov_b32 v28, 0x5410 :: v_dual_lshlrev_b32 v1, 7, v106
	v_dual_mov_b32 v29, 0x7632 :: v_dual_lshlrev_b32 v2, 6, v65
	v_lshlrev_b32_e32 v14, 7, v11
	v_and_b32_e32 v15, 1, v0
	v_and_or_b32 v12, v12, 2, v13
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s9, s8, s10
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_abs_i32 s10, s3
	s_add_i32 s8, s8, s9
	v_or3_b32 v2, v1, v2, v104
	s_mul_hi_u32 s8, s10, s8
	v_lshlrev_b32_e32 v16, 3, v11
	v_lshlrev_b32_e32 v17, 2, v15
	v_or3_b32 v12, v12, v14, v92
	v_lshlrev_b32_e32 v18, 6, v11
	v_lshrrev_b32_e32 v19, 5, v65
	s_ashr_i32 s9, s3, 31
	s_ashr_i32 s6, s6, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s11, s8, s5
	s_xor_b32 s6, s9, s6
	s_sub_i32 s9, s10, s11
	v_add_nc_u32_e32 v3, 0, v2
	v_or3_b32 v123, v12, v17, v16
	v_or3_b32 v17, v19, v18, v17
	v_lshlrev_b32_e32 v18, 2, v108
	v_xad_u32 v4, v2, 16, 0
	s_ashr_i32 s7, s7, 4
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x8
	s_load_b128 s[44:47], s[0:1], 0x28
	s_cselect_b32 s0, s10, s8
	v_xad_u32 v9, 0x60, v2, 0
	s_cselect_b32 s1, s11, s9
	ds_load_b128 v[33:36], v3
	ds_load_b128 v[37:40], v4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 4, v108
	v_or3_b32 v125, v17, v16, v92
	v_lshlrev_b32_e32 v17, 1, v11
	v_lshlrev_b32_e32 v19, 5, v15
	v_lshl_or_b32 v11, v11, 8, v18
	v_xad_u32 v5, v2, 32, 0
	v_xad_u32 v6, v2, 48, 0
	v_xad_u32 v7, v2, 64, 0
	v_xad_u32 v8, 0x50, v2, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s0, 1
	v_xad_u32 v2, 0x70, v2, 0
	s_cmp_ge_u32 s1, s5
	ds_load_b128 v[57:60], v9
	ds_load_b128 v[61:64], v2
	s_cselect_b32 s0, s8, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, s61, v3
	v_or3_b32 v126, v11, v19, v17
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s0, s0, s6
	v_or_b32_e32 v121, v1, v104
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v3
	s_sub_i32 s0, s0, s6
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s1, s16, s37
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[45:48], v6
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[53:56], v8
	s_add_i32 s56, s0, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 48, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 16, v2
	v_or_b32_e32 v7, 8, v2
	v_or_b32_e32 v8, 56, v2
	v_or_b32_e32 v9, 24, v2
	v_or_b32_e32 v10, 40, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v113, s59, v2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s38, v2
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v2, 0, v80
	v_and_b32_e32 v11, 60, v11
	v_lshrrev_b32_e32 v13, 2, v81
	v_lshrrev_b32_e32 v31, 3, v65
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v114, s59, v7
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[80:81], null, s35, v106, v[1:2]
	v_lshlrev_b32_e32 v1, 2, v65
	v_lshl_or_b32 v11, v65, 4, v11
	v_xor_b32_e32 v65, 16, v126
	v_xor_b32_e32 v20, 48, v123
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s38, v10
	v_lshl_or_b32 v1, v106, 3, v1
	v_cndmask_b32_e64 v28, 0x1054, v28, s2
	v_add_nc_u32_e32 v157, 0, v65
	v_mov_b32_e32 v65, 0
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v118, s59, v10
	v_xor_b32_e32 v10, 0x70, v121
	v_cndmask_b32_e64 v29, 0x3276, v29, s2
	v_dual_mov_b32 v204, 0xff800000 :: v_dual_add_nc_u32 v141, 0, v20
	v_dual_mov_b32 v20, v65 :: v_dual_and_b32 v3, 0x378, v3
	v_xor_b32_e32 v12, 16, v123
	v_xor_b32_e32 v1, v1, v109
	v_xor_b32_e32 v11, v11, v31
	v_lshl_or_b32 v28, v28, 8, v28
	v_lshl_or_b32 v29, v29, 8, v29
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_add_nc_u32 v137, 0, v10
	v_mov_b32_e32 v10, v65
	v_xor_b32_e32 v3, v3, v109
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[81:82], null, s34, v93, v[74:75]
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s37, s7, 3
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s36, s56, s39
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s43, s56, s37
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s56, s56, s7
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v116, s59, v9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s38, v9
	v_xor_b32_e32 v9, 0x60, v121
	v_or_b32_e32 v122, v3, v13
	v_or_b32_e32 v124, v1, v13
	v_xor_b32_e32 v1, 0x60, v123
	v_xor_b32_e32 v31, 20, v126
	v_lshlrev_b32_e32 v66, 2, v107
	v_dual_mov_b32 v206, 0xff800000 :: v_dual_add_nc_u32 v139, 0, v12
	v_mov_b32_e32 v12, v65
	v_lshl_or_b32 v127, v15, 6, v11
	v_dual_mov_b32 v196, 0 :: v_dual_and_b32 v11, 0x540054, v28
	v_dual_mov_b32 v194, 0 :: v_dual_and_b32 v15, 0x760076, v29
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[83:84], null, s15, 24, v[80:81]
	v_mad_u64_u32 v[84:85], null, s15, 40, v[80:81]
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v115, s59, v6
	v_add_nc_u32_e32 v117, s59, v5
	v_add_nc_u32_e32 v119, s59, v4
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v120, s59, v8
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s38, v7
	v_cmp_gt_i32_e64 s6, s38, v6
	v_cmp_gt_i32_e64 s8, s38, v5
	v_cmp_gt_i32_e64 s10, s38, v4
	v_cmp_gt_i32_e64 s11, s38, v8
	v_xor_b32_e32 v4, 16, v121
	v_xor_b32_e32 v5, 32, v121
	v_xor_b32_e32 v6, 48, v121
	v_xor_b32_e32 v7, 64, v121
	v_xor_b32_e32 v8, 0x50, v121
	v_xor_b32_e32 v3, 0x440, v122
	v_xor_b32_e32 v14, 32, v123
	v_xor_b32_e32 v21, 64, v123
	v_xor_b32_e32 v22, 0x50, v123
	v_xor_b32_e32 v13, 0x70, v123
	v_xor_b32_e32 v16, 0x240, v124
	v_xor_b32_e32 v18, 16, v125
	v_xor_b32_e32 v23, 32, v125
	v_xor_b32_e32 v24, 48, v125
	v_xor_b32_e32 v25, 64, v125
	v_xor_b32_e32 v17, 0x50, v125
	v_xor_b32_e32 v19, 0x60, v125
	v_xor_b32_e32 v26, 0x70, v125
	v_xor_b32_e32 v27, 4, v126
	v_xor_b32_e32 v30, 8, v126
	v_xor_b32_e32 v32, 12, v126
	v_xor_b32_e32 v28, 24, v126
	v_lshl_or_b32 v11, v11, 4, v11
	v_lshl_or_b32 v15, v15, 4, v15
	v_add_nc_u32_e32 v136, 0, v9
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_add_nc_u32 v144, 0, v1
	v_xor_b32_e32 v1, 0x810, v127
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v158, 0, v31
	v_mov_b32_e32 v31, v65
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v128, v2, v66
	v_xor_b32_e32 v2, 28, v126
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[85:86], null, s15, 48, v[80:81]
	v_mad_u64_u32 v[86:87], null, s15, 56, v[80:81]
	v_mad_u64_u32 v[87:88], null, s34, 6, v[81:82]
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s42, s12, 0x3fb8aa3b
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s12, s15, s61
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s13, s16, s13
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s34, v74
	v_dual_mov_b32 v192, 0 :: v_dual_and_b32 v129, 0x5040504, v11
	v_and_b32_e32 v130, 0x7060706, v15
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v131, 0, v4
	v_dual_mov_b32 v15, v65 :: v_dual_add_nc_u32 v132, 0, v5
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_add_nc_u32 v133, 0, v6
	v_add_nc_u32_e32 v134, 0, v7
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_add_nc_u32 v135, 0, v8
	v_dual_mov_b32 v5, v65 :: v_dual_add_nc_u32 v138, 0, v3
	v_dual_mov_b32 v7, v65 :: v_dual_add_nc_u32 v140, 0, v14
	v_dual_mov_b32 v207, 0xff800000 :: v_dual_add_nc_u32 v142, 0, v21
	v_dual_mov_b32 v202, 0xff800000 :: v_dual_add_nc_u32 v143, 0, v22
	v_dual_mov_b32 v200, 0xff800000 :: v_dual_add_nc_u32 v145, 0, v13
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_add_nc_u32 v146, 0, v16
	v_dual_mov_b32 v198, 0xff800000 :: v_dual_add_nc_u32 v147, 0, v18
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_add_nc_u32 v148, 0, v23
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_add_nc_u32 v149, 0, v24
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v150, 0, v25
	v_add_nc_u32_e32 v151, 0, v17
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v152, 0, v19
	v_add_nc_u32_e32 v153, 0, v26
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v154, 0, v27
	v_add_nc_u32_e32 v155, 0, v30
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v156, 0, v32
	v_add_nc_u32_e32 v159, 0, v28
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v160, 0, v2
	v_add_nc_u32_e32 v161, 0, v1
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, v65
	v_mov_b32_e32 v27, v65
	v_mov_b32_e32 v28, v65
	v_mov_b32_e32 v30, v65
	v_dual_mov_b32 v32, v65 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, v65
	v_mov_b32_e32 v19, v65
	v_mov_b32_e32 v21, v65
	v_mov_b32_e32 v22, v65
	v_mov_b32_e32 v23, v65
	v_mov_b32_e32 v24, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v14, v65
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v8, v65
	v_subrev_nc_u32_e32 v162, s57, v113
	v_subrev_nc_u32_e32 v163, s57, v114
	v_subrev_nc_u32_e32 v164, s57, v115
	v_subrev_nc_u32_e32 v165, s57, v116
	v_subrev_nc_u32_e32 v166, s57, v117
	v_subrev_nc_u32_e32 v167, s57, v118
	v_subrev_nc_u32_e32 v168, s57, v119
	v_subrev_nc_u32_e32 v169, s57, v120
	v_dual_mov_b32 v197, 0xff800000 :: v_dual_add_nc_u32 v170, s58, v113
	v_add_nc_u32_e32 v171, s58, v114
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_add_nc_u32 v172, s58, v115
	v_add_nc_u32_e32 v173, s58, v116
	v_add_nc_u32_e32 v174, s58, v117
	v_add_nc_u32_e32 v175, s58, v118
	v_add_nc_u32_e32 v176, s58, v119
	v_add_nc_u32_e32 v177, s58, v120
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v178, s15, 3, v80
	v_lshl_add_u32 v179, s15, 4, v80
	v_lshl_add_u32 v180, s15, 5, v80
	v_lshl_add_u32 v181, s34, 1, v81
	v_lshl_add_u32 v182, s34, 2, v81
	v_lshl_add_u32 v183, v106, 1, 0
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s3, s14
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_add_i32 s59, s13, s12
	s_and_b32 s29, s29, 0xffff
	s_add_i32 s59, s59, s3
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	s_and_b32 s53, s31, 0xffff
	s_mov_b32 s52, s30
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s30, s50
	s_mov_b32 s31, s51
	s_mov_b32 s57, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s3, s27, s35
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s3, s59, s3
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v88, s3, v85, 1
	v_add_lshl_u32 v89, s3, v180, 1
	v_add_lshl_u32 v91, s3, v84, 1
	v_add_lshl_u32 v209, s3, v80, 1
	v_add_lshl_u32 v208, s3, v83, 1
	v_cndmask_b32_e64 v88, 0x80000000, v88, s66
	v_cndmask_b32_e64 v90, 0x80000000, v89, s65
	v_add_lshl_u32 v210, s3, v178, 1
	v_cndmask_b32_e64 v91, 0x80000000, v91, s54
	v_cndmask_b32_e64 v209, 0x80000000, v209, s58
	s_clause 0x1
	buffer_load_u16 v89, v88, s[48:51], 0 offen
	buffer_load_u16 v88, v90, s[48:51], 0 offen
	v_add_lshl_u32 v90, s3, v86, 1
	v_cndmask_b32_e64 v208, 0x80000000, v208, s47
	v_cndmask_b32_e64 v210, 0x80000000, v210, s46
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v90, 0x80000000, v90, s55
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x2
	buffer_load_u16 v90, v90, s[48:51], 0 offen
	buffer_load_u16 v91, v91, s[48:51], 0 offen
	buffer_load_u16 v208, v208, s[48:51], 0 offen
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v89.h, 0xff80, v89.l, s66
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v89.l, 0xff80, v88.l, s65
	v_add_lshl_u32 v88, s3, v179, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v88, 0x80000000, v88, s64
	s_clause 0x2
	buffer_load_u16 v88, v88, s[48:51], 0 offen
	buffer_load_u16 v209, v209, s[48:51], 0 offen
	buffer_load_u16 v210, v210, s[48:51], 0 offen
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v90.h, 0xff80, v90.l, s55
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v90.l, 0xff80, v91.l, s54
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v91.h, 0xff80, v208.l, s47
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v209.h, 0xff80, v88.l, s64
	v_cndmask_b16 v209.l, 0xff80, v209.l, s58
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v88, 0, v122
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v91.l, 0xff80, v210.l, s46
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b32 v88, v209, v89 offset1:32
	ds_store_2addr_b32 v138, v91, v90 offset1:32
	v_add_nc_u32_e32 v88, 0, v123
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v88, v88
	ds_load_u16 v208, v139
	ds_load_u16 v210, v140
	ds_load_u16 v211, v141
	ds_load_u16 v212, v142
	ds_load_u16 v213, v143
	ds_load_u16 v214, v144
	ds_load_u16 v215, v145
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v215, 16, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v215, 0x3fb8aa3b, v215 :: v_dual_lshlrev_b32 v88, 16, v88
	v_dual_mul_f32 v216, 0x3fb8aa3b, v88 :: v_dual_lshlrev_b32 v211, 16, v211
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v88.l, 0
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e64 v88.h, v209.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v215, s42, v73 :: v_dual_lshlrev_b32 v212, 16, v212
	v_fmac_f32_e32 v216, s42, v66
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v66.h, v89.l
	v_mov_b16_e32 v89.l, v88.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v211, 0x3fb8aa3b, v211
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v66.l, v88.l
	v_lshlrev_b32_e32 v208, 16, v208
	v_mov_b16_e64 v209.l, v88.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v89
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v211, s42, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v208, 0x3fb8aa3b, v208 :: v_dual_lshlrev_b32 v213, 16, v213
	.loc	1 966 34 is_stmt 1              ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v66
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s12, s66, vcc_lo
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v209
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	v_dual_mul_f32 v213, 0x3fb8aa3b, v213 :: v_dual_lshlrev_b32 v210, 16, v210
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v66, 0, 1, s12
	s_and_b32 s14, s65, s3
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v208, s42, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v213, s42, v71 :: v_dual_mul_f32 v210, 0x3fb8aa3b, v210
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v67, 0, 1, s14
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v88
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s15, s64, s13
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v71.h, v88.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v210, s42, v68
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v68.h, v67.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s15
	s_and_b32 s17, s58, vcc_lo
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v66.h, v90.l
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v67, 0, 1, s17
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v90.l, v88.l
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v88.h, v91.l
	v_mov_b16_e32 v91.l, v88.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v212, 0x3fb8aa3b, v212
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v90
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	v_or_b16 v68.l, v67.l, v66.l
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v66.l, v88.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v91
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v73.h, v88.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 vcc_lo, s55, vcc_lo
	.loc	1 978 32                        ; attention.py:978:32
	s_mov_b32 s55, s51
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v66
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	v_cndmask_b32_e64 v66, 0, 1, vcc_lo
	s_and_b32 s16, s47, s16
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	s_mov_b32 s47, s51
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s13, s54, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v66.l, 8, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s13
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v88
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	s_mov_b32 s54, s50
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v66.h, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s16
	s_and_b32 s18, s46, s3
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s46, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s18
	v_lshlrev_b16 v66.l, 8, v66.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v66.l, v67.l, v66.l
	v_add_nc_u32_e32 v67, 0, v124
	ds_store_b32 v67, v68
	ds_store_b32 v146, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v66, v147
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v148
	ds_load_u8_d16 v67, v149
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v150
	ds_load_u8_d16 v68, v151
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v152
	ds_load_u8_d16 v69, v153
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s26, 1, v66.l
	v_and_b16 v66.l, 1, v66.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v89, 0xff800000, v208, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s23, 1, v66.l
	v_and_b16 v66.l, 1, v67.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v90, 0xff800000, v210, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s24, 1, v66.l
	v_and_b16 v66.l, 1, v67.h
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v212, s42, v70
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v70.h, v88.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v91, 0xff800000, v211, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s21, 1, v66.l
	s_waitcnt lgkmcnt(1)
	v_and_b16 v66.l, 1, v68.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v209, 0xff800000, v212, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s22, 1, v66.l
	v_and_b16 v66.l, 1, v68.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v210, 0xff800000, v213, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s19, 1, v66.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v66.l, 1, v69.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v213.h, v88.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v68, v91, v209, v210
.Ltmp2:
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s20, 1, v66.l
	v_add_nc_u32_e32 v66, 0, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v212, 0xff800000, v215, s20
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u8_d16 v66, v66
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v214, 16, v214
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v214, 0x3fb8aa3b, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v214, s42, v72
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v72.h, v88.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v211, 0xff800000, v214, s19
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v66.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v211, v212
.Ltmp4:
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s3, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v66, 0xff800000, v216, s3
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v67, v66, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v67, v67, v68, v69
.Ltmp6:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v69.h, v88.l
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v68, v67, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp8:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v208, v207, v67, v68
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v67, 0, v126
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v68.h, v88.l
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v67, v66
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v67, v89, v208
	v_sub_f32_e32 v66, v66, v208
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v154, v89
	ds_store_b32 v155, v90
	ds_store_b32 v156, v91
	ds_store_b32 v157, v209
	ds_store_b32 v158, v210
	ds_store_b32 v159, v211
	ds_store_b32 v160, v212
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v67, 0, v67, s26
	v_cndmask_b32_e64 v66, 0, v66, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s26, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v66, v66
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v67, v68, 0x7fff
	v_mov_b16_e32 v68.h, v88.l
	v_mov_b16_e32 v68.l, v66.h
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v66, v66, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s3
	v_permlanex16_b32 v68, v67, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v66, v68, v67, v129
	v_perm_b32 v67, v68, v67, v130
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v91, v208
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s24
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v69.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v69, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v90, v208
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v69, 0, v69, s23
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v69, v69
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v70, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v68.h, s3
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v70, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v69, v70, v129
	v_perm_b32 v69, v69, v70, v130
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v70, v210, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v70, v70
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v70, 0, v70, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s3, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v70, v71, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v71, v209, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v71, v71
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v71, 0, v71, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_o_f32_e64 s21, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v71, v71, v72, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v70.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s21
	v_permlanex16_b32 v71, v72, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v70, v71, v72, v129
	v_perm_b32 v71, v71, v72, v130
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v72, v212, v208
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v72, 0, v72, s20
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v72, v72
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v72, v73, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v73, v211, v208
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v73, 0, v73, s19
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v213.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s19, v73, v73
	v_and_b32_e32 v213, 1, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v213, 0x7fff
	v_cndmask_b16 v213.h, 0x7fff, v72.h, s3
	v_cndmask_b16 v213.l, 0x7fff, v73.h, s19
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s19, s27, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v89, s19, v93
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s3, s19, s43
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v73, v213, s57, 0xfedcba98 op_sel:[1,0]
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s20, s3, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s3, s37, v89
	v_add_nc_u32_e32 v90, s20, v81
	v_add_nc_u32_e32 v91, s20, v181
	v_add_nc_u32_e32 v209, s20, v182
	v_add_nc_u32_e32 v210, s20, v87
	.loc	1 980 26 is_stmt 0              ; attention.py:980:26
	s_and_b32 s3, s0, s3
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_perm_b32 v72, v73, v213, v129
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v90, 0x80000000, v90, s3
	v_cndmask_b32_e64 v91, 0x80000000, v91, s3
	v_cndmask_b32_e64 v209, 0x80000000, v209, s3
	v_cndmask_b32_e64 v210, 0x80000000, v210, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v73, v73, v213, v130
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v90, v90, s[52:55], 0 offen
	buffer_load_u8 v91, v91, s[52:55], 0 offen
	buffer_load_u8 v209, v209, s[52:55], 0 offen
	buffer_load_u8 v210, v210, s[52:55], 0 offen
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v89, v89, 1, 1
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v211, 15, v90
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v88.h, v90.l, 15
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v90.h, v88.l
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v215, 15, v210
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v90.l, 4, v90.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v212, -16, v211
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v88.h
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v88.h, v91.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v211, v211, v212, s3
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v212, 15, v91
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v88.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v88.h, v209.l, 15
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v91.h, v88.l
	.loc	1 988 32 is_stmt 0              ; attention.py:988:32
	v_lshrrev_b16 v91.l, 4, v91.l
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v213, -16, v212
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v211, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v212, v212, v213, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v88.h
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v213, 15, v209
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v209.h, v88.l
	.loc	1 988 32 is_stmt 0              ; attention.py:988:32
	v_lshrrev_b16 v209.l, 4, v209.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v214, -16, v213
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v213, v213, v214, s3
	.loc	1 988 30 is_stmt 1              ; attention.py:988:30
	v_mov_b16_e64 v214.h, v88.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v88.l, v210.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v214.l, 4, v210.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v210, -16, v215
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v213, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v88.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v88, v215, v210, s3
	.loc	1 985 30 is_stmt 1              ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s39, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v89, 0, v90, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v90, -16, v89
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s3, 7, v89
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v89, v89, v90, s3
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	v_or_b32_e32 v90, s19, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v90, v90, 1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 985 30 is_stmt 0              ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s39, v90
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v90, 0, v91, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v91, -16, v90
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s3, 7, v90
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v90, v90, v91, s3
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	v_or_b32_e32 v91, s19, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v91, v91, 1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 985 30 is_stmt 0              ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s39, v91
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v91, 0, v209, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v209, -16, v91
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s3, 7, v91
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v91, v91, v209, s3
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	v_or_b32_e32 v209, s19, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v209, v209, 1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 985 30 is_stmt 0              ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s39, v209
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v209, 0, v214, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v210, -16, v209
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s3, 7, v209
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v209, v209, v210, s3
	.loc	1 1001 53 is_stmt 1             ; attention.py:1001:53
	s_lshr_b32 s3, s27, 4
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s27, s27, 16
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s56
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s27, s33
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s34
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v209, v209
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v210, s3, v74, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v210, 0x80000000, v210, s0
	buffer_load_u16 v210, v210, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v210, 16, v210
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v211, v211, v210
	v_mul_f32_e32 v212, v212, v210
	v_dual_mul_f32 v213, v213, v210 :: v_dual_mul_f32 v88, v210, v88
	v_mul_f32_e32 v89, v89, v210
	v_mul_f32_e32 v90, v90, v210
	v_mul_f32_e32 v91, v210, v91
	v_mul_f32_e32 v209, v210, v209
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v210, v211, 16, 1
	v_cmp_o_f32_e64 s3, v211, v211
	v_cmp_o_f32_e64 s19, v212, v212
	v_cmp_o_f32_e64 s20, v213, v213
	v_cmp_o_f32_e64 s21, v88, v88
	v_add3_u32 v210, v211, v210, 0x7fff
	v_bfe_u32 v211, v212, 16, 1
	v_cmp_o_f32_e64 s26, v209, v209
	v_cmp_o_f32_e64 s22, v89, v89
	v_cmp_o_f32_e64 s23, v90, v90
	v_cmp_o_f32_e64 s24, v91, v91
	v_add3_u32 v211, v212, v211, 0x7fff
	v_bfe_u32 v212, v213, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v212, v213, v212, 0x7fff
	v_bfe_u32 v213, v88, 16, 1
	v_add3_u32 v213, v88, v213, 0x7fff
	v_bfe_u32 v88, v89, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v214, v89, v88, 0x7fff
	v_bfe_u32 v88, v90, 16, 1
	v_add3_u32 v215, v90, v88, 0x7fff
	v_bfe_u32 v88, v91, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v215.h, s23
	v_add3_u32 v216, v91, v88, 0x7fff
	v_bfe_u32 v88, v209, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v217, v209, v88, 0x7fff
	v_cndmask_b16 v209.l, 0x7fff, v210.h, s3
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_add_nc_u32_e32 v88, 0, v127
	ds_load_2addr_b32 v[241:242], v88 offset1:32
	ds_load_2addr_b32 v[90:91], v88 offset0:64 offset1:96
	ds_load_2addr_b32 v[243:244], v161 offset1:32
	ds_load_2addr_b32 v[88:89], v161 offset0:64 offset1:96
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v128, v209
	v_cndmask_b16 v209.l, 0x7fff, v211.h, s19
	v_cndmask_b16 v209.h, 0x7fff, v214.h, s22
	v_cndmask_b16 v210.h, 0x7fff, v216.h, s24
	v_cndmask_b16 v211.l, 0x7fff, v217.h, s26
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v207
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_b16 v128, v209 offset:512
	v_cndmask_b16 v209.l, 0x7fff, v212.h, s20
	ds_store_b16 v128, v209 offset:1024
	v_cndmask_b16 v209.l, 0x7fff, v213.h, s21
	ds_store_b16 v128, v209 offset:1536
	ds_store_b16_d16_hi v128, v209 offset:128
	ds_store_b16 v128, v210 offset:640
	ds_store_b16_d16_hi v128, v210 offset:1152
	ds_store_b16 v128, v211 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v211, v183 offset:608
	ds_load_u16_d16 v210, v183 offset:352
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v209, v207, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v209, v209
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v207, 0, v209, s3
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	ds_load_u16_d16 v219, v183 offset:512
	ds_load_u16_d16 v217, v183
	ds_load_u16_d16 v220, v183 offset:768
	ds_load_u16_d16 v218, v183 offset:256
	ds_load_u16_d16 v227, v183 offset:576
	ds_load_u16_d16 v228, v183 offset:832
	ds_load_u16_d16 v221, v183 offset:1024
	ds_load_u16_d16 v229, v183 offset:1088
	ds_load_u16_d16 v222, v183 offset:1280
	ds_load_u16_d16 v230, v183 offset:1344
	ds_load_u16_d16 v223, v183 offset:1536
	ds_load_u16_d16 v231, v183 offset:1600
	ds_load_u16_d16 v224, v183 offset:1792
	ds_load_u16_d16 v232, v183 offset:1856
	ds_load_u16_d16 v225, v183 offset:64
	ds_load_u16_d16 v226, v183 offset:320
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v210, v183 offset:480
	ds_load_u16_d16 v209, v183 offset:96
	ds_load_u16_d16 v233, v183 offset:32
	ds_load_u16_d16 v234, v183 offset:288
	ds_load_u16_d16 v212, v183 offset:864
	ds_load_u16_d16 v213, v183 offset:1120
	ds_load_u16_d16 v214, v183 offset:1376
	ds_load_u16_d16 v215, v183 offset:1632
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v232, v183 offset:1984
	ds_load_u16_d16 v216, v183 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v233, v183 offset:160
	ds_load_u16_d16_hi v225, v183 offset:192
	ds_load_u16_d16_hi v209, v183 offset:224
	ds_load_u16_d16 v235, v183 offset:544
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v234, v183 offset:416
	ds_load_u16_d16_hi v226, v183 offset:448
	ds_load_u16_d16 v236, v183 offset:800
	ds_load_u16_d16 v237, v183 offset:1056
	ds_load_u16_d16 v238, v183 offset:1312
	ds_load_u16_d16 v239, v183 offset:1568
	ds_load_u16_d16 v240, v183 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v235, v183 offset:672
	ds_load_u16_d16_hi v211, v183 offset:736
	ds_load_u16_d16_hi v217, v183 offset:128
	ds_load_u16_d16_hi v219, v183 offset:640
	ds_load_u16_d16_hi v218, v183 offset:384
	ds_load_u16_d16_hi v227, v183 offset:704
	ds_load_u16_d16_hi v220, v183 offset:896
	ds_load_u16_d16_hi v228, v183 offset:960
	ds_load_u16_d16_hi v221, v183 offset:1152
	ds_load_u16_d16_hi v229, v183 offset:1216
	ds_load_u16_d16_hi v222, v183 offset:1408
	ds_load_u16_d16_hi v230, v183 offset:1472
	ds_load_u16_d16_hi v223, v183 offset:1664
	ds_load_u16_d16_hi v231, v183 offset:1728
	ds_load_u16_d16_hi v224, v183 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v236, v183 offset:928
	ds_load_u16_d16_hi v212, v183 offset:992
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v237, v183 offset:1184
	ds_load_u16_d16_hi v213, v183 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v238, v183 offset:1440
	ds_load_u16_d16_hi v214, v183 offset:1504
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v239, v183 offset:1696
	ds_load_u16_d16_hi v215, v183 offset:1760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v240, v183 offset:1952
	ds_load_u16_d16_hi v216, v183 offset:2016
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v207
	v_mul_f32_e32 v26, v26, v207
	v_mul_f32_e32 v27, v27, v207
	v_mul_f32_e32 v28, v28, v207
	v_mul_f32_e32 v29, v29, v207
	v_mul_f32_e32 v30, v30, v207
	v_mul_f32_e32 v31, v31, v207
	v_mul_f32_e32 v32, v32, v207
	v_mul_f32_e32 v17, v17, v207
	v_mul_f32_e32 v18, v18, v207
	v_mul_f32_e32 v19, v19, v207
	v_mul_f32_e32 v20, v20, v207
	v_mul_f32_e32 v21, v21, v207
	v_mul_f32_e32 v22, v22, v207
	v_mul_f32_e32 v23, v23, v207
	v_mul_f32_e32 v24, v24, v207
	v_mul_f32_e32 v9, v9, v207
	v_mul_f32_e32 v10, v10, v207
	v_mul_f32_e32 v11, v11, v207
	v_mul_f32_e32 v12, v12, v207
	v_mul_f32_e32 v13, v13, v207
	v_mul_f32_e32 v14, v14, v207
	v_mul_f32_e32 v15, v15, v207
	v_mul_f32_e32 v16, v16, v207
	v_mul_f32_e32 v1, v1, v207
	v_mul_f32_e32 v2, v2, v207
	v_mul_f32_e32 v3, v3, v207
	v_mul_f32_e32 v4, v4, v207
	v_mul_f32_e32 v5, v5, v207
	v_mul_f32_e32 v6, v6, v207
	v_mul_f32_e32 v7, v7, v207
	v_mul_f32_e32 v8, v8, v207
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[217:224], v[66:73], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[233:240], v[66:73], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[225:232], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[209:216], v[66:73], v[1:8]
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v66, v241
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v67, v241, v241 :: v_dual_max_f32 v68, v243, v243
	v_max_f32_e32 v70, v244, v244
	v_max_f32_e32 v72, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v73, v91, v91 :: v_dual_max_f32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v67, v66
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v67, v243
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_dual_max_f32 v67, v68, v67 :: v_dual_mov_b32 v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v67, v67, v68 :: v_dual_mov_b32 v68, v66
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v68, v67
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_dual_max_f32 v67, v67, v68 :: v_dual_mov_b32 v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v207, v66, v68 :: v_dual_mov_b32 v66, v67
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_dual_max_f32 v209, v67, v66 :: v_dual_max_f32 v66, v184, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v184, v66, v207
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v66, v241, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v66, v66
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v66, 0, v66, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v185, v185
.Ltmp30:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v185, v67, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v67, v243, v185
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v67, 0, v67, s18
.Ltmp31:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_mov_b32 v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v68, v67
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_mov_b32 v68, v66
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v68
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_mov_b32 v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v67
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v68, v242 :: v_dual_add_f32 v67, v67, v69
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v242, v242
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_dual_max_f32 v68, v69, v68 :: v_dual_mov_b32 v69, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v69, v70, v69 :: v_dual_mov_b32 v70, v68
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_dual_max_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v68, v68, v70
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v210, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v68, v69
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_dual_max_f32 v211, v69, v68 :: v_dual_max_f32 v68, v186, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v69, v187, v187 :: v_dual_max_f32 v186, v68, v210
	v_dual_max_f32 v187, v69, v211 :: v_dual_sub_f32 v68, v242, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v244, v187
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v69, v69
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0, v69, s16
.Ltmp62:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v69
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v70, v68, v70
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v68, v90 :: v_dual_add_f32 v71, v69, v71
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v69, v68
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v212, v68, v69
.Ltmp86:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v68, v188, v188
	v_max_f32_e32 v188, v68, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v90, v188
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s14
.Ltmp87:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v69, v88
	v_mov_b32_dpp v69, v69 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v69, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v69, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v69, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v90, v69, v72
.Ltmp103:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v69, v189, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v189, v69, v90
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v88, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v69, 0, v69, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v72
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v69, v69, v72 :: v_dual_mov_b32 v72, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v73, v72
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v73
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v73
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v88, v72, v73
.Ltmp120:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v72, v190, v190
	v_max_f32_e32 v190, v72, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v72, v91, v190 :: v_dual_max_f32 v91, v89, v89
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v72, 0, v72, s12
.Ltmp121:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v73, v72
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v73
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v73, v72
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v72, v72, v73 :: v_dual_mov_b32 v73, v89
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v73, v91, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v91, v73
	v_mov_b32_dpp v91, v91 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v73, v73, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v91, v73
	v_mov_b32_dpp v91, v91 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v73, v73, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v91, v73
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v91, v73, v91
.Ltmp137:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v73, v191, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v191, v73, v91
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v73, v89, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v89, v73
	v_mov_b32_dpp v89, v89 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v89
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v89, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v89, v89 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v89, v73
	v_mov_b32_dpp v89, v89 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v89
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v89, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v89
.Ltmp146:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v89, v206, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v89, v89, v207
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v207, v206, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v207, v207
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v206, 0, v207, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v207, v208 :: v_dual_fmac_f32 v66, v205, v206
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v205, v204, v204
	v_max_f32_e32 v205, v205, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v206, v204, v205
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v206, v206
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v204, 0, v206, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v202
	v_dual_mov_b32 v206, v89 :: v_dual_fmac_f32 v67, v203, v204
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v203, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v203, v203, v210
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v204, v202, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v204, v204
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v202, 0, v204, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v200
	v_mov_b32_e32 v204, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_dual_fmac_f32 v70, v201, v202 :: v_dual_max_f32 v201, v200, v200
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v201, v201, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v202, v200, v201
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v202, v202
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v200, 0, v202, vcc_lo
	v_mov_b32_e32 v202, v203
	v_mov_b32_e32 v203, v67
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v197
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v71, v199, v200
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v199, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v199, v199, v212
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v200, v197, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v200, v200
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v197, 0, v200, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v198
	v_mov_b32_e32 v200, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v68, v196, v197
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v196, v198, v198 :: v_dual_mov_b32 v197, v199
	v_mov_b32_e32 v199, v71
	v_dual_mov_b32 v201, v70 :: v_dual_max_f32 v90, v196, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v196, v198, v90
	v_mov_b32_e32 v198, v90
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v196, v196
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v196, 0, v196, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v195
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_dual_fmac_f32 v69, v194, v196 :: v_dual_max_f32 v194, v195, v195
	v_mov_b32_e32 v196, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v88, v194, v88
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v194, v195, v88 :: v_dual_mov_b32 v195, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v194, v194
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v194, 0, v194, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v72, v193, v194
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v193, v82, v82 :: v_dual_mov_b32 v194, v69
	v_max_f32_e32 v91, v193, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v193, v82, v91
	v_mov_b32_e32 v205, v66
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v193, v193
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_dual_cndmask_b32 v82, 0, v193 :: v_dual_mov_b32 v193, v72
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_dual_fmac_f32 v73, v192, v82 :: v_dual_mov_b32 v82, v91
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v192, v73
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v66, s27, v93
	v_or_b32_e32 v67, s27, v94
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s3, s27, s36
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v68, s27, v95
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s18, s3, s62
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v66
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v69, s27, v96
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s3, s39, v67
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v66, s18, v75, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v70, s27, v97
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s12, s39, v68
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v67, s18, v101, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v71, s27, v98
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s13, s39, v69
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v68, s18, v102, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v72, s27, v99
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s3
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s14, s39, v70
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v69, s18, v76, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v73, s27, v100
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s12
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s15, s39, v71
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v70, s18, v103, 1
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s13
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s16, s39, v72
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v71, s18, v77, 1
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s14
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s17, s39, v73
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v72, s18, v78, 1
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s15
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v73, s18, v79, 1
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s16
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_add_nc_u32 v89, 0, v121
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s25, s17
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u16 v88, v66, s[28:31], 0 offen
	buffer_load_u16 v70, v70, s[28:31], 0 offen
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	buffer_load_u16 v71, v71, s[28:31], 0 offen
	buffer_load_u16 v68, v68, s[28:31], 0 offen
	buffer_load_u16 v72, v72, s[28:31], 0 offen
	buffer_load_u16 v69, v69, s[28:31], 0 offen
	buffer_load_u16 v73, v73, s[28:31], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v66, v65
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v105, v88
	s_waitcnt vmcnt(6)
	ds_store_b16 v105, v70 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v110, v67
	s_waitcnt vmcnt(4)
	ds_store_b16 v110, v71 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v111, v68
	s_waitcnt vmcnt(2)
	ds_store_b16 v111, v72 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v112, v69
	s_waitcnt vmcnt(0)
	ds_store_b16 v112, v73 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[208:211], v89
	ds_load_b128 v[212:215], v131
	ds_load_b128 v[216:219], v132
	ds_load_b128 v[220:223], v133
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v72, v65
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[224:227], v134
	ds_load_b128 v[228:231], v135
	.loc	1 944 30                        ; attention.py:944:30
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
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[232:235], v136
	ds_load_b128 v[236:239], v137
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v88, s27, v106
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[208:215], v[33:40], v[66:73]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s3, s39, v88
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[216:223], v[41:48], v[66:73]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s58, s1, s3
	s_and_b32 s46, s5, s3
	s_and_b32 s64, s6, s3
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[224:231], v[49:56], v[66:73]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s47, s7, s3
	s_and_b32 s65, s8, s3
	s_and_b32 s54, s9, s3
	s_and_b32 s66, s10, s3
	s_and_b32 s55, s11, s3
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[232:239], v[57:64], v[66:73]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v88, v113
	v_cmp_le_i32_e64 s3, v88, v114
	v_cmp_le_i32_e64 s12, v88, v115
	v_cmp_le_i32_e64 s13, v88, v116
	v_cmp_le_i32_e64 s14, v88, v117
	v_cmp_le_i32_e64 s15, v88, v118
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s18, vcc_lo, s58
	s_and_b32 s3, s3, s46
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s16, v88, v119
	v_cmp_le_i32_e64 s17, v88, v120
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s12, s12, s64
	s_and_b32 s13, s13, s47
	s_and_not1_b32 s19, s58, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s46, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s65
	s_and_b32 s15, s15, s54
	s_or_b32 s58, s19, s18
	s_or_b32 s46, s20, s3
	s_and_not1_b32 s3, s64, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s47, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s66
	s_and_b32 s17, s17, s55
	s_or_b32 s64, s3, s12
	s_or_b32 s47, s18, s13
	s_and_not1_b32 s3, s65, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s65, s3, s12
	s_or_b32 s54, s13, s14
	s_and_not1_b32 s3, s66, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s66, s3, s12
	s_or_b32 s55, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s63
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v88, v162
	v_cmp_ge_i32_e64 s3, v88, v163
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v88, v170
	v_cmp_le_i32_e64 s19, v88, v171
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v88, v164
	v_cmp_ge_i32_e64 s13, v88, v165
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s20, v88, v172
	v_cmp_le_i32_e64 s23, v88, v173
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v88, v166
	v_cmp_ge_i32_e64 s15, v88, v167
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s22, v88, v174
	v_cmp_le_i32_e64 s24, v88, v175
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v88, v168
	v_cmp_ge_i32_e64 s17, v88, v169
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s21, v88, v176
	v_cmp_le_i32_e64 s26, v88, v177
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, s12, s20
	s_and_b32 s18, s18, s58
	s_and_b32 s13, s13, s23
	s_and_b32 s3, s3, s46
	s_and_b32 s14, s14, s22
	s_and_b32 s12, s12, s64
	s_and_b32 s15, s15, s24
	s_and_b32 s13, s13, s47
	s_and_not1_b32 s19, s58, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s46, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s21
	s_and_b32 s14, s14, s65
	s_and_b32 s17, s17, s26
	s_and_b32 s15, s15, s54
	s_or_b32 s58, s19, s18
	s_or_b32 s46, s20, s3
	s_and_not1_b32 s3, s64, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s47, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s66
	s_and_b32 s17, s17, s55
	s_or_b32 s64, s3, s12
	s_or_b32 s47, s18, s13
	s_and_not1_b32 s3, s65, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s65, s3, s12
	s_or_b32 s54, s13, s14
	s_and_not1_b32 s3, s66, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s66, s3, s12
	s_or_b32 s55, s13, s14
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshrrev_b32_e32 v33, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v37, 3, v107
	v_add_nc_u32_e32 v38, 0, v108
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v35, 4, v33
	v_and_b32_e32 v36, 0x80, v0
	s_barrier
	ds_store_b128 v38, v[66:69]
	ds_store_b128 v38, v[70:73] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v36, 0, v35, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v63, v109, v106
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v92
	v_or_b32_e32 v33, 54, v92
	v_or_b32_e32 v34, 53, v92
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v36, v36, v37, v104
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v75, s61, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 52, v92
	v_or_b32_e32 v37, 50, v92
	v_or_b32_e32 v38, 49, v92
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v64, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s38, v75
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 51, v92
	v_or_b32_e32 v39, 48, v92
	v_or_b32_e32 v40, 39, v92
	v_or_b32_e32 v41, 38, v92
	v_or_b32_e32 v42, 37, v92
	v_or_b32_e32 v43, 36, v92
	v_or_b32_e32 v44, 35, v92
	v_or_b32_e32 v45, 34, v92
	v_or_b32_e32 v46, 33, v92
	v_or_b32_e32 v47, 32, v92
	v_or_b32_e32 v48, 23, v92
	v_or_b32_e32 v49, 22, v92
	v_or_b32_e32 v50, 21, v92
	v_or_b32_e32 v51, 20, v92
	v_or_b32_e32 v52, 19, v92
	v_or_b32_e32 v53, 18, v92
	v_or_b32_e32 v54, 17, v92
	v_or_b32_e32 v55, 16, v92
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v56, 7, v92
	v_or_b32_e32 v57, 6, v92
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v77, v74, v68
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v58, 5, v92
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v62, v71
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v59, 4, v92
	v_or_b32_e32 v60, 3, v92
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v80, -v66, v77, v74
	v_mul_f32_e32 v72, v70, v67
	v_mul_f32_e32 v75, v79, v71
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v61, 2, v92
	v_or_b32_e32 v62, 1, v92
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v80, v68
	v_fma_f32 v78, -v65, v72, v70
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s34, v92
	v_cmp_gt_i32_e64 s30, s34, v61
	v_cmp_gt_i32_e64 s31, s34, v62
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v77, v74
	v_fmac_f32_e32 v72, v78, v67
	v_div_scale_f32 v74, null, v64, v64, v30
	v_div_scale_f32 v78, s4, v28, v64, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v65, -v65, v72, v70
	v_fma_f32 v70, -v73, v76, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s34, v60
	v_cmp_gt_i32_e64 s28, s34, v59
	v_cmp_gt_i32_e64 s27, s34, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v67, v72
	v_div_scale_f32 v67, null, v64, v64, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v65, v64, v25
	v_fma_f32 v65, -v69, v75, v79
	v_fmac_f32_e32 v76, v70, v76
	v_rcp_f32_e32 v70, v67
	v_div_fmas_f32 v66, v66, v68, v77
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v75, v65, v71
	v_rcp_f32_e32 v65, v74
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v66, v64, v26
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s34, v57
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v69, v75, v79
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s34, v56
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v67, v70, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s34, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v71, v75
	v_fma_f32 v69, -v74, v65, 1.0
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, null, v64, v64, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v72, v78, v76 :: v_dual_fmac_f32 v65, v69, v65
	v_div_scale_f32 v75, s3, v30, v64, v30
	v_rcp_f32_e32 v69, v77
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v68, -v73, v72, v78
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v66, v64, v27
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s34, v54
	v_cmp_gt_i32_e64 s22, s34, v53
	v_cmp_gt_i32_e64 s21, s34, v52
	v_cmp_gt_i32_e64 s20, s34, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s34, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v77, v69, 1.0
	v_fmac_f32_e32 v72, v68, v76
	v_div_scale_f32 v68, s5, v29, v64, v29
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s34, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v69, v79, v69
	v_fma_f32 v71, -v73, v72, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v68, v70
	v_div_scale_f32 v78, null, v64, v64, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s34, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v71, v71, v76, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v72, -v67, v73, v68
	v_mul_f32_e32 v76, v75, v65
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v80, v78
	v_div_fixup_f32 v28, v71, v64, v28
	v_div_scale_f32 v71, s4, v31, v64, v31
	v_fma_f32 v66, -v74, v76, v75
	v_fmac_f32_e32 v73, v72, v70
	v_div_scale_f32 v72, null, v64, v64, v17
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v76, v66, v65
	v_fma_f32 v67, -v67, v73, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v68, v72
	v_fma_f32 v79, -v78, v80, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s34, v47
	v_cmp_gt_i32_e64 s15, s34, v46
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v70, v73
	v_fma_f32 v70, -v74, v76, v75
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v79, s6, v32, v64, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v72, v68, 1.0
	v_div_fixup_f32 v29, v67, v64, v29
	v_div_fmas_f32 v65, v70, v65, v76
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v70, v81
	v_fmac_f32_e32 v68, v75, v68
	v_div_scale_f32 v75, s3, v17, v64, v17
	v_div_fixup_f32 v30, v65, v64, v30
	v_div_scale_f32 v76, s4, v18, v64, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v67, v75, v68
	v_mul_f32_e32 v66, v71, v69
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s34, v45
	v_cmp_gt_i32_e64 s13, s34, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v73, -v77, v66, v71
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s34, v43
	v_cmp_gt_i32_e64 s11, s34, v42
	v_cmp_gt_i32_e64 s10, s34, v41
	v_cmp_gt_i32_e64 s9, s34, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v66, v73, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s34, v33
	v_cmp_gt_i32_e64 s7, s34, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v26, v26
	v_cmp_o_f32_e64 s36, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v77, v66, v71
	v_div_scale_f32 v77, null, v64, v64, v20
	v_fma_f32 v71, -v81, v70, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s41, s41, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v69, v66
	v_fma_f32 v69, -v72, v67, v75
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v70, v71, v70
	s_mov_b32 s43, 0x31027000
	v_div_fixup_f32 v31, v65, v64, v31
	v_fmac_f32_e32 v67, v69, v68
	v_rcp_f32_e32 v69, v77
	s_mov_b32 s42, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v72, v67, v75
	v_div_scale_f32 v72, s5, v19, v64, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v66, v64, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v68, v64, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v1, s1
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v1, s60, v63
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v63, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v1, s34
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s34, v40
	v_cmp_gt_i32_e64 s5, s34, v39
	v_cmp_gt_i32_e64 s4, s34, v38
	v_cmp_gt_i32_e64 s3, s34, v37
	v_cmp_gt_i32_e64 s1, s34, v36
	v_cmp_gt_i32_e32 vcc_lo, s34, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v63, v25, v63, 0x7fff
	v_cmp_o_f32_e64 s34, v25, v25
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
	v_cmp_o_f32_e64 s36, v23, v23
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s34
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s35
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_bfe_u32 v23, v10, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cmp_o_f32_e64 s35, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s36
	v_add3_u32 v9, v10, v23, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s34, v24, v24
	v_cmp_o_f32_e64 s36, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s35
	v_bfe_u32 v21, v12, 16, 1
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
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s34, v14, v14
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s35, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s36, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s34
	v_bfe_u32 v13, v64, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s35
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s36
	v_bfe_u32 v14, v3, 16, 1
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
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v63, v1, v92, 1
	v_add_lshl_u32 v62, v1, v62, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 0x5040504, v8
	v_mov_b16_e32 v67.h, 0
	v_permlanex16_b32 v15, v15, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v18, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v10, v10, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v4, v5, v8
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v61, v1, v61, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v4, v5, v12
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s30
	.loc	1 1049 36                       ; attention.py:1049:36
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
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_store_b16 v18, v63, s[40:43], 0 offen
	v_add_lshl_u32 v18, v1, v60, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v67.l, v4.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v11, v62, s[40:43], 0 offen
	buffer_store_b16 v4, v61, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v59, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v2, v2, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v18, s2
	v_add_lshl_u32 v18, v1, v58, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s28
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v57, v1, v57, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v2, v13, v8
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v2, v13, v12
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x1
	buffer_store_b16 v67, v11, s[40:43], 0 offen
	buffer_store_b16 v5, v4, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v56, 1
	v_add_lshl_u32 v5, v1, v55, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[40:43], 0 offen
	buffer_store_b16 v6, v57, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v54, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v11, v1, v53, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v7.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_store_b16 v12, v4, s[40:43], 0 offen
	buffer_store_b16 v7, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v52, 1
	v_add_lshl_u32 v5, v1, v51, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[40:43], 0 offen
	buffer_store_b16 v14, v11, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v50, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v49, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.l, v15.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v21, v4, s[40:43], 0 offen
	buffer_store_b16 v15, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v48, 1
	v_add_lshl_u32 v5, v1, v47, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s17
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v24, v6, s[40:43], 0 offen
	buffer_store_b16 v16, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v45, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.l, v17.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v23, v4, s[40:43], 0 offen
	buffer_store_b16 v17, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s13
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v26, v6, s[40:43], 0 offen
	buffer_store_b16 v9, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v9.h
	v_mov_b16_e32 v25.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v41, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v28.l, v19.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v28.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v25, v4, s[40:43], 0 offen
	buffer_store_b16 v19, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	v_add_lshl_u32 v5, v1, v39, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s6
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v28, v6, s[40:43], 0 offen
	buffer_store_b16 v10, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v37, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v10.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v67.h
	v_mov_b16_e32 v30.l, v20.h
	v_mov_b16_e32 v30.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v27, v4, s[40:43], 0 offen
	buffer_store_b16 v20, v5, s[40:43], 0 offen
	buffer_store_b16 v30, v6, s[40:43], 0 offen
	buffer_store_b16 v3, v7, s[40:43], 0 offen
	v_add_lshl_u32 v3, v1, v35, 1
	v_add_lshl_u32 v4, v1, v36, 1
	v_add_lshl_u32 v5, v1, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v1, v33, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s9
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v67.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v8.h
	v_mov_b16_e32 v32.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v29, v4, s[40:43], 0 offen
	buffer_store_b16 v8, v3, s[40:43], 0 offen
	buffer_store_b16 v32, v1, s[40:43], 0 offen
	buffer_store_b16 v2, v5, s[40:43], 0 offen
	buffer_store_b16 v31, v0, s[40:43], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp147:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 245
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18304
; TotalNumSgprs: 83
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 245
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
