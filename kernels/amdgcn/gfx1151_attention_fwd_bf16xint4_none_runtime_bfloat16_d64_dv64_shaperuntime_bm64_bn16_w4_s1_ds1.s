	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[44:47], s[0:1], 0x80
	s_load_b128 s[36:39], s[0:1], 0x4c
	s_load_b32 s49, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v84, 6, v0
	v_and_b32_e32 v74, 63, v0
	s_load_b64 s[40:41], s[0:1], 0x0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_or_b32_e32 v85, 2, v84
	v_or_b32_e32 v86, 4, v84
	v_or_b32_e32 v87, 6, v84
	v_or_b32_e32 v88, 8, v84
	v_or_b32_e32 v89, 10, v84
	v_or_b32_e32 v90, 12, v84
	v_or_b32_e32 v91, 14, v84
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s44
	s_bitcmp1_b32 s44, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[75:76], null, s49, v84, v[74:75]
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s48, s3, s38
	s_cselect_b32 s53, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s36
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s52, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s49, 54
	v_mad_u64_u32 v[76:77], null, s49, 6, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s52, v85
	v_or_b32_e32 v3, s52, v86
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v92, s49, 1, v75
	s_mul_i32 s71, s49, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s52, v87
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v93, s49, 2, v75
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s52, v88
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[77:78], null, s49, 10, v[75:76]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s52, v84
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s38, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s52, v89
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v94, s49, 3, v75
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
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
	s_cselect_b32 s51, s6, s2
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
	v_mad_u64_u32 v[78:79], null, s49, 12, v[75:76]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s38, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s52, v90
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[79:80], null, s49, 14, v[75:76]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s38, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s52, v91
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s38, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s38, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s38, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s36, s37
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s64, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s38, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s77, s49, 18
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s49, v74
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s68, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s48, s48, s52
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s38, v31
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s80, s48, s49
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s38, v32
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s80, v75
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s38, v1
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s38, v2
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v2, s80, v92, 1
	v_add_lshl_u32 v31, v33, s54, 1
	v_add_lshl_u32 v32, v33, s71, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s80, v93, 1
	v_add_lshl_u32 v4, s80, v76, 1
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v5, s80, v94, 1
	v_add_lshl_u32 v6, s80, v77, 1
	v_add_lshl_u32 v7, s80, v78, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s78, s49, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s80, v79, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s38, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, v33, s78, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s76, s49, 20
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s38, v12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s38, v10
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v10, v33, s77, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s75, s49, 22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s38, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, v33, s76, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s74, s49, 24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s38, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, v33, s75, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s73, s49, 26
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s38, v15
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, v33, s74, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s72, s49, 28
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s38, v16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v33, s73, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s70, s49, 30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s38, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, v33, s72, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s79, s49, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s38, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v33, s70, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s69, s49, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s38, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s79, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s67, s49, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s69, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s66, s49, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s38, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s67, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s65, s49, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s38, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s66, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s63, s49, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s38, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s65, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s62, s49, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s38, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s63, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s61, s49, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s38, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s62, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s60, s49, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s38, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s61, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s59, s49, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s38, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s60, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s56, s49, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s38, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s59, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s49, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s38, v27
	v_cmp_gt_i32_e64 s35, s38, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s56, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s49, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s58, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s49, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s57, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s35, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v30, v33, s55, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s33, s4
	s_and_b32 s5, s5, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s6
	v_cndmask_b32_e64 v30, 0x80000000, v30, s5
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
	v_lshlrev_b32_e32 v65, 1, v74
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s12, s2, s64
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s13, s39, 15
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s7, s12
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s7
	s_mov_b32 s33, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v65
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s13, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s2, s2, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v95, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s13, s13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v96, 0, v34
	v_add_nc_u32_e32 v97, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v98, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s35, s13, -16
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s44, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v95, v1
	s_waitcnt vmcnt(27)
	ds_store_b16 v95, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v95, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v95, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v95, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v95, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v95, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v95, v26 offset:7168
	ds_store_b16 v96, v2
	ds_store_b16 v96, v6 offset:1024
	ds_store_b16 v96, v10 offset:2048
	ds_store_b16 v96, v14 offset:3072
	ds_store_b16 v96, v18 offset:4096
	ds_store_b16 v96, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v96, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v96, v29 offset:7168
	ds_store_b16 v97, v3
	ds_store_b16 v97, v7 offset:1024
	ds_store_b16 v97, v11 offset:2048
	ds_store_b16 v97, v15 offset:3072
	ds_store_b16 v97, v19 offset:4096
	ds_store_b16 v97, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v97, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v97, v30 offset:7168
	ds_store_b16 v98, v4
	ds_store_b16 v98, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v98, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v98, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v98, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v98, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v98, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v98, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s52, s46
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s52, s45
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s47
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s47
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s39, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s6, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s33, s5, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s35, s35, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s53
	v_and_b32_e32 v67, 15, v0
	v_and_b32_e32 v33, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s53
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s5, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s52, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s39, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s6, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s6, s6, 28
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s2, s2, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s35, s35, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v33
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v99, 16, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s33, s35
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v83, v1, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s6, 0, v99
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v68, s52, v83
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s38, v68
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
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_lshlrev_b32_e32 v1, 4, v0
	v_lshlrev_b32_e32 v2, 7, v67
	v_lshlrev_b32_e32 v3, 6, v33
	s_xor_b32 s9, s3, s36
	s_mul_f32 s8, s8, 0x4f7ffffe
	v_and_b32_e32 v1, 0x70, v1
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s10, 0, s7
	s_xor_b32 s11, s51, s9
	s_cvt_u32_f32 s8, s8
	v_or3_b32 v3, v2, v3, v1
	s_sub_i32 s14, s11, s9
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s9, s14, s36
	s_mul_i32 s10, s10, s8
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v10, 0x60, v3, 0
	v_xad_u32 v5, v3, 16, 0
	v_xad_u32 v6, v3, 32, 0
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v8, v3, 64, 0
	v_xad_u32 v9, 0x50, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[57:60], v10
	ds_load_b128 v[61:64], v3
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v3, 0, v65
	v_mov_b32_e32 v65, 0
	ds_load_b128 v[33:36], v4
	ds_load_b128 v[37:40], v5
	v_mov_b32_e32 v4, 0x5410
	v_mov_b32_e32 v5, 0x7632
	s_sub_i32 s3, s3, s9
	v_mov_b32_e32 v28, v65
	v_or_b32_e32 v101, v2, v1
	v_cndmask_b32_e64 v1, 0x1054, v4, s6
	s_mul_hi_u32 s9, s8, s10
	s_abs_i32 s15, s3
	s_add_i32 s16, s8, s9
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[20:21], s[0:1], 0x28
	s_load_b32 s0, s[0:1], 0x6c
	v_cndmask_b32_e64 v2, 0x3276, v5, s6
	v_lshl_or_b32 v1, v1, 8, v1
	s_mul_hi_u32 s16, s15, s16
	s_ashr_i32 s3, s3, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s17, s16, s7
	s_xor_b32 s3, s3, s12
	s_sub_i32 s12, s15, s17
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[53:56], v9
	v_lshl_or_b32 v2, v2, 8, v2
	v_dual_mov_b32 v18, v65 :: v_dual_and_b32 v1, 0x540054, v1
	s_ashr_i32 s13, s13, 4
	s_add_i32 s15, s16, 1
	s_sub_i32 s17, s12, s7
	s_cmp_ge_u32 s12, s7
	.loc	1 903 13                        ; attention.py:903:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[80:81], null, s34, v84, v[74:75]
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s1, s15, s16
	v_dual_mov_b32 v30, v65 :: v_dual_and_b32 v11, 64, v0
	v_dual_mov_b32 v27, v65 :: v_dual_and_b32 v2, 0x760076, v2
	v_lshl_or_b32 v1, v1, 4, v1
	s_cselect_b32 s12, s17, s12
	s_add_i32 s15, s1, 1
	s_cmp_ge_u32 s12, s7
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v100, s47, v68
	s_cselect_b32 s1, s15, s1
	v_xor_b32_e32 v4, 16, v101
	v_xor_b32_e32 v5, 32, v101
	v_xor_b32_e32 v6, 48, v101
	v_xor_b32_e32 v7, 64, v101
	v_xor_b32_e32 v8, 0x50, v101
	v_xor_b32_e32 v9, 0x60, v101
	v_xor_b32_e32 v10, 0x70, v101
	v_lshl_or_b32 v2, v2, 4, v2
	v_dual_mov_b32 v29, v65 :: v_dual_and_b32 v104, 0x5040504, v1
	v_dual_mov_b32 v24, v65 :: v_dual_lshlrev_b32 v1, 2, v11
	s_xor_b32 s1, s1, s3
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[81:82], null, s34, 6, v[80:81]
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s1, s3
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s14, s14, s37
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s38, s0, 0x3fb8aa3b
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s34, v74
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v0, 4, v99
	v_subrev_nc_u32_e32 v102, s45, v100
	v_dual_mov_b32 v20, v65 :: v_dual_add_nc_u32 v103, s46, v100
	v_dual_mov_b32 v22, v65 :: v_dual_and_b32 v105, 0x7060706, v2
	v_lshl_add_u32 v106, v67, 1, 0
	v_add_nc_u32_e32 v107, 0, v4
	v_dual_mov_b32 v31, v65 :: v_dual_add_nc_u32 v108, 0, v5
	v_dual_mov_b32 v12, v65 :: v_dual_add_nc_u32 v109, 0, v6
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v110, 0, v7
	v_dual_mov_b32 v14, v65 :: v_dual_add_nc_u32 v111, 0, v8
	v_dual_mov_b32 v19, v65 :: v_dual_add_nc_u32 v112, 0, v9
	v_dual_mov_b32 v16, v65 :: v_dual_add_nc_u32 v113, 0, v10
	v_mov_b32_e32 v26, v65
	v_mov_b32_e32 v32, v65
	v_dual_mov_b32 v21, v65 :: v_dual_add_nc_u32 v114, v3, v1
	v_dual_mov_b32 v23, v65 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v65
	v_mov_b32_e32 v10, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v13, v65
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v5, v65
	v_dual_mov_b32 v6, v65 :: v_dual_mov_b32 v117, 0xff800000
	v_mov_b32_e32 v7, v65
	v_mov_b32_e32 v8, v65
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v115, s34, 1, v80
	v_lshl_add_u32 v82, s34, 2, v80
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s43, s1, s14
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s37, s13, 3
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s36, s43, s39
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s42, s43, s37
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s43, s43, s13
	s_and_b32 s29, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s28, s10
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s1, s33, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s33, 4
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s7, s1, s42
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v123, s1, v84
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s7, s7, s34
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s43
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v71, s38, v71 :: v_dual_add_nc_u32 v122, s7, v81
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s34
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s37, v123
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v119, s3, v74, 1
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v66, s38, v66 :: v_dual_mul_f32 v73, s38, v73
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s47
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v72, s38, v72
	v_dual_mul_f32 v67, s38, v67 :: v_dual_add_nc_u32 v118, s7, v80
	v_dual_mul_f32 v69, s38, v69 :: v_dual_add_nc_u32 v120, s7, v115
	v_dual_mul_f32 v68, s38, v68 :: v_dual_add_nc_u32 v121, s7, v82
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v72, 0xff800000, v72, s55
	v_cndmask_b32_e64 v73, 0xff800000, v73, s54
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	v_dual_cndmask_b32 v120, 0x80000000, v120 :: v_dual_cndmask_b32 v125, 0x80000000, v122
	v_cndmask_b32_e32 v124, 0x80000000, v121, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v127, v72, v73
