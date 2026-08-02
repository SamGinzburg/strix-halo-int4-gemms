	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[60:63], s[0:1], 0x80
	s_load_b128 s[48:51], s[0:1], 0x4c
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b32 s47, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v112, 6, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v113, 2, v112
	v_or_b32_e32 v114, 4, v112
	v_or_b32_e32 v115, 6, v112
	v_or_b32_e32 v116, 8, v112
	v_or_b32_e32 v117, 10, v112
	v_or_b32_e32 v118, 12, v112
	v_or_b32_e32 v119, 14, v112
	v_or_b32_e32 v120, 16, v112
	v_or_b32_e32 v121, 18, v112
	v_or_b32_e32 v122, 20, v112
	v_or_b32_e32 v123, 22, v112
	v_or_b32_e32 v124, 24, v112
	.loc	1 786 26                        ; attention.py:786:26
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s46, s3, s50
	s_and_b32 s4, 1, s60
	s_bitcmp1_b32 s60, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[81:82], null, s47, v112, v[65:66]
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s4, 1
	s_mul_i32 s43, s47, 54
	s_cselect_b32 s41, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s48
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s42, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[82:83], null, s47, 6, v[81:82]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s42, v113
	v_or_b32_e32 v3, s42, v114
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v128, s47, 1, v81
	s_mul_i32 s70, s47, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s42, v115
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v129, s47, 2, v81
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s42, v116
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[83:84], null, s47, 10, v[81:82]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s42, v112
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s50, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s42, v117
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v130, s47, 3, v81
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
	v_cmp_gt_i32_e32 vcc_lo, s50, v28
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
	s_cselect_b32 s40, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s49
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
	v_mad_u64_u32 v[84:85], null, s47, 12, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s50, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s42, v118
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[85:86], null, s47, 14, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s50, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s42, v119
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s50, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s42, v120
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[86:87], null, s47, 18, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s50, v7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s42, v121
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v131, s47, 4, v81
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[87:88], null, s47, 20, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s50, v8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s42, v122
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v125, 26, v112
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s48, s49
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s59, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[88:89], null, s47, 22, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s50, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s50, v31
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s68, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s46, s46, s42
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s5, s47, v65
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s72, s46, s47
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s50, v32
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s72, v81
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s50, v1
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s50, v2
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v2, s72, v128, 1
	v_add_lshl_u32 v31, v33, s43, 1
	v_add_lshl_u32 v32, v33, s70, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s72, v129, 1
	v_add_lshl_u32 v4, s72, v82, 1
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v34, 1, v65
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v5, s72, v130, 1
	v_add_lshl_u32 v6, s72, v83, 1
	v_add_lshl_u32 v7, s72, v84, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s72, v85, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s42, v123
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v126, 28, v112
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[89:90], null, s47, 24, v[81:82]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s5
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s50, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, s72, v131, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s42, v124
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v127, 30, v112
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[90:91], null, s47, 26, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s50, v12
	v_cmp_gt_i32_e64 s24, s50, v10
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s72, v86, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s42, v125
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[91:92], null, s47, 28, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s50, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s72, v87, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s42, v126
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[92:93], null, s47, 30, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s50, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s72, v88, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s42, v127
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s5
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s50, v15
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v13, s72, v89, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s5
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s50, v16
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v14, s72, v90, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s5
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s50, v17
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s72, v91, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s71, s47, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s50, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s72, v92, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s69, s47, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s50, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s71, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s67, s47, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s69, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s66, s47, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s50, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s67, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s65, s47, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s50, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s66, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s47, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s50, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s65, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s47, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s50, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s58, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s56, s47, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s50, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s57, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s47, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s50, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s56, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s47, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s50, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s55, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s45, s47, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s50, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s54, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s47, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s50, v27
	v_cmp_gt_i32_e64 s35, s50, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s45, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s52, s47, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s53, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s44, s47, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s52, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s35, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v30, v33, s44, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s33, s5
	s_and_b32 s4, s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s6
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	s_and_b32 s37, s37, 0xffff
	s_clause 0x1f
	buffer_load_u16 v1, v1, s[36:39], 0 offen
	buffer_load_u16 v2, v2, s[36:39], 0 offen
	buffer_load_u16 v3, v3, s[36:39], 0 offen
	buffer_load_u16 v4, v4, s[36:39], 0 offen
	buffer_load_u16 v5, v5, s[36:39], 0 offen
	buffer_load_u16 v6, v6, s[36:39], 0 offen
	buffer_load_u16 v7, v7, s[36:39], 0 offen
	buffer_load_u16 v8, v8, s[36:39], 0 offen
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	buffer_load_u16 v10, v10, s[36:39], 0 offen
	buffer_load_u16 v11, v11, s[36:39], 0 offen
	buffer_load_u16 v13, v13, s[36:39], 0 offen
	buffer_load_u16 v14, v14, s[36:39], 0 offen
	buffer_load_u16 v15, v15, s[36:39], 0 offen
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	buffer_load_u16 v18, v18, s[36:39], 0 offen
	buffer_load_u16 v19, v19, s[36:39], 0 offen
	buffer_load_u16 v21, v21, s[36:39], 0 offen
	buffer_load_u16 v22, v22, s[36:39], 0 offen
	buffer_load_u16 v23, v23, s[36:39], 0 offen
	buffer_load_u16 v25, v25, s[36:39], 0 offen
	buffer_load_u16 v26, v26, s[36:39], 0 offen
	buffer_load_u16 v27, v27, s[36:39], 0 offen
	buffer_load_u16 v29, v29, s[36:39], 0 offen
	buffer_load_u16 v28, v28, s[36:39], 0 offen
	buffer_load_u16 v30, v30, s[36:39], 0 offen
	buffer_load_u16 v12, v12, s[36:39], 0 offen
	buffer_load_u16 v16, v16, s[36:39], 0 offen
	buffer_load_u16 v20, v20, s[36:39], 0 offen
	buffer_load_u16 v24, v24, s[36:39], 0 offen
	buffer_load_u16 v31, v31, s[36:39], 0 offen
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v33, v0, 6, 1
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s68, s59
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s4, s51, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s2, s59
	s_mov_b32 s65, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s2, s2, 27
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v132, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s4, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v133, 0, v34
	v_add_nc_u32_e32 v134, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v135, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s66, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s60, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v132, v1
	s_waitcnt vmcnt(27)
	ds_store_b16 v132, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v132, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v132, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v132, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v132, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v132, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v132, v26 offset:7168
	ds_store_b16 v133, v2
	ds_store_b16 v133, v6 offset:1024
	ds_store_b16 v133, v10 offset:2048
	ds_store_b16 v133, v14 offset:3072
	ds_store_b16 v133, v18 offset:4096
	ds_store_b16 v133, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v133, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v133, v29 offset:7168
	ds_store_b16 v134, v3
	ds_store_b16 v134, v7 offset:1024
	ds_store_b16 v134, v11 offset:2048
	ds_store_b16 v134, v15 offset:3072
	ds_store_b16 v134, v19 offset:4096
	ds_store_b16 v134, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v134, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v134, v30 offset:7168
	ds_store_b16 v135, v4
	ds_store_b16 v135, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v135, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v135, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v135, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v135, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v135, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v135, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s42, s62
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s42, s61
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s63
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s63
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s51, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s4, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s65, s4, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s66, s66, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s41
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v33, 15, v0
	v_and_b32_e32 v34, 0x60, v0
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s41
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s4, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s42, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s51, s2
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
	s_min_i32 s66, s66, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v34
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s60, s[0:1], 0x64
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v109, v0, 4, 1
	v_mov_b32_e32 v8, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s65, s66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v111, v1, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v110, 2, v109
	v_or_b32_e32 v108, 4, v109
	v_or_b32_e32 v107, 6, v109
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v67, s42, v111
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v106, 8, v109
	v_or_b32_e32 v105, 10, v109
	v_or_b32_e32 v104, 12, v109
	v_or_b32_e32 v103, 14, v109
	v_or_b32_e32 v102, 16, v109
	v_or_b32_e32 v101, 18, v109
	v_or_b32_e32 v100, 20, v109
	v_or_b32_e32 v99, 22, v109
	v_or_b32_e32 v97, 24, v109
	v_or_b32_e32 v98, 26, v109
	v_or_b32_e32 v96, 28, v109
	v_or_b32_e32 v95, 30, v109
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s50, v67
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
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_and_b32_e32 v1, 7, v0
	v_lshlrev_b32_e32 v2, 7, v33
	s_xor_b32 s9, s3, s48
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s9, s9, 31
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 4, v1
	v_lshlrev_b32_e32 v3, 6, v34
	v_lshlrev_b32_e32 v13, 1, v0
	s_xor_b32 s10, s40, s9
	s_cvt_u32_f32 s8, s8
	v_mov_b32_e32 v26, v25
	v_or3_b32 v3, v2, v3, v4
	v_mov_b32_e32 v18, v25
	s_sub_i32 s9, s10, s9
	s_sub_i32 s10, 0, s6
	s_mul_i32 s11, s9, s48
	v_xad_u32 v9, v3, 64, 0
	v_xad_u32 v10, 0x50, v3, 0
	v_xad_u32 v11, 0x60, v3, 0
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[53:56], v10
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v9, 16, v0
	v_mov_b32_e32 v10, 0x5410
	v_xad_u32 v6, v3, 16, 0
	v_xad_u32 v7, v3, 32, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v9
	v_add_nc_u32_e32 v5, 0, v3
	v_xad_u32 v8, v3, 48, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[57:60], v11
	ds_load_b128 v[61:64], v3
	v_dual_cndmask_b32 v10, 0x1054, v10 :: v_dual_lshlrev_b32 v11, 3, v0
	v_dual_mov_b32 v32, v25 :: v_dual_mov_b32 v9, 0x7632
	v_and_b32_e32 v12, 64, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_xor_b32_e32 v13, v11, v13
	s_mul_i32 s10, s10, s8
	v_cndmask_b32_e32 v9, 0x3276, v9, vcc_lo
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_lshrrev_b32_e32 v136, 4, v12
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v10, 0x540054, v10
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v14, 6, v65
	v_lshrrev_b32_e32 v12, 3, v12
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v13, 48, v13
	s_sub_i32 s3, s3, s11
	s_mul_hi_u32 s10, s8, s10
	s_abs_i32 s11, s3
	s_add_i32 s8, s8, s10
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[93:94], null, s60, v136, v[65:66]
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	v_lshl_or_b32 v9, v9, 8, v9
	v_bfe_i32 v15, v0, 3, 1
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v11, 48, v11
	v_lshl_or_b32 v10, v10, 4, v10
	v_or3_b32 v94, v14, v12, v13
	s_mul_hi_u32 s8, s11, s8
	s_ashr_i32 s3, s3, 31
	s_ashr_i32 s7, s7, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s10, s8, s6
	s_xor_b32 s3, s3, s7
	s_sub_i32 s7, s11, s10
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v6
	ds_load_b128 v[41:44], v7
	ds_load_b128 v[45:48], v8
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v9, 0x760076, v9
	v_and_b32_e32 v15, 0x210, v15
	v_lshl_or_b32 v1, v1, 6, v11
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v140, 0x5040504, v10
	v_xor_b32_e32 v10, 48, v94
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	v_or_b32_e32 v138, v4, v2
	s_cselect_b32 s1, s10, s8
	v_lshl_or_b32 v9, v9, 4, v9
	v_add_nc_u32_e32 v152, 0, v10
	v_mov_b32_e32 v10, v25
	v_xor_b32_e32 v141, v1, v15
	s_cselect_b32 s7, s11, s7
	s_add_i32 s8, s1, 1
	s_cmp_ge_u32 s7, s6
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v139, s63, v67
	s_cselect_b32 s1, s8, s1
	v_xor_b32_e32 v2, 16, v138
	v_xor_b32_e32 v3, 32, v138
	v_xor_b32_e32 v4, 48, v138
	v_xor_b32_e32 v5, 64, v138
	v_xor_b32_e32 v6, 0x50, v138
	v_xor_b32_e32 v7, 0x60, v138
	v_xor_b32_e32 v8, 0x70, v138
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v142, 0x7060706, v9
	v_xor_b32_e32 v1, 16, v94
	v_xor_b32_e32 v9, 32, v94
	v_xor_b32_e32 v11, 16, v141
	v_xor_b32_e32 v12, 32, v141
	v_xor_b32_e32 v13, 48, v141
	v_xor_b32_e32 v14, 0x420, v141
	v_xor_b32_e32 v15, 0x430, v141
	v_xor_b32_e32 v16, 0x410, v141
	s_xor_b32 s1, s1, s3
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s9, s9, s49
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s1, s3
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s49, s0, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s60, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v137, 2, v136
	v_add_nc_u32_e32 v143, 0, v2
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v144, 0, v3
	v_add_nc_u32_e32 v145, 0, v4
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v146, 0, v5
	v_add_nc_u32_e32 v147, 0, v6
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v148, 0, v7
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v149, 0, v8
	v_add_nc_u32_e32 v150, 0, v1
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v151, 0, v9
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v153, 0, v11
	v_add_nc_u32_e32 v154, 0, v12
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v155, 0, v13
	v_add_nc_u32_e32 v156, 0, v14
	v_dual_mov_b32 v174, v25 :: v_dual_add_nc_u32 v157, 0, v15
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v158, 0, v16
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v7, v25
	v_or_b32_e32 v159, 3, v136
	v_or_b32_e32 v160, 8, v136
	v_or_b32_e32 v161, 9, v136
	v_or_b32_e32 v162, 10, v136
	v_or_b32_e32 v163, 11, v136
	v_or_b32_e32 v164, 16, v136
	v_or_b32_e32 v165, 17, v136
	v_or_b32_e32 v166, 18, v136
	v_or_b32_e32 v167, 19, v136
	v_or_b32_e32 v168, 24, v136
	v_or_b32_e32 v169, 25, v136
	v_or_b32_e32 v170, 26, v136
	v_or_b32_e32 v171, 27, v136
	v_subrev_nc_u32_e32 v172, s61, v139
	v_add_nc_u32_e32 v173, s62, v139
	v_mov_b32_e32 v175, 0xff800000
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s48, s1, s9
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_mov_b32 s36, 0
	.loc	1 852 32 is_stmt 0              ; attention.py:852:32
	s_mul_i32 s48, s48, s51
	s_and_b32 s53, s53, 0xffff
	s_lshl_b32 s50, s60, 1
	s_mul_i32 s63, s60, 3
	s_lshl_b32 s67, s60, 3
	s_mul_i32 s68, s60, 9
	s_mul_i32 s69, s60, 10
	s_mul_i32 s70, s60, 11
	s_lshl_b32 s71, s60, 4
	s_mul_i32 s72, s60, 17
	s_mul_i32 s73, s60, 18
	s_mul_i32 s74, s60, 19
	s_mul_i32 s75, s60, 24
	s_mul_i32 s76, s60, 25
	s_mul_i32 s77, s60, 26
	s_mul_i32 s78, s60, 27
	s_and_b32 s57, s55, 0xffff
	s_mov_b32 s56, s54
	s_mov_b32 s54, s58
	s_mov_b32 s55, s59
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s61, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_or_b32_e32 v176, 1, v136
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v178, s65, v136
	v_or_b32_e32 v179, s65, v137
	v_or_b32_e32 v180, s65, v159
	v_or_b32_e32 v181, s65, v160
	v_or_b32_e32 v182, s65, v176
	v_mad_u64_u32 v[176:177], null, s86, s60, v[93:94]
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s51, v178
	v_cmp_gt_i32_e64 s3, s51, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s1, s51, v182
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v183, s65, v161
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s51, v180
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v178, v176, s60, 1
	v_lshlrev_b32_e32 v177, 1, v176
	v_add_lshl_u32 v179, v176, s63, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v184, s65, v162
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s51, v181
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v185, s65, v163
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v180, 0x80000000, v177, vcc_lo
	v_add_lshl_u32 v177, v176, s50, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s51, v183
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v178, 0x80000000, v178, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v181, v176, s67, 1
	v_cndmask_b32_e32 v182, 0x80000000, v177, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s6
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v186, s65, v164
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s51, v184
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v177, 0x80000000, v179, vcc_lo
	v_add_lshl_u32 v179, v176, s68, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v187, s65, v165
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s7
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s51, v185
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v183, v176, s69, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v188, s65, v166
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v184, v176, s70, 1
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s8
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s51, v186
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v189, s65, v167
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v179, 0x80000000, v179, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s9
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s51, v187
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v185, v176, s71, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v190, s65, v168
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v186, v176, s72, 1
	v_cndmask_b32_e32 v183, 0x80000000, v183, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s10
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s51, v188
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v191, s65, v169
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v184, 0x80000000, v184, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s11
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s51, v189
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v187, v176, s73, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v193, s65, v171
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v188, v176, s74, 1
	v_cndmask_b32_e32 v185, 0x80000000, v185, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s12
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s51, v190
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v192, s65, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v186, 0x80000000, v186, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s13
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s51, v191
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v189, v176, s75, 1
	v_add_lshl_u32 v190, v176, s76, 1
	v_cndmask_b32_e32 v187, 0x80000000, v187, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s14
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s51, v193
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v188, 0x80000000, v188, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s15
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s51, v192
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v191, v176, s78, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s49, v73 :: v_dual_mul_f32 v74, s49, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v176, v176, s77, 1
	v_cndmask_b32_e32 v189, 0x80000000, v189, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s16
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s49, v75 :: v_dual_mul_f32 v76, s49, v76
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v190, 0x80000000, v190, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s18
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v74, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v191, 0x80000000, v191, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s17
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v77, s49, v77 :: v_dual_mul_f32 v78, s49, v78
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v192, 0x80000000, v176, vcc_lo
	s_clause 0xf
	buffer_load_u16 v193, v178, s[56:59], 0 offen
	buffer_load_u16 v194, v177, s[56:59], 0 offen
	buffer_load_u16 v195, v179, s[56:59], 0 offen
	buffer_load_u16 v184, v184, s[56:59], 0 offen
	buffer_load_u16 v177, v183, s[56:59], 0 offen
	buffer_load_u16 v176, v181, s[56:59], 0 offen
	buffer_load_u16 v179, v182, s[56:59], 0 offen
	buffer_load_u16 v178, v180, s[56:59], 0 offen
	buffer_load_u16 v188, v188, s[56:59], 0 offen
	buffer_load_u16 v186, v186, s[56:59], 0 offen
	buffer_load_u16 v191, v191, s[56:59], 0 offen
	buffer_load_u16 v190, v190, s[56:59], 0 offen
	buffer_load_u16 v181, v192, s[56:59], 0 offen
	buffer_load_u16 v180, v189, s[56:59], 0 offen
	buffer_load_u16 v183, v187, s[56:59], 0 offen
	buffer_load_u16 v182, v185, s[56:59], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s49, v65 :: v_dual_mul_f32 v66, s49, v66
	v_dual_mul_f32 v67, s49, v67 :: v_dual_mul_f32 v68, s49, v68
	v_dual_mul_f32 v69, s49, v69 :: v_dual_mul_f32 v70, s49, v70
	v_dual_mul_f32 v71, s49, v71 :: v_dual_mul_f32 v72, s49, v72
	v_dual_mul_f32 v79, s49, v79 :: v_dual_mul_f32 v80, s49, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s94
	v_cndmask_b32_e64 v76, 0xff800000, v76, s91
	v_cndmask_b32_e64 v77, 0xff800000, v77, s90
	v_cndmask_b32_e64 v78, 0xff800000, v78, s89
	v_cndmask_b32_e64 v66, 0xff800000, v66, s84
	v_cndmask_b32_e64 v187, 0xff800000, v67, s83
	v_cndmask_b32_e64 v68, 0xff800000, v68, s82
	v_cndmask_b32_e64 v69, 0xff800000, v69, s81
	v_cndmask_b32_e64 v70, 0xff800000, v70, s80
	v_cndmask_b32_e64 v71, 0xff800000, v71, s79
	v_cndmask_b32_e64 v75, 0xff800000, v75, s92
	v_cndmask_b32_e64 v79, 0xff800000, v79, s88
	v_cndmask_b32_e64 v80, 0xff800000, v80, s87
	v_cndmask_b32_e64 v185, 0xff800000, v65, s85
	v_cndmask_b32_e64 v72, 0xff800000, v72, s62
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v73, v74
	v_max3_f32 v67, v76, v77, v78
	v_max3_f32 v189, v66, v187, v68
	v_max3_f32 v192, v69, v70, v71
	v_max3_f32 v196, v79, v80, v185
