	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
	v_lshrrev_b32_e32 v97, 6, v0
	v_and_b32_e32 v78, 63, v0
	s_load_b64 s[40:41], s[0:1], 0x0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_or_b32_e32 v98, 2, v97
	v_or_b32_e32 v99, 4, v97
	v_or_b32_e32 v100, 6, v97
	v_or_b32_e32 v101, 8, v97
	v_or_b32_e32 v102, 10, v97
	v_or_b32_e32 v103, 12, v97
	v_or_b32_e32 v104, 14, v97
	v_and_b32_e32 v108, 15, v0
	v_and_b32_e32 v65, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v34, 4, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v74, 7, v108
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s56
	s_bitcmp1_b32 s56, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[79:80], null, s62, v97, v[78:79]
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
	s_mul_i32 s48, s62, 54
	v_mad_u64_u32 v[80:81], null, s62, 6, v[79:80]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s61, v98
	v_or_b32_e32 v3, s61, v99
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v105, s62, 1, v79
	s_mul_i32 s71, s62, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s61, v100
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v106, s62, 2, v79
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s61, v101
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[81:82], null, s62, 10, v[79:80]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s61, v97
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s38, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s61, v102
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v107, s62, 3, v79
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
	v_mad_u64_u32 v[82:83], null, s62, 12, v[79:80]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s38, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s61, v103
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[83:84], null, s62, 14, v[79:80]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s38, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s61, v104
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
	s_ashr_i32 s46, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s38, v9
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
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s62, v78
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s47, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s60, s60, s61
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s38, v31
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s80, s60, s62
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s38, v32
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s80, v79
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s38, v1
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s38, v2
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v2, s80, v105, 1
	v_add_lshl_u32 v31, v33, s48, 1
	v_add_lshl_u32 v32, v33, s71, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s80, v106, 1
	v_add_lshl_u32 v4, s80, v80, 1
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v5, s80, v107, 1
	v_add_lshl_u32 v6, s80, v81, 1
	v_add_lshl_u32 v7, s80, v82, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s78, s62, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s80, v83, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s38, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, v33, s78, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s76, s62, 20
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s38, v12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s38, v10
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v10, v33, s77, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s75, s62, 22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s38, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, v33, s76, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s74, s62, 24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s38, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, v33, s75, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s73, s62, 26
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s38, v15
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, v33, s74, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s72, s62, 28
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s38, v16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v33, s73, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s70, s62, 30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s38, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, v33, s72, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s79, s62, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s38, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v33, s70, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s69, s62, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s38, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s79, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s68, s62, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s69, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s67, s62, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s38, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s68, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s66, s62, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s38, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s67, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s65, s62, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s38, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s66, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s64, s62, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s38, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s65, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s62, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s38, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s64, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s62, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s38, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s55, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s62, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s38, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s54, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s50, s62, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s38, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s53, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s52, s62, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s38, v27
	v_cmp_gt_i32_e64 s35, s38, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s50, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s51, s62, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s52, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s49, s62, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s51, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s35, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v30, v33, s49, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s33, s2
	s_and_b32 s5, s5, s2
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
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v75, 1, v78
	v_lshlrev_b32_e32 v35, 6, v65
	v_and_b32_e32 v109, 0x70, v34
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s47, s46
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s4, s46
	s_mov_b32 s35, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v34, v74, v35, v109
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v75
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s6, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v37, 0, v34
	v_xad_u32 v38, v34, 16, 0
	v_add_nc_u32_e32 v113, 0, v33
	v_xor_b32_e32 v35, 0x120, v33
	v_xor_b32_e32 v36, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	v_xad_u32 v41, v34, 32, 0
	v_xad_u32 v45, v34, 48, 0
	v_xad_u32 v49, v34, 64, 0
	v_xad_u32 v53, 0x50, v34, 0
	v_xad_u32 v57, 0x60, v34, 0
	v_xad_u32 v61, 0x70, v34, 0
	v_add_nc_u32_e32 v114, 0, v35
	v_add_nc_u32_e32 v115, 0, v36
	v_add_nc_u32_e32 v116, 0, v33
	s_waitcnt vmcnt(31)
	ds_store_b16 v113, v1
	s_waitcnt vmcnt(27)
	ds_store_b16 v113, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v113, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v113, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v113, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v113, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v113, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v113, v26 offset:7168
	ds_store_b16 v114, v2
	ds_store_b16 v114, v6 offset:1024
	ds_store_b16 v114, v10 offset:2048
	ds_store_b16 v114, v14 offset:3072
	ds_store_b16 v114, v18 offset:4096
	ds_store_b16 v114, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v114, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v114, v29 offset:7168
	ds_store_b16 v115, v3
	ds_store_b16 v115, v7 offset:1024
	ds_store_b16 v115, v11 offset:2048
	ds_store_b16 v115, v15 offset:3072
	ds_store_b16 v115, v19 offset:4096
	ds_store_b16 v115, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v115, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v115, v30 offset:7168
	ds_store_b16 v116, v4
	ds_store_b16 v116, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v116, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v116, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v116, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v116, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v116, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v116, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v37
	ds_load_b128 v[37:40], v38
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s39, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s8, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s34, s6, -16
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	v_readfirstlane_b32 s7, v1
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s8, s56, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s8, s61, s58
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s61, s57
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s8, s8, s59
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s59
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s8, s8, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s8, s39, s8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s8, s8, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s9, s8, 31
	s_lshr_b32 s9, s9, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s8, s8, s9
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s9, s10, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s8, s8, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s35, s9, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s34, s34, s8
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v117, 0, 1, s45
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s8, s61, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 64
	s_min_i32 s8, s39, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s8, s8, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s34, s34, s8
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v111, 0x70, v0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_and_b32_e32 v96, 16, v0
	v_and_b32_e32 v110, 64, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v112, 1, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v95, 1, v96
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
	v_mov_b32_e32 v73, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v69, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v71, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v66, v8
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s35, s34
	v_cmp_eq_u32_e32 vcc_lo, 0, v96
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s36
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_ashr_i32 s8, s8, 31
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 4, v111
	s_xor_b32 s9, s44, s8
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x28
	s_load_b128 s[48:51], s[0:1], 0x8
	s_sub_i32 s10, s9, s8
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v1, s61, v2
	s_mul_i32 s9, s10, s36
	s_load_b32 s36, s[0:1], 0x7c
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 8, v2
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v118, s59, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s38, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, 16, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v10, s61, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v5, 24, v2
	s_cvt_u32_f32 s7, s7
	v_or_b32_e32 v6, 32, v2
	s_sub_i32 s8, 0, s4
	v_or_b32_e32 v126, v74, v109
	s_mul_i32 s8, s8, s7
	s_sub_i32 s11, s3, s9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s61, v6
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s11
	s_add_i32 s7, s7, s3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v7, 40, v2
	v_or_b32_e32 v8, 48, v2
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s36, v108
	s_mul_hi_u32 s3, s8, s7
	v_or_b32_e32 v9, 56, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s61, v4
	v_xor_b32_e32 v17, 0x70, v126
	v_and_b32_e32 v18, 1, v0
	s_ashr_i32 s7, s11, 31
	s_ashr_i32 s5, s5, 31
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_mad_u64_u32 v[84:85], null, s15, v3, v[1:2]
	v_lshlrev_b32_e32 v3, 2, v65
	v_mad_u64_u32 v[85:86], null, s15, v4, v[1:2]
	v_mad_u64_u32 v[86:87], null, s15, v5, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v108, 3, v3
	v_mad_u64_u32 v[87:88], null, s15, v6, v[1:2]
	v_lshrrev_b32_e32 v6, 2, v96
	v_and_b32_e32 v4, 14, v0
	v_xor_b32_e32 v3, v3, v112
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s9, s3, s4
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[88:89], null, s15, v7, v[1:2]
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s7, s5
	v_or_b32_e32 v137, v3, v6
	v_lshlrev_b32_e32 v3, 2, v111
	s_sub_i32 s7, s8, s9
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[89:90], null, s15, v8, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s61, v7
	v_or_b32_e32 v15, s61, v8
	v_or_b32_e32 v16, s61, v9
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[90:91], null, s15, v9, v[1:2]
	v_lshlrev_b32_e32 v7, 1, v4
	v_lshl_or_b32 v3, v4, 8, v3
	v_lshlrev_b32_e32 v9, 1, v0
	v_add_nc_u32_e32 v149, 0, v17
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v8, 5, v18
	s_ashr_i32 s6, s6, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s3, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v119, s59, v10
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s3, s8, s3
	s_cselect_b32 s7, s9, s7
	v_or3_b32 v139, v3, v8, v7
	v_dual_mov_b32 v8, 0x5410 :: v_dual_and_b32 v7, 60, v9
	s_add_i32 s8, s3, 1
	s_cmp_ge_u32 s7, s4
	v_mov_b32_e32 v9, 0x7632
	s_cselect_b32 s3, s8, s3
	v_lshrrev_b32_e32 v22, 3, v65
	v_lshl_or_b32 v7, v65, 4, v7
	v_cndmask_b32_e32 v8, 0x1054, v8, vcc_lo
	s_xor_b32 s3, s3, s5
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s4, s10, s37
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s3, s3, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s61, v5
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s64, s3, s4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v120, s59, v11
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s3, s38, v10
	v_dual_cndmask_b32 v9, 0x3276, v9 :: v_dual_add_nc_u32 v10, 0, v75
	v_lshrrev_b32_e32 v5, 5, v65
	v_xor_b32_e32 v7, v7, v22
	v_lshl_or_b32 v8, v8, 8, v8
	v_mov_b32_e32 v65, 0
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v5, v18, 2, v5
	v_lshl_or_b32 v140, v18, 6, v7
	v_and_b32_e32 v7, 0x540054, v8
	v_mov_b32_e32 v31, v65
	v_mul_u32_u24_e32 v19, 0x48, v4
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[91:92], null, s15, v2, v[1:2]
	v_mad_u64_u32 v[92:93], null, s33, v97, v[78:79]
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v138, v19, v5, v95
	v_xor_b32_e32 v21, 4, v139
	v_and_b32_e32 v8, 0x760076, v9
	v_lshl_or_b32 v7, v7, 4, v7
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s42, s6, 3
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s37, s64, s39
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s56, s64, s42
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s64, s64, s6
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v121, s59, v12
	v_add_nc_u32_e32 v122, s59, v13
	v_dual_mov_b32 v28, v65 :: v_dual_add_nc_u32 v123, s59, v14
	v_dual_mov_b32 v27, v65 :: v_dual_add_nc_u32 v124, s59, v15
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v125, s59, v16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s38, v11
	v_cmp_gt_i32_e64 s5, s38, v12
	v_cmp_gt_i32_e64 s6, s38, v13
	v_cmp_gt_i32_e64 s7, s38, v14
	v_cmp_gt_i32_e64 s8, s38, v15
	v_cmp_gt_i32_e64 s9, s38, v16
	v_xor_b32_e32 v11, 16, v126
	v_xor_b32_e32 v12, 32, v126
	v_xor_b32_e32 v13, 48, v126
	v_xor_b32_e32 v14, 64, v126
	v_xor_b32_e32 v15, 0x50, v126
	v_xor_b32_e32 v16, 0x60, v126
	v_xor_b32_e32 v1, 0x240, v137
	v_xor_b32_e32 v2, 16, v138
	v_xor_b32_e32 v5, 32, v138
	v_xor_b32_e32 v6, 48, v138
	v_xor_b32_e32 v4, 64, v138
	v_xor_b32_e32 v19, 0x50, v138
	v_xor_b32_e32 v20, 0x60, v138
	v_xor_b32_e32 v3, 0x70, v138
	v_xor_b32_e32 v23, 8, v139
	v_xor_b32_e32 v24, 12, v139
	v_xor_b32_e32 v22, 16, v139
	v_xor_b32_e32 v25, 20, v139
	v_xor_b32_e32 v9, 24, v139
	v_xor_b32_e32 v18, 28, v139
	v_xor_b32_e32 v26, 0x810, v140
	v_and_b32_e32 v141, 0x5040504, v7
	v_lshlrev_b32_e32 v7, 2, v110
	v_add_nc_u32_e32 v158, 0, v21
	v_mov_b32_e32 v21, v65
	v_lshl_or_b32 v8, v8, 4, v8
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[93:94], null, s33, 6, v[92:93]
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s43, s12, 0x3fb8aa3b
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s12, s15, s61
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s10, s10, s13
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s33, v78
	v_subrev_nc_u32_e32 v127, s57, v118
	v_subrev_nc_u32_e32 v128, s57, v119
	v_subrev_nc_u32_e32 v129, s57, v120
	v_subrev_nc_u32_e32 v132, s57, v123
	v_subrev_nc_u32_e32 v133, s57, v124
	v_subrev_nc_u32_e32 v134, s57, v125
	v_dual_mov_b32 v32, v65 :: v_dual_add_nc_u32 v135, s58, v118
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v136, s58, v119
	v_and_b32_e32 v142, 0x7060706, v8
	v_add_nc_u32_e32 v143, 0, v11
	v_add_nc_u32_e32 v144, 0, v12
	v_add_nc_u32_e32 v145, 0, v13
	v_dual_mov_b32 v11, v65 :: v_dual_add_nc_u32 v146, 0, v14
	v_add_nc_u32_e32 v147, 0, v15
	v_dual_mov_b32 v13, v65 :: v_dual_add_nc_u32 v148, 0, v16
	v_dual_mov_b32 v15, v65 :: v_dual_add_nc_u32 v150, 0, v1
	v_dual_mov_b32 v8, v65 :: v_dual_add_nc_u32 v151, 0, v2
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v152, 0, v5
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v153, 0, v6
	v_add_nc_u32_e32 v154, 0, v4
	v_dual_mov_b32 v176, 0xff800000 :: v_dual_add_nc_u32 v155, 0, v19
	v_dual_mov_b32 v5, v65 :: v_dual_add_nc_u32 v156, 0, v20
	v_dual_mov_b32 v178, 0xff800000 :: v_dual_add_nc_u32 v157, 0, v3
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_add_nc_u32 v159, 0, v23
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_add_nc_u32 v160, 0, v24
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_add_nc_u32 v161, 0, v22
	v_dual_mov_b32 v179, 0xff800000 :: v_dual_add_nc_u32 v162, 0, v25
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v163, 0, v9
	v_dual_mov_b32 v181, 0xff800000 :: v_dual_add_nc_u32 v164, 0, v18
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v165, 0, v26
	v_mov_b32_e32 v25, 0
	v_subrev_nc_u32_e32 v131, s57, v122
	v_mov_b32_e32 v26, v65
	v_subrev_nc_u32_e32 v130, s57, v121
	v_mov_b32_e32 v18, v65
	v_mov_b32_e32 v19, v65
	v_mov_b32_e32 v20, v65
	v_mov_b32_e32 v22, v65
	v_mov_b32_e32 v23, v65
	v_dual_mov_b32 v24, v65 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v12, v65
	v_mov_b32_e32 v14, v65
	v_dual_mov_b32 v183, 0xff800000 :: v_dual_add_nc_u32 v166, v10, v7
	v_mov_b32_e32 v10, v65
	v_mov_b32_e32 v16, v65
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_mov_b32_e32 v6, v65
	v_mov_b32_e32 v7, v65
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v167, s58, v120
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v168, s58, v121
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v169, s58, v122
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v170, s58, v123
	v_dual_mov_b32 v196, 0xff800000 :: v_dual_add_nc_u32 v171, s58, v124
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v172, s58, v125
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v173, s33, 1, v92
	v_lshl_add_u32 v174, s33, 2, v92
	v_lshl_add_u32 v175, v108, 1, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v198, 0xff800000
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_mov_b32 v194, 0xff800000
	v_dual_mov_b32 v197, 0xff800000 :: v_dual_mov_b32 v94, 0xff800000
	v_mov_b32_e32 v199, 0xff800000
	v_mov_b32_e32 v193, 0xff800000
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s11, s11, s14
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_add_i32 s57, s10, s12
	s_mov_b64 s[30:31], s[46:47]
	s_and_b32 s49, s49, 0xffff
	s_add_i32 s57, s57, s11
	s_and_b32 s53, s51, 0xffff
	s_mov_b32 s52, s50
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	s_mov_b32 s58, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v77.h, 0xff, v77.h
	v_and_b16 v76.h, 0xff, v76.h
	v_and_b16 v74.h, 0xff, v74.h
	v_and_b16 v74.l, 0xff, v74.l
	v_and_b16 v75.h, 0xff, v75.h
	v_and_b16 v75.l, 0xff, v75.l
	v_and_b16 v77.l, 0xff, v77.l
	v_and_b16 v76.l, 0xff, v76.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v74.h
	v_cmp_ne_u16_e64 s10, 0, v74.l
	v_cmp_ne_u16_e64 s11, 0, v75.h
	v_cmp_ne_u16_e64 s12, 0, v75.l
	v_cmp_ne_u16_e64 s14, 0, v76.h
	v_cmp_ne_u16_e64 s15, 0, v77.h
	v_cmp_ne_u16_e64 s16, 0, v77.l
	v_cmp_ne_u16_e64 s13, 0, v76.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s23, s59, vcc_lo
	s_and_b32 s22, s47, s10
	s_and_b32 s17, s46, s15
	s_and_b32 s24, s29, s11
	s_and_b32 s19, s28, s12
	s_and_b32 s18, s26, s16
	s_and_b32 s21, s25, s14
	v_cndmask_b32_e64 v201, 0, 1, s23
	v_cndmask_b32_e64 v202, 0, 1, s22
	v_cndmask_b32_e64 v74, 0, 1, s17
	v_cndmask_b32_e64 v75, 0, 1, s24
	v_cndmask_b32_e64 v200, 0, 1, s19
	v_cndmask_b32_e64 v76, 0, 1, s18
	v_cndmask_b32_e64 v203, 0, 1, s21
	s_and_b32 s20, s27, s13
	v_lshlrev_b16 v74.l, 8, v74.l
	v_cndmask_b32_e64 v77, 0, 1, s20
	v_lshlrev_b16 v74.h, 8, v75.l
	v_mov_b16_e64 v75.l, v201.l
	v_lshlrev_b16 v75.h, 8, v76.l
	v_mov_b16_e64 v76.l, v203.l
	v_lshlrev_b16 v76.h, 8, v200.l
	v_mov_b16_e64 v200.l, v202.l
	v_or_b16 v77.h, v77.l, v74.l
	v_or_b16 v77.l, v75.l, v74.h
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v201, s43, v67 :: v_dual_add_nc_u32 v74, 0, v137
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v75.h, v76.l, v75.h
	v_or_b16 v75.l, v200.l, v76.h
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v69, s43, v69 :: v_dual_add_nc_u32 v76, 0, v138
	.loc	1 962 25                        ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v74, v77
	ds_store_b32 v150, v75
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v74, v76
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v74, v151
	ds_load_u8_d16 v75, v152
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v75, v153
	ds_load_u8_d16 v76, v154
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v76, v155
	ds_load_u8_d16 v77, v156
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v77, v157
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v200, s43, v66 :: v_dual_mul_f32 v205, s43, v72
	v_dual_mul_f32 v202, s43, v68 :: v_dual_mul_f32 v203, s43, v70
	v_dual_mul_f32 v204, s43, v71 :: v_dual_mul_f32 v73, s43, v73
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s59, s35, 1
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s46, s54
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s25, s59, s56
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v215, s59, v97
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v66.l, 1, v74.l
	v_and_b16 v66.h, 1, v74.h
	v_and_b16 v67.l, 1, v75.l
	v_and_b16 v67.h, 1, v75.h
	v_and_b16 v68.l, 1, v76.l
	v_cmp_eq_u16_e64 s15, 1, v66.l
	v_and_b16 v66.l, 1, v77.l
	v_cmp_eq_u16_e64 s16, 1, v66.h
	v_and_b16 v66.h, 1, v77.h
	v_and_b16 v68.h, 1, v76.h
	v_cmp_eq_u16_e64 s13, 1, v67.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v66.l
	v_cmp_eq_u16_e64 s14, 1, v67.h
	v_cmp_eq_u16_e64 s10, 1, v66.h
	v_cmp_eq_u16_e64 s11, 1, v68.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v70, 0xff800000, v200, s15
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s12, 1, v68.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v66, 0, v139
	v_cndmask_b32_e32 v208, 0xff800000, v205, vcc_lo
	v_add_nc_u32_e32 v74, 0, v140
	v_cndmask_b32_e64 v71, 0xff800000, v201, s16
	v_cndmask_b32_e64 v210, 0xff800000, v73, s10
	v_cndmask_b32_e64 v72, 0xff800000, v202, s13
	v_cndmask_b32_e64 v206, 0xff800000, v69, s14
	v_cndmask_b32_e64 v207, 0xff800000, v203, s11
	v_cndmask_b32_e64 v209, 0xff800000, v204, s12
	ds_store_b32 v66, v70
	ds_store_b32 v158, v71
	ds_store_b32 v159, v72
	ds_store_b32 v160, v206
	ds_store_b32 v161, v207
	ds_store_b32 v162, v209
	ds_store_b32 v163, v208
	ds_store_b32 v164, v210
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[66:67], v74 offset1:32
	ds_load_2addr_b32 v[68:69], v165 offset1:32
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s26, s25, s33
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s25, s42, v215
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[213:214], v165 offset0:64 offset1:96
	v_add_nc_u32_e32 v205, s26, v93
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s47, s55
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v224, v206, v207, v209
.Ltmp2:
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s25, s0, s25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v181, v181, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v199
	v_cmp_neq_f32_e64 s27, 0xff800000, v197
	v_cmp_neq_f32_e64 s28, 0xff800000, v198
	.loc	1 962 25                        ; attention.py:962:25
	v_add_nc_u32_e32 v204, s26, v174
	.loc	1 969 24                        ; attention.py:969:24
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v176, v176, v176 :: v_dual_mov_b32 v73, v66
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v75, v66, v66 :: v_dual_max_f32 v200, v68, v68
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[211:212], v74 offset0:64 offset1:96
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v180, v180, v180
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v73, v73 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_mov_b32 v76, v68
	v_max_f32_e32 v73, v75, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v75, v67
	v_dual_mov_b32 v77, v73 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v220, v212, v212
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v76, v200, v76 :: v_dual_max_f32 v75, v75, v75
	v_dual_max_f32 v200, v67, v67 :: v_dual_max_f32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v75, v200, v75
	v_max_f32_e32 v73, v73, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v201, v76 :: v_dual_mov_b32 v200, v73
	v_mov_b32_dpp v201, v201 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v200, v200 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v201, v201, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v77, v75 :: v_dual_max_f32 v200, v200, v200
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v76, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v75, v75, v77
	v_max_f32_e32 v77, v73, v200
