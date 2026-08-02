	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[60:63], s[0:1], 0x80
	s_load_b128 s[36:39], s[0:1], 0x4c
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b32 s64, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v96, 6, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v97, 2, v96
	v_or_b32_e32 v98, 4, v96
	v_or_b32_e32 v99, 6, v96
	v_or_b32_e32 v100, 8, v96
	v_or_b32_e32 v101, 10, v96
	v_or_b32_e32 v102, 12, v96
	v_or_b32_e32 v103, 14, v96
	v_or_b32_e32 v104, 16, v96
	v_or_b32_e32 v105, 18, v96
	v_or_b32_e32 v106, 20, v96
	v_or_b32_e32 v107, 22, v96
	v_or_b32_e32 v108, 24, v96
	.loc	1 786 26                        ; attention.py:786:26
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s50, s3, s38
	s_and_b32 s4, 1, s60
	s_bitcmp1_b32 s60, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[81:82], null, s64, v96, v[65:66]
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s4, 1
	s_mul_i32 s47, s64, 54
	s_cselect_b32 s46, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s36
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s45, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[82:83], null, s64, 6, v[81:82]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s45, v97
	v_or_b32_e32 v3, s45, v98
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v112, s64, 1, v81
	s_mul_i32 s70, s64, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s45, v99
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v113, s64, 2, v81
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s45, v100
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[83:84], null, s64, 10, v[81:82]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s45, v96
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s38, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s45, v101
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v114, s64, 3, v81
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, 54, v1
	v_or_b32_e32 v31, 60, v1
	v_or_b32_e32 v32, 62, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, 32, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s38, v28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, 34, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, 38, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s5, s6
	s_abs_i32 s6, s3
	s_add_i32 s5, s5, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, 40, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, 42, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, 44, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s5, s6, s5
	s_add_i32 s6, s2, 1
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, 46, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, 48, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s44, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s37
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, 50, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v27, 52, v1
	v_or_b32_e32 v29, 56, v1
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, 58, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[84:85], null, s64, 12, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s38, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s45, v102
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[85:86], null, s64, 14, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s38, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s45, v103
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s38, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s45, v104
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[86:87], null, s64, 18, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s38, v7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s45, v105
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v115, s64, 4, v81
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[87:88], null, s64, 20, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s38, v8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s45, v106
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v109, 26, v96
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s36, s37
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s58, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[88:89], null, s64, 22, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s38, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s64, v65
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s68, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s50, s50, s45
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s38, v31
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s72, s50, s64
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s38, v32
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s72, v81
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s38, v1
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s38, v2
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v2, s72, v112, 1
	v_add_lshl_u32 v31, v33, s47, 1
	v_add_lshl_u32 v32, v33, s70, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s72, v113, 1
	v_add_lshl_u32 v4, s72, v82, 1
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v34, 1, v65
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v5, s72, v114, 1
	v_add_lshl_u32 v6, s72, v83, 1
	v_add_lshl_u32 v7, s72, v84, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s72, v85, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s45, v107
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v110, 28, v96
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[89:90], null, s64, 24, v[81:82]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s38, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, s72, v115, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s45, v108
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v111, 30, v96
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[90:91], null, s64, 26, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s38, v12
	v_cmp_gt_i32_e64 s24, s38, v10
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s72, v86, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s45, v109
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[91:92], null, s64, 28, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s38, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s72, v87, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s45, v110
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[92:93], null, s64, 30, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s38, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s72, v88, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s45, v111
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s38, v15
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v13, s72, v89, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s38, v16
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v14, s72, v90, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s38, v17
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s72, v91, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s71, s64, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s38, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s72, v92, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s69, s64, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s38, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s71, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s67, s64, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s69, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s66, s64, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s38, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s67, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s59, s64, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s38, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s66, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s64, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s38, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s59, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s56, s64, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s38, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s57, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s64, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s38, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s56, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s64, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s38, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s55, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s64, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s38, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s54, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s49, s64, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s38, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s53, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s52, s64, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s38, v27
	v_cmp_gt_i32_e64 s35, s38, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s49, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s51, s64, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s52, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s48, s64, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s51, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s35, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v30, v33, s48, 1
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
	s_xor_b32 s2, s68, s58
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s39, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s2, s58
	s_mov_b32 s66, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s7, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s2, s2, 27
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v116, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v117, 0, v34
	v_add_nc_u32_e32 v118, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v119, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s9, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s67, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s60, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v116, v1
	s_waitcnt vmcnt(27)
	ds_store_b16 v116, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v116, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v116, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v116, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v116, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v116, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v116, v26 offset:7168
	ds_store_b16 v117, v2
	ds_store_b16 v117, v6 offset:1024
	ds_store_b16 v117, v10 offset:2048
	ds_store_b16 v117, v14 offset:3072
	ds_store_b16 v117, v18 offset:4096
	ds_store_b16 v117, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v117, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v117, v29 offset:7168
	ds_store_b16 v118, v3
	ds_store_b16 v118, v7 offset:1024
	ds_store_b16 v118, v11 offset:2048
	ds_store_b16 v118, v15 offset:3072
	ds_store_b16 v118, v19 offset:4096
	ds_store_b16 v118, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v118, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v118, v30 offset:7168
	ds_store_b16 v119, v4
	ds_store_b16 v119, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v119, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v119, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v119, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v119, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v119, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v119, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s45, s62
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s45, s61
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s63
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s63
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s39, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s6, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s66, s5, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s67, s67, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s46
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v33, 15, v0
	v_and_b32_e32 v34, 0x60, v0
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s46
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s5, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s45, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s39, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s6, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s6, s6, 27
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s67, s67, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v34
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s51, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v120, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s66, s67
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, v1, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_cmp_eq_u32_e64 s6, 0, v120
	v_mov_b32_e32 v6, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v67, s45, v95
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s38, v67
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
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_and_b32_e32 v1, 7, v0
	v_lshlrev_b32_e32 v2, 7, v33
	s_xor_b32 s10, s3, s36
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_ashr_i32 s10, s10, 31
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 4, v1
	v_lshlrev_b32_e32 v3, 6, v34
	v_lshlrev_b32_e32 v13, 1, v0
	v_and_b32_e32 v12, 64, v0
	s_xor_b32 s11, s44, s10
	v_mov_b32_e32 v26, v25
	v_or3_b32 v3, v2, v3, v4
	v_mov_b32_e32 v18, v25
	s_cvt_u32_f32 s9, s9
	s_sub_i32 s10, s11, s10
	s_sub_i32 s11, 0, s7
	v_xad_u32 v9, v3, 64, 0
	v_xad_u32 v10, 0x50, v3, 0
	v_xad_u32 v11, 0x60, v3, 0
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[53:56], v10
	v_dual_mov_b32 v10, 0x7632 :: v_dual_add_nc_u32 v5, 0, v3
	v_mov_b32_e32 v28, v25
	v_xad_u32 v6, v3, 16, 0
	v_xad_u32 v7, v3, 32, 0
	v_xad_u32 v8, v3, 48, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[57:60], v11
	ds_load_b128 v[61:64], v3
	v_cndmask_b32_e64 v10, 0x3276, v10, s6
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v11, 3, v0
	v_mov_b32_e32 v9, 0x5410
	s_mul_i32 s12, s10, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 8, v10
	v_xor_b32_e32 v13, v11, v13
	s_mul_i32 s11, s11, s9
	v_cndmask_b32_e64 v9, 0x1054, v9, s6
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v14, 6, v65
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v10, 0x760076, v10
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v13, 48, v13
	v_mov_b32_e32 v27, v25
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_lshrrev_b32_e32 v121, 4, v12
	v_lshrrev_b32_e32 v12, 3, v12
	s_sub_i32 s3, s3, s12
	s_mul_hi_u32 s11, s9, s11
	s_abs_i32 s12, s3
	s_add_i32 s9, s9, s11
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v11, 48, v11
	v_and_b32_e32 v15, 0x210, v0
	v_lshl_or_b32 v10, v10, 4, v10
	v_or3_b32 v0, v14, v12, v13
	s_mul_hi_u32 s9, s12, s9
	s_ashr_i32 s1, s3, 31
	s_ashr_i32 s3, s8, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s8, s9, s7
	s_xor_b32 s1, s1, s3
	s_sub_i32 s3, s12, s8
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v6
	ds_load_b128 v[41:44], v7
	ds_load_b128 v[45:48], v8
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v9, 0x540054, v9
	v_lshl_or_b32 v1, v1, 6, v11
	v_and_b32_e32 v125, 0x7060706, v10
	v_xor_b32_e32 v10, 48, v0
	s_add_i32 s8, s9, 1
	s_sub_i32 s11, s3, s7
	s_cmp_ge_u32 s3, s7
	v_or_b32_e32 v122, v4, v2
	s_cselect_b32 s8, s8, s9
	v_lshl_or_b32 v9, v9, 4, v9
	v_add_nc_u32_e32 v135, 0, v10
	v_mov_b32_e32 v10, v25
	v_xor_b32_e32 v124, v1, v15
	s_cselect_b32 s3, s11, s3
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s3, s7
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[93:94], null, s51, v121, v[65:66]
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s3, s9, s8
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v123, s63, v67
	v_xor_b32_e32 v2, 16, v122
	v_xor_b32_e32 v3, 32, v122
	v_xor_b32_e32 v4, 48, v122
	v_xor_b32_e32 v5, 64, v122
	v_xor_b32_e32 v6, 0x50, v122
	v_xor_b32_e32 v7, 0x60, v122
	v_xor_b32_e32 v8, 0x70, v122
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v94, 0x5040504, v9
	v_xor_b32_e32 v1, 16, v0
	v_xor_b32_e32 v9, 32, v0
	v_xor_b32_e32 v11, 16, v124
	v_xor_b32_e32 v12, 32, v124
	v_xor_b32_e32 v13, 48, v124
	v_xor_b32_e32 v14, 0x420, v124
	v_xor_b32_e32 v15, 0x430, v124
	v_xor_b32_e32 v16, 0x410, v124
	s_xor_b32 s3, s3, s1
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s10, s10, s37
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s3, s1
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s38, s0, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s51, v65
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v126, 0, v2
	v_add_nc_u32_e32 v127, 0, v3
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v128, 0, v4
	v_add_nc_u32_e32 v129, 0, v5
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v130, 0, v6
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v131, 0, v7
	v_add_nc_u32_e32 v132, 0, v8
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v133, 0, v1
	v_add_nc_u32_e32 v134, 0, v9
	v_add_nc_u32_e32 v136, 0, v11
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v137, 0, v12
	v_add_nc_u32_e32 v138, 0, v13
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v139, 0, v14
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v140, 0, v15
	v_add_nc_u32_e32 v141, 0, v16
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v144, s62, v123
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v142, 27, v121
	v_subrev_nc_u32_e32 v143, s61, v123
	v_mov_b32_e32 v145, v25
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s37, s1, s10
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_mov_b32 s40, 0
	.loc	1 852 32 is_stmt 0              ; attention.py:852:32
	s_mul_i32 s37, s37, s39
	s_and_b32 s53, s53, 0xffff
	s_lshl_b32 s60, s51, 1
	s_mul_i32 s63, s51, 3
	s_lshl_b32 s68, s51, 3
	s_mul_i32 s69, s51, 9
	s_mul_i32 s70, s51, 10
	s_mul_i32 s71, s51, 11
	s_lshl_b32 s72, s51, 4
	s_mul_i32 s73, s51, 17
	s_mul_i32 s74, s51, 18
	s_mul_i32 s75, s51, 19
	s_mul_i32 s76, s51, 24
	s_mul_i32 s77, s51, 25
	s_mul_i32 s78, s51, 26
	s_mul_i32 s79, s51, 27
	s_and_b32 s57, s55, 0xffff
	s_mov_b32 s56, s54
	s_mov_b32 s54, s58
	s_mov_b32 s55, s59
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s61, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_or_b32_e32 v147, 1, v121
	v_or_b32_e32 v148, 2, v121
	v_or_b32_e32 v149, 3, v121
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s66, v121
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v150, 8, v121
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v152, s66, v147
	v_or_b32_e32 v153, s66, v148
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v147, 9, v121
	v_or_b32_e32 v148, 10, v121
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v149, s66, v149
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s39, v151
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v150, s66, v150
	v_or_b32_e32 v157, s66, v147
	v_or_b32_e32 v158, s66, v148
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v147, 18, v121
	v_or_b32_e32 v148, 19, v121
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s39, v149
	v_cmp_gt_i32_e64 s1, s39, v152
	v_cmp_gt_i32_e64 s3, s39, v153
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s66, v147
	v_or_b32_e32 v163, s66, v148
	v_mad_u64_u32 v[147:148], null, s62, s51, v[93:94]
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v154, 11, v121
	v_or_b32_e32 v155, 16, v121
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s39, v150
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v156, 17, v121
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s39, v157
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v149, v147, s51, 1
	v_lshlrev_b32_e32 v148, 1, v147
	v_add_lshl_u32 v150, v147, s63, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v154, s66, v154
	v_or_b32_e32 v155, s66, v155
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v153, v147, s69, 1
	v_cndmask_b32_e32 v151, 0x80000000, v148, vcc_lo
	v_add_lshl_u32 v148, v147, s60, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s39, v158
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v149, 0x80000000, v149, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v156, s66, v156
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v152, 0x80000000, v148, vcc_lo
	v_add_lshl_u32 v148, v147, s68, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s7
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v159, 24, v121
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v150, 0x80000000, v150, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s8
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s39, v154
	v_cmp_gt_i32_e64 s12, s39, v155
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v155, v147, s71, 1
	v_cndmask_b32_e32 v154, 0x80000000, v148, vcc_lo
	v_add_lshl_u32 v148, v147, s70, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s9
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v160, 25, v121
	v_or_b32_e32 v161, 26, v121
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v153, 0x80000000, v153, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s10
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v159, s66, v159
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s39, v156
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v156, v147, s72, 1
	v_add_lshl_u32 v157, v147, s73, 1
	v_cndmask_b32_e32 v148, 0x80000000, v148, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s11
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s39, v162
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v160, s66, v160
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v155, 0x80000000, v155, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s12
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s66, v161
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s39, v163
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v158, v147, s74, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v164, s66, v142
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s39, v159
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v159, v147, s75, 1
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s13
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s39, v160
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v160, v147, s76, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s39, v161
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v161, v147, s77, 1
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s15
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s39, v164
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v162, v147, s79, 1
	v_add_lshl_u32 v147, v147, s78, 1
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s17
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s38, v73 :: v_dual_mul_f32 v74, s38, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v161, 0x80000000, v161, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s19
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s38, v75 :: v_dual_mul_f32 v76, s38, v76
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v162, 0x80000000, v162, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s18
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v77, s38, v77 :: v_dual_mul_f32 v78, s38, v78
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v163, 0x80000000, v147, vcc_lo
	s_clause 0xf
	buffer_load_u16 v164, v149, s[56:59], 0 offen
	buffer_load_u16 v165, v150, s[56:59], 0 offen
	buffer_load_u16 v166, v153, s[56:59], 0 offen
	buffer_load_u16 v155, v155, s[56:59], 0 offen
	buffer_load_u16 v148, v148, s[56:59], 0 offen
	buffer_load_u16 v147, v154, s[56:59], 0 offen
	buffer_load_u16 v150, v152, s[56:59], 0 offen
	buffer_load_u16 v149, v151, s[56:59], 0 offen
	buffer_load_u16 v159, v159, s[56:59], 0 offen
	buffer_load_u16 v157, v157, s[56:59], 0 offen
	buffer_load_u16 v162, v162, s[56:59], 0 offen
	buffer_load_u16 v161, v161, s[56:59], 0 offen
	buffer_load_u16 v152, v163, s[56:59], 0 offen
	buffer_load_u16 v151, v160, s[56:59], 0 offen
	buffer_load_u16 v154, v158, s[56:59], 0 offen
	buffer_load_u16 v153, v156, s[56:59], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s38, v65 :: v_dual_mul_f32 v66, s38, v66
	v_dual_mul_f32 v67, s38, v67 :: v_dual_mul_f32 v68, s38, v68
	v_dual_mul_f32 v69, s38, v69 :: v_dual_mul_f32 v70, s38, v70
	v_dual_mul_f32 v71, s38, v71 :: v_dual_mul_f32 v72, s38, v72
	v_dual_mul_f32 v79, s38, v79 :: v_dual_mul_f32 v80, s38, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s93
	v_cndmask_b32_e64 v74, 0xff800000, v74, s95
	v_cndmask_b32_e64 v76, 0xff800000, v76, s94
	v_cndmask_b32_e64 v77, 0xff800000, v77, s91
	v_cndmask_b32_e64 v78, 0xff800000, v78, s90
	v_cndmask_b32_e64 v66, 0xff800000, v66, s86
	v_cndmask_b32_e64 v158, 0xff800000, v67, s85
	v_cndmask_b32_e64 v68, 0xff800000, v68, s84
	v_cndmask_b32_e64 v69, 0xff800000, v69, s83
	v_cndmask_b32_e64 v70, 0xff800000, v70, s82
	v_cndmask_b32_e64 v71, 0xff800000, v71, s81
	v_cndmask_b32_e64 v75, 0xff800000, v75, s92
	v_cndmask_b32_e64 v79, 0xff800000, v79, s89
	v_cndmask_b32_e64 v80, 0xff800000, v80, s88
	v_cndmask_b32_e64 v156, 0xff800000, v65, s87
	v_cndmask_b32_e64 v72, 0xff800000, v72, s80
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v73, v74
	v_max3_f32 v67, v76, v77, v78
	v_max3_f32 v160, v66, v158, v68
	v_max3_f32 v163, v69, v70, v71
	v_max3_f32 v167, v79, v80, v156
