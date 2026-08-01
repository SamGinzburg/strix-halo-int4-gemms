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
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[52:55], s[0:1], 0x4c
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b32 s76, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v96, 6, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s78, 0
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
	v_or_b32_e32 v109, 26, v96
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[81:82], null, s76, v96, v[65:66]
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s4, 1
	s_mul_i32 s47, s76, 54
	s_cselect_b32 s46, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s52
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s45, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[82:83], null, s76, 6, v[81:82]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s5, s3, s54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s45, v97
	v_or_b32_e32 v3, s45, v98
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v112, s76, 1, v81
	s_mul_i32 s67, s76, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s45, v99
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v113, s76, 2, v81
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s45, v100
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[83:84], null, s76, 10, v[81:82]
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s45, v96
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v6, s45, v101
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_lshl_add_u32 v114, s76, 3, v81
	v_mad_u64_u32 v[84:85], null, s76, 12, v[81:82]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, 54, v1
	v_or_b32_e32 v31, 60, v1
	v_or_b32_e32 v32, 62, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, 32, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s54, v28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, 34, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s7, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, 38, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s7, s3
	s_add_i32 s6, s6, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, 40, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, 42, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s2, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, 44, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, 46, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, 48, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s44, s7, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s53
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, 50, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s6, s2
	s_sub_i32 s7, 0, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v27, 52, v1
	v_or_b32_e32 v29, 56, v1
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, 58, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s54, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s45, v102
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[85:86], null, s76, 14, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s54, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s45, v103
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s54, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s45, v104
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[86:87], null, s76, 18, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s54, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s45, v105
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v115, s76, 4, v81
	v_mad_u64_u32 v[87:88], null, s76, 20, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s6, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s54, v8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s45, v106
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[88:89], null, s76, 22, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s54, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s45, v107
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s52, s53
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s61, s7, 31
	s_mul_i32 s8, s6, s2
	s_add_i32 s7, s6, 1
	s_sub_i32 s4, s4, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v110, 28, v96
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[89:90], null, s76, 24, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s76, v65
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s65, s7, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s70, s5, s45
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s54, v31
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s69, s70, s76
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s54, v32
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s69, v81
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s54, v1
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s54, v2
	v_cmp_gt_i32_e64 s8, s54, v3
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v31, v33, s47, 1
	v_add_lshl_u32 v32, v33, s67, 1
	v_add_lshl_u32 v2, s69, v112, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s69, v113, 1
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v34, 1, v65
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v4, s69, v82, 1
	v_add_lshl_u32 v5, s69, v114, 1
	v_add_lshl_u32 v6, s69, v83, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s69, v84, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s69, v85, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s54, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, s69, v115, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s45, v108
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v111, 30, v96
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[90:91], null, s76, 26, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s54, v12
	v_cmp_gt_i32_e64 s24, s54, v10
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s69, v86, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s45, v109
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[91:92], null, s76, 28, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s54, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s69, v87, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s45, v110
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[92:93], null, s76, 30, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s54, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s69, v88, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s45, v111
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s54, v15
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v13, s69, v89, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s54, v16
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v14, s69, v90, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s4
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s54, v17
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s69, v91, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s68, s76, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s54, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s69, v92, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s66, s76, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s54, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s68, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s64, s76, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s66, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s63, s76, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s54, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s64, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s62, s76, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s54, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s63, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s60, s76, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s54, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s62, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s59, s76, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s54, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s60, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s76, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s54, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s59, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s76, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s54, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s58, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s56, s76, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s54, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s57, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s49, s76, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s54, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s56, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s51, s76, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s54, v27
	v_cmp_gt_i32_e64 s35, s54, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s49, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s4
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s50, s76, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s51, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s48, s76, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s50, 1
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
	s_xor_b32 s2, s65, s61
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s55, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s2, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s5, 31
	s_lshr_b32 s2, s2, 27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v116, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s5, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v117, 0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v118, 0, v35
	v_add_nc_u32_e32 v119, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s64, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s36, 0x10008
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
	s_add_i32 s2, s45, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s45, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s55, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s78, s5, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s64, s64, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s46
	v_and_b32_e32 v66, 15, v0
	v_and_b32_e32 v33, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s46
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s80, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s45, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s9, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 27
	s_add_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s64, s64, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v33
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s67, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v120, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s78, s64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, v1, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_cmp_eq_u32_e64 s21, 0, v120
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
	v_cmp_gt_i32_e64 s2, s54, v67
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
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s9, s3, s52
	s_mul_f32 s8, s8, 0x4f7ffffe
                                        ; implicit-def: $vgpr216 : SGPR spill to VGPR lane
	s_ashr_i32 s9, s9, 31
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v216, s40, 0
	s_xor_b32 s10, s44, s9
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s9, s10, s9
	s_sub_i32 s10, 0, s6
	v_writelane_b32 v216, s41, 1
	s_mul_i32 s11, s9, s52
	s_mul_i32 s10, s10, s8
	s_sub_i32 s3, s3, s11
	s_mul_hi_u32 s10, s8, s10
	s_abs_i32 s11, s3
	s_add_i32 s8, s8, s10
	v_writelane_b32 v216, s42, 2
	s_mul_hi_u32 s8, s11, s8
	v_lshlrev_b32_e32 v1, 4, v0
	s_ashr_i32 s3, s3, 31
	s_ashr_i32 s7, s7, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s10, s8, s6
	v_writelane_b32 v216, s43, 3
	s_xor_b32 s3, s3, s7
	s_sub_i32 s7, s11, s10
	v_lshlrev_b32_e32 v2, 7, v66
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_lshlrev_b32 v3, 6, v33
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s7, s6
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_and_b32_e32 v1, 0x70, v1
	s_cmp_ge_u32 s7, s6
	v_writelane_b32 v216, s70, 4
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	s_cselect_b32 s1, s10, s8
	s_cselect_b32 s7, s11, s7
	s_add_i32 s8, s1, 1
	v_mov_b32_e32 v26, v25
	v_or3_b32 v3, v2, v3, v1
	s_cmp_ge_u32 s7, s6
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s9, s9, s53
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s1, s8, s1
	s_mov_b32 s8, 0
	v_xad_u32 v8, v3, 64, 0
	s_xor_b32 s1, s1, s3
	v_xad_u32 v9, 0x50, v3, 0
	s_sub_i32 s1, s1, s3
	s_mov_b32 s10, s8
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s53, s1, s9
	s_mov_b32 s9, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[53:56], v9
	v_mov_b32_e32 v8, 0x5410
	v_mov_b32_e32 v9, 0x7632
	v_writelane_b32 v216, s8, 5
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v4, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v8, 0x1054, v8, s21
	v_cndmask_b32_e64 v9, 0x3276, v9, s21
	v_writelane_b32 v216, s9, 6
	v_xad_u32 v6, v3, 32, 0
	v_xad_u32 v10, 0x60, v3, 0
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v9, v9, 8, v9
	v_writelane_b32 v216, s10, 7
	v_xad_u32 v5, v3, 16, 0
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[33:36], v4
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[57:60], v10
	ds_load_b128 v[61:64], v3
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v8, 0x540054, v8
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v9, 0x760076, v9
	v_writelane_b32 v216, s11, 8
	v_or_b32_e32 v122, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v9, v9, 4, v9
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[93:94], null, s67, v96, v[65:66]
	v_writelane_b32 v216, s12, 9
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v123, s39, v67
	v_xor_b32_e32 v1, 16, v122
	v_xor_b32_e32 v2, 32, v122
	v_xor_b32_e32 v3, 48, v122
	v_xor_b32_e32 v4, 64, v122
	v_xor_b32_e32 v5, 0x50, v122
	v_xor_b32_e32 v6, 0x60, v122
	v_xor_b32_e32 v7, 0x70, v122
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v94, 0x5040504, v8
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v126, 0x7060706, v9
	v_or_b32_e32 v8, 0x700, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_writelane_b32 v216, s13, 10
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s54, s0, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s67, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v121, 4, v120
	v_subrev_nc_u32_e32 v124, s37, v123
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v125, s38, v123
	v_lshl_add_u32 v127, v66, 1, 0
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v128, 0, v1
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v129, 0, v2
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v130, 0, v3
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v131, 0, v4
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v132, 0, v5
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v133, 0, v6
	v_add_nc_u32_e32 v134, 0, v7
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v135, 0, v8
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v136, 0, v9
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v12, v25
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
	v_mov_b32_e32 v137, v25
	v_writelane_b32 v216, s14, 11
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s46, s53, s55
	s_and_b32 s69, s69, 0xffff
	s_lshl_b32 s81, s67, 1
	s_lshl_b32 s83, s67, 2
	s_mul_i32 s90, s67, 6
	s_lshl_b32 s87, s67, 3
	s_mul_i32 s91, s67, 10
	s_mul_i32 s92, s67, 12
	s_mul_i32 s93, s67, 14
	s_lshl_b32 s79, s67, 4
	s_mul_i32 s94, s67, 18
	s_mul_i32 s45, s67, 20
	s_mul_i32 s21, s67, 22
	s_mul_i32 s56, s67, 24
	s_mul_i32 s65, s67, 26
	s_mul_i32 s57, s67, 28
	s_mul_i32 s58, s67, 30
	s_and_b32 s73, s71, 0xffff
	s_mov_b32 s72, s70
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	s_mov_b32 s95, 0x76543210
	v_writelane_b32 v216, s15, 12
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	v_mad_u64_u32 v[146:147], null, s89, s67, v[93:94]
	.loc	1 892 26 is_stmt 1              ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s17
	s_and_b32 s3, s0, s18
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s54, v73 :: v_dual_mul_f32 v74, s54, v74
	v_dual_mul_f32 v75, s54, v75 :: v_dual_mul_f32 v76, s54, v76
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v144, v146, s91, 1
	v_lshlrev_b32_e32 v139, 1, v146
	v_add_lshl_u32 v140, v146, s81, 1
	v_add_lshl_u32 v143, v146, s87, 1
	v_add_lshl_u32 v145, v146, s92, 1
	v_add_lshl_u32 v147, v146, s93, 1
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v148, v146, s79, 1
	v_cndmask_b32_e64 v140, 0x80000000, v140, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v154, v146, s57, 1
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v145, 0x80000000, v145, s3
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v149, v146, s94, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v153, 0x80000000, v147, vcc_lo
	v_cndmask_b32_e64 v147, 0x80000000, v148, s3
	v_add_lshl_u32 v148, v146, s45, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v151, v146, s56, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v149, 0x80000000, v149, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v141, v146, s83, 1
	v_cndmask_b32_e32 v152, 0x80000000, v148, vcc_lo
	v_add_lshl_u32 v148, v146, s65, 1
	v_add_lshl_u32 v142, v146, s90, 1
	v_add_lshl_u32 v150, v146, s21, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s6
	s_and_b32 s17, s0, s19
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v151, 0x80000000, v151, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v146, v146, s58, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s0, s20
	s_and_b32 s3, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v141, 0x80000000, v141, s17
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v155, 0x80000000, v148, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v142, 0x80000000, v142, s18
	v_cndmask_b32_e64 v150, 0x80000000, v150, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v154, 0x80000000, v154, vcc_lo
	s_clause 0x6
	buffer_load_u16 v139, v139, s[72:75], 0 offen
	buffer_load_u16 v140, v140, s[72:75], 0 offen
	buffer_load_u16 v141, v141, s[72:75], 0 offen
	buffer_load_u16 v142, v142, s[72:75], 0 offen
	buffer_load_u16 v143, v143, s[72:75], 0 offen
	buffer_load_u16 v144, v144, s[72:75], 0 offen
	buffer_load_u16 v145, v145, s[72:75], 0 offen
	v_cndmask_b32_e64 v156, 0x80000000, v146, s1
	s_clause 0x8
	buffer_load_u16 v147, v147, s[72:75], 0 offen
	buffer_load_u16 v148, v149, s[72:75], 0 offen
	buffer_load_u16 v149, v152, s[72:75], 0 offen
	buffer_load_u16 v150, v150, s[72:75], 0 offen
	buffer_load_u16 v151, v151, s[72:75], 0 offen
	buffer_load_u16 v152, v155, s[72:75], 0 offen
	buffer_load_u16 v146, v153, s[72:75], 0 offen
	buffer_load_u16 v153, v154, s[72:75], 0 offen
	buffer_load_u16 v154, v156, s[72:75], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v77, s54, v77 :: v_dual_mul_f32 v78, s54, v78
	v_dual_mul_f32 v65, s54, v65 :: v_dual_mul_f32 v66, s54, v66
	v_dual_mul_f32 v67, s54, v67 :: v_dual_mul_f32 v68, s54, v68
	v_dual_mul_f32 v69, s54, v69 :: v_dual_mul_f32 v70, s54, v70
	v_dual_mul_f32 v71, s54, v71 :: v_dual_mul_f32 v72, s54, v72
	v_dual_mul_f32 v79, s54, v79 :: v_dual_mul_f32 v80, s54, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v74, s97
	v_cndmask_b32_e64 v77, 0xff800000, v77, s102
	v_cndmask_b32_e64 v78, 0xff800000, v78, s100
	v_cndmask_b32_e64 v66, 0xff800000, v66, s103
	v_cndmask_b32_e64 v67, 0xff800000, v67, s85
	v_cndmask_b32_e64 v68, 0xff800000, v68, s66
	v_cndmask_b32_e64 v69, 0xff800000, v69, s84
	v_cndmask_b32_e64 v70, 0xff800000, v70, s82
	v_cndmask_b32_e64 v71, 0xff800000, v71, s88
	v_cndmask_b32_e64 v75, 0xff800000, v75, s98
	v_cndmask_b32_e64 v79, 0xff800000, v79, s101
	v_cndmask_b32_e64 v80, 0xff800000, v80, s104
	v_cndmask_b32_e64 v65, 0xff800000, v65, vcc_hi
	v_cndmask_b32_e64 v72, 0xff800000, v72, s86
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v73, v155
	v_max3_f32 v156, v76, v77, v78
	v_max3_f32 v157, v66, v67, v68
	v_max3_f32 v158, v69, v70, v71
	v_max3_f32 v159, v79, v80, v65