.Ltmp2:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v122, v119, s[20:23], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v121, v118, s[28:31], 0 offen
	buffer_load_u8 v118, v120, s[28:31], 0 offen
	buffer_load_u8 v119, v124, s[28:31], 0 offen
	buffer_load_u8 v120, v125, s[28:31], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s45
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v70, s38, v70
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v66, 0xff800000, v66, s51
	v_cndmask_b32_e64 v124, 0xff800000, v67, s46
	v_cndmask_b32_e64 v68, 0xff800000, v68, s53
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v129, s1, v86
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v70, 0xff800000, v70, s52
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v130, s1, v87
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v117
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v125, v66, v124, v68
.Ltmp4:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v67.h, 0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v126, v69, v70, v71
.Ltmp6:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v128, s1, v85
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v123, v123, 1, 1
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v132.h, v67.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v125, v125, v126, v127
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v133.h, v67.h
	v_mov_b16_e64 v135.h, v67.h
	v_mov_b16_e64 v136.h, v67.h
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v128, v128, 1, 1
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v134, v125, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v131.h, v67.h
	v_mov_b16_e32 v126.h, v67.h
	v_mov_b16_e32 v127.h, v67.h
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v157, v117, v125, v134
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v125, v129, 1, 1
	v_lshl_or_b32 v129, v130, 1, 1
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s33, s33, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v130, v117, v157
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v69, v69, v157
	v_sub_f32_e32 v71, v71, v157
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s33, s35
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v130, v130
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v73, v73, v157
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e32 v158, 0, v130, vcc_lo
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v66, v66, v157
	v_sub_f32_e32 v124, v124, v157
	v_sub_f32_e32 v68, v68, v157
	v_dual_sub_f32 v70, v70, v157 :: v_dual_mul_f32 v19, v19, v158
	v_dual_sub_f32 v72, v72, v157 :: v_dual_mul_f32 v21, v21, v158
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v158
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v72, v72
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v158
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v124, v124
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v158
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v71, 0, v71, s47
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v158
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v66, 0, v66, s51
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v158
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v73, 0, v73, s54
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v158
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v71, v71
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v117, 0, v124, s46
	v_cndmask_b32_e64 v124, 0, v69, s45
	v_cndmask_b32_e64 v68, 0, v68, s53
	v_cndmask_b32_e64 v69, 0, v70, s52
	v_cndmask_b32_e64 v70, 0, v72, s55
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v132.l, v66.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v158
	v_dual_mul_f32 v23, v23, v158 :: v_dual_add_f32 v72, v66, v117
	v_dual_mul_f32 v9, v9, v158 :: v_dual_add_f32 v130, v68, v124
	v_dual_mul_f32 v11, v11, v158 :: v_dual_add_f32 v134, v69, v71
	v_dual_mul_f32 v13, v13, v158 :: v_dual_and_b32 v132, 1, v132
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v133.l, v68.h
	v_mov_b16_e64 v135.l, v69.h
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v137, v70, v73
.Ltmp12:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v158
	v_mul_f32_e32 v15, v15, v158
	v_mul_f32_e32 v1, v1, v158
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s1, v66, v66
	v_mov_b16_e64 v136.l, v70.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v130