.Ltmp17:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v73.h, 0
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v200, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v202, v77
	v_mov_b32_dpp v200, v200 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v201, v76
	v_mov_b32_dpp v201, v201 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v201, v201, v201
	v_max_f32_e32 v74, v76, v201
	v_max_f32_e32 v76, v200, v200
	v_max_f32_e32 v200, v202, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v201, v74 :: v_dual_add_nc_u32 v202, s26, v92
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v75, v75, v76
	v_add_nc_u32_e32 v203, s26, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v76, 0x80000000, v202, s25
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s26, 0xff800000, v196
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v202, 0x80000000, v203, s25
	v_cndmask_b32_e64 v203, 0x80000000, v204, s25
	v_cndmask_b32_e64 v204, 0x80000000, v205, s25
	s_clause 0x3
	buffer_load_u8 v216, v76, s[52:55], 0 offen
	buffer_load_u8 v217, v202, s[52:55], 0 offen
	buffer_load_u8 v218, v203, s[52:55], 0 offen
	buffer_load_u8 v219, v204, s[52:55], 0 offen
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v202, v69, v69
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v205, v69
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v76, v77, v200
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v200, v75
	v_mov_b32_e32 v204, v213
	v_mov_b32_dpp v205, v205 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s25, s35, 4
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v176, v176, v76
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v203, v205, v205
	v_max_f32_e32 v201, v201, v201
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v77, v211
.Ltmp31:
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s25, s25, s64
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v204, v204, v204
	v_max_f32_e32 v202, v202, v203
	v_dual_max_f32 v201, v74, v201 :: v_dual_max_f32 v74, v200, v200
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v203, v211, v211 :: v_dual_mov_b32 v200, v202
.Ltmp35:
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s25, s25, s33
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s35, s35, 16
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp37:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v221, s25, v78, 1
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v200, v200 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v205, v75, v74 :: v_dual_mov_b32 v74, v212
.Ltmp40:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s25, 0xff800000, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v221, 0x80000000, v221, s0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v200, v200, v200
	v_max_f32_e32 v225, v208, v210
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v74, v74 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v77, v203, v77
	v_max_f32_e32 v203, v213, v213