.Ltmp2:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v138
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v74, v75, v156
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v156, v157, v158, v72
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, 0
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v158, 0, v0
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s78, s78, 32
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v74, v159, v156
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.h, v157.h
	v_mov_b16_e64 v159.h, v157.h
	v_mov_b16_e64 v161.h, v157.h
	v_mov_b16_e64 v163.h, v157.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v160, v74, s95, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.h, v157.h
	v_mov_b16_e64 v164.h, v157.h
	v_mov_b16_e64 v165.h, v157.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s78, s64
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v74, v138, v74, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.h, v157.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(15)
	ds_store_b16 v158, v139
	s_waitcnt vmcnt(14)
	ds_store_b16 v158, v140 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b16 v158, v141 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b16 v158, v142 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b16 v158, v143 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v158, v144 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b16 v158, v145 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b16 v158, v147 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v158, v148 offset:2304
	s_waitcnt vmcnt(6)
	ds_store_b16 v158, v149 offset:2560
	s_waitcnt vmcnt(5)
	ds_store_b16 v158, v150 offset:2816
	s_waitcnt vmcnt(4)
	ds_store_b16 v158, v151 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v158, v152 offset:3328
	s_waitcnt vmcnt(2)
	ds_store_b16 v135, v146
	s_waitcnt vmcnt(1)
	ds_store_b16 v158, v153 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b16 v136, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v74
	v_sub_f32_e32 v66, v66, v74
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v138, v138, v74
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v74
	v_sub_f32_e32 v76, v76, v74
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v138, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v76, v76
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, vcc_hi
	v_cndmask_b32_e64 v168, 0, v66, s103
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v80, s104
	v_cndmask_b32_e64 v76, 0, v76, s99
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v163.l, v65.h
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v65, v168
.Ltmp12:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v75
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v75, 0, v138, vcc_lo
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v76, v76
	v_cmp_o_f32_e64 s12, v65, v65
	v_cmp_o_f32_e64 s9, v167, v167
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v168, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v155, s97
	v_cndmask_b32_e64 v155, 0, v166, s98
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v138.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v159.l, v155.h
	v_cmp_o_f32_e64 s6, v155, v155
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v73, v73, v74 :: v_dual_and_b32 v174, 1, v157
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v26, v26, v75 :: v_dual_sub_f32 v77, v77, v74
	v_mul_f32_e32 v30, v30, v75
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v78, v78, v74 :: v_dual_mul_f32 v25, v25, v75
	v_dual_sub_f32 v79, v79, v74 :: v_dual_mul_f32 v32, v32, v75
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v67, v67, v74 :: v_dual_mul_f32 v20, v20, v75
	v_dual_sub_f32 v68, v68, v74 :: v_dual_mul_f32 v31, v31, v75
	v_dual_sub_f32 v69, v69, v74 :: v_dual_mul_f32 v22, v22, v75
	v_dual_sub_f32 v70, v70, v74 :: v_dual_mul_f32 v17, v17, v75
	v_dual_sub_f32 v71, v71, v74 :: v_dual_mul_f32 v24, v24, v75
	v_dual_sub_f32 v72, v72, v74 :: v_dual_mul_f32 v19, v19, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s96
	v_cndmask_b32_e64 v77, 0, v77, s102
	v_cndmask_b32_e64 v166, 0, v78, s100
	v_cndmask_b32_e64 v78, 0, v79, s101
	v_cndmask_b32_e64 v66, 0, v67, s85
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v156.l, v73.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v68, s66
	v_cndmask_b32_e64 v170, 0, v70, s82
	v_cndmask_b32_e64 v67, 0, v69, s84
	v_cndmask_b32_e64 v69, 0, v72, s86
	v_cndmask_b32_e64 v68, 0, v71, s88
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v23, v23, v75 :: v_dual_add_f32 v70, v73, v138
	v_dual_mul_f32 v9, v9, v75 :: v_dual_and_b32 v156, 1, v156
	v_dual_mul_f32 v10, v10, v75 :: v_dual_add_f32 v71, v155, v76
	v_dual_mul_f32 v11, v11, v75 :: v_dual_add_f32 v72, v77, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.l, v77.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v78, v167
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v76.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v75
	v_mul_f32_e32 v3, v3, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v73, v73
	v_mov_b16_e64 v160.l, v67.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v71, 1, v159
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v72, v72, v79 :: v_dual_and_b32 v159, 1, v161
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v161, 1, v163
	v_add3_u32 v73, v73, v156, 0x7fff
	v_and_b32_e32 v156, 1, v157
	v_mov_b16_e64 v157.l, v166.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v21, v21, v75 :: v_dual_add_f32 v172, v67, v170
	v_dual_mul_f32 v12, v12, v75 :: v_dual_add_f32 v171, v66, v169
	v_dual_mul_f32 v14, v14, v75 :: v_dual_add_f32 v173, v68, v69
	v_dual_mul_f32 v15, v15, v75 :: v_dual_and_b32 v160, 1, v160
	v_mul_f32_e32 v4, v4, v75
	v_mul_f32_e32 v5, v5, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v78.h
	v_add3_u32 v71, v155, v71, 0x7fff
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v155, v70, v72
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v161, 0x7fff
	v_add3_u32 v72, v76, v156, 0x7fff
	v_and_b32_e32 v76, 1, v157
	v_mov_b16_e64 v157.l, v167.h
	v_cmp_o_f32_e64 s8, v77, v77
	v_add3_u32 v77, v77, v159, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v75 :: v_dual_and_b32 v79, 1, v162
	v_dual_mul_f32 v6, v6, v75 :: v_dual_add_f32 v163, v172, v173
	v_mul_f32_e32 v8, v8, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.l, v66.h
	v_cmp_o_f32_e64 s16, v67, v67
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v171
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v67, v160, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v65.h, s12
	v_and_b32_e32 v65, 1, v157
	v_mov_b16_e64 v157.l, v168.h
	v_mov_b16_e64 v165.l, v68.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v13, v13, v75 :: v_dual_and_b32 v162, 1, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v78, v78
	v_add3_u32 v138, v138, v174, 0x7fff
	v_add3_u32 v70, v78, v79, 0x7fff
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v80, v163
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v67.h, s16
	v_and_b32_e32 v67, 1, v157
	v_mov_b16_e64 v157.l, v169.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v75 :: v_dual_and_b32 v164, 1, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v66, v66
	v_add3_u32 v66, v66, v162, 0x7fff
	v_cndmask_b16 v138.h, 0x7fff, v138.h, vcc_lo
	v_cndmask_b16 v138.l, 0x7fff, v73.h, s1
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v155, v79
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v157
	v_mov_b16_e64 v157.l, v170.h
	v_cmp_o_f32_e64 s18, v68, v68
	v_add3_u32 v68, v68, v164, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v166, v166
	v_cndmask_b16 v68.l, 0x7fff, v71.h, s6
	v_cndmask_b16 v80.l, 0x7fff, v66.h, s14
	v_add3_u32 v66, v166, v76, 0x7fff
	v_permlanex16_b32 v71, v138, s95, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v156, v167, v65, 0x7fff
	v_and_b32_e32 v160, 1, v157
	v_mov_b16_e64 v157.l, v69.h
	v_cmp_o_f32_e64 s13, v169, v169
	v_cmp_o_f32_e64 s15, v170, v170
	v_cndmask_b16 v72.l, 0x7fff, v70.h, s10
	v_cndmask_b16 v79.l, 0x7fff, v68.h, s18
	v_cndmask_b16 v68.h, 0x7fff, v72.h, s3
	v_cndmask_b16 v70.h, 0x7fff, v66.h, s7
	v_perm_b32 v65, v71, v138, v94
	v_perm_b32 v66, v71, v138, v126
	v_cndmask_b16 v72.h, 0x7fff, v156.h, s9
	v_add3_u32 v138, v168, v67, 0x7fff
	v_and_b32_e32 v156, 1, v157
	v_add3_u32 v155, v169, v155, 0x7fff
	v_add3_u32 v157, v170, v160, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v141, v127 offset:512
	ds_load_u16_d16 v148, v127 offset:288
	ds_load_u16_d16 v162, v127 offset:608
	ds_load_u16_d16 v161, v127 offset:352
	ds_load_u16_d16 v170, v127 offset:576
	ds_load_u16_d16 v172, v127 offset:1088
	ds_load_u16_d16 v174, v127 offset:1600
	ds_load_u16_d16 v175, v127 offset:1856
	ds_load_u16_d16 v139, v127
	ds_load_u16_d16 v147, v127 offset:32
	ds_load_u16_d16 v140, v127 offset:256
	ds_load_u16_d16 v168, v127 offset:64
	ds_load_u16_d16 v169, v127 offset:320
	ds_load_u16_d16 v160, v127 offset:96
	ds_load_u16_d16 v176, v127 offset:2112
	ds_load_u16_d16 v178, v127 offset:2624
	ds_load_u16_d16 v179, v127 offset:2880
	ds_load_u16_d16 v180, v127 offset:3136
	ds_load_u16_d16 v181, v127 offset:3392
	ds_load_u16_d16 v182, v127 offset:3648
	ds_load_u16_d16 v142, v127 offset:768
	ds_load_u16_d16 v171, v127 offset:832
	ds_load_u16_d16 v149, v127 offset:544
	ds_load_u16_d16 v183, v127 offset:3904
	ds_load_u16_d16 v144, v127 offset:1280
	ds_load_u16_d16 v151, v127 offset:1056
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v161, v127 offset:480
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v170, v127 offset:704
	ds_load_u16_d16 v173, v127 offset:1344
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v172, v127 offset:1216
	ds_load_u16_d16 v164, v127 offset:1120
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v139, v127 offset:128
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v147, v127 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v168, v127 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v160, v127 offset:224
	ds_load_u16_d16_hi v141, v127 offset:640
	ds_load_u16_d16_hi v140, v127 offset:384
	ds_load_u16_d16_hi v148, v127 offset:416
	ds_load_u16_d16_hi v169, v127 offset:448
	ds_load_u16_d16 v143, v127 offset:1024
	ds_load_u16_d16 v150, v127 offset:800
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v142, v127 offset:896
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v171, v127 offset:960
	ds_load_u16_d16 v163, v127 offset:864
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v149, v127 offset:672
	ds_load_u16_d16_hi v162, v127 offset:736
	ds_load_u16_d16 v145, v127 offset:1536
	ds_load_u16_d16 v152, v127 offset:1312
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v173, v127 offset:1472
	ds_load_u16_d16 v165, v127 offset:1376
	ds_load_u16_d16 v146, v127 offset:1792
	ds_load_u16_d16 v153, v127 offset:1568
	ds_load_u16_d16_hi v174, v127 offset:1728
	ds_load_u16_d16 v166, v127 offset:1632
	ds_load_u16_d16 v184, v127 offset:2048
	ds_load_u16_d16 v154, v127 offset:1824
	ds_load_u16_d16_hi v175, v127 offset:1984
	ds_load_u16_d16 v167, v127 offset:1888
	ds_load_u16_d16 v185, v127 offset:2304
	ds_load_u16_d16 v192, v127 offset:2080
	ds_load_u16_d16 v177, v127 offset:2368
	ds_load_u16_d16_hi v176, v127 offset:2240
	ds_load_u16_d16 v200, v127 offset:2144
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v127 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v150, v127 offset:928
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v163, v127 offset:992
	ds_load_u16_d16_hi v144, v127 offset:1408
	ds_load_u16_d16_hi v151, v127 offset:1184
	ds_load_u16_d16_hi v164, v127 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v145, v127 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v152, v127 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v165, v127 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v146, v127 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v153, v127 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v166, v127 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v184, v127 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v154, v127 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v167, v127 offset:2016
	ds_load_u16_d16 v186, v127 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v185, v127 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v192, v127 offset:2208
	ds_load_u16_d16 v193, v127 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v177, v127 offset:2496
	ds_load_u16_d16 v201, v127 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v200, v127 offset:2272
	ds_load_u16_d16 v187, v127 offset:2816
	ds_load_u16_d16 v194, v127 offset:2592
	ds_load_u16_d16_hi v178, v127 offset:2752
	ds_load_u16_d16 v202, v127 offset:2656
	ds_load_u16_d16 v188, v127 offset:3072
	ds_load_u16_d16 v195, v127 offset:2848
	ds_load_u16_d16_hi v179, v127 offset:3008
	ds_load_u16_d16 v203, v127 offset:2912
	ds_load_u16_d16 v189, v127 offset:3328
	ds_load_u16_d16 v196, v127 offset:3104
	ds_load_u16_d16_hi v180, v127 offset:3264
	ds_load_u16_d16 v204, v127 offset:3168
	ds_load_u16_d16 v190, v127 offset:3584
	ds_load_u16_d16 v197, v127 offset:3360
	ds_load_u16_d16_hi v181, v127 offset:3520
	ds_load_u16_d16 v205, v127 offset:3424
	ds_load_u16_d16 v191, v127 offset:3840
	ds_load_u16_d16 v198, v127 offset:3616
	ds_load_u16_d16_hi v182, v127 offset:3776
	ds_load_u16_d16 v206, v127 offset:3680
	ds_load_u16_d16 v199, v127 offset:3872
	ds_load_u16_d16_hi v183, v127 offset:4032
	ds_load_u16_d16 v207, v127 offset:3936
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v69, v69
	v_cndmask_b16 v70.l, 0x7fff, v77.h, s8
	v_add3_u32 v69, v69, v156, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v186, v127 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v193, v127 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v201, v127 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v187, v127 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v194, v127 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v202, v127 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v188, v127 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v195, v127 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v203, v127 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v189, v127 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v196, v127 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v204, v127 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v190, v127 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v197, v127 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v205, v127 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v191, v127 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v198, v127 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v206, v127 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v199, v127 offset:4000
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v76, v73, s95, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v207, v127 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v159, v68, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v70, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v77.h, 0x7fff, v138.h, s11
	v_permlanex16_b32 v138, v72, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v80.h, 0x7fff, v155.h, s13
	v_cndmask_b16 v78.h, 0x7fff, v157.h, s15
	v_cndmask_b16 v79.h, 0x7fff, v69.h, s17
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v75
	v_mul_f32_e32 v29, v29, v75
	v_mul_f32_e32 v18, v18, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v159, v68, v94
	v_perm_b32 v68, v159, v68, v126
	v_perm_b32 v69, v71, v70, v94
	v_permlanex16_b32 v159, v77, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v157, v80, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v156, v78, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v155, v79, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v71, v70, v126
	v_perm_b32 v71, v138, v72, v94
	v_perm_b32 v72, v138, v72, v126
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v76
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v208, v159, v77, v94
	v_perm_b32 v209, v159, v77, v126
	v_perm_b32 v210, v157, v80, v94
	v_perm_b32 v211, v157, v80, v126
	v_perm_b32 v212, v156, v78, v94
	v_perm_b32 v213, v156, v78, v126
	v_perm_b32 v214, v155, v79, v94
	v_perm_b32 v215, v155, v79, v126
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[139:146], v[65:72], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[147:154], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[168:175], v[65:72], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[160:167], v[65:72], v[1:8]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v73, v137, v75
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[184:191], v[208:215], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[192:199], v[208:215], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[176:183], v[208:215], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[200:207], v[208:215], v[1:8]
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v138, v74
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s78, v96
	v_or_b32_e32 v66, s78, v97
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s89, s78, s46
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s78, v98
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s89, s76
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s55, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s78, v99
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s55, v66
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s3, v81, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s78, v100
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s55, v67
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s3, v112, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s78, v101
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s17
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s55, v68
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v67, s3, v113, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s78, v102
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s18
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s55, v69
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v68, s3, v82, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s78, v103
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s19
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s55, v70
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v69, s3, v114, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v73, s78, v104
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s20
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s55, v71
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v70, s3, v83, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v74, s78, v105
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s55, v72
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v71, s3, v84, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v75, s78, v106
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s55, v73
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v72, s3, v85, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v77, s78, v108
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s15
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s55, v74
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v73, s3, v115, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v76, s78, v107
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s55, v75
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v74, s3, v86, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v78, s78, v109
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s10
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s55, v77
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v75, s3, v87, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, s78, v110
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s9
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s55, v76
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v76, s3, v89, 1
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v80, s78, v111
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s55, v78
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v77, s3, v88, 1
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s55, v79
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v78, s3, v90, 1
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v79, s3, v91, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s55, v80
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v80, s3, v92, 1
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v65, v65, s[68:71], 0 offen
	buffer_load_u16 v66, v66, s[68:71], 0 offen
	buffer_load_u16 v67, v67, s[68:71], 0 offen
	buffer_load_u16 v69, v69, s[68:71], 0 offen
	buffer_load_u16 v70, v70, s[68:71], 0 offen
	buffer_load_u16 v71, v71, s[68:71], 0 offen
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_u16 v73, v73, s[68:71], 0 offen
	buffer_load_u16 v76, v76, s[68:71], 0 offen
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	s_clause 0x7
	buffer_load_u16 v74, v74, s[68:71], 0 offen
	buffer_load_u16 v78, v78, s[68:71], 0 offen
	buffer_load_u16 v75, v75, s[68:71], 0 offen
	buffer_load_u16 v79, v79, s[68:71], 0 offen
	buffer_load_u16 v68, v68, s[68:71], 0 offen
	buffer_load_u16 v72, v72, s[68:71], 0 offen
	buffer_load_u16 v77, v77, s[68:71], 0 offen
	buffer_load_u16 v80, v80, s[68:71], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s24, v216, 5
	v_readlane_b32 s25, v216, 6
	v_readlane_b32 s26, v216, 7
	v_readlane_b32 s27, v216, 8
	v_readlane_b32 s28, v216, 9
	v_readlane_b32 s29, v216, 10
	v_readlane_b32 s30, v216, 11
	v_readlane_b32 s31, v216, 12
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v140, 0, v122
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v139, s78, v121
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v171, s31 :: v_dual_mov_b32 v170, s30
	v_dual_mov_b32 v169, s29 :: v_dual_mov_b32 v168, s28
	v_dual_mov_b32 v167, s27 :: v_dual_mov_b32 v166, s26
	v_dual_mov_b32 v165, s25 :: v_dual_mov_b32 v164, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v144, 2, v139
	v_or_b32_e32 v145, 6, v139
	v_or_b32_e32 v147, 4, v139
	v_or_b32_e32 v142, 10, v139
	v_or_b32_e32 v146, 8, v139
	v_or_b32_e32 v141, 14, v139
	v_or_b32_e32 v143, 12, v139
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s55, v139
	v_cmp_gt_i32_e64 s3, s55, v144
	v_cmp_gt_i32_e64 s22, s55, v145
	v_cmp_gt_i32_e64 s23, s55, v147
	v_cmp_gt_i32_e64 s24, s55, v142
	v_cmp_gt_i32_e64 s25, s55, v146
	v_cmp_gt_i32_e64 s26, s55, v141
	v_cmp_gt_i32_e64 s27, s55, v143
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s96, s2, vcc_lo
	s_and_b32 s97, s2, s3
	s_and_b32 s98, s2, s23
	s_and_b32 s99, s2, s22
	s_and_b32 s102, s2, s25
	s_and_b32 s100, s2, s24
	s_and_b32 s101, s2, s27
	s_and_b32 s104, s2, s26
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s80
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
	s_waitcnt vmcnt(3)
	ds_store_b16 v119, v68
	s_waitcnt vmcnt(2)
	ds_store_b16 v119, v72 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v119, v77 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v119, v80 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v140
	ds_load_b128 v[69:72], v128
	ds_load_b128 v[148:151], v140 offset:2048
	ds_load_b128 v[152:155], v128 offset:2048
	ds_load_b128 v[156:159], v129
	ds_load_b128 v[160:163], v130
	ds_load_b128 v[172:175], v129 offset:2048
	ds_load_b128 v[176:179], v130 offset:2048
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v140, 18, v139
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s55, v140
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s103, s2, s28
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[33:40], v[164:171]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[148:155], v[33:40], v[164:171]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v149, 16, v139
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[156:163], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[155:158], v131
	ds_load_b128 v[163:166], v131 offset:2048
	ds_load_b128 v[159:162], v132
	ds_load_b128 v[167:170], v132 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[172:179], v[41:48], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v148, 22, v139
	v_or_b32_e32 v154, 20, v139
	v_or_b32_e32 v151, 26, v139
	v_or_b32_e32 v153, 24, v139
	v_or_b32_e32 v150, 30, v139
	v_or_b32_e32 v152, 28, v139
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s55, v149
	v_cmp_gt_i32_e64 s30, s55, v148
	v_cmp_gt_i32_e64 s31, s55, v154
	v_cmp_gt_i32_e64 s33, s55, v151
	v_cmp_gt_i32_e64 s34, s55, v153
	v_cmp_gt_i32_e64 s35, s55, v150
	v_cmp_gt_i32_e64 s36, s55, v152
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 vcc_hi, s2, s29
	s_and_b32 s85, s2, s31
	s_and_b32 s66, s2, s30
	s_and_b32 s84, s2, s34
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[155:162], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[163:170], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[155:158], v133
	ds_load_b128 v[163:166], v133 offset:2048
	ds_load_b128 v[159:162], v134
	ds_load_b128 v[167:170], v134 offset:2048
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s82, s2, s33
	s_and_b32 s88, s2, s36
	s_and_b32 s86, s2, s35
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[155:162], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[163:170], v[57:64], v[65:72]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v139, v123
	v_cmp_le_i32_e64 s3, v144, v123
	v_cmp_le_i32_e64 s22, v147, v123
	v_cmp_le_i32_e64 s23, v145, v123
	v_cmp_le_i32_e64 s24, v146, v123
	v_cmp_le_i32_e64 s25, v142, v123
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s37, vcc_lo, s96
	s_and_b32 s3, s3, s97
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v143, v123
	v_cmp_le_i32_e64 s27, v141, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s98
	s_and_b32 s23, s23, s99
	s_and_not1_b32 s38, s96, exec_lo
	s_and_b32 s37, s37, exec_lo
	s_and_not1_b32 s39, s97, exec_lo
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v149, v123
	v_cmp_le_i32_e64 s29, v140, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s102
	s_and_b32 s25, s25, s100
	s_or_b32 s96, s38, s37
	s_or_b32 s97, s39, s3
	s_and_not1_b32 s3, s98, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_not1_b32 s37, s99, exec_lo
	s_and_b32 s23, s23, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v154, v123
	v_cmp_le_i32_e64 s31, v148, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s101
	s_and_b32 s27, s27, s104
	s_or_b32 s98, s3, s22
	s_or_b32 s99, s37, s23
	s_and_not1_b32 s3, s102, exec_lo
	s_and_b32 s22, s24, exec_lo
	s_and_not1_b32 s23, s100, exec_lo
	s_and_b32 s24, s25, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v153, v123
	v_cmp_le_i32_e64 s34, v151, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, vcc_hi
	s_and_b32 s29, s29, s103
	s_or_b32 s102, s3, s22
	s_or_b32 s100, s23, s24
	s_and_not1_b32 s3, s101, exec_lo
	s_and_b32 s22, s26, exec_lo
	s_and_not1_b32 s23, s104, exec_lo
	s_and_b32 s24, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v152, v123
	v_cmp_le_i32_e64 s36, v150, v123
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s85
	s_and_b32 s31, s31, s66
	s_or_b32 s101, s3, s22
	s_or_b32 s104, s23, s24
	s_and_not1_b32 s3, vcc_hi, exec_lo
	s_and_b32 s22, s28, exec_lo
	s_and_not1_b32 s23, s103, exec_lo
	s_and_b32 s24, s29, exec_lo
	s_and_b32 s33, s33, s84
	s_and_b32 s34, s34, s82
	s_or_b32 vcc_hi, s3, s22
	s_or_b32 s103, s23, s24
	s_and_not1_b32 s3, s85, exec_lo
	s_and_b32 s22, s30, exec_lo
	s_and_not1_b32 s23, s66, exec_lo
	s_and_b32 s24, s31, exec_lo
	s_and_b32 s35, s35, s88
	s_and_b32 s36, s36, s86
	s_or_b32 s85, s3, s22
	s_or_b32 s66, s23, s24
	s_and_not1_b32 s3, s84, exec_lo
	s_and_b32 s22, s33, exec_lo
	s_and_not1_b32 s23, s82, exec_lo
	s_and_b32 s24, s34, exec_lo
	s_or_b32 s84, s3, s22
	s_or_b32 s82, s23, s24
	s_and_not1_b32 s3, s88, exec_lo
	s_and_b32 s22, s35, exec_lo
	s_and_not1_b32 s23, s86, exec_lo
	s_and_b32 s24, s36, exec_lo
	s_or_b32 s88, s3, s22
	s_or_b32 s86, s23, s24
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s77
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v139, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v139, v125
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v144, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v144, v125
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v147, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v147, v125
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v145, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v145, v125
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v146, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v146, v125
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v142, v124
	v_cmp_ge_i32_e64 s34, v149, v124
	v_cmp_ge_i32_e64 s35, v140, v124
	v_cmp_ge_i32_e64 s38, v153, v124
	v_cmp_ge_i32_e64 s39, v151, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v142, v125
	s_mov_b32 s5, s77
	s_mov_b32 s77, s21
	s_mov_b32 s21, s45
	v_cmp_le_i32_e64 s45, v149, v125
	s_mov_b32 s53, s46
	v_cmp_le_i32_e64 s46, v140, v125
	v_cmp_le_i32_e64 s49, v153, v125
	v_cmp_le_i32_e64 s50, v151, v125
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s22, s22, s23
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v143, v124
	v_cmp_ge_i32_e64 s33, v141, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s43, v143, v125
	v_cmp_le_i32_e64 s44, v141, v125
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s96
	s_and_b32 s22, s22, s97
	s_and_b32 s23, s24, s25
	s_and_b32 s24, s26, s27
	s_and_b32 s23, s23, s98
	s_and_b32 s24, s24, s99
	s_and_b32 s25, s28, s29
	s_and_b32 s26, s30, s42
	s_and_b32 s29, s34, s45
	s_and_b32 s30, s35, s46
	s_and_b32 s34, s38, s49
	s_and_b32 s35, s39, s50
	s_and_not1_b32 s38, s96, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s39, s97, exec_lo
	s_and_b32 s22, s22, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v154, v124
	v_cmp_ge_i32_e64 s37, v148, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s47, v154, v125
	v_cmp_le_i32_e64 s48, v148, v125
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s25, s25, s102
	s_and_b32 s26, s26, s100
	s_and_b32 s27, s31, s43
	s_and_b32 s28, s33, s44
	s_or_b32 s96, s38, s3
	s_or_b32 s97, s39, s22
	s_and_not1_b32 s3, s98, exec_lo
	s_and_b32 s22, s23, exec_lo
	s_and_not1_b32 s23, s99, exec_lo
	s_and_b32 s24, s24, exec_lo
	s_and_b32 s27, s27, s101
	s_and_b32 s28, s28, s104
	s_or_b32 s98, s3, s22
	s_or_b32 s99, s23, s24
	s_and_not1_b32 s3, s102, exec_lo
	s_and_b32 s22, s25, exec_lo
	s_and_not1_b32 s23, s100, exec_lo
	s_and_b32 s24, s26, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v152, v124
	v_cmp_ge_i32_e64 s41, v150, v124
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s51, v152, v125
	v_cmp_le_i32_e64 s52, v150, v125
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s29, s29, vcc_hi
	s_and_b32 s30, s30, s103
	s_and_b32 s31, s36, s47
	s_and_b32 s33, s37, s48
	s_or_b32 s102, s3, s22
	s_or_b32 s100, s23, s24
	s_and_not1_b32 s3, s101, exec_lo
	s_and_b32 s22, s27, exec_lo
	s_and_not1_b32 s23, s104, exec_lo
	s_and_b32 s24, s28, exec_lo
	s_and_b32 s31, s31, s85
	s_and_b32 s33, s33, s66
	s_or_b32 s101, s3, s22
	s_or_b32 s104, s23, s24
	s_and_not1_b32 s3, vcc_hi, exec_lo
	s_and_b32 s22, s29, exec_lo
	s_and_not1_b32 s23, s103, exec_lo
	s_and_b32 s24, s30, exec_lo
	s_and_b32 s34, s34, s84
	s_and_b32 s35, s35, s82
	s_and_b32 s36, s40, s51
	s_and_b32 s37, s41, s52
	s_or_b32 vcc_hi, s3, s22
	s_or_b32 s103, s23, s24
	s_and_not1_b32 s3, s85, exec_lo
	s_and_b32 s22, s31, exec_lo
	s_and_not1_b32 s23, s66, exec_lo
	s_and_b32 s24, s33, exec_lo
	s_and_b32 s36, s36, s88
	s_and_b32 s37, s37, s86
	s_or_b32 s85, s3, s22
	s_or_b32 s66, s23, s24
	s_and_not1_b32 s3, s84, exec_lo
	s_and_b32 s22, s34, exec_lo
	s_and_not1_b32 s23, s82, exec_lo
	s_and_b32 s24, s35, exec_lo
	s_or_b32 s84, s3, s22
	s_or_b32 s82, s23, s24
	s_and_not1_b32 s3, s88, exec_lo
	s_and_b32 s22, s36, exec_lo
	s_and_not1_b32 s23, s86, exec_lo
	s_and_b32 s24, s37, exec_lo
	s_mov_b32 s45, s21
	s_mov_b32 s21, s77
	s_mov_b32 s77, s5
	s_mov_b32 s46, s53
	s_or_b32 s88, s3, s22
	s_or_b32 s86, s23, s24
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_readlane_b32 s40, v216, 0
	v_readlane_b32 s70, v216, 4
	v_cmp_eq_u32_e64 s21, 0, v120
	v_readlane_b32 s41, v216, 1
	v_readlane_b32 s42, v216, 2
	v_readlane_b32 s43, v216, 3
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v66, null, v73, v73, v26
	v_div_scale_f32 v64, null, v73, v73, v25
	v_div_scale_f32 v72, null, v73, v73, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v67, v66
	v_rcp_f32_e32 v65, v64
	v_div_scale_f32 v74, s0, v26, v73, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v75, v72
	v_div_scale_f32 v68, vcc_lo, v25, v73, v25
	v_div_scale_f32 v70, null, v73, v73, v27
	v_div_scale_f32 v79, null, v73, v73, v30
	v_fma_f32 v60, -v66, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v64, v65, 1.0
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v72, v75, 1.0
	v_div_scale_f32 v81, null, v73, v73, v18
	v_fmac_f32_e32 v67, v60, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v52, 1, v120
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v78, v75
	.loc	1 1049 17                       ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v76, v74, v67
	v_fmac_f32_e32 v65, v54, v65
	v_fma_f32 v77, -v70, v71, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v63, 1, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s67, v52
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v69, v68, v65
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, s1, v27, v73, v27
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 54, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v62, -v64, v69, v68
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 53, v52
	v_or_b32_e32 v35, 52, v52
	v_or_b32_e32 v36, 51, v52
	v_or_b32_e32 v37, 50, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v69, v62, v65
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v62, 2, v52
	v_or_b32_e32 v38, 49, v52
	v_or_b32_e32 v39, 48, v52
	v_or_b32_e32 v40, 39, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v64, v69, v68
	v_fma_f32 v68, -v66, v76, v74
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v41, 38, v52
	v_or_b32_e32 v42, 37, v52
	v_or_b32_e32 v43, 36, v52
	v_or_b32_e32 v44, 35, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v76, v68, v67
	v_div_fmas_f32 v64, v64, v65, v69
	v_mul_f32_e32 v65, v77, v71
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v68, null, v73, v73, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v64, v73, v25
	v_fma_f32 v64, -v66, v76, v74
	v_fma_f32 v66, -v70, v65, v77
	v_div_scale_f32 v69, s3, v28, v73, v28
	v_rcp_f32_e32 v74, v68
	v_div_fmas_f32 v64, v64, v67, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v65, v66, v71
	v_rcp_f32_e32 v66, v79
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v64, v73, v26
	v_fma_f32 v64, -v70, v65, v77
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v45, 34, v52
	v_or_b32_e32 v46, 33, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v76, -v68, v74, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v64, v64, v71, v65
	v_fma_f32 v70, -v79, v66, 1.0
	v_div_scale_f32 v71, s1, v30, v73, v30
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, null, v73, v73, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v70, v66
	v_mul_f32_e32 v78, v69, v75
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v76
	v_div_fixup_f32 v27, v64, v73, v27
	v_mul_f32_e32 v77, v71, v66
	v_fma_f32 v67, -v72, v78, v69
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v64, -v79, v77, v71
	v_fmac_f32_e32 v78, v67, v75
	v_div_scale_f32 v67, s4, v29, v73, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v26, v26
	v_cmp_o_f32_e64 s36, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v72, v78, v69
	v_div_scale_f32 v72, null, v73, v73, v32
	v_mul_f32_e32 v69, v67, v74
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v47, 32, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v75, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v72
	v_fma_f32 v78, -v76, v70, 1.0
	v_fma_f32 v75, -v68, v69, v67
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v65, v73, v28
	v_div_scale_f32 v65, s3, v31, v73, v31
	v_fmac_f32_e32 v70, v78, v70
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v48, 23, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v78, -v72, v80, 1.0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v49, 22, v52
	v_or_b32_e32 v50, 21, v52
	v_or_b32_e32 v51, 20, v52
	v_or_b32_e32 v53, 19, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s5, v32, v73, v32
	v_fmac_f32_e32 v69, v75, v74
	v_div_scale_f32 v75, null, v73, v73, v17
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v54, 18, v52
	v_or_b32_e32 v55, 17, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v68, v69, v67
	v_rcp_f32_e32 v68, v75
	v_fmac_f32_e32 v77, v64, v66
	v_mul_f32_e32 v64, v65, v70
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v56, 16, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v74, v69
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v69, -v79, v77, v71
	v_fma_f32 v71, -v76, v64, v65
	v_mul_f32_e32 v74, v78, v80
	v_div_fixup_f32 v29, v67, v73, v29
	v_fma_f32 v79, -v75, v68, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v57, 7, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v64, v71, v70
	v_fma_f32 v71, -v72, v74, v78
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v68, v79, v68
	v_div_fmas_f32 v66, v69, v66, v77
	v_rcp_f32_e32 v69, v81
	v_div_scale_f32 v77, s1, v17, v73, v17
	v_fmac_f32_e32 v74, v71, v80
	v_div_scale_f32 v71, null, v73, v73, v19
	v_div_fixup_f32 v30, v66, v73, v30
	v_fma_f32 v65, -v76, v64, v65
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, null, v73, v73, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v67, -v81, v69, 1.0
	v_mul_f32_e32 v66, v77, v68
	v_div_fmas_f32 v64, v65, v70, v64
	v_fma_f32 v65, -v72, v74, v78
	v_div_scale_f32 v72, s3, v18, v73, v18
	v_fmac_f32_e32 v69, v67, v69
	v_rcp_f32_e32 v67, v71
	v_fma_f32 v70, -v75, v66, v77
	v_div_fixup_f32 v31, v64, v73, v31
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v58, 6, v52
	v_or_b32_e32 v59, 5, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v60, 4, v52
	v_or_b32_e32 v61, 3, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v78, -v71, v67, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s67, v63
	v_cmp_gt_i32_e64 s30, s67, v62
	s_mov_b32 s42, 0x7ffffffe
	v_cmp_gt_i32_e64 s29, s67, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v78, v67
	v_fmac_f32_e32 v66, v70, v68
	v_rcp_f32_e32 v70, v76
	v_div_fmas_f32 v65, v65, v80, v74
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v78, null, v73, v73, v21
	v_fma_f32 v64, -v75, v66, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v32, v65, v73, v32
	v_div_scale_f32 v75, s4, v19, v73, v19
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s67, v60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v76, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s67, v59
	v_cmp_gt_i32_e64 s26, s67, v58
	v_cmp_gt_i32_e64 s25, s67, v57
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v77, v70
	v_mul_f32_e32 v74, v72, v69
	v_div_scale_f32 v77, null, v73, v73, v22
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s67, v56
	v_cmp_gt_i32_e64 s23, s67, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v81, v74, v72
	v_rcp_f32_e32 v80, v77
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s67, v54
	v_cmp_gt_i32_e64 s20, s67, v53
	v_cmp_gt_i32_e64 s18, s67, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v74, v65, v69 :: v_dual_mul_f32 v65, v75, v67
	v_div_fmas_f32 v64, v64, v68, v66
	v_div_scale_f32 v68, s1, v20, v73, v20
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v66, v78
	v_div_fixup_f32 v17, v64, v73, v17
	v_mul_f32_e32 v79, v68, v70
	v_fma_f32 v64, -v81, v74, v72
	v_fma_f32 v72, -v71, v65, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s67, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s67, v49
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v64, v64, v69, v74
	v_fmac_f32_e32 v65, v72, v67
	v_fma_f32 v69, -v76, v79, v68
	v_fma_f32 v74, -v77, v80, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v64, v73, v18
	v_fma_f32 v64, -v71, v65, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v79, v69, v70 :: v_dual_fmac_f32 v80, v74, v80
	v_div_scale_f32 v74, null, v73, v73, v23
	v_fma_f32 v81, -v78, v66, 1.0
	v_div_fmas_f32 v64, v64, v67, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v76, v79, v68
	v_rcp_f32_e32 v68, v74
	v_div_scale_f32 v72, s3, v21, v73, v21
	v_div_scale_f32 v71, s5, v22, v73, v22
	v_fmac_f32_e32 v66, v81, v66
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v73, v73, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v75, v71, v80
	v_div_fmas_f32 v65, v65, v70, v79
	v_fma_f32 v79, -v74, v68, 1.0
	v_mul_f32_e32 v69, v72, v66
	v_div_fixup_f32 v19, v64, v73, v19
	v_fma_f32 v70, -v77, v75, v71
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v68, v79, v68
	v_fma_f32 v67, -v78, v69, v72
	v_div_fixup_f32 v20, v65, v73, v20
	v_div_scale_f32 v65, s1, v23, v73, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v69, v67, v66
	v_rcp_f32_e32 v67, v76
	v_fmac_f32_e32 v75, v70, v80
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v78, v69, v72
	v_div_scale_f32 v78, null, v73, v73, v10
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v64, v64, v66, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v76, v67, 1.0
	v_fma_f32 v66, -v77, v75, v71
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v71, s3, v24, v73, v24
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, null, v73, v73, v9
	v_div_fmas_f32 v66, v66, v80, v75
	v_div_scale_f32 v80, null, v73, v73, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v70
	v_div_fixup_f32 v21, v64, v73, v21
	v_div_fixup_f32 v22, v66, v73, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v80
	v_mul_f32_e32 v69, v65, v68
	v_rcp_f32_e32 v66, v78
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v75, -v74, v69, v65
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s19, s2, s19
	s_and_b32 s17, s2, s17
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s67, v48
	v_cmp_gt_i32_e64 s14, s67, v46
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_fmac_f32_e32 v69, v75, v68
	v_fma_f32 v75, -v70, v72, 1.0
	v_fma_f32 v79, -v78, v66, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s67, v47
	v_cmp_gt_i32_e64 s13, s67, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v69, v65
	v_fmac_f32_e32 v72, v75, v72
	v_mul_f32_e32 v77, v71, v67
	v_div_scale_f32 v74, null, v73, v73, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v65, v68, v69
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v64, -v76, v77, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v75, v74
	v_fmac_f32_e32 v66, v79, v66
	v_div_fixup_f32 v23, v65, v73, v23
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s16, s2, s16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v64, v67
	v_div_scale_f32 v64, s4, v9, v73, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s14, s2, s14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v76, v77, v71
	v_div_scale_f32 v71, s1, v10, v73, v10
	v_fma_f32 v76, -v74, v75, 1.0
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s15, s2, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v68, v67, v77
	v_mul_f32_e32 v81, v71, v66
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, s5, v11, v73, v11
	v_div_fixup_f32 v24, v67, v73, v24
	v_fma_f32 v67, -v80, v82, 1.0
	v_fma_f32 v68, -v78, v81, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v76, v75
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_fmac_f32 v82, v67, v82 :: v_dual_mul_f32 v69, v64, v72
	v_fmac_f32_e32 v81, v68, v66
	v_fma_f32 v65, -v74, v77, v76
	v_div_scale_f32 v68, null, v73, v73, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v70, v69, v64
	v_div_scale_f32 v67, s3, v12, v73, v12
	v_fmac_f32_e32 v77, v65, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v68
	v_fmac_f32_e32 v69, v79, v72
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s67, v44
	v_cmp_gt_i32_e64 s10, s67, v42
	v_cmp_gt_i32_e64 s11, s67, v43
	v_cmp_gt_i32_e64 s9, s67, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v70, v69, v64
	v_mul_f32_e32 v70, v67, v82
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v64, v64, v72, v69
	v_fma_f32 v69, -v78, v81, v71
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v71, null, v73, v73, v14
	v_fma_f32 v72, -v68, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v66, v69, v66, v81
	v_fma_f32 v69, -v74, v77, v76
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v74, v71
	v_fmac_f32_e32 v65, v72, v65
	v_div_scale_f32 v72, s1, v13, v73, v13
	v_div_fmas_f32 v69, v69, v75, v77
	v_fma_f32 v75, -v80, v70, v67
	v_div_fixup_f32 v9, v64, v73, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v64, v72, v65
	v_div_fixup_f32 v10, v66, v73, v10
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v70, v75, v82
	v_fma_f32 v66, -v71, v74, 1.0
	v_fma_f32 v75, -v68, v64, v72
	v_div_fixup_f32 v11, v69, v73, v11
	v_div_scale_f32 v69, null, v73, v73, v15
	v_fma_f32 v67, -v80, v70, v67
	v_fmac_f32_e32 v74, v66, v74
	v_div_scale_f32 v66, s4, v14, v73, v14
	v_fmac_f32_e32 v64, v75, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v82, v70
	v_rcp_f32_e32 v76, v69
	v_mul_f32_e32 v70, v66, v74
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v73, v73, v16
	v_div_fixup_f32 v12, v67, v73, v12
	v_fma_f32 v67, -v68, v64, v72
	v_fma_f32 v68, -v71, v70, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v75
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v72, -v69, v76, 1.0
	v_div_fmas_f32 v64, v67, v65, v64
	v_div_scale_f32 v65, null, v73, v73, v1
	v_fmac_f32_e32 v70, v68, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v72, v76
	v_div_scale_f32 v72, null, v73, v73, v2
	v_rcp_f32_e32 v68, v65
	v_div_scale_f32 v67, s1, v15, v73, v15
	v_div_fixup_f32 v13, v64, v73, v13
	v_fma_f32 v64, -v75, v77, 1.0
	v_rcp_f32_e32 v79, v72
	v_fma_f32 v66, -v71, v70, v66
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v80, s4, v1, v73, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v65, v68, 1.0
	v_fmac_f32_e32 v77, v64, v77
	v_div_scale_f32 v64, s3, v16, v73, v16
	v_mul_f32_e32 v71, v67, v76
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v78, null, v73, v73, v3
	v_div_fmas_f32 v66, v66, v74, v70
	v_mul_f32_e32 v74, v64, v77
	v_fma_f32 v70, -v69, v71, v67
	v_fma_f32 v81, -v72, v79, 1.0
	v_rcp_f32_e32 v82, v78
	v_div_fixup_f32 v14, v66, v73, v14
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v71, v70, v76
	v_fma_f32 v70, -v75, v74, v64
	v_mul_f32_e32 v83, v80, v68
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s5, v2, v73, v2
	v_fma_f32 v66, -v69, v71, v67
	v_fmac_f32_e32 v74, v70, v77
	v_fma_f32 v67, -v65, v83, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v69, v81, v79
	v_fma_f32 v70, -v78, v82, 1.0
	v_div_fmas_f32 v66, v66, v76, v71
	v_fma_f32 v64, -v75, v74, v64
	v_fmac_f32_e32 v83, v67, v68
	v_fma_f32 v67, -v72, v69, v81
	v_fmac_f32_e32 v82, v70, v82
	v_div_scale_f32 v70, s1, v3, v73, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v65, v83, v80
	v_fmac_f32_e32 v69, v67, v79
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v67, v70, v82
	v_div_scale_f32 v71, null, v73, v73, v4
	v_div_fmas_f32 v64, v64, v77, v74
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v66, v73, v15
	v_div_fmas_f32 v65, v65, v68, v83
	v_fma_f32 v68, -v72, v69, v81
	v_fma_f32 v72, -v78, v67, v70
	v_rcp_f32_e32 v74, v71
	v_div_fixup_f32 v16, v64, v73, v16
	v_div_fixup_f32 v1, v65, v73, v1
	v_div_scale_f32 v65, null, v73, v73, v5
	v_fmac_f32_e32 v67, v72, v82
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v76, null, v73, v73, v8
	v_div_fmas_f32 v68, v68, v79, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v64, -v78, v67, v70
	v_fma_f32 v66, -v71, v74, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v78, v76
	v_div_fixup_f32 v2, v68, v73, v2
	v_div_fmas_f32 v64, v64, v82, v67
	v_rcp_f32_e32 v67, v65
	v_fmac_f32_e32 v74, v66, v74
	v_div_scale_f32 v66, null, v73, v73, v6
	v_div_scale_f32 v68, null, v73, v73, v7
	v_div_scale_f32 v69, vcc_lo, v4, v73, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v70, v66
	v_rcp_f32_e32 v72, v68
	v_div_fixup_f32 v3, v64, v73, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v64, -v65, v67, 1.0
	v_mul_f32_e32 v75, v69, v74
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v64, v67
	v_div_scale_f32 v64, s1, v5, v73, v5
	v_fma_f32 v77, -v66, v70, 1.0
	v_fma_f32 v80, -v68, v72, 1.0
	v_fma_f32 v79, -v71, v75, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, v64, v67 :: v_dual_fmac_f32 v78, v82, v78
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, s3, v6, v73, v6
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v80, s4, v7, v73, v7
	v_fmac_f32_e32 v75, v79, v74
	v_fma_f32 v79, -v65, v81, v64
	v_div_scale_f32 v82, s5, v8, v73, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v83, v77, v70 :: v_dual_mul_f32 v84, v80, v72
	v_fmac_f32_e32 v81, v79, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v82, v78
	v_fma_f32 v69, -v71, v75, v69
	v_fma_f32 v71, -v66, v83, v77
	v_fma_f32 v79, -v68, v84, v80
	v_fma_f32 v64, -v65, v81, v64
	v_fma_f32 v65, -v76, v85, v82
	v_div_fmas_f32 v69, v69, v74, v75
	v_fmac_f32_e32 v83, v71, v70
	v_fmac_f32_e32 v84, v79, v72
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v85, v65, v78
	v_div_fmas_f32 v64, v64, v67, v81
	v_fma_f32 v66, -v66, v83, v77
	v_fma_f32 v65, -v68, v84, v80
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v67, -v76, v85, v82
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v70, v83
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v65, v65, v72, v84
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v66, v73, v6
	v_div_fmas_f32 v67, v67, v78, v85
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v65, v73, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v67, v73, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v65, v25, v65, 0x7fff
	v_add3_u32 v25, v26, v66, 0x7fff
	v_bfe_u32 v66, v30, 16, 1
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s34
	v_bfe_u32 v65, v29, 16, 1
	v_cmp_o_f32_e64 s34, v28, v28
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s35
	v_add3_u32 v27, v28, v27, 0x7fff
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
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
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v69, v73, v4
	v_div_fixup_f32 v5, v64, v73, v5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s34, v14, v14
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s35, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s36, v16, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s34
	v_bfe_u32 v13, v64, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s35
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s36
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
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
	v_cndmask_b32_e64 v7, v17, v26, s21
	v_cndmask_b32_e64 v8, v26, v17, s21
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s35
	v_cndmask_b32_e64 v14, v20, v29, s21
	v_cndmask_b32_e64 v15, v29, v20, s21
	v_cndmask_b32_e64 v16, v19, v18, s21
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e64 v18, v18, v19, s21
	v_cndmask_b32_e64 v19, v12, v9, s21
	v_cndmask_b32_e64 v9, v9, v12, s21
	v_cndmask_b32_e64 v12, 0x1054, v17, s21
	v_cndmask_b32_e64 v17, 0x3276, v20, s21
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v1, s70, v95
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s36
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s37
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s38
	v_cndmask_b32_e64 v6, v25, v28, s21
	v_lshl_or_b32 v17, v17, 8, v17
	v_and_b32_e32 v12, 0x540054, v12
	s_mov_b32 s34, 0x76543210
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v1, s67
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v20, v11, v10, s21
	v_cndmask_b32_e64 v10, v10, v11, s21
	v_cndmask_b32_e64 v11, v3, v13, s21
	v_cndmask_b32_e64 v3, v13, v3, s21
	v_cndmask_b32_e64 v13, v4, v2, s21
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v2, v2, v4, s21
	v_permlanex16_b32 v4, v6, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_cndmask_b32_e64 v5, v28, v25, s21
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
	s_and_b32 s21, s2, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v62, v1, v62, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s21
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s21, s2, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v4, v5, v12
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v63, 0x80000000, v63, s21
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s21, s2, s30
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
	v_cndmask_b32_e64 v62, 0x80000000, v62, s21
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
	s_and_b32 s21, s2, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v2, v2, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v18, s21
	v_add_lshl_u32 v18, v1, v59, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s21, s2, s28
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v52, v1, v58, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s21
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s21, s2, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v2, v13, v8
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s21
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s21, s2, s26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v2, v13, v12
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v52, 0x80000000, v52, s21
	s_clause 0x1
	buffer_store_b16 v68, v11, s[40:43], 0 offen
	buffer_store_b16 v5, v4, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v57, 1
	v_add_lshl_u32 v5, v1, v56, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s21, s2, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[40:43], 0 offen
	buffer_store_b16 v6, v52, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v55, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s21
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s21, s2, s24
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v11, v1, v54, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s21
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s21, s2, s23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s21
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s21, s2, s22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v7.h
	v_mov_b16_e32 v22.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v68.h
	v_mov_b16_e32 v24.l, v15.h
	v_mov_b16_e32 v24.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v68.h
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e32 v26.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
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
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s9, s2, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v9.h
	v_mov_b16_e32 v25.h, v68.h
	v_mov_b16_e32 v28.l, v19.h
	v_mov_b16_e32 v28.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	v_cndmask_b32_e64 v5, 0x80000000, v5, s11
	v_cndmask_b32_e64 v7, 0x80000000, v7, s9
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s67, v40
	v_cmp_gt_i32_e64 s3, s67, v38
	v_cmp_gt_i32_e64 s4, s67, v39
	v_cmp_gt_i32_e64 s1, s67, v37
	.loc	1 1049 17                       ; attention.py:1049:17
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
	.loc	1 1047 24                       ; attention.py:1047:24
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s67, v35
	v_cmp_gt_i32_e64 s0, s67, v36
	v_cmp_gt_i32_e64 s8, s67, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v27, v4, s[40:43], 0 offen
	buffer_store_b16 v20, v5, s[40:43], 0 offen
	buffer_store_b16 v30, v6, s[40:43], 0 offen
	buffer_store_b16 v3, v7, s[40:43], 0 offen
	v_add_lshl_u32 v3, v1, v35, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s67, v33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v1, v36, 1
	v_add_lshl_u32 v5, v1, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s67, v0
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v6, v1, v33, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s8
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v8.h
	v_mov_b16_e32 v32.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s6
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
.Ltmp31:
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
		.amdhsa_next_free_vgpr 217
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 217
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16348
; TotalNumSgprs: 107
; NumVgprs: 217
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 217
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
    .sgpr_count:     107
    .sgpr_spill_count: 13
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     217
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