.Ltmp14:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v130, 1, v133
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v134, v134, v137 :: v_dual_and_b32 v133, 1, v135
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v66, v66, v132, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v30, v30, v158 :: v_dual_and_b32 v135, 1, v136
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v69, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v69, v69, v133, 0x7fff
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v134
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v150.l, 0x7fff, v66.h, s1
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s1, s39, v123
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v68, v68
	v_cmp_o_f32_e64 s11, v70, v70
	v_add3_u32 v68, v68, v130, 0x7fff
	v_add3_u32 v130, v70, v135, 0x7fff
	v_cndmask_b16 v154.l, 0x7fff, v69.h, s9
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v132, v72, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_cndmask_b16 v152.l, 0x7fff, v68.h, s7
	v_cmp_o_f32_e64 s3, v124, v124
	v_cmp_o_f32_e64 s10, v73, v73
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v158
	v_mul_f32_e32 v27, v27, v158
	v_mul_f32_e32 v12, v12, v158
	v_mul_f32_e32 v14, v14, v158
	v_mul_f32_e32 v16, v16, v158
	v_mul_f32_e32 v2, v2, v158
	v_mul_f32_e32 v4, v4, v158
	v_mul_f32_e32 v6, v6, v158
	v_mul_f32_e32 v8, v8, v158
	v_mul_f32_e32 v7, v7, v158
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v69, 16, v122
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v67.l, 4, v121.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v66.l, v121.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v70, 15, v121
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(2)
	v_and_b16 v66.h, v118.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v121, 15, v118
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v131.l, 4, v118.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v118, 0, v67, s1
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s1, s39, v128
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v68.h, v120.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v133, 15, v120
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v126.l, 4, v119.l
	v_lshrrev_b16 v127.l, 4, v120.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v120, 0, v131, s1
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s1, s39, v125
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v68.l, v119.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v122, 15, v119
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v119, -16, v70
	v_or_b32_e32 v128, -16, v133
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v123, 0, v126, s1
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s1, s39, v129
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v67.l, v117.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v125, 0, v127, s1
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v66.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v127, -16, v122
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v129, 1, v67
	v_mov_b16_e32 v67.l, v124.h
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v70, v70, v119, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v66.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v119, -16, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v70, v70
	v_mul_f32_e32 v70, v70, v69
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v126, -16, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v66, v121, v126, s1
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v68.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v126, -16, v123
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v121, v122, v127, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v68.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v122, -16, v120
	v_or_b32_e32 v127, -16, v125
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v66, v66, v69
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v68, v133, v128, s1
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v118
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v158
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v66, v66
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v121, v121, v69
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v118, v118, v119, s1
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s9, v121, v121
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v68, v69, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v119, v120, v122, s1
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s12, v68, v68
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v118, v118, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v120, v123, v126, s1
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v125
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v123, v70, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v158 :: v_dual_mul_f32 v119, v119, v69
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v120, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v122, v125, v127, s1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v125, v121, 16, 1
	v_bfe_u32 v126, v68, 16, 1
	v_cmp_o_f32_e64 s1, v70, v70
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v120, v69, v120
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v128, 1, v67
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v70, v70, v123, 0x7fff
	v_bfe_u32 v123, v118, 16, 1
	v_add3_u32 v121, v121, v125, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v69, v69, v122
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v122, v66, 16, 1
	v_bfe_u32 v125, v120, 16, 1
	v_add3_u32 v68, v68, v126, 0x7fff
	v_cmp_o_f32_e64 s13, v118, v118
	v_bfe_u32 v126, v69, 16, 1
	v_add3_u32 v66, v66, v122, 0x7fff
	v_bfe_u32 v122, v119, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v70.h, s1
	v_add3_u32 v70, v118, v123, 0x7fff
	v_cmp_o_f32_e64 s14, v119, v119
	v_cmp_o_f32_e64 s15, v120, v120
	v_add3_u32 v118, v119, v122, 0x7fff
	v_cmp_o_f32_e64 s16, v69, v69
	v_add3_u32 v119, v120, v125, 0x7fff
	v_add3_u32 v120, v69, v126, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s13
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v69.h, 0x7fff, v118.h, s14
	v_cndmask_b16 v68.l, 0x7fff, v121.h, s9
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s12
	v_cndmask_b16 v70.l, 0x7fff, v119.h, s15
	v_cndmask_b16 v70.h, 0x7fff, v120.h, s16
	ds_store_b16 v114, v66
	ds_store_b16 v114, v69 offset:128
	ds_store_b16_d16_hi v114, v66 offset:512
	ds_store_b16_d16_hi v114, v69 offset:640
	ds_store_b16 v114, v68 offset:1024
	ds_store_b16 v114, v70 offset:1152
	ds_store_b16_d16_hi v114, v68 offset:1536
	ds_store_b16_d16_hi v114, v70 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v119, v106 offset:512
	ds_load_u16_d16 v126, v106 offset:288
	ds_load_u16_d16 v135, v106 offset:608
	ds_load_u16_d16 v134, v106 offset:352
	ds_load_u16_d16 v143, v106 offset:576
	ds_load_u16_d16 v144, v106 offset:832
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_add3_u32 v68, v117, v129, 0x7fff
	v_add3_u32 v70, v124, v128, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v145, v106 offset:1088
	ds_load_u16_d16 v146, v106 offset:1344
	ds_load_u16_d16 v147, v106 offset:1600
	ds_load_u16_d16 v148, v106 offset:1856
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v134, v106 offset:480
	ds_load_u16_d16 v120, v106 offset:768
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v143, v106 offset:704
	ds_load_u16_d16 v127, v106 offset:544
	ds_load_u16_d16 v118, v106 offset:256
	ds_load_u16_d16 v142, v106 offset:320
	ds_load_u16_d16 v117, v106
	ds_load_u16_d16 v125, v106 offset:32
	ds_load_u16_d16 v141, v106 offset:64
	ds_load_u16_d16 v133, v106 offset:96
	ds_load_u16_d16 v121, v106 offset:1024
	ds_load_u16_d16 v128, v106 offset:800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v144, v106 offset:960
	ds_load_u16_d16 v136, v106 offset:864
	ds_load_u16_d16 v122, v106 offset:1280
	ds_load_u16_d16 v129, v106 offset:1056
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v67.l, v71.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v158
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v72, v132
.Ltmp22:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v145, v106 offset:1216
	ds_load_u16_d16 v137, v106 offset:1120
	ds_load_u16_d16 v123, v106 offset:1536
	ds_load_u16_d16 v130, v106 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v146, v106 offset:1472
	ds_load_u16_d16 v138, v106 offset:1376
	ds_load_u16_d16 v124, v106 offset:1792
	ds_load_u16_d16 v131, v106 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v147, v106 offset:1728
	ds_load_u16_d16 v139, v106 offset:1632
	ds_load_u16_d16 v132, v106 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v148, v106 offset:1984
	ds_load_u16_d16 v140, v106 offset:1888
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v117, v106 offset:128
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v125, v106 offset:160
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v141, v106 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v133, v106 offset:224
	ds_load_u16_d16_hi v119, v106 offset:640
	ds_load_u16_d16_hi v118, v106 offset:384
	ds_load_u16_d16_hi v126, v106 offset:416
	ds_load_u16_d16_hi v142, v106 offset:448
	ds_load_u16_d16_hi v120, v106 offset:896
	ds_load_u16_d16_hi v127, v106 offset:672
	ds_load_u16_d16_hi v135, v106 offset:736
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v121, v106 offset:1152
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v128, v106 offset:928
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v136, v106 offset:992
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v122, v106 offset:1408
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v129, v106 offset:1184
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v69, 1, v67
	v_mov_b16_e32 v67.l, v73.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v158
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(25)
	v_cndmask_b16 v68.l, 0x7fff, v130.h, s11
	v_cndmask_b16 v150.h, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v69, v71, v69, 0x7fff
	v_and_b32_e32 v67, 1, v67
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v137, v106 offset:1248
	ds_load_u16_d16_hi v123, v106 offset:1664
	ds_load_u16_d16_hi v130, v106 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v138, v106 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v124, v106 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v131, v106 offset:1696
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v139, v106 offset:1760
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v132, v106 offset:1952
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v140, v106 offset:2016
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v152.h, 0x7fff, v70.h, s3
	v_permlanex16_b32 v70, v150, s44, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v67, v73, v67, 0x7fff
	v_cndmask_b16 v154.h, 0x7fff, v69.h, s8
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v66, v116, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v149, v70, v150, v104
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s10
	v_permlanex16_b32 v67, v152, s44, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v154, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v150, v70, v150, v105
	v_mov_b32_e32 v116, v66
	v_permlanex16_b32 v70, v68, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v151, v67, v152, v104
	v_perm_b32 v152, v67, v152, v105
	v_perm_b32 v153, v69, v154, v104
	v_perm_b32 v154, v69, v154, v105
	v_perm_b32 v155, v70, v68, v104
	v_perm_b32 v156, v70, v68, v105
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[117:124], v[149:156], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[125:132], v[149:156], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[149:156], v[1:8]
	v_mov_b32_e32 v117, v157
	v_wmma_f32_16x16x16_bf16 v[9:16], v[141:148], v[149:156], v[9:16]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v66, s33, v84
	v_or_b32_e32 v67, s33, v85
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s1, s33, s36
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v68, s33, v86
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s12, s1, s49
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v66
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v69, s33, v87
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s1, s39, v67
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v66, s12, v75, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v70, s33, v88
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s3, s39, v68
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v67, s12, v92, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v71, s33, v89
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s39, v69
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v68, s12, v93, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v72, s33, v90
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s8, s39, v70
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v69, s12, v76, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v73, s33, v91
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s9, s39, v71
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v70, s12, v94, 1
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s10, s39, v72
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v71, s12, v77, 1
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s8
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s11, s39, v73
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v72, s12, v78, 1
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s9
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v73, s12, v79, 1
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s10
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_add_nc_u32 v123, 0, v101
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v118, s33, v0
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u16 v119, v66, s[24:27], 0 offen
	buffer_load_u16 v70, v70, s[24:27], 0 offen
	buffer_load_u16 v120, v67, s[24:27], 0 offen
	buffer_load_u16 v71, v71, s[24:27], 0 offen
	buffer_load_u16 v121, v68, s[24:27], 0 offen
	buffer_load_u16 v72, v72, s[24:27], 0 offen
	buffer_load_u16 v73, v73, s[24:27], 0 offen
	buffer_load_u16 v122, v69, s[24:27], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v66, v65
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v124, 8, v118
	v_or_b32_e32 v125, 12, v118
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v118
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v95, v119
	s_waitcnt vmcnt(6)
	ds_store_b16 v95, v70 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v96, v120
	s_waitcnt vmcnt(4)
	ds_store_b16 v96, v71 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v97, v121
	s_waitcnt vmcnt(2)
	ds_store_b16 v97, v72 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v98, v122
	ds_store_b16 v98, v73 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[126:129], v123
	ds_load_b128 v[130:133], v107
	ds_load_b128 v[134:137], v108
	ds_load_b128 v[138:141], v109
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v72, v65
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[142:145], v110
	ds_load_b128 v[146:149], v111
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[150:153], v112
	ds_load_b128 v[154:157], v113
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v119, 2, v118
	v_or_b32_e32 v120, 6, v118
	v_or_b32_e32 v121, 4, v118
	v_or_b32_e32 v122, 10, v118
	v_or_b32_e32 v123, 14, v118
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[126:133], v[33:40], v[66:73]
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s1, s39, v119
	v_cmp_gt_i32_e64 s3, s39, v120
	v_cmp_gt_i32_e64 s7, s39, v121
	v_cmp_gt_i32_e64 s8, s39, v122
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[134:141], v[41:48], v[66:73]
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s9, s39, v124
	v_cmp_gt_i32_e64 s10, s39, v123
	v_cmp_gt_i32_e64 s11, s39, v125
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s51, s2, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[142:149], v[49:56], v[66:73]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s46, s2, s1
	s_and_b32 s53, s2, s7
	s_and_b32 s45, s2, s3
	s_and_b32 s52, s2, s9
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[150:157], v[57:64], v[66:73]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s47, s2, s8
	s_and_b32 s55, s2, s11
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s54, s2, s10
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v118, v100
	v_cmp_le_i32_e64 s1, v119, v100
	v_cmp_le_i32_e64 s3, v121, v100
	v_cmp_le_i32_e64 s7, v120, v100
	v_cmp_le_i32_e64 s8, v124, v100
	v_cmp_le_i32_e64 s9, v122, v100
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s12, vcc_lo, s51
	s_and_b32 s1, s1, s46
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s10, v125, v100
	v_cmp_le_i32_e64 s11, v123, v100
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s3, s3, s53
	s_and_b32 s7, s7, s45
	s_and_not1_b32 s13, s51, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s46, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s52
	s_and_b32 s9, s9, s47
	s_or_b32 s51, s13, s12
	s_or_b32 s46, s14, s1
	s_and_not1_b32 s1, s53, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s45, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s55
	s_and_b32 s11, s11, s54
	s_or_b32 s53, s1, s3
	s_or_b32 s45, s12, s7
	s_and_not1_b32 s1, s52, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s47, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s52, s1, s3
	s_or_b32 s47, s7, s8
	s_and_not1_b32 s1, s55, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s54, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s55, s1, s3
	s_or_b32 s54, s7, s8
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s50
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v118, v102
	v_cmp_ge_i32_e64 s1, v119, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s12, v118, v103
	v_cmp_le_i32_e64 s13, v119, v103
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v121, v102
	v_cmp_ge_i32_e64 s7, v120, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s14, v121, v103
	v_cmp_le_i32_e64 s15, v120, v103
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v124, v102
	v_cmp_ge_i32_e64 s9, v122, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s16, v124, v103
	v_cmp_le_i32_e64 s17, v122, v103
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s1, s1, s13
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v125, v102
	v_cmp_ge_i32_e64 s11, v123, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v125, v103
	v_cmp_le_i32_e64 s19, v123, v103
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, s12, s51
	s_and_b32 s1, s1, s46
	s_and_b32 s3, s3, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s3, s3, s53
	s_and_b32 s7, s7, s45
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_not1_b32 s13, s51, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s46, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s52
	s_and_b32 s9, s9, s47
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_or_b32 s51, s13, s12
	s_or_b32 s46, s14, s1
	s_and_not1_b32 s1, s53, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s45, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s55
	s_and_b32 s11, s11, s54
	s_or_b32 s53, s1, s3
	s_or_b32 s45, s12, s7
	s_and_not1_b32 s1, s52, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s47, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s52, s1, s3
	s_or_b32 s47, s7, s8
	s_and_not1_b32 s1, s55, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s54, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s55, s1, s3
	s_or_b32 s54, s7, s8
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 0 21                          ; attention.py:0:21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v64, null, v66, v66, v25
	v_div_scale_f32 v67, null, v66, v66, v26
	v_div_scale_f32 v73, null, v66, v66, v28
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v68, v67
	v_div_scale_f32 v71, null, v66, v66, v27
	v_rcp_f32_e32 v75, v73
	v_div_scale_f32 v69, vcc_lo, v25, v66, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
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
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v52, 1, v99
	.loc	1 1049 17                       ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v62, v65
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v52
	v_or_b32_e32 v33, 54, v52
	v_or_b32_e32 v34, 53, v52
	v_or_b32_e32 v35, 52, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v64, v70, v69
	v_fma_f32 v69, -v67, v76, v74
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 51, v52
	v_or_b32_e32 v37, 50, v52
	v_or_b32_e32 v38, 49, v52
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v66
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v65, v67, v72
	v_rcp_f32_e32 v67, v79
	v_div_fmas_f32 v64, v64, v68, v76
	v_fma_f32 v68, -v73, v78, v70
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v74, v70
	v_fma_f32 v70, -v79, v77, v72
	v_fma_f32 v72, -v76, v64, v65
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v39, 48, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v71, -v75, v67, v77
	v_div_fixup_f32 v31, v64, v66, v31
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v40, 39, v52
	v_or_b32_e32 v41, 38, v52
	v_or_b32_e32 v42, 37, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v71, v69
	v_rcp_f32_e32 v71, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v43, 36, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v81, v70, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v44, 35, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v75, v67, v77
	v_div_scale_f32 v75, s4, v19, v66, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v68, v70
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v45, 34, v52
	v_or_b32_e32 v46, 33, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v76, v71, 1.0
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s5, v32, v66, v32
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, null, v66, v66, v22
	v_mul_f32_e32 v74, v78, v80
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v47, 32, v52
	v_or_b32_e32 v48, 23, v52
	v_or_b32_e32 v49, 22, v52
	v_or_b32_e32 v50, 21, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v72, -v73, v74, v78
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v51, 20, v52
	v_or_b32_e32 v53, 19, v52
	v_or_b32_e32 v54, 18, v52
	v_or_b32_e32 v55, 17, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v72, v80
	v_div_scale_f32 v72, null, v66, v66, v19
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v56, 16, v52
	v_or_b32_e32 v57, 7, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v73, v74, v78
	v_rcp_f32_e32 v68, v72
	v_div_scale_f32 v73, s3, v18, v66, v18
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v58, 6, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v59, 5, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v67, v78
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v60, 4, v52
	v_or_b32_e32 v61, 3, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v74, v65, v70 :: v_dual_mul_f32 v65, v75, v68
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v62, 2, v52
	v_or_b32_e32 v63, 1, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v64, -v81, v74, v73
	v_fma_f32 v73, -v72, v65, v75
	v_fma_f32 v81, -v78, v67, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v32, 0, v32, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v78, v67, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v79, v67
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, null, v66, v66, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s34, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v77, v72, v68
	v_rcp_f32_e32 v73, v71
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s34, v63
	v_cmp_gt_i32_e64 s30, s34, v62
	v_cmp_gt_i32_e64 s29, s34, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v76, v77, v72
	v_mul_f32_e32 v70, v65, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s34, v60
	v_cmp_gt_i32_e64 s27, s34, v59
	v_cmp_gt_i32_e64 s26, s34, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v64, v68
	v_fma_f32 v75, -v74, v70, v65
	v_div_scale_f32 v64, s4, v9, v66, v9
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s34, v57
	v_cmp_gt_i32_e64 s24, s34, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v75, v69
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s34, v55
	v_cmp_gt_i32_e64 s22, s34, v54
	v_cmp_gt_i32_e64 s21, s34, v53
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v70, v65
	v_div_scale_f32 v74, null, v66, v66, v11
	v_fmac_f32_e32 v73, v75, v73
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s34, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v69, v70
	v_fma_f32 v69, -v76, v77, v72
	v_div_scale_f32 v72, s1, v10, v66, v10
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v75, v74
	v_div_fixup_f32 v23, v65, v66, v23
	v_mul_f32_e32 v81, v72, v67
	v_div_fmas_f32 v68, v69, v68, v77
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s34, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v69, -v78, v81, v72
	v_div_fixup_f32 v24, v68, v66, v24
	v_fma_f32 v68, -v80, v82, 1.0
	v_fma_f32 v76, -v74, v75, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s34, v49
	v_cmp_gt_i32_e64 s17, s34, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s34, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v77, v76
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s34, v46
	v_cmp_gt_i32_e64 s14, s34, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v71, v70, v64
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s34, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v65, v75
	v_rcp_f32_e32 v65, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s34, v43
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s34, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, s1, v13, v66, v13
	v_mul_f32_e32 v71, v68, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v72, v74, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v64, v73, v65
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s34, v41
	v_cmp_gt_i32_e64 s9, s34, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v67, v74
	v_div_fmas_f32 v70, v70, v75, v77
	v_fma_f32 v75, -v80, v71, v68
	v_div_scale_f32 v67, s4, v14, v66, v14
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v70, v66, v11
	v_div_scale_f32 v70, null, v66, v66, v15
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s34, v33
	v_cmp_gt_i32_e64 s7, s34, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v76, v70
	v_fmac_f32_e32 v71, v75, v82
	v_fma_f32 v75, -v69, v64, v73
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v26, v26
	v_cmp_o_f32_e64 s36, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v80, v71, v68
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v69, v74
	v_div_fmas_f32 v64, v68, v65, v64
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v68, s1, v15, v66, v15
	v_div_scale_f32 v73, null, v66, v66, v2
	v_div_fixup_f32 v13, v64, v66, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v75, v77, 1.0
	v_fma_f32 v67, -v72, v71, v67
	v_mul_f32_e32 v72, v68, v76
	v_rcp_f32_e32 v79, v73
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v65, null, v66, v66, v1
	v_div_fmas_f32 v67, v67, v74, v71
	v_fma_f32 v71, -v70, v72, v68
	v_fmac_f32_e32 v77, v64, v77
	v_div_scale_f32 v64, s3, v16, v66, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v14, v67, v66, v14
	v_fma_f32 v81, -v73, v79, 1.0
	v_fmac_f32_e32 v72, v71, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v64, v77
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v69, v65
	v_fmac_f32_e32 v79, v81, v79
	v_fma_f32 v67, -v70, v72, v68
	v_fma_f32 v71, -v75, v74, v64
	v_div_scale_f32 v80, s4, v1, v66, v1
	v_div_scale_f32 v81, s5, v2, v66, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, v71, v77
	v_div_fmas_f32 v67, v67, v76, v72
	v_div_scale_f32 v72, null, v66, v66, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v64, -v75, v74, v64
	v_fma_f32 v78, -v65, v69, 1.0
	v_div_fixup_f32 v15, v67, v66, v15
	v_mul_f32_e32 v70, v81, v79
	v_div_scale_f32 v76, null, v66, v66, v8
	v_div_fmas_f32 v64, v64, v77, v74
	v_rcp_f32_e32 v74, v72
	v_fmac_f32_e32 v69, v78, v69
	v_div_scale_f32 v78, null, v66, v66, v3
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v64, v66, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v82, v78
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v72, v74, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v67, v74
	v_mul_f32_e32 v84, v80, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v78, v82, 1.0
	v_div_scale_f32 v67, null, v66, v66, v6
	v_fma_f32 v68, -v65, v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v71, v82
	v_div_scale_f32 v71, s1, v3, v66, v3
	v_fmac_f32_e32 v84, v68, v69
	v_fma_f32 v68, -v73, v70, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v65, v84, v80
	v_fmac_f32_e32 v70, v68, v79
	v_mul_f32_e32 v68, v71, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v65, v69, v84
	v_fma_f32 v69, -v73, v70, v81
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v78, v68, v71
	v_div_fixup_f32 v1, v65, v66, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v69, v69, v79, v70
	v_div_scale_f32 v65, null, v66, v66, v5
	v_fmac_f32_e32 v68, v73, v82
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v69, v66, v2
	v_div_scale_f32 v69, null, v66, v66, v7
	v_fma_f32 v64, -v78, v68, v71
	v_rcp_f32_e32 v71, v67
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v73, v69
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v67, v71, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v69, v73, 1.0
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, s3, v6, v66, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v80, v73
	v_div_fmas_f32 v64, v64, v82, v68
	v_rcp_f32_e32 v68, v65
	v_div_scale_f32 v70, vcc_lo, v4, v66, v4
	v_fma_f32 v82, -v76, v78, 1.0
	v_div_fixup_f32 v3, v64, v66, v3
	v_div_scale_f32 v80, s4, v7, v66, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v70, v74
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s5, v8, v66, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v65, v68, 1.0
	v_fma_f32 v79, -v72, v75, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v85, v80, v73 :: v_dual_mul_f32 v86, v82, v78
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v68, v64, v68
	v_div_scale_f32 v64, s1, v5, v66, v5
	v_fmac_f32_e32 v75, v79, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v81, v64, v68
	v_fma_f32 v70, -v72, v75, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v65, v81, v64
	v_mul_f32_e32 v84, v77, v71
	v_div_fmas_f32 v70, v70, v74, v75
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s34, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v81, v79, v68
	v_fma_f32 v72, -v67, v84, v77
	v_fma_f32 v79, -v69, v85, v80
	v_div_fixup_f32 v4, v70, v66, v4
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v65, v81, v64
	v_fma_f32 v65, -v76, v86, v82
	v_dual_fmac_f32 v84, v72, v71 :: v_dual_fmac_f32 v85, v79, v73
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v64, v64, v68, v81
	v_fmac_f32_e32 v86, v65, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v67, -v67, v84, v77
	v_fma_f32 v65, -v69, v85, v80
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v64, v66, v5
	v_fma_f32 v68, -v76, v86, v82
	v_div_fmas_f32 v67, v67, v71, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v73, v85
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v67, v66, v6
	v_div_fmas_f32 v68, v68, v78, v86
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v1, s48, v83
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v65, v66, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v68, v66, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v1, s34
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s34, v40
	v_cmp_gt_i32_e64 s4, s34, v39
	v_cmp_gt_i32_e64 s3, s34, v38
	v_cmp_gt_i32_e64 s0, s34, v36
	v_cmp_gt_i32_e32 vcc_lo, s34, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v65, v25, v65, 0x7fff
	v_cmp_o_f32_e64 s34, v25, v25
	v_add3_u32 v25, v26, v66, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v66, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s34
	v_bfe_u32 v65, v29, 16, 1
	v_cmp_o_f32_e64 s34, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s35
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s36
	v_add3_u32 v28, v29, v65, 0x7fff
	v_cmp_o_f32_e64 s35, v29, v29
	v_add3_u32 v29, v30, v66, 0x7fff
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
	v_cndmask_b32_e64 v7, v17, v26, s6
	v_cndmask_b32_e64 v8, v26, v17, s6
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s35
	v_cndmask_b32_e64 v14, v20, v29, s6
	v_cndmask_b32_e64 v15, v29, v20, s6
	v_cndmask_b32_e64 v16, v19, v18, s6
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e64 v18, v18, v19, s6
	v_cndmask_b32_e64 v19, v12, v9, s6
	v_cndmask_b32_e64 v9, v9, v12, s6
	v_cndmask_b32_e64 v12, 0x1054, v17, s6
	v_cndmask_b32_e64 v17, 0x3276, v20, s6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s36
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s37
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s38
	v_cndmask_b32_e64 v6, v25, v28, s6
	v_lshl_or_b32 v17, v17, 8, v17
	s_mov_b32 s34, 0x76543210
	v_and_b32_e32 v12, 0x540054, v12
	v_cndmask_b32_e64 v20, v11, v10, s6
	v_cndmask_b32_e64 v10, v10, v11, s6
	v_cndmask_b32_e64 v11, v3, v13, s6
	v_cndmask_b32_e64 v3, v13, v3, s6
	v_cndmask_b32_e64 v13, v4, v2, s6
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v2, v2, v4, s6
	v_permlanex16_b32 v4, v6, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_cndmask_b32_e64 v5, v28, v25, s6
	v_lshl_or_b32 v12, v17, 4, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v52, v1, v52, 1
	v_add_lshl_u32 v63, v1, v63, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 0x5040504, v8
	v_mov_b16_e32 v68.h, 0
	v_permlanex16_b32 v15, v15, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v18, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v10, v10, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v4, v5, v8
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v62, v1, v62, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v4, v5, v12
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v63, 0x80000000, v63, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s30
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
	v_mov_b16_e32 v11.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v62, 0x80000000, v62, s6
	buffer_store_b16 v18, v52, s[40:43], 0 offen
	v_add_lshl_u32 v18, v1, v61, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v4.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v11, v63, s[40:43], 0 offen
	buffer_store_b16 v4, v62, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v60, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v2, v2, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v18, s6
	v_add_lshl_u32 v18, v1, v59, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s28
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v52, v1, v58, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v2, v13, v8
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v2, v13, v12
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v52, 0x80000000, v52, s6
	s_clause 0x1
	buffer_store_b16 v68, v11, s[40:43], 0 offen
	buffer_store_b16 v5, v4, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v57, 1
	v_add_lshl_u32 v5, v1, v56, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[40:43], 0 offen
	buffer_store_b16 v6, v52, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v55, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v11, v1, v54, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v7.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	s_clause 0x1
	buffer_store_b16 v12, v4, s[40:43], 0 offen
	buffer_store_b16 v7, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v53, 1
	v_add_lshl_u32 v5, v1, v51, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[40:43], 0 offen
	buffer_store_b16 v14, v11, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v50, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v49, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.l, v15.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	s_clause 0x1
	buffer_store_b16 v21, v4, s[40:43], 0 offen
	buffer_store_b16 v15, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v48, 1
	v_add_lshl_u32 v5, v1, v47, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s17
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v24, v6, s[40:43], 0 offen
	buffer_store_b16 v16, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v45, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.l, v17.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	s_clause 0x1
	buffer_store_b16 v23, v4, s[40:43], 0 offen
	buffer_store_b16 v17, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s13
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v26, v6, s[40:43], 0 offen
	buffer_store_b16 v9, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s12
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v41, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v9.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.h, v68.h
	v_mov_b16_e32 v28.l, v19.h
	v_mov_b16_e32 v28.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
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
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v10.h
	v_mov_b16_e32 v27.h, v68.h
	v_mov_b16_e32 v30.l, v20.h
	v_mov_b16_e32 v30.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
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
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v1, v33, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s9
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v8.h
	v_mov_b16_e32 v32.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v68.h
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
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 159
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 159
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13780
; TotalNumSgprs: 83
; NumVgprs: 159
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 159
; Occupancy: 9
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
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     159
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