.Ltmp44:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s35, s34
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v66, v66, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v203, v203, v204
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v204, v214
.Ltmp47:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v74, v220, v74 :: v_dual_mov_b32 v75, v77
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v222, v203
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v204, v204 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v220, v221, s[44:47], 0 offen
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v221, v74
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v222, v222 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v204, v204, v204
	v_max_f32_e32 v200, v202, v200
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v221, v221 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v223, v214, v214
	v_max_f32_e32 v202, v222, v222
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v222, v200
.Ltmp56:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v75, v77, v75 :: v_dual_max_f32 v204, v223, v204
	v_dual_max_f32 v77, v203, v202 :: v_dual_max_f32 v202, v221, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v222, v222 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v223, v204
.Ltmp61:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v66, 0, v66, s23
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v74, v74, v202 :: v_dual_mov_b32 v221, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v223, v223 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v203, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v202, v204, v203 :: v_dual_mov_b32 v223, v77
	v_max_f32_e32 v203, v222, v222
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v204, v74
	v_mov_b32_dpp v221, v221 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v222, v202
	v_mov_b32_dpp v223, v223 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v200, v200, v203
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v204, v204 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v203, v221, v221
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v222, v222 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v221, v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v75, v75, v203
	v_max_f32_e32 v203, v204, v204
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v223, v200 :: v_dual_max_f32 v204, v222, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v74, v74, v203
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v223, v223 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v77, v77, v221 :: v_dual_max_f32 v202, v202, v204
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v204, v74 :: v_dual_max_f32 v203, v223, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v221, v75 :: v_dual_mov_b32 v222, v77
	v_mov_b32_e32 v223, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v200, v200, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v221, v221 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v222, v222 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v203, v221, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v221, v222, v222
	v_max3_f32 v222, v70, v71, v72
	v_max_f32_e32 v203, v75, v203
	v_max_f32_e32 v75, v204, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v204, v222, v224, v225
.Ltmp79:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v224, v197, v197
	v_max_f32_e32 v180, v180, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v222, v74, v75
.Ltmp81:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v74, v177, v177
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v223, v223 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v177, v74, v201 :: v_dual_max_f32 v74, v179, v179
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v221, v77, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v77, v223, v223
.Ltmp85:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v179, v74, v200 :: v_dual_max_f32 v74, v183, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v223, v202, v77
.Ltmp87:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v77, v178, v178
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v75, v204, s58, 0xfedcba98 op_sel:[1,0]
.Ltmp89:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v202, v196, v196
	v_dual_max_f32 v178, v77, v205 :: v_dual_max_f32 v77, v182, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v204, v192, v204, v75
	v_max_f32_e32 v75, v202, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v202, v193, v193 :: v_dual_sub_f32 v67, v67, v178
	v_dual_max_f32 v182, v77, v222 :: v_dual_max_f32 v77, v195, v195
	v_max_f32_e32 v183, v74, v223
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v206, v206, v204
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v72, v72, v204
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v74, v77, v76 :: v_dual_max_f32 v77, v198, v198
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v68, v177
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v76, v224, v205
	v_max_f32_e32 v224, v94, v94
	v_max_f32_e32 v205, v194, v194
	v_max_f32_e32 v77, v77, v200
	v_max_f32_e32 v201, v199, v199
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v212, v212, v182
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v67, 0, v67, s24
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v70, v70, v204
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v200, v201, v203
	v_max_f32_e32 v203, v224, v223
	v_max_f32_e32 v181, v181, v221
	v_dual_max_f32 v201, v202, v221 :: v_dual_max_f32 v202, v205, v222
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v205, v192, v204
	v_dual_sub_f32 v221, v195, v74 :: v_dual_sub_f32 v222, v196, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_sub_f32_e32 v226, v193, v201
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s22
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v225, v199, v200
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v199, v211, v180
	v_sub_f32_e32 v211, v213, v181
	v_sub_f32_e32 v213, v214, v183
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v214, v66
.Ltmp91:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v205, v205
	v_exp_f32_e32 v221, v221
	v_exp_f32_e32 v222, v222
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v69, v69, v179 :: v_dual_sub_f32 v210, v210, v204
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v214, v214 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v223, v197, v76 :: v_dual_sub_f32 v228, v94, v203
	v_sub_f32_e32 v224, v198, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v205, 0, v205, s25
	v_cmp_neq_f32_e64 s25, 0xff800000, v195
	v_cndmask_b32_e64 v195, 0, v222, s26
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v214
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v214, v67 :: v_dual_sub_f32 v227, v194, v202
.Ltmp96:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v208, v208, v204
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v192, 0, v221, s25
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v221, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v214, v214 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v223, v223
	v_exp_f32_e32 v224, v224
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v211, v211
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v221, v221 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v212, v212
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v227, v227
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v69, 0, v69, s19
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v226, v226
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v221
.Ltmp102:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v225, v225
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v196, 0, v223, s27
	v_cndmask_b32_e64 v197, 0, v224, s28
	v_cmp_neq_f32_e64 s26, 0xff800000, v194