.Ltmp2:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v175
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v75, v67
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v189, v192, v72
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s65, s65, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s65, s66
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v196, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v67, v65, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v65, v175, v65, v67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v65
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v175, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v185, v65
	v_sub_f32_e32 v185, v187, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v187.h, 0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v189.h, v187.h
	v_mov_b16_e64 v196.h, v187.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s93
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v187.l, v74.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s91
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v192, 1, v187
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v187.l, v76.h
	v_add3_u32 v192, v74, v192, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v65
	v_sub_f32_e32 v75, v75, v65
	v_sub_f32_e32 v77, v77, v65
	v_dual_sub_f32 v78, v78, v65 :: v_dual_mul_f32 v25, v25, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v71, v71, v65 :: v_dual_mul_f32 v10, v10, v67
	v_dual_sub_f32 v79, v79, v65 :: v_dual_mul_f32 v18, v18, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v71, v71
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s94
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s92
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v80, v80, v65 :: v_dual_mul_f32 v27, v27, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v189.l, v73.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_mov_b16_e64 v196.l, v75.h
	v_and_b32_e32 v189, 1, v189
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v67
	v_mul_f32_e32 v14, v14, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v189, v73, v189, 0x7fff
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v74
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.h, 0x7fff, v192.h, vcc_lo
	v_and_b32_e32 v192, 1, v196
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s90
	v_cndmask_b32_e64 v78, 0, v78, s89
	v_cndmask_b32_e64 v71, 0, v71, s79
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v196, 1, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v66, v66, v65 :: v_dual_mul_f32 v29, v29, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v189.h, s1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v189, v75, v76
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v196, v76, v196, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_mov_b16_e32 v76.l, v77.h
	v_mov_b16_e64 v76.h, v187.h
	v_mov_b16_e64 v187.l, v78.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s88
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v68, v68, v65 :: v_dual_mul_f32 v31, v31, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v23, v23, v67 :: v_dual_and_b32 v76, 1, v76
	v_dual_mul_f32 v2, v2, v67 :: v_dual_add_f32 v73, v73, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v192, v75, v192, 0x7fff
	v_cmp_o_f32_e64 s1, v75, v75
	v_cndmask_b16 v75.h, 0x7fff, v196.h, vcc_lo
	v_and_b32_e32 v189, 1, v187
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s87
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.l, v79.h
	v_mov_b16_e64 v196.h, v187.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v67
	v_mul_f32_e32 v11, v11, v67
	v_mul_f32_e32 v4, v4, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v192.h, s1
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v192, v77, v78
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v76, v77, v76, 0x7fff
	v_add3_u32 v189, v78, v189, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_mov_b16_e64 v187.l, v80.h
	v_cmp_o_f32_e64 s1, v77, v77
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v79, v80
.Ltmp17:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v13, v13, v67 :: v_dual_and_b32 v78, 1, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v196, 1, v187
	v_cndmask_b16 v189.l, 0x7fff, v76.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v192, v77
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v79, v78, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v175, s85
	v_cndmask_b32_e64 v66, 0, v66, s84
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v69, v69, v65 :: v_dual_mul_f32 v24, v24, v67
	v_dual_sub_f32 v70, v70, v65 :: v_dual_mul_f32 v17, v17, v67
	v_dual_sub_f32 v72, v72, v65 :: v_dual_mul_f32 v19, v19, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v189.h, 0x7fff, v189.h, vcc_lo
	v_add3_u32 v175, v80, v196, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_cmp_o_f32_e64 s1, v79, v79
	v_mov_b16_e32 v79.l, v78.h
	v_mov_b16_e64 v79.h, v187.h
	v_mov_b16_e64 v187.l, v66.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v185, s83
	v_cndmask_b32_e64 v68, 0, v68, s82
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v67 :: v_dual_add_f32 v73, v73, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.l, 0x7fff, v77.h, s1
	v_and_b32_e32 v77, 1, v79
	v_and_b32_e32 v79, 1, v187
	v_mov_b16_e64 v185.l, v80.h
	v_mov_b16_e64 v185.h, v187.h
	v_mov_b16_e64 v187.l, v68.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v67
	v_mul_f32_e32 v8, v8, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.h, 0x7fff, v175.h, vcc_lo
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v175, v78, v66
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v78, v77, 0x7fff
	v_add3_u32 v79, v66, v79, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s1, v78, v78
	v_and_b32_e32 v78, 1, v185
	v_and_b32_e32 v185, 1, v187
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v15, v15, v67 :: v_dual_add_f32 v66, v80, v68
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.h, 0x7fff, v79.h, vcc_lo
	v_cndmask_b16 v79.l, 0x7fff, v77.h, s1
	v_add3_u32 v77, v80, v78, 0x7fff
	v_add3_u32 v78, v68, v185, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s80
	v_cndmask_b32_e64 v69, 0, v69, s81
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v72, s62
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v67
	v_dual_mul_f32 v5, v5, v67 :: v_dual_add_f32 v66, v175, v66
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v72, v69, v70 :: v_dual_add_f32 v175, v71, v68
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v80, v80
	v_mov_b16_e32 v80.l, v69.h
	v_mov_b16_e64 v80.h, v187.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v67
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v175
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v175.l, v71.h
	v_mov_b16_e64 v175.h, v187.h
	v_mov_b16_e64 v187.l, v70.h
	v_and_b32_e32 v80, 1, v80
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v72
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v77.h, s1
	v_and_b32_e32 v72, 1, v175
	v_and_b32_e32 v77, 1, v187
	v_mov_b16_e64 v187.l, v68.h
	v_add3_u32 v80, v69, v80, 0x7fff
	v_cmp_o_f32_e64 s1, v69, v69
	v_add3_u32 v69, v71, v72, 0x7fff
	v_cmp_o_f32_e64 s6, v71, v71
	v_and_b32_e32 v175, 1, v187
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	v_add3_u32 v77, v70, v77, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cndmask_b16 v246.l, 0x7fff, v69.h, s6
	v_permlanex16_b32 v69, v74, s61, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v70, v68, v175, 0x7fff
	v_cmp_o_f32_e64 s3, v68, v68
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v73, v66
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v73, v189, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v69, v74, v140
	v_perm_b32 v69, v69, v74, v142
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v74, 0, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v77.h, 0x7fff, v77.h, vcc_lo
	v_perm_b32 v72, v73, v189, v140
	v_perm_b32 v73, v73, v189, v142
	v_cndmask_b16 v77.l, 0x7fff, v80.h, s1
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v80, v66, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v246.h, 0x7fff, v70.h, s3
	v_permlanex16_b32 v71, v75, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v239, v76, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v240, v79, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v242, v78, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v244, v77, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v247, v246, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v71, v75, v140
	v_perm_b32 v71, v71, v75, v142
	v_perm_b32 v75, v239, v76, v142
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v80
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v241, v242, v78, v140
	v_perm_b32 v242, v242, v78, v142
	v_perm_b32 v243, v244, v77, v140
	v_perm_b32 v244, v244, v77, v142
	v_perm_b32 v245, v247, v246, v140
	v_perm_b32 v246, v247, v246, v142
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v66, v174, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v174, v66
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v178.h, v193.l
	v_mov_b16_e64 v179.h, v194.l
	v_mov_b16_e64 v176.h, v195.l
	v_mov_b16_e64 v177.h, v184.l
	ds_store_b64 v74, v[178:179]
	ds_store_b64 v150, v[176:177]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v183.h, v188.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v182.h, v186.l
	v_add_nc_u32_e32 v74, 0, v141
	v_mov_b16_e64 v181.h, v191.l
	v_mov_b16_e64 v180.h, v190.l
	ds_store_b64 v151, v[182:183]
	ds_store_b64 v152, v[180:181]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[175:178], v74
	ds_load_b128 v[183:186], v74 offset:2048
	ds_load_b128 v[179:182], v153
	ds_load_b128 v[187:190], v153 offset:2048
	ds_load_b128 v[191:194], v154
	ds_load_b128 v[199:202], v154 offset:2048
	ds_load_b128 v[207:210], v156
	ds_load_b128 v[215:218], v156 offset:2048
	ds_load_b128 v[211:214], v157
	ds_load_b128 v[219:222], v157 offset:2048
	ds_load_b128 v[195:198], v155
	ds_load_b128 v[203:206], v155 offset:2048
	ds_load_b128 v[223:226], v74 offset:1024
	ds_load_b128 v[227:230], v158
	ds_load_b128 v[231:234], v74 offset:3072
	ds_load_b128 v[235:238], v158 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v74, v239, v76, v140
	v_perm_b32 v239, v240, v79, v140
	v_perm_b32 v240, v240, v79, v142
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[175:182], v[68:75], v[25:32]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[183:190], v[68:75], v[9:16]
	v_mov_b32_e32 v175, v65
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[207:214], v[68:75], v[17:24]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[215:222], v[68:75], v[1:8]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[191:198], v[239:246], v[25:32]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[199:206], v[239:246], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[223:230], v[239:246], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[231:238], v[239:246], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s65, v112
	v_or_b32_e32 v66, s65, v113
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s86, s65, s48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s65, v114
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s19, s86, s47
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s51, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s65, v115
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s51, v66
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s19, v81, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s65, v116
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s51, v67
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s19, v128, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s65, v117
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s51, v68
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v67, s19, v129, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s65, v118
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s1
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s51, v69
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v68, s19, v82, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s65, v119
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s3
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s51, v70
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v69, s19, v130, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v73, s65, v120
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s6
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s51, v71
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v70, s19, v83, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v74, s65, v121
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s7
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s51, v72
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v71, s19, v84, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v75, s65, v122
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s8
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s51, v73
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v72, s19, v85, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v77, s65, v124
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s9
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s51, v74
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v73, s19, v131, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v76, s65, v123
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s10
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s51, v75
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v74, s19, v86, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v78, s65, v125
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s11
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s51, v77
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v75, s19, v87, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, s65, v126
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s12
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s51, v76
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v76, s19, v89, 1
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s13
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v80, s65, v127
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s51, v78
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v77, s19, v88, 1
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s15
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s51, v79
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v78, s19, v90, 1
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s14
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v79, s19, v91, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s51, v80
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s16
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v80, s19, v92, 1
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s17
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
	s_and_b32 vcc_lo, s5, s18
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
	v_dual_mov_b32 v199, s43 :: v_dual_add_nc_u32 v200, 0, v138
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v198, s42 :: v_dual_mov_b32 v197, s41
	v_dual_mov_b32 v196, s40 :: v_dual_mov_b32 v195, s39
	v_dual_mov_b32 v194, s38 :: v_dual_mov_b32 v193, s37
	v_mov_b32_e32 v192, s36
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v176, s65, v109
	v_or_b32_e32 v177, s65, v110
	v_or_b32_e32 v178, s65, v108
	v_or_b32_e32 v179, s65, v107
	v_or_b32_e32 v180, s65, v106
	v_or_b32_e32 v181, s65, v105
	v_or_b32_e32 v182, s65, v104
	v_or_b32_e32 v183, s65, v103
	v_or_b32_e32 v184, s65, v102
	v_or_b32_e32 v185, s65, v101
	v_or_b32_e32 v186, s65, v100
	v_or_b32_e32 v187, s65, v99
	v_or_b32_e32 v188, s65, v97
	v_or_b32_e32 v189, s65, v98
	v_or_b32_e32 v190, s65, v96
	v_or_b32_e32 v191, s65, v95
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s51, v177
	v_cmp_gt_i32_e64 s1, s51, v176
	v_cmp_gt_i32_e64 s3, s51, v179
	v_cmp_gt_i32_e64 s6, s51, v178
	v_cmp_gt_i32_e64 s7, s51, v181
	v_cmp_gt_i32_e64 s8, s51, v180
	v_cmp_gt_i32_e64 s9, s51, v183
	v_cmp_gt_i32_e64 s10, s51, v182
	v_cmp_gt_i32_e64 s11, s51, v185
	v_cmp_gt_i32_e64 s12, s51, v184
	v_cmp_gt_i32_e64 s13, s51, v187
	v_cmp_gt_i32_e64 s14, s51, v186
	v_cmp_gt_i32_e64 s15, s51, v189
	v_cmp_gt_i32_e64 s16, s51, v188
	v_cmp_gt_i32_e64 s17, s51, v191
	v_cmp_gt_i32_e64 s18, s51, v190
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s94, s2, s1
	s_and_b32 s93, s2, vcc_lo
	s_and_b32 s92, s2, s6
	s_and_b32 s91, s2, s3
	s_and_b32 s90, s2, s8
	s_and_b32 s89, s2, s7
	s_and_b32 s88, s2, s10
	s_and_b32 s87, s2, s9
	s_and_b32 s85, s2, s12
	s_and_b32 s84, s2, s11
	s_and_b32 s83, s2, s14
	s_and_b32 s82, s2, s13
	s_and_b32 s81, s2, s16
	s_and_b32 s80, s2, s15
	s_and_b32 s79, s2, s18
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s62, s2, s17
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(15)
	ds_store_b16 v132, v65
	s_waitcnt vmcnt(12)
	ds_store_b16 v132, v69 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v132, v73 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v132, v76 offset:3072
	ds_store_b16 v133, v66
	ds_store_b16 v133, v70 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v133, v74 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v133, v78 offset:3072
	ds_store_b16 v134, v67
	ds_store_b16 v134, v71 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v134, v75 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v134, v79 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v135, v68
	ds_store_b16 v135, v72 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v135, v77 offset:2048
	ds_store_b16 v135, v80 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v143
	ds_load_b128 v[65:68], v200
	ds_load_b128 v[200:203], v200 offset:2048
	ds_load_b128 v[204:207], v143 offset:2048
	ds_load_b128 v[208:211], v144
	ds_load_b128 v[216:219], v144 offset:2048
	ds_load_b128 v[212:215], v145
	ds_load_b128 v[220:223], v145 offset:2048
	ds_load_b128 v[224:227], v146
	ds_load_b128 v[232:235], v146 offset:2048
	ds_load_b128 v[228:231], v147
	ds_load_b128 v[236:239], v147 offset:2048
	ds_load_b128 v[240:243], v148
	ds_load_b128 v[248:251], v148 offset:2048
	ds_load_b128 v[244:247], v149
	ds_load_b128 v[252:255], v149 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[33:40], v[192:199]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[200:207], v[33:40], v[192:199]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[208:215], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[216:223], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[224:231], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[232:239], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[240:247], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[248:255], v[57:64], v[65:72]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v176, v139
	v_cmp_le_i32_e64 s1, v177, v139
	v_cmp_le_i32_e64 s3, v178, v139
	v_cmp_le_i32_e64 s6, v179, v139
	v_cmp_le_i32_e64 s7, v180, v139
	v_cmp_le_i32_e64 s8, v181, v139
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s19, vcc_lo, s94
	s_and_b32 s1, s1, s93
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v182, v139
	v_cmp_le_i32_e64 s10, v183, v139
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s92
	s_and_b32 s6, s6, s91
	s_and_not1_b32 s20, s94, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s93, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v184, v139
	v_cmp_le_i32_e64 s12, v185, v139
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s90
	s_and_b32 s8, s8, s89
	s_or_b32 s94, s20, s19
	s_or_b32 s93, s21, s1
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s19, s91, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v186, v139
	v_cmp_le_i32_e64 s14, v187, v139
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s88
	s_and_b32 s10, s10, s87
	s_or_b32 s92, s1, s3
	s_or_b32 s91, s19, s6
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v188, v139
	v_cmp_le_i32_e64 s16, v189, v139
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s85
	s_and_b32 s12, s12, s84
	s_or_b32 s90, s1, s3
	s_or_b32 s89, s6, s7
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s87, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v190, v139
	v_cmp_le_i32_e64 s18, v191, v139
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s83
	s_and_b32 s14, s14, s82
	s_or_b32 s88, s1, s3
	s_or_b32 s87, s6, s7
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s12, exec_lo
	s_and_b32 s15, s15, s81
	s_and_b32 s16, s16, s80
	s_or_b32 s85, s1, s3
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s13, exec_lo
	s_and_not1_b32 s6, s82, exec_lo
	s_and_b32 s7, s14, exec_lo
	s_and_b32 s17, s17, s79
	s_and_b32 s18, s18, s62
	s_or_b32 s83, s1, s3
	s_or_b32 s82, s6, s7
	s_and_not1_b32 s1, s81, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s6, s80, exec_lo
	s_and_b32 s7, s16, exec_lo
	s_or_b32 s81, s1, s3
	s_or_b32 s80, s6, s7
	s_and_not1_b32 s1, s79, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s18, exec_lo
	s_or_b32 s79, s1, s3
	s_or_b32 s62, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s64
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v176, v172
	v_cmp_ge_i32_e64 s1, v177, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v176, v173
	v_cmp_le_i32_e64 s20, v177, v173
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v178, v172
	v_cmp_ge_i32_e64 s6, v179, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v178, v173
	v_cmp_le_i32_e64 s22, v179, v173
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v180, v172
	v_cmp_ge_i32_e64 s8, v181, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v180, v173
	v_cmp_le_i32_e64 s24, v181, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s1, s1, s20
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v182, v172
	v_cmp_ge_i32_e64 s10, v183, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v182, v173
	v_cmp_le_i32_e64 s26, v183, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, s19, s94
	s_and_b32 s1, s1, s93
	s_and_b32 s3, s3, s21
	s_and_b32 s6, s6, s22
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v184, v172
	v_cmp_ge_i32_e64 s12, v185, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v184, v173
	v_cmp_le_i32_e64 s28, v185, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s92
	s_and_b32 s6, s6, s91
	s_and_b32 s7, s7, s23
	s_and_b32 s8, s8, s24
	s_and_not1_b32 s20, s94, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s93, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v186, v172
	v_cmp_ge_i32_e64 s14, v187, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v186, v173
	v_cmp_le_i32_e64 s30, v187, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s7, s7, s90
	s_and_b32 s8, s8, s89
	s_and_b32 s9, s9, s25
	s_and_b32 s10, s10, s26
	s_or_b32 s94, s20, s19
	s_or_b32 s93, s21, s1
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s19, s91, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v188, v172
	v_cmp_ge_i32_e64 s16, v189, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v188, v173
	v_cmp_le_i32_e64 s33, v189, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, s9, s88
	s_and_b32 s10, s10, s87
	s_and_b32 s11, s11, s27
	s_and_b32 s12, s12, s28
	s_or_b32 s92, s1, s3
	s_or_b32 s91, s19, s6
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v190, v172
	v_cmp_ge_i32_e64 s18, v191, v172
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v190, v173
	v_cmp_le_i32_e64 s35, v191, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s11, s11, s85
	s_and_b32 s12, s12, s84
	s_and_b32 s13, s13, s29
	s_and_b32 s14, s14, s30
	s_or_b32 s90, s1, s3
	s_or_b32 s89, s6, s7
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s87, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_and_b32 s13, s13, s83
	s_and_b32 s14, s14, s82
	s_and_b32 s15, s15, s31
	s_and_b32 s16, s16, s33
	s_or_b32 s88, s1, s3
	s_or_b32 s87, s6, s7
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s12, exec_lo
	s_and_b32 s15, s15, s81
	s_and_b32 s16, s16, s80
	s_and_b32 s17, s17, s34
	s_and_b32 s18, s18, s35
	s_or_b32 s85, s1, s3
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s13, exec_lo
	s_and_not1_b32 s6, s82, exec_lo
	s_and_b32 s7, s14, exec_lo
	s_and_b32 s17, s17, s79
	s_and_b32 s18, s18, s62
	s_or_b32 s83, s1, s3
	s_or_b32 s82, s6, s7
	s_and_not1_b32 s1, s81, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s6, s80, exec_lo
	s_and_b32 s7, s16, exec_lo
	s_or_b32 s81, s1, s3
	s_or_b32 s80, s6, s7
	s_and_not1_b32 s1, s79, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s18, exec_lo
	s_or_b32 s79, s1, s3
	s_or_b32 s62, s6, s7
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow113
	.loc	1 0 21                          ; attention.py:0:21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v48, null, v66, v66, v25
	v_div_scale_f32 v50, null, v66, v66, v26
	v_div_scale_f32 v53, null, v66, v66, v27
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v50
	v_div_scale_f32 v52, vcc_lo, v25, v66, v25
	v_rcp_f32_e32 v56, v53
	v_div_scale_f32 v55, s0, v26, v66, v26
	v_div_scale_f32 v57, null, v66, v66, v28
	v_div_scale_f32 v62, null, v66, v66, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v48, v49, 1.0
	v_fma_f32 v44, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v57
	v_fma_f32 v60, -v53, v56, 1.0
	v_div_scale_f32 v64, null, v66, v66, v18
	v_fmac_f32_e32 v49, v42, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s45, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v60, v56
	v_fmac_f32_e32 v51, v44, v51
	v_div_scale_f32 v60, s1, v27, v66, v27
	v_mul_f32_e32 v54, v52, v49
	v_fma_f32 v61, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v55, v51
	s_mov_b32 s47, 0x31027000
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s60, v106
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v48, v54, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s60, v105
	v_cmp_gt_i32_e64 s8, s60, v104
	v_cmp_gt_i32_e64 s9, s60, v103
	v_cmp_gt_i32_e64 s10, s60, v102
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v46, v49
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s60, v101
	v_cmp_gt_i32_e64 s12, s60, v100
	v_cmp_gt_i32_e64 s13, s60, v99
	v_cmp_gt_i32_e64 s14, s60, v97
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v48, v54, v52
	v_fma_f32 v52, -v50, v59, v55
	v_fmac_f32_e32 v58, v61, v58
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s60, v98
	v_cmp_gt_i32_e64 s16, s60, v96
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v48, v48, v49, v54
	v_fmac_f32_e32 v59, v52, v51
	v_div_scale_f32 v52, null, v66, v66, v29
	v_div_scale_f32 v54, s3, v28, v66, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v48, v66, v25
	v_fma_f32 v48, -v50, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v52
	v_mul_f32_e32 v61, v54, v58
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v66
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v48, v48, v51, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v51, -v57, v61, v54
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v47, 32, v109
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v26, v48, v66, v26
	v_fma_f32 v59, -v52, v55, 1.0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v46, 34, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s60, v95
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v45, 36, v109
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v55, v59, v55
	v_fmac_f32_e32 v61, v51, v58
	v_div_scale_f32 v51, s4, v29, v66, v29
	v_mul_f32_e32 v49, v60, v56
	v_div_scale_f32 v59, null, v66, v66, v31
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s60, v47
	v_cmp_gt_i32_e64 s19, s60, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v53, v49, v60
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s60, v45
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v44, 38, v109
	v_or_b32_e32 v43, 40, v109
	v_or_b32_e32 v42, 42, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v50, v56
	v_rcp_f32_e32 v50, v62
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s60, v44
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v41, 44, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s60, v43
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v53, v49, v60
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s60, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v40, 46, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s60, v41
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v39, 48, v109
	v_or_b32_e32 v38, 50, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v62, v50, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s60, v40
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v37, 52, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s60, v39
	v_cmp_gt_i32_e64 s27, s60, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v53, v50
	v_div_fmas_f32 v48, v48, v56, v49
	v_div_scale_f32 v56, s1, v30, v66, v30
	v_fma_f32 v49, -v57, v61, v54
	v_rcp_f32_e32 v53, v59
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v56, v50
	v_mul_f32_e32 v54, v51, v55
	v_div_fmas_f32 v49, v49, v58, v61
	v_div_scale_f32 v57, null, v66, v66, v32
	v_div_fixup_f32 v27, v48, v66, v27
	v_fma_f32 v58, -v52, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v28, v49, v66, v28
	v_fma_f32 v61, -v59, v53, 1.0
	v_rcp_f32_e32 v63, v57
	v_fma_f32 v48, -v62, v60, v56
	v_fmac_f32_e32 v54, v58, v55
	v_div_scale_f32 v58, null, v66, v66, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v61, v53 :: v_dual_fmac_f32 v60, v48, v50
	v_div_scale_f32 v49, s3, v31, v66, v31
	v_fma_f32 v51, -v52, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v58
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v48, v49, v53
	v_fma_f32 v61, -v57, v63, 1.0
	v_div_fmas_f32 v51, v51, v55, v54
	v_fma_f32 v54, -v62, v60, v56
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v55, -v59, v48, v49
	v_fmac_f32_e32 v63, v61, v63
	v_div_scale_f32 v61, s5, v32, v66, v32
	v_fma_f32 v62, -v58, v52, 1.0
	v_div_fmas_f32 v50, v54, v50, v60
	v_fmac_f32_e32 v48, v55, v53
	v_div_scale_f32 v60, s1, v17, v66, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v62, v52
	v_div_fixup_f32 v30, v50, v66, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v59, v48, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v59, null, v66, v66, v20
	v_mul_f32_e32 v50, v60, v52
	v_div_fmas_f32 v48, v49, v53, v48
	v_rcp_f32_e32 v54, v64
	v_div_fixup_f32 v29, v51, v66, v29
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v53, -v58, v50, v60
	v_div_fixup_f32 v31, v48, v66, v31
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v53, v52
	v_rcp_f32_e32 v53, v59
	v_fma_f32 v51, -v64, v54, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v58, v50, v60
	v_div_scale_f32 v58, s4, v19, v66, v19
	v_fmac_f32_e32 v54, v51, v54
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s60, v37
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v60, -v59, v53, 1.0
	v_mul_f32_e32 v56, v61, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 54, v109
	v_or_b32_e32 v35, 56, v109
	v_or_b32_e32 v33, 60, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v60, v53
	v_fma_f32 v55, -v57, v56, v61
	v_div_scale_f32 v60, null, v66, v66, v22
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 58, v109
	v_or_b32_e32 v0, 62, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v55, v63
	v_div_scale_f32 v55, null, v66, v66, v19
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s60, v36
	v_cmp_gt_i32_e64 s30, s60, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v57, v56, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v55
	v_div_scale_f32 v57, s3, v18, v66, v18
	v_div_fmas_f32 v49, v49, v63, v56
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v56, v57, v54
	v_rcp_f32_e32 v63, v60
	v_div_fixup_f32 v32, v49, v66, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v55, v51, 1.0
	v_fma_f32 v49, -v64, v56, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v61, v51
	v_div_scale_f32 v61, null, v66, v66, v21
	v_div_fmas_f32 v48, v48, v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v49, v54 :: v_dual_mul_f32 v49, v58, v51
	v_rcp_f32_e32 v50, v61
	v_div_scale_f32 v52, s1, v20, v66, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v48, v66, v17
	v_fma_f32 v48, -v64, v56, v57
	v_fma_f32 v57, -v55, v49, v58
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v61, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v49, v57, v51
	v_fma_f32 v57, -v60, v63, 1.0
	v_mul_f32_e32 v62, v52, v53
	v_div_fmas_f32 v48, v48, v54, v56
	v_fmac_f32_e32 v50, v64, v50
	v_div_scale_f32 v56, s3, v21, v66, v21
	v_fmac_f32_e32 v63, v57, v63
	v_fma_f32 v54, -v59, v62, v52
	v_div_fixup_f32 v18, v48, v66, v18
	v_fma_f32 v48, -v55, v49, v58
	v_div_scale_f32 v57, null, v66, v66, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v62, v54, v53
	v_mul_f32_e32 v54, v56, v50
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v55, s5, v22, v66, v22
	v_div_fmas_f32 v48, v48, v51, v49
	v_fma_f32 v49, -v59, v62, v52
	v_fma_f32 v51, -v61, v54, v56
	v_rcp_f32_e32 v52, v57
	v_div_scale_f32 v59, null, v66, v66, v24
	v_mul_f32_e32 v58, v55, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v51, v50
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v51, v59
	v_div_fmas_f32 v49, v49, v53, v62
	v_fma_f32 v53, -v60, v58, v55
	v_div_fixup_f32 v19, v48, v66, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v62, -v57, v52, 1.0
	v_fma_f32 v48, -v61, v54, v56
	v_div_fixup_f32 v20, v49, v66, v20
	v_fmac_f32_e32 v58, v53, v63
	v_div_scale_f32 v49, s1, v23, v66, v23
	v_fmac_f32_e32 v52, v62, v52
	v_fma_f32 v53, -v59, v51, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v61, null, v66, v66, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v53, v51
	v_div_fmas_f32 v48, v48, v50, v54
	v_fma_f32 v50, -v60, v58, v55
	v_mul_f32_e32 v54, v49, v52
	v_div_scale_f32 v53, null, v66, v66, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v55, s3, v24, v66, v24
	v_div_fmas_f32 v50, v50, v63, v58
	v_rcp_f32_e32 v56, v53
	v_fma_f32 v58, -v57, v54, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v60, v55, v51
	v_div_fixup_f32 v21, v48, v66, v21
	v_div_fixup_f32 v22, v50, v66, v22
	v_rcp_f32_e32 v50, v61
	v_fmac_f32_e32 v54, v58, v52
	v_fma_f32 v48, -v59, v60, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v63, null, v66, v66, v12
	v_fma_f32 v58, -v53, v56, 1.0
	v_fma_f32 v49, -v57, v54, v49
	v_div_scale_f32 v57, null, v66, v66, v11
	v_fmac_f32_e32 v60, v48, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v58, v56
	v_fma_f32 v62, -v61, v50, 1.0
	v_rcp_f32_e32 v58, v57
	v_div_fmas_f32 v49, v49, v52, v54
	v_fma_f32 v52, -v59, v60, v55
	v_div_scale_f32 v55, s1, v10, v66, v10
	v_fmac_f32_e32 v50, v62, v50
	v_div_scale_f32 v48, s4, v9, v66, v9
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v65, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v59, -v57, v58, 1.0
	v_mul_f32_e32 v64, v55, v50
	v_mul_f32_e32 v54, v48, v56
	v_div_fmas_f32 v51, v52, v51, v60
	v_div_fixup_f32 v23, v49, v66, v23
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, s5, v11, v66, v11
	v_fma_f32 v52, -v61, v64, v55
	v_fma_f32 v62, -v53, v54, v48
	v_div_fixup_f32 v24, v51, v66, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v59, v58
	v_fma_f32 v51, -v63, v65, 1.0
	v_fmac_f32_e32 v64, v52, v50
	v_div_scale_f32 v52, null, v66, v66, v13
	v_fma_f32 v49, -v57, v60, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v62, v56 :: v_dual_fmac_f32 v65, v51, v65
	v_div_scale_f32 v51, s3, v12, v66, v12
	v_fmac_f32_e32 v60, v49, v58
	v_rcp_f32_e32 v49, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v53, v54, v48
	v_fma_f32 v53, -v61, v64, v55
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v55, null, v66, v66, v14
	v_div_fmas_f32 v48, v48, v56, v54
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v54, v51, v65
	v_div_fmas_f32 v50, v53, v50, v64
	v_fma_f32 v53, -v57, v60, v59
	v_fma_f32 v56, -v52, v49, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v57, v55
	v_div_fixup_f32 v9, v48, v66, v9
	v_div_fmas_f32 v53, v53, v58, v60
	v_fma_f32 v58, -v63, v54, v51
	v_fmac_f32_e32 v49, v56, v49
	v_div_scale_f32 v56, s1, v13, v66, v13
	v_div_fixup_f32 v10, v50, v66, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v58, v65
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v56, v49
	v_fma_f32 v50, -v55, v57, 1.0
	v_div_fixup_f32 v11, v53, v66, v11
	v_fma_f32 v51, -v63, v54, v51
	v_div_scale_f32 v53, null, v66, v66, v15
	v_fma_f32 v58, -v52, v48, v56
	v_fmac_f32_e32 v57, v50, v57
	v_div_scale_f32 v50, s4, v14, v66, v14
	v_div_fmas_f32 v51, v51, v65, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v58, v49
	v_rcp_f32_e32 v59, v53
	v_mul_f32_e32 v54, v50, v57
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v51, v66, v12
	v_fma_f32 v51, -v52, v48, v56
	v_div_scale_f32 v58, null, v66, v66, v16
	v_fma_f32 v52, -v55, v54, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v48, v51, v49, v48
	v_div_scale_f32 v49, null, v66, v66, v1
	v_fma_f32 v56, -v53, v59, 1.0
	v_rcp_f32_e32 v60, v58
	v_fmac_f32_e32 v54, v52, v57
	v_rcp_f32_e32 v52, v49
	v_div_scale_f32 v51, s1, v15, v66, v15
	v_fmac_f32_e32 v59, v56, v59
	v_div_scale_f32 v56, null, v66, v66, v2
	v_div_fixup_f32 v13, v48, v66, v13
	v_fma_f32 v50, -v55, v54, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v58, v60, 1.0
	v_rcp_f32_e32 v62, v56
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v61, -v49, v52, 1.0
	v_mul_f32_e32 v55, v51, v59
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v60, v48, v60
	v_div_scale_f32 v48, s3, v16, v66, v16
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, null, v66, v66, v3
	v_div_fmas_f32 v50, v50, v57, v54
	v_fma_f32 v54, -v53, v55, v51
	v_mul_f32_e32 v57, v48, v60
	v_div_scale_f32 v63, s4, v1, v66, v1
	v_fma_f32 v64, -v56, v62, 1.0
	v_rcp_f32_e32 v65, v61
	v_fmac_f32_e32 v55, v54, v59
	v_fma_f32 v54, -v58, v57, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v67, v63, v52 :: v_dual_fmac_f32 v62, v64, v62
	v_div_scale_f32 v64, s5, v2, v66, v2
	v_div_fixup_f32 v14, v50, v66, v14
	v_fma_f32 v50, -v53, v55, v51
	v_fmac_f32_e32 v57, v54, v60
	v_fma_f32 v51, -v49, v67, v63
	v_mul_f32_e32 v53, v64, v62
	v_fma_f32 v54, -v61, v65, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v58, v57, v48
	v_fmac_f32_e32 v67, v51, v52
	v_fma_f32 v51, -v56, v53, v64
	v_fmac_f32_e32 v65, v54, v65
	v_div_scale_f32 v54, s1, v3, v66, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v49, v67, v63
	v_fmac_f32_e32 v53, v51, v62
	v_div_fmas_f32 v50, v50, v59, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v54, v65
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v55, null, v66, v66, v4
	v_div_fmas_f32 v48, v48, v60, v57
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v50, v66, v15
	v_div_fmas_f32 v49, v49, v52, v67
	v_fma_f32 v52, -v56, v53, v64
	v_fma_f32 v56, -v61, v51, v54
	v_rcp_f32_e32 v57, v55
	v_div_fixup_f32 v16, v48, v66, v16
	v_div_fixup_f32 v1, v49, v66, v1
	v_div_scale_f32 v49, null, v66, v66, v5
	v_fmac_f32_e32 v51, v56, v65
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v59, null, v66, v66, v8
	v_div_fmas_f32 v52, v52, v62, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v48, -v61, v51, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v50, -v55, v57, 1.0
	v_rcp_f32_e32 v61, v59
	v_div_fixup_f32 v2, v52, v66, v2
	v_div_fmas_f32 v48, v48, v65, v51
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v57, v50, v57
	v_div_scale_f32 v50, null, v66, v66, v6
	v_div_scale_f32 v52, null, v66, v66, v7
	v_div_scale_f32 v53, vcc_lo, v4, v66, v4
	v_div_fixup_f32 v3, v48, v66, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v54, v50
	v_fma_f32 v48, -v49, v51, 1.0
	v_rcp_f32_e32 v56, v52
	v_mul_f32_e32 v58, v53, v57
	v_fma_f32 v65, -v59, v61, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v48, v51
	v_div_scale_f32 v48, s1, v5, v66, v5
	v_fma_f32 v62, -v55, v58, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v50, v54, 1.0
	v_dual_fmac_f32 v61, v65, v61 :: v_dual_mul_f32 v64, v48, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v52, v56, 1.0
	v_fmac_f32_e32 v58, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v60, v54
	v_div_scale_f32 v60, s3, v6, v66, v6
	v_fma_f32 v62, -v49, v64, v48
	v_fmac_f32_e32 v56, v63, v56
	v_div_scale_f32 v63, s4, v7, v66, v7
	v_dual_mul_f32 v67, v60, v54 :: v_dual_fmac_f32 v64, v62, v51
	v_div_scale_f32 v65, s5, v8, v66, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v63, v56
	v_fma_f32 v53, -v55, v58, v53
	v_fma_f32 v48, -v49, v64, v48
	v_fma_f32 v55, -v50, v67, v60
	v_mul_f32_e32 v69, v65, v61
	v_fma_f32 v62, -v52, v68, v63
	v_div_fmas_f32 v53, v53, v57, v58
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v67, v55, v54
	v_div_fmas_f32 v48, v48, v51, v64
	v_fma_f32 v49, -v59, v69, v65
	v_fmac_f32_e32 v68, v62, v56
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v50, v67, v60
	v_div_fixup_f32 v5, v48, v66, v5
	v_dual_fmac_f32 v69, v49, v61 :: v_dual_add_nc_u32 v48, s46, v111
	v_fma_f32 v49, -v52, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v50, v54, v67
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v48, v48, s60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v59, v69, v65
	v_div_fmas_f32 v49, v49, v56, v68
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s60, v109
	v_cmp_gt_i32_e64 s3, s60, v110
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v51, v51, v61, v69
	v_div_fixup_f32 v7, v49, v66, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v109, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v50, v66, v6
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s60, v108
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v50, v48, v110, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v51, v66, v8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v51, v48, v108, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s60, v107
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	buffer_store_b32 v25, v49, s[44:47], 0 offen
	v_add_lshl_u32 v25, v48, v107, 2
	s_clause 0x1
	buffer_store_b32 v26, v50, s[44:47], 0 offen
	buffer_store_b32 v27, v51, s[44:47], 0 offen
	v_add_lshl_u32 v26, v48, v106, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v48, v105, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v104, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v48, v103, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	v_add_lshl_u32 v26, v48, v102, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[44:47], 0 offen
	buffer_store_b32 v31, v49, s[44:47], 0 offen
	v_add_lshl_u32 v27, v48, v101, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v48, v100, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v32, v25, s[44:47], 0 offen
	buffer_store_b32 v17, v26, s[44:47], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v99, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_clause 0x1
	buffer_store_b32 v18, v27, s[44:47], 0 offen
	buffer_store_b32 v19, v28, s[44:47], 0 offen
	v_add_lshl_u32 v18, v48, v97, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v98, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v48, v96, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_clause 0x1
	buffer_store_b32 v20, v17, s[44:47], 0 offen
	buffer_store_b32 v21, v18, s[44:47], 0 offen
	v_add_lshl_u32 v17, v48, v95, 2
	v_add_lshl_u32 v18, v48, v47, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v19, s[44:47], 0 offen
	buffer_store_b32 v23, v25, s[44:47], 0 offen
	v_add_lshl_u32 v19, v48, v46, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v48, v45, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	s_clause 0x1
	buffer_store_b32 v24, v17, s[44:47], 0 offen
	buffer_store_b32 v9, v18, s[44:47], 0 offen
	v_add_lshl_u32 v9, v48, v44, 2
	s_clause 0x1
	buffer_store_b32 v10, v19, s[44:47], 0 offen
	buffer_store_b32 v11, v20, s[44:47], 0 offen
	v_add_lshl_u32 v10, v48, v43, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v41, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_store_b32 v12, v9, s[44:47], 0 offen
	buffer_store_b32 v13, v10, s[44:47], 0 offen
	v_add_lshl_u32 v9, v48, v40, 2
	v_add_lshl_u32 v10, v48, v39, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[44:47], 0 offen
	buffer_store_b32 v15, v17, s[44:47], 0 offen
	v_add_lshl_u32 v11, v48, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v12, v48, v37, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v4, v53, v66, v4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	s_clause 0x1
	buffer_store_b32 v16, v9, s[44:47], 0 offen
	buffer_store_b32 v1, v10, s[44:47], 0 offen
	v_add_lshl_u32 v1, v48, v36, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s60, v34
	v_cmp_gt_i32_e32 vcc_lo, s60, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[44:47], 0 offen
	buffer_store_b32 v3, v12, s[44:47], 0 offen
	v_add_lshl_u32 v2, v48, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s60, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s2, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v48, v34, 2
	v_add_lshl_u32 v9, v48, v33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v48, v0, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v9, s[44:47], 0 offen
	buffer_store_b32 v8, v0, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp34:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 95
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 95
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13444
; TotalNumSgprs: 97
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 97
; NumVGPRsForWavesPerEU: 256
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     97
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