.Ltmp2:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v146
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v75, v67
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v160, v163, v72
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s66, s66, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s66, s67
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v167, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v67, v65, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v65, v146, v65, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v146, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v65
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v65
	v_sub_f32_e32 v75, v75, v65
	v_sub_f32_e32 v76, v76, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s95
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v77, v77, v65 :: v_dual_mul_f32 v32, v32, v67
	v_dual_sub_f32 v78, v78, v65 :: v_dual_mul_f32 v27, v27, v67
	v_dual_sub_f32 v146, v156, v65 :: v_dual_mul_f32 v31, v31, v67
	v_dual_sub_f32 v156, v158, v65 :: v_dual_mul_f32 v19, v19, v67
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s93
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v158.h, 0
	v_mov_b16_e64 v158.l, v74.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v79, v79, v65 :: v_dual_mul_f32 v18, v18, v67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v67 :: v_dual_and_b32 v163, 1, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v73.h
	v_mov_b16_e64 v160.h, v158.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s92
	v_cndmask_b32_e64 v76, 0, v76, s94
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v80, v80, v65 :: v_dual_mul_f32 v29, v29, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v67 :: v_dual_and_b32 v160, 1, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v163, v74, v163, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_mov_b16_e64 v167.l, v75.h
	v_mov_b16_e64 v167.h, v158.h
	v_mov_b16_e64 v158.l, v76.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v67
	v_mul_f32_e32 v12, v12, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v160, v73, v160, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v74
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.h, 0x7fff, v163.h, vcc_lo
	v_and_b32_e32 v163, 1, v167
	v_and_b32_e32 v167, 1, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s91
	v_cndmask_b32_e64 v78, 0, v78, s90
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v66, v66, v65 :: v_dual_mul_f32 v17, v17, v67
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v160.h, s1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v75, v76
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v167, v76, v167, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_mov_b16_e32 v76.l, v77.h
	v_mov_b16_e64 v76.h, v158.h
	v_mov_b16_e64 v158.l, v78.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s89
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v68, v68, v65 :: v_dual_mul_f32 v21, v21, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v66, v66
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v14, v14, v67 :: v_dual_add_f32 v73, v73, v160
	v_dual_mul_f32 v15, v15, v67 :: v_dual_and_b32 v76, 1, v76
	v_dual_mul_f32 v1, v1, v67 :: v_dual_and_b32 v160, 1, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v163, v75, v163, 0x7fff
	v_cmp_o_f32_e64 s1, v75, v75
	v_cndmask_b16 v75.h, 0x7fff, v167.h, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s88
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v79.h
	v_mov_b16_e64 v167.h, v158.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v69, v69, v65 :: v_dual_mul_f32 v20, v20, v67
	v_dual_sub_f32 v70, v70, v65 :: v_dual_mul_f32 v23, v23, v67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v68, v68
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v67
	v_mul_f32_e32 v2, v2, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v163.h, s1
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v163, v77, v78
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v76, v77, v76, 0x7fff
	v_add3_u32 v160, v78, v160, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_mov_b16_e64 v158.l, v80.h
	v_cmp_o_f32_e64 s1, v77, v77
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v77, v79, v80 :: v_dual_and_b32 v78, 1, v167
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v67 :: v_dual_and_b32 v167, 1, v158
	v_mul_f32_e32 v5, v5, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.l, 0x7fff, v76.h, s1
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v163, v77
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v79, v78, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v146, s87
	v_cndmask_b32_e64 v66, 0, v66, s86
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v71, v71, v65 :: v_dual_mul_f32 v22, v22, v67
	v_dual_sub_f32 v72, v72, v65 :: v_dual_mul_f32 v9, v9, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v160.h, vcc_lo
	v_add3_u32 v146, v80, v167, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cmp_o_f32_e64 s1, v79, v79
	v_mov_b16_e32 v79.l, v78.h
	v_mov_b16_e64 v79.h, v158.h
	v_mov_b16_e64 v158.l, v66.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v156, s85
	v_cndmask_b32_e64 v68, 0, v68, s84
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v67 :: v_dual_add_f32 v73, v73, v76
	v_mul_f32_e32 v8, v8, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.l, 0x7fff, v77.h, s1
	v_mov_b16_e64 v156.l, v80.h
	v_mov_b16_e64 v156.h, v158.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s82
	v_cndmask_b32_e64 v69, 0, v69, s83
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v77, 1, v79
	v_and_b32_e32 v79, 1, v158
	v_mov_b16_e64 v158.l, v68.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.h, 0x7fff, v146.h, vcc_lo
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v78, v66
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v78, v77, 0x7fff
	v_add3_u32 v79, v66, v79, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s1, v78, v78
	v_and_b32_e32 v78, 1, v156
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v7, v7, v67 :: v_dual_and_b32 v156, 1, v158
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v80, v68
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.h, 0x7fff, v79.h, vcc_lo
	v_cndmask_b16 v79.l, 0x7fff, v77.h, s1
	v_add3_u32 v77, v80, v78, 0x7fff
	v_add3_u32 v78, v68, v156, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v72, s80
	v_cndmask_b32_e64 v71, 0, v71, s81
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v146, v66
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v80, v80
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v69, v70
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v70.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v71, v68
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v80.l, v69.h
	v_mov_b16_e64 v80.h, v158.h
	v_cndmask_b16 v78.l, 0x7fff, v77.h, s1
	v_and_b32_e32 v77, 1, v158
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v146
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v71.h
	v_mov_b16_e64 v146.h, v158.h
	v_and_b32_e32 v80, 1, v80
	v_mov_b16_e64 v158.l, v68.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v72
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v69, v69
	v_and_b32_e32 v72, 1, v146
	v_add3_u32 v80, v69, v80, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_and_b32_e32 v146, 1, v158
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	v_add3_u32 v69, v71, v72, 0x7fff
	v_add3_u32 v77, v70, v77, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_add3_u32 v70, v68, v146, 0x7fff
	v_cmp_o_f32_e64 s3, v68, v68
	v_cndmask_b16 v217.l, 0x7fff, v69.h, s7
	v_permlanex16_b32 v69, v74, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v73, v66
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v160, s61, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v77.h, 0x7fff, v77.h, vcc_lo
	v_cndmask_b16 v77.l, 0x7fff, v80.h, s1
	v_perm_b32 v68, v69, v74, v94
	v_perm_b32 v69, v69, v74, v125
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v74, 0, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v72, v73, v160, v94
	v_perm_b32 v73, v73, v160, v125
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v80, v66, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v217.h, 0x7fff, v70.h, s3
	v_permlanex16_b32 v71, v75, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v210, v76, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v211, v79, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v213, v78, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v215, v77, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v218, v217, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v71, v75, v94
	v_perm_b32 v71, v71, v75, v125
	v_perm_b32 v75, v210, v76, v125
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v80
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v212, v213, v78, v94
	v_perm_b32 v213, v213, v78, v125
	v_perm_b32 v214, v215, v77, v94
	v_perm_b32 v215, v215, v77, v125
	v_perm_b32 v216, v218, v217, v94
	v_perm_b32 v217, v218, v217, v125
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v66, v145, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v145, v66
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v149.h, v164.l
	v_mov_b16_e64 v150.h, v165.l
	v_mov_b16_e64 v147.h, v166.l
	v_mov_b16_e64 v148.h, v155.l
	ds_store_b64 v74, v[149:150]
	ds_store_b64 v133, v[147:148]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v154.h, v159.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v153.h, v157.l
	v_add_nc_u32_e32 v74, 0, v124
	v_mov_b16_e64 v152.h, v162.l
	v_mov_b16_e64 v151.h, v161.l
	ds_store_b64 v134, v[153:154]
	ds_store_b64 v135, v[151:152]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[146:149], v74
	ds_load_b128 v[154:157], v74 offset:2048
	ds_load_b128 v[150:153], v136
	ds_load_b128 v[158:161], v136 offset:2048
	ds_load_b128 v[162:165], v137
	ds_load_b128 v[170:173], v137 offset:2048
	ds_load_b128 v[178:181], v139
	ds_load_b128 v[186:189], v139 offset:2048
	ds_load_b128 v[182:185], v140
	ds_load_b128 v[190:193], v140 offset:2048
	ds_load_b128 v[166:169], v138
	ds_load_b128 v[174:177], v138 offset:2048
	ds_load_b128 v[194:197], v74 offset:1024
	ds_load_b128 v[198:201], v141
	ds_load_b128 v[202:205], v74 offset:3072
	ds_load_b128 v[206:209], v141 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v74, v210, v76, v94
	v_perm_b32 v210, v211, v79, v94
	v_perm_b32 v211, v211, v79, v125
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[146:153], v[68:75], v[25:32]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[154:161], v[68:75], v[9:16]
	v_mov_b32_e32 v146, v65
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[178:185], v[68:75], v[17:24]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[186:193], v[68:75], v[1:8]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[162:169], v[210:217], v[25:32]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[170:177], v[210:217], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[194:201], v[210:217], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[202:209], v[210:217], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s66, v96
	v_or_b32_e32 v66, s66, v97
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s62, s66, s37
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s66, v98
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s20, s62, s64
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s39, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s66, v99
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s39, v66
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s20, v81, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s66, v100
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s39, v67
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s20, v112, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s66, v101
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s39, v68
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v67, s20, v113, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s66, v102
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s39, v69
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v68, s20, v82, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s66, v103
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s39, v70
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v69, s20, v114, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v73, s66, v104
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s39, v71
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v70, s20, v83, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v74, s66, v105
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s8
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s39, v72
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v71, s20, v84, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v75, s66, v106
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s9
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s39, v73
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v72, s20, v85, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v77, s66, v108
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s10
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s39, v74
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v73, s20, v115, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v76, s66, v107
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s39, v75
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v74, s20, v86, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v78, s66, v109
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s39, v77
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v75, s20, v87, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, s66, v110
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s39, v76
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v76, s20, v89, 1
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v80, s66, v111
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s39, v78
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v77, s20, v88, 1
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s39, v79
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v78, s20, v90, 1
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s15
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v79, s20, v91, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s39, v80
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s17
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v80, s20, v92, 1
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s18
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v69, v69, s[52:55], 0 offen
	buffer_load_u16 v70, v70, s[52:55], 0 offen
	buffer_load_u16 v71, v71, s[52:55], 0 offen
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s19
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_u16 v73, v73, s[52:55], 0 offen
	buffer_load_u16 v76, v76, s[52:55], 0 offen
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x7
	buffer_load_u16 v74, v74, s[52:55], 0 offen
	buffer_load_u16 v78, v78, s[52:55], 0 offen
	buffer_load_u16 v75, v75, s[52:55], 0 offen
	buffer_load_u16 v79, v79, s[52:55], 0 offen
	buffer_load_u16 v72, v72, s[52:55], 0 offen
	buffer_load_u16 v68, v68, s[52:55], 0 offen
	buffer_load_u16 v80, v80, s[52:55], 0 offen
	buffer_load_u16 v77, v77, s[52:55], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v170, s47 :: v_dual_add_nc_u32 v171, 0, v122
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v169, s46 :: v_dual_mov_b32 v168, s45
	v_dual_mov_b32 v167, s44 :: v_dual_mov_b32 v166, s43
	v_dual_mov_b32 v165, s42 :: v_dual_mov_b32 v164, s41
	v_mov_b32_e32 v163, s40
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v147, 4, v120
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(15)
	ds_store_b16 v116, v65
	s_waitcnt vmcnt(12)
	ds_store_b16 v116, v69 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v116, v73 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v116, v76 offset:3072
	ds_store_b16 v117, v66
	ds_store_b16 v117, v70 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v117, v74 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v117, v78 offset:3072
	ds_store_b16 v118, v67
	ds_store_b16 v118, v71 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v118, v75 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v118, v79 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v119, v68
	ds_store_b16 v119, v72 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v119, v77 offset:2048
	ds_store_b16 v119, v80 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v126
	ds_load_b128 v[65:68], v171
	ds_load_b128 v[171:174], v171 offset:2048
	ds_load_b128 v[175:178], v126 offset:2048
	ds_load_b128 v[179:182], v127
	ds_load_b128 v[187:190], v127 offset:2048
	ds_load_b128 v[183:186], v128
	ds_load_b128 v[191:194], v128 offset:2048
	ds_load_b128 v[195:198], v129
	ds_load_b128 v[203:206], v129 offset:2048
	ds_load_b128 v[199:202], v130
	ds_load_b128 v[207:210], v130 offset:2048
	ds_load_b128 v[211:214], v131
	ds_load_b128 v[219:222], v131 offset:2048
	ds_load_b128 v[215:218], v132
	ds_load_b128 v[223:226], v132 offset:2048
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v147, s66, v147
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v148, 2, v147
	v_or_b32_e32 v149, 6, v147
	v_or_b32_e32 v156, 4, v147
	v_or_b32_e32 v150, 10, v147
	v_or_b32_e32 v157, 8, v147
	v_or_b32_e32 v151, 14, v147
	v_or_b32_e32 v158, 12, v147
	v_or_b32_e32 v152, 18, v147
	v_or_b32_e32 v159, 16, v147
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[33:40], v[163:170]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[171:178], v[33:40], v[163:170]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v153, 22, v147
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[179:186], v[41:48], v[73:80]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, 20, v147
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[187:194], v[41:48], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v154, 26, v147
	v_or_b32_e32 v161, 24, v147
	v_or_b32_e32 v155, 30, v147
	v_or_b32_e32 v162, 28, v147
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[195:202], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[203:210], v[49:56], v[65:72]
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s39, v147
	v_cmp_gt_i32_e64 s7, s39, v148
	v_cmp_gt_i32_e32 vcc_lo, s39, v149
	v_cmp_gt_i32_e64 s1, s39, v156
	v_cmp_gt_i32_e64 s8, s39, v150
	v_cmp_gt_i32_e64 s16, s39, v157
	v_cmp_gt_i32_e64 s11, s39, v151
	v_cmp_gt_i32_e64 s17, s39, v158
	v_cmp_gt_i32_e64 s12, s39, v152
	v_cmp_gt_i32_e64 s15, s39, v159
	v_cmp_gt_i32_e64 s10, s39, v153
	v_cmp_gt_i32_e64 s13, s39, v160
	v_cmp_gt_i32_e64 s9, s39, v154
	v_cmp_gt_i32_e64 s14, s39, v161
	v_cmp_gt_i32_e64 s18, s39, v155
	v_cmp_gt_i32_e64 s19, s39, v162
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[211:218], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[219:226], v[57:64], v[65:72]
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s93, s2, s3
	s_and_b32 s95, s2, s7
	s_and_b32 s92, s2, s1
	s_and_b32 s94, s2, vcc_lo
	s_and_b32 s91, s2, s16
	s_and_b32 s90, s2, s8
	s_and_b32 s89, s2, s17
	s_and_b32 s88, s2, s11
	s_and_b32 s87, s2, s15
	s_and_b32 s86, s2, s12
	s_and_b32 s85, s2, s13
	s_and_b32 s84, s2, s10
	s_and_b32 s83, s2, s14
	s_and_b32 s82, s2, s9
	s_and_b32 s81, s2, s19
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s80, s2, s18
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v147, v123
	v_cmp_le_i32_e64 s1, v148, v123
	v_cmp_le_i32_e64 s3, v156, v123
	v_cmp_le_i32_e64 s7, v149, v123
	v_cmp_le_i32_e64 s8, v157, v123
	v_cmp_le_i32_e64 s9, v150, v123
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s20, vcc_lo, s93
	s_and_b32 s1, s1, s95
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v158, v123
	v_cmp_le_i32_e64 s11, v151, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s92
	s_and_b32 s7, s7, s94
	s_and_not1_b32 s21, s93, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s95, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v159, v123
	v_cmp_le_i32_e64 s13, v152, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s91
	s_and_b32 s9, s9, s90
	s_or_b32 s93, s21, s20
	s_or_b32 s95, s22, s1
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s20, s94, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v160, v123
	v_cmp_le_i32_e64 s15, v153, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s89
	s_and_b32 s11, s11, s88
	s_or_b32 s92, s1, s3
	s_or_b32 s94, s20, s7
	s_and_not1_b32 s1, s91, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s90, exec_lo
	s_and_b32 s8, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v161, v123
	v_cmp_le_i32_e64 s17, v154, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s87
	s_and_b32 s13, s13, s86
	s_or_b32 s91, s1, s3
	s_or_b32 s90, s7, s8
	s_and_not1_b32 s1, s89, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s88, exec_lo
	s_and_b32 s8, s11, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v162, v123
	v_cmp_le_i32_e64 s19, v155, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s14, s85
	s_and_b32 s15, s15, s84
	s_or_b32 s89, s1, s3
	s_or_b32 s88, s7, s8
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s3, s12, exec_lo
	s_and_not1_b32 s7, s86, exec_lo
	s_and_b32 s8, s13, exec_lo
	s_and_b32 s16, s16, s83
	s_and_b32 s17, s17, s82
	s_or_b32 s87, s1, s3
	s_or_b32 s86, s7, s8
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s3, s14, exec_lo
	s_and_not1_b32 s7, s84, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_and_b32 s18, s18, s81
	s_and_b32 s19, s19, s80
	s_or_b32 s85, s1, s3
	s_or_b32 s84, s7, s8
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s16, exec_lo
	s_and_not1_b32 s7, s82, exec_lo
	s_and_b32 s8, s17, exec_lo
	s_or_b32 s83, s1, s3
	s_or_b32 s82, s7, s8
	s_and_not1_b32 s1, s81, exec_lo
	s_and_b32 s3, s18, exec_lo
	s_and_not1_b32 s7, s80, exec_lo
	s_and_b32 s8, s19, exec_lo
	s_or_b32 s81, s1, s3
	s_or_b32 s80, s7, s8
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s65
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v147, v143
	v_cmp_ge_i32_e64 s1, v148, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v147, v144
	v_cmp_le_i32_e64 s21, v148, v144
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v156, v143
	v_cmp_ge_i32_e64 s7, v149, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v156, v144
	v_cmp_le_i32_e64 s23, v149, v144
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v157, v143
	v_cmp_ge_i32_e64 s9, v150, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v157, v144
	v_cmp_le_i32_e64 s25, v150, v144
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s1, s1, s21
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v158, v143
	v_cmp_ge_i32_e64 s11, v151, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v158, v144
	v_cmp_le_i32_e64 s27, v151, v144
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, s20, s93
	s_and_b32 s1, s1, s95
	s_and_b32 s3, s3, s22
	s_and_b32 s7, s7, s23
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v159, v143
	v_cmp_ge_i32_e64 s13, v152, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v159, v144
	v_cmp_le_i32_e64 s29, v152, v144
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s92
	s_and_b32 s7, s7, s94
	s_and_b32 s8, s8, s24
	s_and_b32 s9, s9, s25
	s_and_not1_b32 s21, s93, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s95, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v160, v143
	v_cmp_ge_i32_e64 s15, v153, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v160, v144
	v_cmp_le_i32_e64 s31, v153, v144
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s8, s8, s91
	s_and_b32 s9, s9, s90
	s_and_b32 s10, s10, s26
	s_and_b32 s11, s11, s27
	s_or_b32 s93, s21, s20
	s_or_b32 s95, s22, s1
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s20, s94, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v161, v143
	v_cmp_ge_i32_e64 s17, v154, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v161, v144
	v_cmp_le_i32_e64 s34, v154, v144
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s89
	s_and_b32 s11, s11, s88
	s_and_b32 s12, s12, s28
	s_and_b32 s13, s13, s29
	s_or_b32 s92, s1, s3
	s_or_b32 s94, s20, s7
	s_and_not1_b32 s1, s91, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s90, exec_lo
	s_and_b32 s8, s9, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v162, v143
	v_cmp_ge_i32_e64 s19, v155, v143
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v162, v144
	v_cmp_le_i32_e64 s36, v155, v144
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s12, s12, s87
	s_and_b32 s13, s13, s86
	s_and_b32 s14, s14, s30
	s_and_b32 s15, s15, s31
	s_or_b32 s91, s1, s3
	s_or_b32 s90, s7, s8
	s_and_not1_b32 s1, s89, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s88, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_and_b32 s14, s14, s85
	s_and_b32 s15, s15, s84
	s_and_b32 s16, s16, s33
	s_and_b32 s17, s17, s34
	s_or_b32 s89, s1, s3
	s_or_b32 s88, s7, s8
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s3, s12, exec_lo
	s_and_not1_b32 s7, s86, exec_lo
	s_and_b32 s8, s13, exec_lo
	s_and_b32 s16, s16, s83
	s_and_b32 s17, s17, s82
	s_and_b32 s18, s18, s35
	s_and_b32 s19, s19, s36
	s_or_b32 s87, s1, s3
	s_or_b32 s86, s7, s8
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s3, s14, exec_lo
	s_and_not1_b32 s7, s84, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_and_b32 s18, s18, s81
	s_and_b32 s19, s19, s80
	s_or_b32 s85, s1, s3
	s_or_b32 s84, s7, s8
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s16, exec_lo
	s_and_not1_b32 s7, s82, exec_lo
	s_and_b32 s8, s17, exec_lo
	s_or_b32 s83, s1, s3
	s_or_b32 s82, s7, s8
	s_and_not1_b32 s1, s81, exec_lo
	s_and_b32 s3, s18, exec_lo
	s_and_not1_b32 s7, s80, exec_lo
	s_and_b32 s8, s19, exec_lo
	s_or_b32 s81, s1, s3
	s_or_b32 s80, s7, s8
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v64, v70, v69
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v52, 1, v120
	.loc	1 1049 17                       ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s49, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v62, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v63, 1, v52
	v_or_b32_e32 v62, 2, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s51, v52
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v64, v70, v69
	v_fma_f32 v69, -v67, v76, v74
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 54, v52
	v_or_b32_e32 v34, 53, v52
	v_or_b32_e32 v35, 52, v52
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v71, -v75, v67, v77
	v_div_fixup_f32 v31, v64, v66, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v71, v69
	v_rcp_f32_e32 v71, v76
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v81, v70, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s36, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v75, v67, v77
	v_div_scale_f32 v75, s4, v19, v66, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v68, v70
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v36, 51, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v76, v71, 1.0
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s5, v32, v66, v32
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, null, v66, v66, v22
	v_mul_f32_e32 v74, v78, v80
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v37, 50, v52
	v_or_b32_e32 v38, 49, v52
	v_or_b32_e32 v39, 48, v52
	v_or_b32_e32 v40, 39, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v72, -v73, v74, v78
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v41, 38, v52
	v_or_b32_e32 v42, 37, v52
	v_or_b32_e32 v43, 36, v52
	v_or_b32_e32 v44, 35, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v72, v80
	v_div_scale_f32 v72, null, v66, v66, v19
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v45, 34, v52
	v_or_b32_e32 v46, 33, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v73, v74, v78
	v_rcp_f32_e32 v68, v72
	v_div_scale_f32 v73, s3, v18, v66, v18
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v47, 32, v52
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v67, v78
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v48, 23, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v74, v65, v70 :: v_dual_mul_f32 v65, v75, v68
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v49, 22, v52
	v_or_b32_e32 v50, 21, v52
	v_or_b32_e32 v51, 20, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v81, v74, v73
	v_fma_f32 v73, -v72, v65, v75
	v_fma_f32 v81, -v78, v67, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v53, 19, v52
	v_or_b32_e32 v54, 18, v52
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v78, v67, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v55, 17, v52
	v_or_b32_e32 v56, 16, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v79, v67
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, null, v66, v66, v9
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v57, 7, v52
	v_or_b32_e32 v58, 6, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v77, v72, v68
	v_rcp_f32_e32 v73, v71
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v59, 5, v52
	v_or_b32_e32 v60, 4, v52
	v_or_b32_e32 v61, 3, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v76, v77, v72
	v_mul_f32_e32 v70, v65, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s51, v63
	v_cmp_gt_i32_e64 s30, s51, v62
	v_cmp_gt_i32_e64 s29, s51, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v64, v68
	v_fma_f32 v75, -v74, v70, v65
	v_div_scale_f32 v64, s4, v9, v66, v9
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s51, v60
	v_cmp_gt_i32_e64 s27, s51, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v75, v69
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s51, v58
	v_cmp_gt_i32_e64 s25, s51, v57
	v_cmp_gt_i32_e64 s24, s51, v56
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v70, v65
	v_div_scale_f32 v74, null, v66, v66, v11
	v_fmac_f32_e32 v73, v75, v73
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s51, v55
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
	v_cmp_gt_i32_e64 s22, s51, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v69, -v78, v81, v72
	v_div_fixup_f32 v24, v68, v66, v24
	v_fma_f32 v68, -v80, v82, 1.0
	v_fma_f32 v76, -v74, v75, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s51, v53
	v_cmp_gt_i32_e64 s20, s51, v51
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
	v_cmp_gt_i32_e64 s19, s51, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v77, v76
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s51, v49
	v_cmp_gt_i32_e64 s17, s51, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v71, v70, v64
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s51, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v65, v75
	v_rcp_f32_e32 v65, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s51, v46
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
	v_cmp_gt_i32_e64 s14, s51, v45
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
	v_cmp_gt_i32_e64 s13, s51, v44
	v_cmp_gt_i32_e64 s12, s51, v43
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v67, v74
	v_div_fmas_f32 v70, v70, v75, v77
	v_fma_f32 v75, -v80, v71, v68
	v_div_scale_f32 v67, s4, v14, v66, v14
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v70, v66, v11
	v_div_scale_f32 v70, null, v66, v66, v15
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s51, v42
	v_cmp_gt_i32_e64 s10, s51, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v76, v70
	v_fmac_f32_e32 v71, v75, v82
	v_fma_f32 v75, -v69, v64, v73
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s51, v34
	v_cmp_gt_i32_e64 s8, s51, v33
	v_cmp_gt_i32_e64 s7, s51, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v80, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v68, v68, v82, v71
	v_mul_f32_e32 v71, v67, v74
	v_fmac_f32_e32 v64, v75, v65
	v_div_scale_f32 v75, null, v66, v66, v16
	v_div_fixup_f32 v12, v68, v66, v12
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v69, v64, v73
	v_fma_f32 v69, -v72, v71, v67
	v_fma_f32 v73, -v70, v76, 1.0
	v_rcp_f32_e32 v77, v75
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v83, v68, v69
	v_fma_f32 v68, -v73, v70, v81
	v_fma_f32 v67, -v72, v74, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v67, v74
	v_fmac_f32_e32 v70, v68, v79
	v_mul_f32_e32 v68, v71, v82
	v_fma_f32 v65, -v65, v83, v80
	v_div_scale_f32 v67, null, v66, v66, v6
	v_div_fmas_f32 v65, v65, v69, v83
	v_fma_f32 v69, -v73, v70, v81
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v73, -v78, v68, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v65, v66, v1
	v_div_fmas_f32 v69, v69, v79, v70
	v_div_scale_f32 v65, null, v66, v66, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v73, v82
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v69, v66, v2
	v_div_scale_f32 v69, null, v66, v66, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v73, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v69, v73, 1.0
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v64, -v78, v68, v71
	v_rcp_f32_e32 v71, v67
	v_rcp_f32_e32 v78, v76
	v_div_scale_f32 v80, s4, v7, v66, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v64, v64, v82, v68
	v_rcp_f32_e32 v68, v65
	v_div_scale_f32 v70, vcc_lo, v4, v66, v4
	v_mul_f32_e32 v84, v80, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v3, v64, v66, v3
	v_fma_f32 v77, -v67, v71, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v65, v68, 1.0
	v_fmac_f32_e32 v71, v77, v71
	v_mul_f32_e32 v75, v70, v74
	v_div_scale_f32 v77, s3, v6, v66, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v64, v68
	v_div_scale_f32 v64, s1, v5, v66, v5
	v_fma_f32 v79, -v72, v75, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v77, v71
	v_mul_f32_e32 v81, v64, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v79, v74
	v_fma_f32 v79, -v65, v81, v64
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s5, v8, v66, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v72, v75, v70
	v_fmac_f32_e32 v81, v79, v68
	v_fma_f32 v79, -v69, v84, v80
	s_delay_alu instid0(VALU_DEP_4)
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v73, v84
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v67, v66, v6
	v_div_fmas_f32 v68, v68, v78, v85
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v65, v66, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v68, v66, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v65, v25, v65, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v26, v66, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s34
	v_bfe_u32 v65, v29, 16, 1
	v_bfe_u32 v66, v30, 16, 1
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
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
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v1, s50, v95
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s36
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s37
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s38
	v_cndmask_b32_e64 v6, v25, v28, s6
	v_lshl_or_b32 v17, v17, 8, v17
	v_and_b32_e32 v12, 0x540054, v12
	s_mov_b32 s34, 0x76543210
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v1, s51
	.loc	1 1049 36                       ; attention.py:1049:36
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
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s51, v40
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_cndmask_b32_e64 v63, 0x80000000, v63, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s30
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s51, v39
	v_cmp_gt_i32_e64 s3, s51, v38
	v_cmp_gt_i32_e64 s1, s51, v37
	v_cmp_gt_i32_e64 s0, s51, v36
	v_cmp_gt_i32_e32 vcc_lo, s51, v35
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
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
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v62, 0x80000000, v62, s6
	buffer_store_b16 v18, v52, s[48:51], 0 offen
	v_add_lshl_u32 v18, v1, v61, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v4.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v11, v63, s[48:51], 0 offen
	buffer_store_b16 v4, v62, s[48:51], 0 offen
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
	buffer_store_b16 v68, v11, s[48:51], 0 offen
	buffer_store_b16 v5, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v57, 1
	v_add_lshl_u32 v5, v1, v56, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[48:51], 0 offen
	buffer_store_b16 v6, v52, s[48:51], 0 offen
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
	buffer_store_b16 v12, v4, s[48:51], 0 offen
	buffer_store_b16 v7, v5, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v53, 1
	v_add_lshl_u32 v5, v1, v51, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[48:51], 0 offen
	buffer_store_b16 v14, v11, s[48:51], 0 offen
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
	buffer_store_b16 v21, v4, s[48:51], 0 offen
	buffer_store_b16 v15, v5, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v48, 1
	v_add_lshl_u32 v5, v1, v47, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s17
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v24, v6, s[48:51], 0 offen
	buffer_store_b16 v16, v7, s[48:51], 0 offen
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
	buffer_store_b16 v23, v4, s[48:51], 0 offen
	buffer_store_b16 v17, v5, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s13
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v26, v6, s[48:51], 0 offen
	buffer_store_b16 v9, v7, s[48:51], 0 offen
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
	buffer_store_b16 v25, v4, s[48:51], 0 offen
	buffer_store_b16 v19, v5, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	s_clause 0x1
	buffer_store_b16 v28, v6, s[48:51], 0 offen
	buffer_store_b16 v10, v7, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	v_add_lshl_u32 v5, v1, v39, 1
	v_add_lshl_u32 v7, v1, v37, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
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
	buffer_store_b16 v27, v4, s[48:51], 0 offen
	buffer_store_b16 v20, v5, s[48:51], 0 offen
	buffer_store_b16 v30, v6, s[48:51], 0 offen
	buffer_store_b16 v3, v7, s[48:51], 0 offen
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
	v_add_lshl_u32 v0, v1, v0, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
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
	buffer_store_b16 v29, v4, s[48:51], 0 offen
	buffer_store_b16 v8, v3, s[48:51], 0 offen
	buffer_store_b16 v32, v1, s[48:51], 0 offen
	buffer_store_b16 v2, v5, s[48:51], 0 offen
	buffer_store_b16 v31, v0, s[48:51], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp40:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 227
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 227
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15280
; TotalNumSgprs: 98
; NumVgprs: 227
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 98
; NumVGPRsForWavesPerEU: 227
; Occupancy: 6
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     227
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