.Ltmp103:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v222, v68
.Ltmp104:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v199, v199
	v_exp_f32_e32 v223, v206
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v206, 0, v211, s21
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s25, 0xff800000, v193
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v222, v222 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v207, v207, v204
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v198, 0, v225, s29
	v_cndmask_b32_e64 v193, 0, v227, s26
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v227, v210
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v68, v68, v222 :: v_dual_sub_f32 v209, v209, v204
.Ltmp108:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v222, v72
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v199, 0, v199, s20
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v224, v207
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp109:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v68
.Ltmp110:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v207, 0, v212, s17
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v225, v209
.Ltmp111:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v209, v206
.Ltmp112:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v94
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v214
.Ltmp115:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v214, v70
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v210, v207
.Ltmp117:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v94, 0, v226, s25
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v72
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v70, v67
.Ltmp120:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v213, v213
	v_exp_f32_e32 v226, v208
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v209, v209 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v72, v68
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v228, v228
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v205
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v221, v66
.Ltmp126:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v208, 0, v213, s18
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v13, v205 :: v_dual_mov_b32 v70, v67
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v221, v221 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v71, v71, v204
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v194, 0, v228, s27
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v205
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v221
.Ltmp131:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v221, v71
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v205
	v_mul_f32_e32 v3, v3, v205
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v4, v4, v205 :: v_dual_mov_b32 v71, v66
	v_mul_f32_e32 v5, v5, v205
	v_mul_f32_e32 v6, v6, v205
	v_mul_f32_e32 v7, v7, v205
	v_mul_f32_e32 v8, v8, v205
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v205
	v_mul_f32_e32 v26, v26, v205
	v_mul_f32_e32 v28, v28, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v71
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v66, v66, v71
	v_dual_add_f32 v70, v67, v70 :: v_dual_add_f32 v67, v68, v72
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v72, v199
	v_mov_b32_e32 v68, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp138:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v29, v29, v205 :: v_dual_fmac_f32 v66, v184, v192
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v71, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v68, v68 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp140:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v21, v21, v205 :: v_dual_mov_b32 v184, v66
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v205 :: v_dual_fmac_f32 v67, v185, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v69, v68
	v_dual_add_f32 v69, v199, v72 :: v_dual_add_f32 v70, v70, v71
	v_dual_add_f32 v71, v206, v209 :: v_dual_mov_b32 v72, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v199, v207, v210 :: v_dual_mov_b32 v206, v68
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v207, v69
.Ltmp145:
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v213, 15, v216
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v72, v72 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v209, v71
	v_mov_b32_dpp v206, v206 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v210, v199
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v208, v72
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v209, v209 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v68, v68, v206 :: v_dual_add_f32 v69, v69, v207
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v210, v210 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v206, v72 :: v_dual_add_f32 v71, v71, v209
	v_dual_mov_b32 v207, v68 :: v_dual_mov_b32 v208, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v199, v199, v210
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v206, v206 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v209, v71
	v_mov_b32_dpp v207, v207 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v210, v199
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v72, v206
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v209, v209 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v73.l, 4, v216.l
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v208
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v210, v210 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v68, v207
	v_dual_add_f32 v206, v71, v209 :: v_dual_mov_b32 v71, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v209, v69
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v207, v199, v210 :: v_dual_mov_b32 v208, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v210, v206
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v211, v207
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v199, v72, v71
.Ltmp163:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v216.h, v73.h
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v71, v68, v208 :: v_dual_add_f32 v68, v69, v209
	v_add_f32_e32 v69, v206, v210
.Ltmp166:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v208, s59, v99
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v207, v211
.Ltmp168:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v207, s59, v98
	v_or_b32_e32 v209, s59, v100
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v210, v215, 1, 1
	v_lshl_or_b32 v212, v208, 1, 1
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(2)
	v_and_b16 v208.l, v218.l, 15
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v211, v207, 1, 1
	v_lshl_or_b32 v209, v209, 1, 1
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v207.l, v216.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v216.l, 4, v217.l
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s17, s39, v210
	v_cmp_gt_i32_e64 s18, s39, v211
	v_cmp_gt_i32_e64 s19, s39, v212
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v207.h, v217.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v215, 15, v217
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v211, 0, v73, s17
	v_cndmask_b32_e64 v212, 0, v216, s18
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s17, s39, v209
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v209, -16, v213
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s18, 7, v207.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v217.l, 4, v218.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e64 v217.h, v73.h
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v208.h, v219.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v210.l, 4, v219.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v209, v213, v209, s18
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v210.h, v73.h
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v216, 0, v217, s19
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v217, -16, v215
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s19, 7, v207.h
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v209, v209
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v228, 15, v218
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s20, 7, v208.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v207, 0, v210, s17
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v213, v215, v217, s19
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s17, 7, v208.h
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v218, -16, v228
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v208, -16, v211
	v_or_b32_e32 v217, -16, v212
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s18, 7, v211
	v_cmp_lt_u32_e64 s19, 7, v212
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v215, v228, v218, s20
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v218, -16, v216
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s20, 7, v216
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v208, v211, v208, s18
	v_cndmask_b32_e64 v211, v212, v217, s19
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s21, 7, v207
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v213, v213
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v212, v216, v218, s20
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v216, 16, v220
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v211, v211
	v_cvt_f32_i32_e32 v215, v215
	v_cvt_f32_i32_e32 v212, v212
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v229, 15, v219
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v219, -16, v207
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v209, v209, v216
	v_mul_f32_e32 v208, v208, v216
	v_mul_f32_e32 v212, v216, v212
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v210, -16, v229
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v207, v207, v219, s21
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v211, v211, v216
	v_mul_f32_e32 v215, v215, v216
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v217, v209, 16, 1
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v210, v229, v210, s17
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v207, v207
	v_mul_f32_e32 v213, v213, v216
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v218, v208, 16, 1
	v_add3_u32 v217, v209, v217, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v210, v210
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s17, v209, v209
	v_cmp_o_f32_e64 s18, v208, v208
	v_add3_u32 v209, v208, v218, 0x7fff
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v24, v24, v205 :: v_dual_fmac_f32 v69, v189, v94
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v210, v216, v210
	v_mul_f32_e32 v216, v216, v207
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v207, v213, 16, 1
	v_cmp_o_f32_e64 s19, v213, v213
	v_mov_b32_e32 v94, v203
	v_cmp_o_f32_e64 s20, v210, v210
	v_cmp_o_f32_e64 s21, v216, v216
	v_add3_u32 v208, v213, v207, 0x7fff
	v_bfe_u32 v213, v211, 16, 1
	v_cndmask_b16 v207.l, 0x7fff, v217.h, s17
	v_cndmask_b16 v207.h, 0x7fff, v209.h, s18
	v_bfe_u32 v209, v215, 16, 1
	v_cmp_o_f32_e64 s17, v211, v211
	v_add3_u32 v213, v211, v213, 0x7fff
	v_bfe_u32 v211, v212, 16, 1
	v_cndmask_b16 v208.l, 0x7fff, v208.h, s19
	v_add3_u32 v209, v215, v209, 0x7fff
	v_bfe_u32 v217, v210, 16, 1
	v_cmp_o_f32_e64 s18, v215, v215
	v_add3_u32 v211, v212, v211, 0x7fff
	v_cmp_o_f32_e64 s19, v212, v212
	v_bfe_u32 v215, v216, 16, 1
	v_add3_u32 v212, v210, v217, 0x7fff
	v_cndmask_b16 v209.l, 0x7fff, v209.h, s18
	v_cndmask_b16 v208.h, 0x7fff, v213.h, s17
	v_cndmask_b16 v209.h, 0x7fff, v211.h, s19
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v211, 0, v221, s16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v210, v216, v215, 0x7fff
	v_cndmask_b16 v210.l, 0x7fff, v212.h, s20
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v212, 0, v214, s15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v213.h, v73.h
	v_mov_b16_e64 v73.l, v211.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v214, 0, v223, s14
	v_cndmask_b32_e64 v216, 0, v222, s13
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v213.l, v212.h
	v_cmp_o_f32_e64 s13, v211, v211
	v_and_b32_e32 v215, 1, v73
	v_mov_b16_e64 v73.l, v214.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v210.h, 0x7fff, v210.h, s21
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v213, 1, v213
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_b16 v166, v207
	ds_store_b16_d16_hi v166, v207 offset:128
	ds_store_b16 v166, v208 offset:512
	ds_store_b16_d16_hi v166, v208 offset:640
	ds_store_b16 v166, v209 offset:1024
	ds_store_b16_d16_hi v166, v209 offset:1152
	ds_store_b16 v166, v210 offset:1536
	ds_store_b16_d16_hi v166, v210 offset:1664
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v215, v211, v215, 0x7fff
	v_and_b32_e32 v217, 1, v73
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v213, v212, v213, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v240.h, 0x7fff, v215.h, s13
	v_cmp_o_f32_e64 s13, v212, v212
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v209, v175 offset:608
	ds_load_u16_d16 v208, v175 offset:352
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v212, v214, v217, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v215, 0, v225, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s12, v214, v214
	v_cndmask_b16 v240.l, 0x7fff, v213.h, s13
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v213, 0, v224, s11
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v211.l, v216.h
	v_mov_b16_e64 v211.h, v73.h
	v_cndmask_b16 v242.h, 0x7fff, v212.h, s12
	v_mov_b16_e64 v212.h, v73.h
	v_mov_b16_e64 v212.l, v213.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v30, v30, v205 :: v_dual_and_b32 v211, 1, v211
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v73.l, v215.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v18, v18, v205 :: v_dual_and_b32 v207, 1, v212
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v216, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v211, v216, v211, 0x7fff
	v_and_b32_e32 v214, 1, v73
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v218, 0, v227, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v207, v213, v207, 0x7fff
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v206, v199 :: v_dual_cndmask_b32 v219, 0, v226
.Ltmp170:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v242.l, 0x7fff, v211.h, s11
	v_cmp_o_f32_e32 vcc_lo, v215, v215
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v71, v187, v197
	v_mov_b32_e32 v197, v76
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v211, v215, v214, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v223, v175
	ds_load_u16_d16 v231, v175 offset:32
	ds_load_u16_d16 v224, v175 offset:256
	ds_load_u16_d16 v215, v175 offset:64
	ds_load_u16_d16 v216, v175 offset:320
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v208, v175 offset:480
	ds_load_u16_d16 v207, v175 offset:96
	ds_load_u16_d16 v217, v175 offset:576
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v73.l, v218.h
	v_mov_b16_e64 v210.l, v219.h
	v_mov_b16_e64 v210.h, v73.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v205
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v218, v218
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s10, v213, v213
	v_and_b32_e32 v210, 1, v210
	v_cmp_o_f32_e64 s12, v219, v219
	v_cndmask_b16 v244.h, 0x7fff, v211.h, vcc_lo
	v_add3_u32 v73, v218, v73, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v218, v175 offset:832
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v210, v219, v210, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v219, v175 offset:1088
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(3)
	v_cndmask_b16 v244.l, 0x7fff, v207.h, s10
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v220, v175 offset:1344
	ds_load_u16_d16 v226, v175 offset:768
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v217, v175 offset:704
	ds_load_u16_d16 v233, v175 offset:544
	ds_load_u16_d16 v221, v175 offset:1600
	ds_load_u16_d16 v222, v175 offset:1856
	ds_load_u16_d16 v225, v175 offset:512
	ds_load_u16_d16 v232, v175 offset:288
	ds_load_u16_d16_hi v223, v175 offset:128
	ds_load_u16_d16_hi v231, v175 offset:160
	ds_load_u16_d16_hi v215, v175 offset:192
	ds_load_u16_d16_hi v207, v175 offset:224
	ds_load_u16_d16 v227, v175 offset:1024
	ds_load_u16_d16 v234, v175 offset:800
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v218, v175 offset:960
	ds_load_u16_d16 v210, v175 offset:864
	ds_load_u16_d16 v228, v175 offset:1280
	ds_load_u16_d16 v235, v175 offset:1056
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v219, v175 offset:1216
	ds_load_u16_d16 v211, v175 offset:1120
	ds_load_u16_d16 v229, v175 offset:1536
	ds_load_u16_d16 v236, v175 offset:1312
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v73.l, 0x7fff, v210.h, s12
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v220, v175 offset:1472
	ds_load_u16_d16 v212, v175 offset:1376
	ds_load_u16_d16 v230, v175 offset:1792
	ds_load_u16_d16 v237, v175 offset:1568
	ds_load_u16_d16_hi v221, v175 offset:1728
	ds_load_u16_d16 v213, v175 offset:1632
	ds_load_u16_d16 v238, v175 offset:1824
	ds_load_u16_d16_hi v222, v175 offset:1984
	ds_load_u16_d16 v214, v175 offset:1888
	ds_load_u16_d16_hi v225, v175 offset:640
	ds_load_u16_d16_hi v224, v175 offset:384
	ds_load_u16_d16_hi v232, v175 offset:416
	ds_load_u16_d16_hi v216, v175 offset:448
	ds_load_u16_d16_hi v226, v175 offset:896
	ds_load_u16_d16_hi v233, v175 offset:672
	ds_load_u16_d16_hi v209, v175 offset:736
	ds_load_u16_d16_hi v227, v175 offset:1152
	ds_load_u16_d16_hi v234, v175 offset:928
	ds_load_u16_d16_hi v210, v175 offset:992
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v228, v175 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v235, v175 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v211, v175 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v229, v175 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v236, v175 offset:1440
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v212, v175 offset:1504
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v230, v175 offset:1920
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v237, v175 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v213, v175 offset:1760
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v238, v175 offset:1952
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v214, v175 offset:2016
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v241, v240, s58, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v243, v242, s58, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v245, v244, s58, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v246, v73, s58, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v205
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v239, v241, v240, v141
	v_perm_b32 v240, v241, v240, v142
	v_perm_b32 v241, v243, v242, v141
	v_perm_b32 v242, v243, v242, v142
	v_perm_b32 v243, v245, v244, v141
	v_perm_b32 v244, v245, v244, v142
	v_perm_b32 v245, v246, v73, v141
	v_perm_b32 v246, v246, v73, v142
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v199, v206
.Ltmp174:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v31, v31, v205 :: v_dual_fmac_f32 v70, v186, v196
	v_dual_mul_f32 v17, v17, v205 :: v_dual_fmac_f32 v68, v188, v198
	v_mul_f32_e32 v23, v23, v205
	v_mul_f32_e32 v9, v9, v205
	v_dual_mul_f32 v10, v10, v205 :: v_dual_fmac_f32 v73, v191, v194
	v_dual_mul_f32 v12, v12, v205 :: v_dual_mov_b32 v185, v67
	v_dual_mul_f32 v14, v14, v205 :: v_dual_mov_b32 v187, v71
	v_dual_mul_f32 v16, v16, v205 :: v_dual_mov_b32 v189, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v2, v2, v205 :: v_dual_mov_b32 v191, v73
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v72, v190, v193
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v205
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[223:230], v[239:246], v[25:32]
	v_mov_b32_e32 v192, v204
	v_mov_b32_e32 v186, v70
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[231:238], v[239:246], v[17:24]
	v_mov_b32_e32 v188, v68
	v_dual_mov_b32 v190, v72 :: v_dual_mov_b32 v195, v74
	v_mov_b32_e32 v196, v75
	v_mov_b32_e32 v198, v77
	v_wmma_f32_16x16x16_bf16 v[9:16], v[215:222], v[239:246], v[9:16]
	v_mov_b32_e32 v199, v200
	v_dual_mov_b32 v193, v201 :: v_dual_mov_b32 v194, v202
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[207:214], v[239:246], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_27
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v66, s35, v97
	v_or_b32_e32 v67, s35, v98
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s10, s35, s37
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v68, s35, v99
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s17, s10, s62
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v66
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v69, s35, v100
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s10, s39, v67
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v66, s17, v79, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v70, s35, v101
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s11, s39, v68
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v67, s17, v105, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v71, s35, v102
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s12, s39, v69
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v68, s17, v106, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v72, s35, v103
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s10
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s13, s39, v70
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v69, s17, v80, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v73, s35, v104
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s11
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s14, s39, v71
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v70, s17, v107, 1
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s12
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s15, s39, v72
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v71, s17, v81, 1
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s13
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s16, s39, v73
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v72, s17, v82, 1
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s14
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v73, s17, v83, 1
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s15
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_add_nc_u32 v75, 0, v126
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s2, s16
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u16 v74, v66, s[48:51], 0 offen
	buffer_load_u16 v70, v70, s[48:51], 0 offen
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	buffer_load_u16 v71, v71, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v72, v72, s[48:51], 0 offen
	buffer_load_u16 v69, v69, s[48:51], 0 offen
	buffer_load_u16 v73, v73, s[48:51], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v66, v65
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v117
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v113, v74
	s_waitcnt vmcnt(6)
	ds_store_b16 v113, v70 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v114, v67
	s_waitcnt vmcnt(4)
	ds_store_b16 v114, v71 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v115, v68
	s_waitcnt vmcnt(2)
	ds_store_b16 v115, v72 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v116, v69
	s_waitcnt vmcnt(0)
	ds_store_b16 v116, v73 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[200:203], v75
	ds_load_b128 v[204:207], v143
	ds_load_b128 v[208:211], v144
	ds_load_b128 v[212:215], v145
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v72, v65
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[216:219], v146
	ds_load_b128 v[220:223], v147
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
	ds_load_b128 v[224:227], v148
	ds_load_b128 v[228:231], v149
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v74, s35, v108
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[200:207], v[33:40], v[66:73]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s10, s39, v74
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[208:215], v[41:48], v[66:73]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s59, s1, s10
	s_and_b32 s47, s3, s10
	s_and_b32 s29, s4, s10
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[216:223], v[49:56], v[66:73]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s28, s5, s10
	s_and_b32 s27, s6, s10
	s_and_b32 s25, s7, s10
	s_and_b32 s46, s8, s10
	s_and_b32 s26, s9, s10
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[66:73], v[224:231], v[57:64], v[66:73]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v74, v118
	v_cmp_le_i32_e64 s10, v74, v119
	v_cmp_le_i32_e64 s11, v74, v120
	v_cmp_le_i32_e64 s12, v74, v121
	v_cmp_le_i32_e64 s13, v74, v122
	v_cmp_le_i32_e64 s14, v74, v123
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s17, vcc_lo, s59
	s_and_b32 s10, s10, s47
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s15, v74, v124
	v_cmp_le_i32_e64 s16, v74, v125
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s11, s11, s29
	s_and_b32 s12, s12, s28
	s_and_not1_b32 s18, s59, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s47, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_b32 s13, s13, s27
	s_and_b32 s14, s14, s25
	s_or_b32 s59, s18, s17
	s_or_b32 s47, s19, s10
	s_and_not1_b32 s10, s29, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s17, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s46
	s_and_b32 s16, s16, s26
	s_or_b32 s29, s10, s11
	s_or_b32 s28, s17, s12
	s_and_not1_b32 s10, s27, exec_lo
	s_and_b32 s11, s13, exec_lo
	s_and_not1_b32 s12, s25, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s27, s10, s11
	s_or_b32 s25, s12, s13
	s_and_not1_b32 s10, s46, exec_lo
	s_and_b32 s11, s15, exec_lo
	s_and_not1_b32 s12, s26, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s46, s10, s11
	s_or_b32 s26, s12, s13
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s63
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v74, v127
	v_cmp_ge_i32_e64 s10, v74, v128
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v74, v135
	v_cmp_le_i32_e64 s18, v74, v136
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v74, v129
	v_cmp_ge_i32_e64 s12, v74, v130
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s19, v74, v167
	v_cmp_le_i32_e64 s20, v74, v168
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s13, v74, v131
	v_cmp_ge_i32_e64 s14, v74, v132
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s21, v74, v169
	v_cmp_le_i32_e64 s22, v74, v170
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s10, s10, s18
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v74, v133
	v_cmp_ge_i32_e64 s16, v74, v134
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s23, v74, v171
	v_cmp_le_i32_e64 s24, v74, v172
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s17, s17, s59
	s_and_b32 s10, s10, s47
	s_and_b32 s11, s11, s19
	s_and_b32 s12, s12, s20
	s_and_b32 s11, s11, s29
	s_and_b32 s12, s12, s28
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s18, s59, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s47, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_and_b32 s13, s13, s27
	s_and_b32 s14, s14, s25
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_or_b32 s59, s18, s17
	s_or_b32 s47, s19, s10
	s_and_not1_b32 s10, s29, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s17, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s46
	s_and_b32 s16, s16, s26
	s_or_b32 s29, s10, s11
	s_or_b32 s28, s17, s12
	s_and_not1_b32 s10, s27, exec_lo
	s_and_b32 s11, s13, exec_lo
	s_and_not1_b32 s12, s25, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s27, s10, s11
	s_or_b32 s25, s12, s13
	s_and_not1_b32 s10, s46, exec_lo
	s_and_b32 s11, s15, exec_lo
	s_and_not1_b32 s12, s26, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s46, s10, s11
	s_or_b32 s26, s12, s13
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v74.l, 0
	.loc	1 955 25 is_stmt 1              ; attention.py:955:25
	s_mul_i32 s10, s35, s36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s10, s57, s10
	v_mov_b16_e32 v74.h, v74.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s59
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s10, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, vcc_lo, s30, v75
	v_add_co_ci_u32_e64 v76, null, s31, v76, vcc_lo
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s47
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v75, s10, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, vcc_lo, s30, v75
	v_add_co_ci_u32_e64 v76, null, s31, v76, vcc_lo
	global_load_d16_u8 v74, v[75:76], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v75.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v75.h, v75.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s29
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v76, s10, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, vcc_lo, s30, v76
	v_add_co_ci_u32_e64 v77, null, s31, v77, vcc_lo
	global_load_d16_hi_u8 v75, v[76:77], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s28
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v76, s10, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v77, 31, v76
	v_add_co_u32 v76, vcc_lo, s30, v76
	v_add_co_ci_u32_e64 v77, null, s31, v77, vcc_lo
	global_load_d16_u8 v75, v[76:77], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v76.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v76.l, v76.h
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s27
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v77, s10, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v201, 31, v77
	v_add_co_u32 v200, vcc_lo, s30, v77
	v_add_co_ci_u32_e64 v201, null, s31, v201, vcc_lo
	global_load_d16_u8 v76, v[200:201], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s25
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v77, s10, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v201, 31, v77
	v_add_co_u32 v200, vcc_lo, s30, v77
	v_add_co_ci_u32_e64 v201, null, s31, v201, vcc_lo
	global_load_d16_hi_u8 v76, v[200:201], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v77.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v77.h, v77.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s46
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v200, s10, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v201, 31, v200
	v_add_co_u32 v200, vcc_lo, s30, v200
	v_add_co_ci_u32_e64 v201, null, s31, v201, vcc_lo
	global_load_d16_hi_u8 v77, v[200:201], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s26
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v200, s10, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v201, 31, v200
	v_add_co_u32 v200, vcc_lo, s30, v200
	v_add_co_ci_u32_e64 v201, null, s31, v201, vcc_lo
	global_load_d16_u8 v77, v[200:201], off
	s_branch .LBB0_6
.LBB0_27:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v33, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v37, 3, v110
	v_add_nc_u32_e32 v38, 0, v111
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
	v_or_b32_e32 v63, v112, v108
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v95
	v_or_b32_e32 v33, 54, v95
	v_or_b32_e32 v34, 53, v95
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v36, v36, v37, v109
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v75, s61, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 52, v95
	v_or_b32_e32 v37, 50, v95
	v_or_b32_e32 v38, 49, v95
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v64, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s38, v75
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 51, v95
	v_or_b32_e32 v39, 48, v95
	v_or_b32_e32 v40, 39, v95
	v_or_b32_e32 v41, 38, v95
	v_or_b32_e32 v42, 37, v95
	v_or_b32_e32 v43, 36, v95
	v_or_b32_e32 v44, 35, v95
	v_or_b32_e32 v45, 34, v95
	v_or_b32_e32 v46, 33, v95
	v_or_b32_e32 v47, 32, v95
	v_or_b32_e32 v48, 23, v95
	v_or_b32_e32 v49, 22, v95
	v_or_b32_e32 v50, 21, v95
	v_or_b32_e32 v51, 20, v95
	v_or_b32_e32 v52, 19, v95
	v_or_b32_e32 v53, 18, v95
	v_or_b32_e32 v54, 17, v95
	v_or_b32_e32 v55, 16, v95
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
	v_div_scale_f32 v79, s2, v27, v64, v27
	v_fma_f32 v72, -v66, v68, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v65, v67, 1.0
	v_rcp_f32_e32 v76, v73
	v_div_scale_f32 v81, null, v64, v64, v18
	v_dual_fmac_f32 v68, v72, v68 :: v_dual_fmac_f32 v67, v62, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v69, v71, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v56, 7, v95
	v_or_b32_e32 v57, 6, v95
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v77, v74, v68
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v58, 5, v95
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v62, v71
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v59, 4, v95
	v_or_b32_e32 v60, 3, v95
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v80, -v66, v77, v74
	v_mul_f32_e32 v72, v70, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v61, 2, v95
	v_or_b32_e32 v62, 1, v95
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s33, v95
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v80, v68
	v_fma_f32 v78, -v65, v72, v70
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s33, v61
	v_cmp_gt_i32_e64 s30, s33, v62
	v_cmp_gt_i32_e64 s28, s33, v60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v77, v74
	v_fmac_f32_e32 v72, v78, v67
	v_div_scale_f32 v78, s3, v28, v64, v28
	v_div_scale_f32 v74, null, v64, v64, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v65, -v65, v72, v70
	v_fma_f32 v70, -v73, v76, 1.0
	v_mul_f32_e32 v75, v79, v71
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s33, v59
	v_cmp_gt_i32_e64 s26, s33, v58
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v75, v65, v71
	v_rcp_f32_e32 v65, v74
	v_fma_f32 v68, -v73, v72, v78
	v_div_fixup_f32 v26, v66, v64, v26
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v69, v75, v79
	v_fma_f32 v77, -v67, v70, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s33, v57
	v_cmp_gt_i32_e64 s24, s33, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v71, v75
	v_fmac_f32_e32 v70, v77, v70
	v_fma_f32 v69, -v74, v65, 1.0
	v_div_scale_f32 v77, null, v64, v64, v31
	v_fmac_f32_e32 v72, v68, v76
	v_div_scale_f32 v68, s4, v29, v64, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v69, v65
	v_rcp_f32_e32 v69, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v73, v72, v78
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v75, s2, v30, v64, v30
	v_div_fixup_f32 v27, v66, v64, v27
	v_div_fmas_f32 v71, v71, v76, v72
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v78, null, v64, v64, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v77, v69, 1.0
	v_div_fixup_f32 v28, v71, v64, v28
	v_div_scale_f32 v71, s3, v31, v64, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v78
	v_fmac_f32_e32 v69, v79, v69
	v_mul_f32_e32 v73, v68, v70
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s33, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v72, -v67, v73, v68
	v_mul_f32_e32 v76, v75, v65
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s33, v54
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v78, v80, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s33, v53
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v73, v72, v70
	v_div_scale_f32 v72, null, v64, v64, v17
	v_fma_f32 v66, -v74, v76, v75
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v73, v68
	v_rcp_f32_e32 v68, v72
	v_div_scale_f32 v79, s5, v32, v64, v32
	v_fmac_f32_e32 v76, v66, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v70, v73
	s_mov_b32 vcc_lo, s2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s33, v52
	v_cmp_gt_i32_e64 s19, s33, v51
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v70, -v74, v76, v75
	v_div_fixup_f32 v29, v67, v64, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v72, v68, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s33, v50
	v_cmp_gt_i32_e64 s17, s33, v49
	v_cmp_gt_i32_e64 s16, s33, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v68, v75, v68
	v_div_scale_f32 v75, s2, v17, v64, v17
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s33, v47
	v_cmp_gt_i32_e64 s14, s33, v46
	v_cmp_gt_i32_e64 s13, s33, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v67, v75, v68
	v_mul_f32_e32 v66, v71, v69
	v_div_fmas_f32 v65, v70, v65, v76
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v81
	v_div_scale_f32 v76, s3, v18, v64, v18
	v_fma_f32 v73, -v77, v66, v71
	v_div_fixup_f32 v30, v65, v64, v30
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s33, v44
	v_cmp_gt_i32_e64 s10, s33, v43
	v_cmp_gt_i32_e64 s9, s33, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v66, v73, v69
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s33, v41
	v_cmp_gt_i32_e64 s11, s33, v35
	v_cmp_gt_i32_e64 s7, s33, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v77, v66, v71
	v_div_scale_f32 v77, null, v64, v64, v20
	v_fma_f32 v71, -v81, v70, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s33, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v69, v66
	v_fma_f32 v69, -v72, v67, v75
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v70, v71, v70
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v31, v65, v64, v31
	v_fmac_f32_e32 v67, v69, v68
	v_rcp_f32_e32 v69, v77
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v27, v27
	v_cmp_o_f32_e64 s36, v28, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v65, -v72, v67, v75
	v_div_scale_f32 v72, s4, v19, v64, v19
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s31, s0, s31
	s_and_b32 s30, s0, s30
	s_and_b32 s29, s0, s29
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v75, -v77, v69, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s28, s0, s28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v69, v75, v69
	v_mul_f32_e32 v74, v79, v80
	v_div_scale_f32 v75, null, v64, v64, v22
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s27, s0, s27
	s_and_b32 s26, s0, s26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v73, -v78, v74, v79
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s25, s0, s25
	s_and_b32 s24, s0, s24
	s_and_b32 s23, s0, s23
	s_and_b32 s22, s0, s22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v73, v80
	v_div_scale_f32 v73, null, v64, v64, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s21, s0, s21
	s_and_b32 s20, s0, s20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v78, v74, v79
	v_rcp_f32_e32 v71, v73
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s19, s0, s19
	s_and_b32 s18, s0, s18
	s_and_b32 s17, s0, s17
	s_and_b32 s16, s0, s16
	s_and_b32 s15, s0, s15
	s_and_b32 s14, s0, s14
	s_and_b32 s13, s0, s13
	s_and_b32 s12, s0, s12
	s_and_b32 s10, s0, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v78, -v73, v71, 1.0
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s9, s0, s9
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v78, v71
	v_div_fmas_f32 v66, v66, v80, v74
	v_mul_f32_e32 v74, v76, v70
	v_div_scale_f32 v78, null, v64, v64, v21
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v66, v64, v32
	v_fma_f32 v66, -v81, v74, v76
	v_div_fmas_f32 v65, v65, v68, v67
	v_rcp_f32_e32 v67, v78
	v_div_scale_f32 v68, s2, v20, v64, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, v66, v70
	v_mul_f32_e32 v66, v72, v71
	v_div_fixup_f32 v17, v65, v64, v17
	v_rcp_f32_e32 v80, v75
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v81, v74, v76
	v_fma_f32 v76, -v73, v66, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v78, v67, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v70, v74
	v_fmac_f32_e32 v66, v76, v71
	v_mul_f32_e32 v79, v68, v69
	v_fmac_f32_e32 v67, v81, v67
	v_div_scale_f32 v74, s3, v21, v64, v21
	v_fma_f32 v76, -v75, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v77, v79, v68
	v_div_fixup_f32 v18, v65, v64, v18
	v_fma_f32 v65, -v73, v66, v72
	v_div_scale_f32 v73, null, v64, v64, v23
	v_fmac_f32_e32 v79, v70, v69
	v_mul_f32_e32 v70, v74, v67
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v80, v76, v80
	v_div_scale_f32 v72, s5, v22, v64, v22
	v_div_fmas_f32 v65, v65, v71, v66
	v_fma_f32 v66, -v77, v79, v68
	v_fma_f32 v68, -v78, v70, v74
	v_rcp_f32_e32 v71, v73
	v_div_scale_f32 v77, null, v64, v64, v24
	v_mul_f32_e32 v76, v72, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v67
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v68, v77
	v_div_fmas_f32 v66, v66, v69, v79
	v_fma_f32 v69, -v75, v76, v72
	v_div_fixup_f32 v19, v65, v64, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v73, v71, 1.0
	v_fma_f32 v65, -v78, v70, v74
	v_div_fixup_f32 v20, v66, v64, v20
	v_fmac_f32_e32 v76, v69, v80
	v_div_scale_f32 v66, s2, v23, v64, v23
	v_fmac_f32_e32 v71, v79, v71
	v_fma_f32 v69, -v77, v68, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v78, null, v64, v64, v10
	v_div_fmas_f32 v65, v65, v67, v70
	v_mul_f32_e32 v70, v66, v71
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, null, v64, v64, v9
	v_fma_f32 v67, -v75, v76, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v73, v70, v66
	v_div_scale_f32 v72, s3, v24, v64, v24
	v_rcp_f32_e32 v74, v69
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v70, v75, v71
	v_div_fmas_f32 v67, v67, v80, v76
	v_mul_f32_e32 v76, v72, v68
	v_div_fixup_f32 v21, v65, v64, v21
	s_mov_b32 vcc_lo, s2
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
	v_div_scale_f32 v65, s4, v9, v64, v9
	v_div_scale_f32 v80, null, v64, v64, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v70, -v77, v76, v72
	v_fma_f32 v79, -v78, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v71, v65, v74
	v_div_scale_f32 v72, s2, v10, v64, v10
	v_fma_f32 v77, -v73, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v79, v67
	v_fma_f32 v79, -v69, v71, v65
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v82, v80
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, s5, v11, v64, v11
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
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v70, -v78, v81, v72
	v_fmac_f32_e32 v82, v68, v82
	v_div_scale_f32 v68, s3, v12, v64, v12
	v_div_fmas_f32 v65, v65, v74, v71
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v72, null, v64, v64, v14
	v_div_fmas_f32 v67, v70, v67, v81
	v_fma_f32 v70, -v73, v76, v77
	v_mul_f32_e32 v71, v68, v82
	v_fma_f32 v73, -v69, v66, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v74, v72
	v_div_fmas_f32 v70, v70, v75, v76
	v_fma_f32 v75, -v80, v71, v68
	v_fmac_f32_e32 v66, v73, v66
	v_div_scale_f32 v73, s2, v13, v64, v13
	v_div_fixup_f32 v9, v65, v64, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v75, v82
	v_div_fixup_f32 v10, v67, v64, v10
	v_mul_f32_e32 v65, v73, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v67, -v72, v74, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v68, -v80, v71, v68
	v_div_fixup_f32 v11, v70, v64, v11
	v_fma_f32 v75, -v69, v65, v73
	v_div_scale_f32 v70, null, v64, v64, v15
	v_fmac_f32_e32 v74, v67, v74
	v_div_scale_f32 v67, s4, v14, v64, v14
	v_div_fmas_f32 v68, v68, v82, v71
	v_fmac_f32_e32 v65, v75, v66
	v_rcp_f32_e32 v76, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v71, v67, v74
	s_mov_b32 vcc_lo, s2
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
	v_div_scale_f32 v68, s2, v15, v64, v15
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
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v77, v65, v77
	v_div_scale_f32 v65, s3, v16, v64, v16
	v_fmac_f32_e32 v69, v78, v69
	v_div_scale_f32 v78, null, v64, v64, v3
	v_div_fmas_f32 v67, v67, v74, v71
	v_fma_f32 v71, -v70, v72, v68
	v_mul_f32_e32 v74, v65, v77
	v_div_scale_f32 v80, s4, v1, v64, v1
	v_fma_f32 v81, -v73, v79, 1.0
	v_rcp_f32_e32 v82, v78
	v_fmac_f32_e32 v72, v71, v76
	v_fma_f32 v71, -v75, v74, v65
	v_mul_f32_e32 v83, v80, v69
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s5, v2, v64, v2
	v_div_fixup_f32 v14, v67, v64, v14
	v_fma_f32 v67, -v70, v72, v68
	v_fmac_f32_e32 v74, v71, v77
	v_fma_f32 v68, -v66, v83, v80
	v_mul_f32_e32 v70, v81, v79
	v_fma_f32 v71, -v78, v82, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v65, -v75, v74, v65
	v_fmac_f32_e32 v83, v68, v69
	v_fma_f32 v68, -v73, v70, v81
	v_fmac_f32_e32 v82, v71, v82
	v_div_scale_f32 v71, s2, v3, v64, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v66, v83, v80
	v_fmac_f32_e32 v70, v68, v79
	v_div_fmas_f32 v67, v67, v76, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v68, v71, v82
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v72, null, v64, v64, v4
	v_div_fmas_f32 v65, v65, v77, v74
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v67, v64, v15
	v_div_fmas_f32 v66, v66, v69, v83
	v_fma_f32 v69, -v73, v70, v81
	v_fma_f32 v73, -v78, v68, v71
	v_rcp_f32_e32 v74, v72
	v_div_fixup_f32 v16, v65, v64, v16
	v_div_fixup_f32 v1, v66, v64, v1
	v_div_scale_f32 v66, null, v64, v64, v5
	v_fmac_f32_e32 v68, v73, v82
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v76, null, v64, v64, v8
	v_div_fmas_f32 v69, v69, v79, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v78, v68, v71
	v_fma_f32 v67, -v72, v74, 1.0
	s_mov_b32 vcc_lo, s2
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
	v_div_scale_f32 v65, s2, v5, v64, v5
	v_fma_f32 v77, -v67, v71, 1.0
	v_fma_f32 v80, -v69, v73, 1.0
	v_fma_f32 v79, -v72, v75, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, v65, v68 :: v_dual_fmac_f32 v78, v82, v78
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, s3, v6, v64, v6
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, s4, v7, v64, v7
	v_fmac_f32_e32 v75, v79, v74
	v_fma_f32 v79, -v66, v81, v65
	v_div_scale_f32 v82, s5, v8, v64, v8
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
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v85, v66, v78
	v_div_fmas_f32 v65, v65, v68, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v67, -v67, v83, v77
	v_fma_f32 v66, -v69, v84, v80
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v68, -v76, v85, v82
	v_div_fixup_f32 v4, v70, v64, v4
	v_div_fmas_f32 v67, v67, v71, v83
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v65, v64, v5
	v_div_fmas_f32 v66, v66, v73, v84
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v67, v64, v6
	v_div_fmas_f32 v68, v68, v78, v85
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v66, v64, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v67, v27, 16, 1
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
	v_mul_lo_u32 v1, v1, s33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s33, v40
	v_cmp_gt_i32_e64 s3, s33, v39
	v_cmp_gt_i32_e64 s2, s33, v38
	v_cmp_gt_i32_e64 s1, s33, v37
	v_cmp_gt_i32_e32 vcc_lo, s33, v36
	v_cmp_gt_i32_e64 s5, s33, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v63, v25, v63, 0x7fff
	v_cmp_o_f32_e64 s33, v25, v25
	v_bfe_u32 v25, v28, 16, 1
	v_add3_u32 v65, v26, v65, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_mov_b16_e32 v66.h, 0
	v_cndmask_b16 v27.l, 0x7fff, v63.h, s33
	v_add3_u32 v25, v28, v25, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s35
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v63, v31, 16, 1
	v_cmp_o_f32_e64 s33, v29, v29
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v32, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v65.h, s34
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s34, v30, v30
	v_add3_u32 v30, v31, v63, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s33
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_bfe_u32 v31, v19, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v18, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s36
	v_cmp_o_f32_e64 s36, v32, v32
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s33, v17, v17
	v_bfe_u32 v17, v20, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s34
	v_add3_u32 v30, v18, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v18, v18
	v_add3_u32 v18, v19, v31, 0x7fff
	v_cmp_o_f32_e64 s35, v19, v19
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s36
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cmp_o_f32_e64 s36, v20, v20
	v_bfe_u32 v20, v21, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v28.h, s33
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s35
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v28, v23, 16, 1
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s33, v21, v21
	v_bfe_u32 v21, v24, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v30.h, s34
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s34, v22, v22
	v_add3_u32 v22, v23, v28, 0x7fff
	v_cmp_o_f32_e64 s35, v23, v23
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s33
	v_bfe_u32 v20, v9, 16, 1
	v_add3_u32 v21, v24, v21, 0x7fff
	v_bfe_u32 v23, v11, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s35
	v_bfe_u32 v22, v10, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s36
	v_cmp_o_f32_e64 s36, v24, v24
	v_add3_u32 v20, v9, v20, 0x7fff
	v_cmp_o_f32_e64 s33, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s34
	v_add3_u32 v22, v10, v22, 0x7fff
	v_cmp_o_f32_e64 s34, v10, v10
	v_add3_u32 v10, v11, v23, 0x7fff
	v_cmp_o_f32_e64 s35, v11, v11
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s36
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s36, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v20.h, s33
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s35
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s33, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v22.h, s34
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s34, v14, v14
	v_add3_u32 v14, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s35, v15, v15
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s33
	v_bfe_u32 v12, v64, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s36
	v_cmp_o_f32_e64 s36, v16, v16
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s35
	v_bfe_u32 v14, v2, 16, 1
	v_bfe_u32 v15, v3, 16, 1
	v_bfe_u32 v16, v4, 16, 1
	v_add3_u32 v12, v64, v12, 0x7fff
	v_cmp_o_f32_e64 s33, v64, v64
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s34
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s36
	v_add3_u32 v14, v2, v14, 0x7fff
	v_cmp_o_f32_e64 s34, v2, v2
	v_add3_u32 v2, v3, v15, 0x7fff
	v_cmp_o_f32_e64 s35, v3, v3
	v_add3_u32 v3, v4, v16, 0x7fff
	v_cmp_o_f32_e64 s36, v4, v4
	v_cndmask_b16 v4.l, 0x7fff, v12.h, s33
	v_bfe_u32 v12, v5, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s35
	v_cmp_o_f32_e64 s33, v5, v5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s36
	v_bfe_u32 v3, v6, 16, 1
	v_add3_u32 v12, v5, v12, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s34
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s34, v6, v6
	v_add3_u32 v3, v6, v3, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s33
	v_cmp_eq_u32_e64 s33, 0, v96
	v_add3_u32 v6, v7, v14, 0x7fff
	v_bfe_u32 v5, v8, 16, 1
	v_cmp_o_f32_e64 s35, v7, v7
	v_cmp_o_f32_e64 s36, v8, v8
	v_cndmask_b32_e64 v14, v18, v19, s33
	v_cndmask_b32_e64 v15, v19, v18, s33
	v_mov_b32_e32 v18, 0x5410
	v_mov_b32_e32 v19, 0x7632
	v_cndmask_b32_e64 v20, v10, v11, s33
	v_cndmask_b32_e64 v10, v11, v10, s33
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cndmask_b32_e64 v11, 0x1054, v18, s33
	v_cndmask_b32_e64 v18, 0x3276, v19, s33
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s35
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s36
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v18, v18, 8, v18
	v_cndmask_b32_e64 v7, v27, v26, s33
	v_cndmask_b32_e64 v12, v25, v29, s33
	s_mov_b32 s34, 0x76543210
	v_and_b32_e32 v11, 0x540054, v11
	v_and_b32_e32 v18, 0x760076, v18
	v_cndmask_b32_e64 v6, v26, v27, s33
	v_cndmask_b32_e64 v16, v21, v17, s33
	v_cndmask_b32_e64 v17, v17, v21, s33
	v_lshl_or_b32 v11, v11, 4, v11
	v_cndmask_b32_e64 v19, v13, v9, s33
	v_cndmask_b32_e64 v9, v9, v13, s33
	v_cndmask_b32_e64 v13, v3, v4, s33
	v_cndmask_b32_e64 v3, v4, v3, s33
	v_cndmask_b32_e64 v4, v5, v2, s33
	v_cndmask_b32_e64 v2, v2, v5, s33
	v_permlanex16_b32 v5, v7, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v12, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v18, 4, v18
	v_and_b32_e32 v11, 0x5040504, v11
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v63, v1, v95, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v8, v29, v25, s33
	v_permlanex16_b32 v15, v15, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v9, v9, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v5, v6, v11
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v62, v1, v62, 1
	v_add_lshl_u32 v61, v1, v61, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v5, v5, v6, v12
	v_perm_b32 v6, v7, v8, v11
	v_perm_b32 v7, v7, v8, v12
	v_perm_b32 v8, v15, v14, v11
	v_perm_b32 v14, v15, v14, v12
	v_perm_b32 v15, v17, v16, v11
	v_perm_b32 v16, v17, v16, v12
	v_perm_b32 v17, v10, v20, v11
	v_perm_b32 v10, v10, v20, v12
	v_perm_b32 v20, v9, v19, v11
	v_perm_b32 v9, v9, v19, v12
	v_perm_b32 v19, v3, v13, v11
	v_perm_b32 v11, v2, v4, v11
	v_perm_b32 v2, v2, v4, v12
	v_mov_b16_e32 v4.l, v18.h
	v_mov_b16_e32 v4.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v62, 0x80000000, v62, s30
	v_cndmask_b32_e64 v61, 0x80000000, v61, s29
	buffer_store_b16 v18, v63, s[40:43], 0 offen
	v_add_lshl_u32 v18, v1, v60, 1
	s_clause 0x1
	buffer_store_b16 v4, v62, s[40:43], 0 offen
	buffer_store_b16 v5, v61, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v59, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v66.l, v5.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v5, 0x80000000, v18, s28
	v_add_lshl_u32 v18, v1, v58, 1
	v_add_lshl_u32 v57, v1, v57, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v3, v3, v13, v12
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s26
	v_cndmask_b32_e64 v57, 0x80000000, v57, s25
	s_clause 0x1
	buffer_store_b16 v66, v5, s[40:43], 0 offen
	buffer_store_b16 v6, v4, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v56, 1
	v_add_lshl_u32 v5, v1, v55, 1
	v_add_lshl_u32 v6, v1, v54, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v7.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[40:43], 0 offen
	buffer_store_b16 v7, v57, s[40:43], 0 offen
	v_add_lshl_u32 v7, v1, v53, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v8.h
	v_mov_b16_e32 v22.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s21
	s_clause 0x1
	buffer_store_b16 v12, v4, s[40:43], 0 offen
	buffer_store_b16 v8, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v52, 1
	v_add_lshl_u32 v5, v1, v51, 1
	s_clause 0x1
	buffer_store_b16 v22, v6, s[40:43], 0 offen
	buffer_store_b16 v14, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v50, 1
	v_add_lshl_u32 v7, v1, v49, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s20
	v_cndmask_b32_e64 v5, 0x80000000, v5, s19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.l, v15.h
	v_mov_b16_e32 v24.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	s_clause 0x1
	buffer_store_b16 v21, v4, s[40:43], 0 offen
	buffer_store_b16 v15, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v48, 1
	v_add_lshl_u32 v5, v1, v47, 1
	s_clause 0x1
	buffer_store_b16 v24, v6, s[40:43], 0 offen
	buffer_store_b16 v16, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_add_lshl_u32 v7, v1, v45, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s16
	v_cndmask_b32_e64 v5, 0x80000000, v5, s15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e32 v26.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s14
	v_cndmask_b32_e64 v7, 0x80000000, v7, s13
	s_clause 0x1
	buffer_store_b16 v23, v4, s[40:43], 0 offen
	buffer_store_b16 v17, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	s_clause 0x1
	buffer_store_b16 v26, v6, s[40:43], 0 offen
	buffer_store_b16 v10, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_add_lshl_u32 v7, v1, v41, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v10.h
	v_mov_b16_e32 v25.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v5, 0x80000000, v5, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	v_cndmask_b32_e64 v7, 0x80000000, v7, s8
	s_clause 0x1
	buffer_store_b16 v25, v4, s[40:43], 0 offen
	buffer_store_b16 v20, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	v_add_lshl_u32 v5, v1, v39, 1
	s_clause 0x1
	buffer_store_b16 v28, v6, s[40:43], 0 offen
	buffer_store_b16 v9, v7, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s4, s0, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v37, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v9.h
	v_mov_b16_e32 v27.h, v66.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v19.h
	v_mov_b16_e32 v30.h, v66.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	s_clause 0x1
	buffer_store_b16 v27, v4, s[40:43], 0 offen
	buffer_store_b16 v19, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v36, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v30, v6, s[40:43], 0 offen
	buffer_store_b16 v3, v7, s[40:43], 0 offen
	v_add_lshl_u32 v3, v1, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v5, v1, v34, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s11
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v1, v33, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v66.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v11.h
	v_mov_b16_e32 v32.h, v66.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v66.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v29, v4, s[40:43], 0 offen
	buffer_store_b16 v11, v3, s[40:43], 0 offen
	buffer_store_b16 v32, v1, s[40:43], 0 offen
	buffer_store_b16 v2, v5, s[40:43], 0 offen
	buffer_store_b16 v31, v0, s[40:43], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp175:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 247
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 247
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17596
; TotalNumSgprs: 83
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 247
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
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
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
