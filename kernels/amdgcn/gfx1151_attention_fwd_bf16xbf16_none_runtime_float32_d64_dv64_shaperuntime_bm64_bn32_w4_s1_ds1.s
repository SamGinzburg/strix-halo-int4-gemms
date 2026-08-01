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
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b32 s63, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v112, 6, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s78, 0
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
	v_or_b32_e32 v125, 26, v112
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[81:82], null, s63, v112, v[65:66]
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s4, 1
	s_mul_i32 s47, s63, 54
	s_cselect_b32 s45, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s64
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s46, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s20, s63, v65
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[82:83], null, s63, 6, v[81:82]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s5, s3, s66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s46, v113
	v_or_b32_e32 v3, s46, v114
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v128, s63, 1, v81
	s_mul_i32 s68, s63, 62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s46, v115
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v129, s63, 2, v81
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s46, v116
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[83:84], null, s63, 10, v[81:82]
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s46, v112
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v6, s46, v117
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_lshl_add_u32 v130, s63, 3, v81
	v_mad_u64_u32 v[84:85], null, s63, 12, v[81:82]
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
	v_cmp_gt_i32_e32 vcc_lo, s66, v28
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
	s_abs_i32 s2, s65
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
	v_or_b32_e32 v7, s46, v118
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[85:86], null, s63, 14, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s66, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s46, v119
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s66, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s46, v120
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[86:87], null, s63, 18, v[81:82]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s66, v7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s46, v121
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v131, s63, 4, v81
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[87:88], null, s63, 20, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s66, v8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s46, v122
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[88:89], null, s63, 22, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s66, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s46, v123
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s64, s65
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s57, s7, 31
	s_mul_i32 s8, s6, s2
	s_add_i32 s7, s6, 1
	s_sub_i32 s4, s4, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v126, 28, v112
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[89:90], null, s63, 24, v[81:82]
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s66, v31
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s61, s7, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s71, s5, s46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v32
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s70, s71, s63
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s70, v81
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s20
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v2
	v_cmp_gt_i32_e64 s7, s66, v3
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v2, s70, v128, 1
	v_add_lshl_u32 v31, v33, s47, 1
	v_add_lshl_u32 v32, v33, s68, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s5, s20
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s66, v4
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v3, s70, v129, 1
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_lshlrev_b32 v34, 1, v65
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s20
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_lshlrev_b32 v1, 1, v33
	v_add_lshl_u32 v4, s70, v82, 1
	v_add_lshl_u32 v5, s70, v130, 1
	v_add_lshl_u32 v6, s70, v83, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s6, s20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s70, v84, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s7, s20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s70, v85, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s8, s20
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s66, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s9, s20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, s70, v131, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s10, s20
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s46, v124
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s11, s20
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v127, 30, v112
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s12, s20
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[90:91], null, s63, 26, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s66, v12
	v_cmp_gt_i32_e64 s24, s66, v10
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s70, v86, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s46, v125
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s13, s20
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[91:92], null, s63, 28, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s66, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s70, v87, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s46, v126
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s14, s20
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[92:93], null, s63, 30, v[81:82]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s66, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s70, v88, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s46, v127
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s15, s20
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s66, v15
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v13, s70, v89, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s16, s20
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s66, v16
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v14, s70, v90, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s17, s20
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s66, v17
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s70, v91, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s18, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s69, s63, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s66, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s70, v92, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s19, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s62, s63, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s66, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s69, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s21, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s60, s63, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s62, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s22, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s59, s63, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s66, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s60, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s23, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s63, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s66, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s59, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s24, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s56, s63, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s66, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s58, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s25, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s63, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s66, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s56, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s26, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s63, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s66, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s55, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s27, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s63, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s66, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s54, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s28, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s52, s63, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s34, s66, v29
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, v33, s53, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s29, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s49, s63, 50
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s66, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, v33, s52, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s30, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s51, s63, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s66, v27
	v_cmp_gt_i32_e64 s35, s66, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s49, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s34, s20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s50, s63, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s51, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s48, s63, 60
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s31, s20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s50, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s35, s20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v30, v33, s48, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s33, s20
	s_and_b32 s4, s4, s20
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
	s_xor_b32 s2, s61, s57
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s4, s67, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s4, 31
	s_lshr_b32 s2, s2, 27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v132, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v133, 0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v134, 0, v35
	v_add_nc_u32_e32 v135, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s52, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s36, 0x10008
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
	s_add_i32 s2, s46, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s46, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s67, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s4, s8, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s78, s4, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s52, s52, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s45
	v_and_b32_e32 v66, 15, v0
	v_and_b32_e32 v33, 0x60, v0
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s4, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s46, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s67, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 27
	s_add_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s52, s52, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v33
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x38
	s_load_b32 s76, s[0:1], 0x64
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v109, v0, 4, 1
	v_mov_b32_e32 v8, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s78, s52
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v111, v1, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v110, 2, v109
	v_or_b32_e32 v108, 4, v109
	v_or_b32_e32 v107, 6, v109
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v67, s46, v111
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
	v_cmp_gt_i32_e64 s2, s66, v67
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
	v_mov_b32_e32 v73, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s64
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	v_lshlrev_b32_e32 v1, 4, v0
	s_xor_b32 s9, s44, s8
	s_cvt_u32_f32 s7, s7
	s_sub_i32 s8, s9, s8
	s_sub_i32 s9, 0, s5
	s_mul_i32 s10, s8, s64
	s_mul_i32 s9, s9, s7
	s_sub_i32 s3, s3, s10
	s_mul_hi_u32 s9, s7, s9
	s_abs_i32 s10, s3
	s_add_i32 s7, s7, s9
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s7, s10, s7
	s_ashr_i32 s6, s6, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s9, s7, s5
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[93:94], null, s76, v112, v[65:66]
	v_lshlrev_b32_e32 v2, 7, v66
	v_lshlrev_b32_e32 v3, 6, v33
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v94, 1, v0
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s3, s3, s6
	s_sub_i32 s6, s10, s9
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s6, s5
	s_cmp_ge_u32 s6, s5
                                        ; implicit-def: $vgpr234 : SGPR spill to VGPR lane
	v_mov_b32_e32 v26, v25
	v_or3_b32 v3, v2, v3, v1
	v_writelane_b32 v234, s71, 0
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	s_cselect_b32 s1, s9, s7
	s_cselect_b32 s6, s10, s6
	s_add_i32 s7, s1, 1
	s_cmp_ge_u32 s6, s5
	v_xad_u32 v8, v3, 64, 0
	v_xad_u32 v9, 0x50, v3, 0
	s_cselect_b32 s1, s7, s1
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s8, s8, s65
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s1, s3
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[53:56], v9
	s_sub_i32 s1, s1, s3
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_and_b32 v8, 16, v0
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s64, s1, s8
	s_mov_b32 s8, 0
	v_mov_b32_e32 v9, 0x5410
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	v_mov_b32_e32 v8, 0x7632
	v_writelane_b32 v234, s8, 1
	v_add_nc_u32_e32 v4, 0, v3
	v_xad_u32 v6, v3, 32, 0
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_writelane_b32 v234, s9, 2
	v_xad_u32 v10, 0x60, v3, 0
	v_xad_u32 v5, v3, 16, 0
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v8, v8, 8, v8
	v_writelane_b32 v234, s10, 3
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[33:36], v4
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[57:60], v10
	ds_load_b128 v[61:64], v3
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v9, 0x540054, v9
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v8, 0x760076, v8
	v_writelane_b32 v234, s11, 4
	v_or_b32_e32 v136, v1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v8, v8, 4, v8
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v137, s39, v67
	v_writelane_b32 v234, s12, 5
	v_xor_b32_e32 v1, 16, v136
	v_xor_b32_e32 v2, 32, v136
	v_xor_b32_e32 v3, 48, v136
	v_xor_b32_e32 v4, 64, v136
	v_xor_b32_e32 v5, 0x50, v136
	v_xor_b32_e32 v6, 0x60, v136
	v_xor_b32_e32 v7, 0x70, v136
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v140, 0x5040504, v9
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v141, 0x7060706, v8
	v_or_b32_e32 v8, 0x700, v94
	v_or_b32_e32 v9, 0xf00, v94
	v_writelane_b32 v234, s13, 6
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s65, s0, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s76, v65
	v_subrev_nc_u32_e32 v138, s37, v137
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v139, s38, v137
	v_lshl_add_u32 v142, v66, 1, 0
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v143, 0, v1
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v144, 0, v2
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v145, 0, v3
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v146, 0, v4
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v147, 0, v5
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v148, 0, v6
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v149, 0, v7
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v150, 0, v8
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v151, 0, v9
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
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
	v_mov_b32_e32 v152, v25
	v_writelane_b32 v234, s14, 7
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s46, s64, s67
	s_and_b32 s69, s69, 0xffff
	s_lshl_b32 s80, s76, 1
	s_lshl_b32 s82, s76, 2
	s_mul_i32 s88, s76, 6
	s_lshl_b32 s86, s76, 3
	s_mul_i32 s89, s76, 10
	s_mul_i32 s90, s76, 12
	s_mul_i32 s91, s76, 14
	s_lshl_b32 s79, s76, 4
	s_mul_i32 s92, s76, 18
	s_mul_i32 s93, s76, 20
	s_mul_i32 s45, s76, 22
	s_mul_i32 s53, s76, 24
	s_mul_i32 s54, s76, 26
	s_mul_i32 s55, s76, 28
	s_mul_i32 s56, s76, 30
	s_and_b32 s73, s71, 0xffff
	s_mov_b32 s72, s70
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	s_mov_b32 s94, 0x76543210
	v_writelane_b32 v234, s15, 8
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	v_mad_u64_u32 v[161:162], null, s87, s76, v[93:94]
	.loc	1 892 26 is_stmt 1              ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s19
	s_and_b32 s3, s0, s18
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s65, v73 :: v_dual_mul_f32 v74, s65, v74
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s0, s17
	s_and_b32 s16, s0, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v159, v161, s89, 1
	v_lshlrev_b32_e32 v154, 1, v161
	v_add_lshl_u32 v155, v161, s80, 1
	v_add_lshl_u32 v158, v161, s86, 1
	v_add_lshl_u32 v160, v161, s90, 1
	v_add_lshl_u32 v162, v161, s91, 1
	v_cndmask_b32_e32 v154, 0x80000000, v154, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v163, v161, s79, 1
	v_cndmask_b32_e64 v155, 0x80000000, v155, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v169, v161, s55, 1
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v160, s3
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v164, v161, s92, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v168, 0x80000000, v162, vcc_lo
	v_cndmask_b32_e64 v162, 0x80000000, v163, s3
	v_add_lshl_u32 v163, v161, s93, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v166, v161, s53, 1
	v_cndmask_b32_e32 v164, 0x80000000, v164, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v156, v161, s82, 1
	v_cndmask_b32_e32 v167, 0x80000000, v163, vcc_lo
	v_add_lshl_u32 v163, v161, s54, 1
	v_add_lshl_u32 v157, v161, s88, 1
	v_add_lshl_u32 v165, v161, s45, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v161, v161, s56, 1
	v_cndmask_b32_e32 v166, 0x80000000, v166, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	s_and_b32 s3, s0, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v156, 0x80000000, v156, s17
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v170, 0x80000000, v163, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v157, 0x80000000, v157, s16
	v_cndmask_b32_e64 v165, 0x80000000, v165, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v169, 0x80000000, v169, vcc_lo
	s_clause 0x6
	buffer_load_u16 v154, v154, s[72:75], 0 offen
	buffer_load_u16 v155, v155, s[72:75], 0 offen
	buffer_load_u16 v156, v156, s[72:75], 0 offen
	buffer_load_u16 v157, v157, s[72:75], 0 offen
	buffer_load_u16 v158, v158, s[72:75], 0 offen
	buffer_load_u16 v159, v159, s[72:75], 0 offen
	buffer_load_u16 v160, v160, s[72:75], 0 offen
	v_cndmask_b32_e64 v171, 0x80000000, v161, s1
	s_clause 0x8
	buffer_load_u16 v162, v162, s[72:75], 0 offen
	buffer_load_u16 v163, v164, s[72:75], 0 offen
	buffer_load_u16 v164, v167, s[72:75], 0 offen
	buffer_load_u16 v165, v165, s[72:75], 0 offen
	buffer_load_u16 v166, v166, s[72:75], 0 offen
	buffer_load_u16 v167, v170, s[72:75], 0 offen
	buffer_load_u16 v161, v168, s[72:75], 0 offen
	buffer_load_u16 v168, v169, s[72:75], 0 offen
	buffer_load_u16 v169, v171, s[72:75], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s65, v75 :: v_dual_mul_f32 v76, s65, v76
	v_dual_mul_f32 v77, s65, v77 :: v_dual_mul_f32 v78, s65, v78
	v_dual_mul_f32 v65, s65, v65 :: v_dual_mul_f32 v66, s65, v66
	v_dual_mul_f32 v67, s65, v67 :: v_dual_mul_f32 v68, s65, v68
	v_dual_mul_f32 v69, s65, v69 :: v_dual_mul_f32 v70, s65, v70
	v_dual_mul_f32 v71, s65, v71 :: v_dual_mul_f32 v72, s65, v72
	v_dual_mul_f32 v79, s65, v79 :: v_dual_mul_f32 v80, s65, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v74, s96
	v_cndmask_b32_e64 v76, 0xff800000, v76, s98
	v_cndmask_b32_e64 v77, 0xff800000, v77, s103
	v_cndmask_b32_e64 v78, 0xff800000, v78, s99
	v_cndmask_b32_e64 v66, 0xff800000, v66, s100
	v_cndmask_b32_e64 v67, 0xff800000, v67, s83
	v_cndmask_b32_e64 v68, 0xff800000, v68, s104
	v_cndmask_b32_e64 v69, 0xff800000, v69, s81
	v_cndmask_b32_e64 v171, 0xff800000, v70, s62
	v_cndmask_b32_e64 v71, 0xff800000, v71, s85
	v_cndmask_b32_e64 v75, 0xff800000, v75, s97
	v_cndmask_b32_e64 v79, 0xff800000, v79, s102
	v_cndmask_b32_e64 v80, 0xff800000, v80, s101
	v_cndmask_b32_e64 v65, 0xff800000, v65, vcc_hi
	v_cndmask_b32_e64 v72, 0xff800000, v72, s84
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v73, v170
	v_max3_f32 v74, v76, v77, v78
	v_max3_f32 v172, v66, v67, v68
	v_max3_f32 v173, v69, v171, v71
	v_max3_f32 v174, v79, v80, v65
.Ltmp2:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v70, v75, v74
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v172, v173, v72
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, 0
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s78, s78, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v70, v174, v74
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.h, v172.h
	v_mov_b16_e64 v174.h, v172.h
	v_mov_b16_e64 v176.h, v172.h
	v_mov_b16_e64 v178.h, v172.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v175, v74, s94, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.h, v172.h
	v_mov_b16_e64 v179.h, v172.h
	v_mov_b16_e64 v177.h, v172.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s78, s52
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v74, v153, v74, v175
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v175.h, v172.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v74
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v153, v153, v74
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v74
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v153, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v74
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v76, v76
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_dual_cndmask_b32 v75, 0, v153 :: v_dual_sub_f32 v170, v170, v74
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v74
	v_sub_f32_e32 v78, v78, v74
	v_dual_sub_f32 v79, v79, v74 :: v_dual_mul_f32 v28, v28, v75
	v_dual_sub_f32 v80, v80, v74 :: v_dual_mul_f32 v21, v21, v75
	v_dual_sub_f32 v65, v65, v74 :: v_dual_mul_f32 v30, v30, v75
	v_dual_sub_f32 v66, v66, v74 :: v_dual_mul_f32 v23, v23, v75
	v_dual_sub_f32 v67, v67, v74 :: v_dual_mul_f32 v32, v32, v75
	v_dual_sub_f32 v68, v68, v74 :: v_dual_mul_f32 v9, v9, v75
	v_dual_sub_f32 v69, v69, v74 :: v_dual_mul_f32 v18, v18, v75
	v_dual_sub_f32 v171, v171, v74 :: v_dual_mul_f32 v20, v20, v75
	v_dual_sub_f32 v71, v71, v74 :: v_dual_mul_f32 v22, v22, v75
	v_dual_sub_f32 v72, v72, v74 :: v_dual_mul_f32 v11, v11, v75
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v170, s96
	v_cndmask_b32_e64 v170, 0, v181, s97
	v_cndmask_b32_e64 v80, 0, v80, s101
	v_cndmask_b32_e64 v79, 0, v79, s102
	v_cndmask_b32_e64 v181, 0, v66, s100
	v_cndmask_b32_e64 v65, 0, v65, vcc_hi
	v_cndmask_b32_e64 v182, 0, v68, s104
	v_cndmask_b32_e64 v77, 0, v77, s103
	v_cndmask_b32_e64 v66, 0, v67, s83
	v_cndmask_b32_e64 v78, 0, v78, s99
	v_cndmask_b32_e64 v171, 0, v171, s62
	v_cndmask_b32_e64 v67, 0, v69, s81
	v_cndmask_b32_e64 v69, 0, v72, s84
	v_cndmask_b32_e64 v68, 0, v71, s85
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v172.l, v153.h
	v_mov_b16_e64 v173.l, v73.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v75 :: v_dual_add_f32 v71, v73, v153
	v_dual_mul_f32 v10, v10, v75 :: v_dual_add_f32 v183, v77, v78
	v_dual_mul_f32 v12, v12, v75 :: v_dual_add_f32 v185, v65, v181
	v_dual_mul_f32 v13, v13, v75 :: v_dual_add_f32 v184, v79, v80
	v_dual_mul_f32 v14, v14, v75 :: v_dual_and_b32 v189, 1, v172
	v_dual_mul_f32 v15, v15, v75 :: v_dual_add_f32 v186, v66, v182
	v_dual_mul_f32 v16, v16, v75 :: v_dual_and_b32 v173, 1, v173
	v_dual_mul_f32 v1, v1, v75 :: v_dual_add_f32 v188, v68, v69
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v170, v76
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v174.l, v170.h
	v_mov_b16_e64 v176.l, v77.h
	v_mov_b16_e64 v178.l, v65.h
	v_mov_b16_e64 v175.l, v67.h
	v_mov_b16_e64 v180.l, v68.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v187, v67, v171
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v76.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v75 :: v_dual_add_f32 v71, v71, v72
	v_dual_mul_f32 v3, v3, v75 :: v_dual_and_b32 v72, 1, v174
	v_dual_mul_f32 v5, v5, v75 :: v_dual_and_b32 v174, 1, v176
	v_mul_f32_e32 v6, v6, v75
	v_dual_mul_f32 v7, v7, v75 :: v_dual_and_b32 v178, 1, v178
	v_mul_f32_e32 v8, v8, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v73, v73
	v_mov_b16_e64 v179.l, v66.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v176, v183, v184 :: v_dual_add_f32 v183, v185, v186
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v180, 1, v180
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v184, v187, v188 :: v_dual_and_b32 v175, 1, v175
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v73, v73, v173, 0x7fff
	v_and_b32_e32 v173, 1, v172
	v_mov_b16_e64 v172.l, v78.h
	v_cmp_o_f32_e64 s6, v153, v153
	v_add3_u32 v153, v153, v189, 0x7fff
	v_cmp_o_f32_e64 s9, v170, v170
	v_cmp_o_f32_e64 s14, v65, v65
	v_and_b32_e32 v179, 1, v179
	v_add3_u32 v72, v170, v72, 0x7fff
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v176
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v65, v178, 0x7fff
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v170, v183, v184
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v153.l, 0x7fff, v73.h, s7
	v_add3_u32 v73, v76, v173, 0x7fff
	v_and_b32_e32 v76, 1, v172
	v_mov_b16_e64 v172.l, v80.h
	v_cmp_o_f32_e64 s11, v77, v77
	v_mov_b16_e64 v177.l, v79.h
	v_add3_u32 v77, v77, v174, 0x7fff
	v_cmp_o_f32_e64 s16, v67, v67
	v_add3_u32 v67, v67, v175, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v65.h, s14
	v_and_b32_e32 v65, 1, v172
	v_mov_b16_e64 v172.l, v181.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v75 :: v_dual_and_b32 v177, 1, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v66, v66
	v_add3_u32 v66, v66, v179, 0x7fff
	v_cndmask_b16 v222.l, 0x7fff, v67.h, s16
	v_and_b32_e32 v67, 1, v172
	v_mov_b16_e64 v172.l, v182.h
	v_cmp_o_f32_e64 s13, v79, v79
	v_add3_u32 v79, v79, v177, 0x7fff
	v_cmp_o_f32_e64 s10, v78, v78
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s6
	v_cndmask_b16 v79.l, 0x7fff, v66.h, s15
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v225, v71, v170
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v78, v76, 0x7fff
	v_and_b32_e32 v78, 1, v172
	v_mov_b16_e64 v172.l, v171.h
	v_cmp_o_f32_e64 s12, v80, v80
	v_cmp_o_f32_e64 s17, v68, v68
	v_add3_u32 v68, v68, v180, 0x7fff
	v_permlanex16_b32 v71, v153, s94, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v80, v80, v65, 0x7fff
	v_and_b32_e32 v173, 1, v172
	v_mov_b16_e64 v172.l, v69.h
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s9
	v_cndmask_b16 v72.l, 0x7fff, v77.h, s11
	v_cndmask_b16 v73.l, 0x7fff, v79.h, s13
	v_cndmask_b16 v224.l, 0x7fff, v68.h, s17
	v_cndmask_b16 v68.h, 0x7fff, v73.h, s8
	v_cndmask_b16 v72.h, 0x7fff, v66.h, s10
	v_perm_b32 v65, v71, v153, v140
	v_perm_b32 v66, v71, v153, v141
	v_cndmask_b16 v73.h, 0x7fff, v80.h, s12
	v_and_b32_e32 v153, 1, v172
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v75 :: v_dual_add_nc_u32 v70, 0, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_cmp_o_f32_e64 s5, v69, v69
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v76, v225, s94, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v181, v67, 0x7fff
	v_permlanex16_b32 v80, v72, s94, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v69, v69, v153, 0x7fff
	v_permlanex16_b32 v217, v73, s94, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s3, v171, v171
	v_cndmask_b16 v77.h, 0x7fff, v71.h, vcc_lo
	v_cmp_o_f32_e64 s1, v182, v182
	v_cndmask_b16 v224.h, 0x7fff, v69.h, s5
	v_perm_b32 v69, v80, v72, v140
	v_perm_b32 v71, v217, v73, v140
	v_add3_u32 v78, v182, v78, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v75
	v_mul_f32_e32 v27, v27, v75
	v_mul_f32_e32 v17, v17, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v226, v224, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v79.h, 0x7fff, v78.h, s1
	v_permlanex16_b32 v78, v77, s94, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(15)
	ds_store_b16 v70, v154
	s_waitcnt vmcnt(14)
	ds_store_b16 v70, v155 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b16 v70, v156 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b16 v70, v157 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b16 v70, v158 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b16 v70, v159 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b16 v70, v160 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b16 v70, v162 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v70, v163 offset:2304
	s_waitcnt vmcnt(6)
	ds_store_b16 v70, v164 offset:2560
	s_waitcnt vmcnt(5)
	ds_store_b16 v70, v165 offset:2816
	s_waitcnt vmcnt(4)
	ds_store_b16 v70, v166 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v70, v167 offset:3328
	s_waitcnt vmcnt(2)
	ds_store_b16 v150, v161
	s_waitcnt vmcnt(1)
	ds_store_b16 v70, v168 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b16 v151, v169
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v70, v80, v72, v141
	v_perm_b32 v72, v217, v73, v141
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v225, v76
.Ltmp28:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v220, v79, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v217, v78, v77, v140
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v73, v152, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v170, v68, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v218, v78, v77, v141
	v_perm_b32 v219, v220, v79, v140
	v_perm_b32 v220, v220, v79, v141
	v_mov_b32_e32 v152, v73
	v_perm_b32 v67, v170, v68, v140
	v_perm_b32 v68, v170, v68, v141
	v_add3_u32 v170, v171, v173, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v155, v142 offset:512
	ds_load_u16_d16 v162, v142 offset:288
	ds_load_u16_d16 v171, v142 offset:608
	ds_load_u16_d16 v170, v142 offset:352
	ds_load_u16_d16 v179, v142 offset:576
	ds_load_u16_d16 v181, v142 offset:1088
	ds_load_u16_d16 v183, v142 offset:1600
	ds_load_u16_d16 v184, v142 offset:1856
	ds_load_u16_d16 v153, v142
	ds_load_u16_d16 v161, v142 offset:32
	ds_load_u16_d16 v154, v142 offset:256
	ds_load_u16_d16 v177, v142 offset:64
	ds_load_u16_d16 v178, v142 offset:320
	ds_load_u16_d16 v169, v142 offset:96
	ds_load_u16_d16 v185, v142 offset:2112
	ds_load_u16_d16 v187, v142 offset:2624
	ds_load_u16_d16 v188, v142 offset:2880
	ds_load_u16_d16 v189, v142 offset:3136
	ds_load_u16_d16 v190, v142 offset:3392
	ds_load_u16_d16 v191, v142 offset:3648
	ds_load_u16_d16 v156, v142 offset:768
	ds_load_u16_d16 v180, v142 offset:832
	ds_load_u16_d16 v163, v142 offset:544
	ds_load_u16_d16 v192, v142 offset:3904
	ds_load_u16_d16 v158, v142 offset:1280
	ds_load_u16_d16 v165, v142 offset:1056
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt lgkmcnt(22)
	v_cndmask_b16 v222.h, 0x7fff, v170.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v170, v142 offset:480
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v179, v142 offset:704
	ds_load_u16_d16 v182, v142 offset:1344
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v181, v142 offset:1216
	ds_load_u16_d16 v173, v142 offset:1120
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v153, v142 offset:128
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v161, v142 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v177, v142 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v169, v142 offset:224
	ds_load_u16_d16_hi v155, v142 offset:640
	ds_load_u16_d16_hi v154, v142 offset:384
	ds_load_u16_d16_hi v162, v142 offset:416
	ds_load_u16_d16_hi v178, v142 offset:448
	ds_load_u16_d16 v157, v142 offset:1024
	ds_load_u16_d16 v164, v142 offset:800
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v156, v142 offset:896
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v180, v142 offset:960
	ds_load_u16_d16 v172, v142 offset:864
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v163, v142 offset:672
	ds_load_u16_d16_hi v171, v142 offset:736
	ds_load_u16_d16 v159, v142 offset:1536
	ds_load_u16_d16 v166, v142 offset:1312
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v182, v142 offset:1472
	ds_load_u16_d16 v174, v142 offset:1376
	ds_load_u16_d16 v160, v142 offset:1792
	ds_load_u16_d16 v167, v142 offset:1568
	ds_load_u16_d16_hi v183, v142 offset:1728
	ds_load_u16_d16 v175, v142 offset:1632
	ds_load_u16_d16 v193, v142 offset:2048
	ds_load_u16_d16 v168, v142 offset:1824
	ds_load_u16_d16_hi v184, v142 offset:1984
	ds_load_u16_d16 v176, v142 offset:1888
	ds_load_u16_d16 v194, v142 offset:2304
	ds_load_u16_d16 v201, v142 offset:2080
	ds_load_u16_d16 v186, v142 offset:2368
	ds_load_u16_d16_hi v185, v142 offset:2240
	ds_load_u16_d16 v209, v142 offset:2144
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v157, v142 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v164, v142 offset:928
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v172, v142 offset:992
	ds_load_u16_d16_hi v158, v142 offset:1408
	ds_load_u16_d16_hi v165, v142 offset:1184
	ds_load_u16_d16_hi v173, v142 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v159, v142 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v166, v142 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v174, v142 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v160, v142 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v167, v142 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v175, v142 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v193, v142 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v168, v142 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v176, v142 offset:2016
	ds_load_u16_d16 v195, v142 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v194, v142 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v201, v142 offset:2208
	ds_load_u16_d16 v202, v142 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v186, v142 offset:2496
	ds_load_u16_d16 v210, v142 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v209, v142 offset:2272
	ds_load_u16_d16 v196, v142 offset:2816
	ds_load_u16_d16 v203, v142 offset:2592
	ds_load_u16_d16_hi v187, v142 offset:2752
	ds_load_u16_d16 v211, v142 offset:2656
	ds_load_u16_d16 v197, v142 offset:3072
	ds_load_u16_d16 v204, v142 offset:2848
	ds_load_u16_d16_hi v188, v142 offset:3008
	ds_load_u16_d16 v212, v142 offset:2912
	ds_load_u16_d16 v198, v142 offset:3328
	ds_load_u16_d16 v205, v142 offset:3104
	ds_load_u16_d16_hi v189, v142 offset:3264
	ds_load_u16_d16 v213, v142 offset:3168
	ds_load_u16_d16 v199, v142 offset:3584
	ds_load_u16_d16 v206, v142 offset:3360
	ds_load_u16_d16_hi v190, v142 offset:3520
	ds_load_u16_d16 v214, v142 offset:3424
	ds_load_u16_d16 v200, v142 offset:3840
	ds_load_u16_d16 v207, v142 offset:3616
	ds_load_u16_d16_hi v191, v142 offset:3776
	ds_load_u16_d16 v215, v142 offset:3680
	ds_load_u16_d16 v208, v142 offset:3872
	ds_load_u16_d16_hi v192, v142 offset:4032
	ds_load_u16_d16 v216, v142 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v195, v142 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v202, v142 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v210, v142 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v196, v142 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v203, v142 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v211, v142 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v197, v142 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v204, v142 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v212, v142 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v198, v142 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v205, v142 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v213, v142 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v199, v142 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v206, v142 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v214, v142 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v200, v142 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v207, v142 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v215, v142 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v208, v142 offset:4000
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v223, v222, s94, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v216, v142 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[153:160], v[65:72], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[161:168], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[177:184], v[65:72], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v221, v223, v222, v140
	v_perm_b32 v222, v223, v222, v141
	v_perm_b32 v223, v226, v224, v140
	v_perm_b32 v224, v226, v224, v141
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[169:176], v[65:72], v[1:8]
	v_mov_b32_e32 v153, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[185:192], v[217:224], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[193:200], v[217:224], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[201:208], v[217:224], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[209:216], v[217:224], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s78, v112
	v_or_b32_e32 v66, s78, v113
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s87, s78, s46
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s78, v114
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s87, s63
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s78, v115
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v66
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s3, v81, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s78, v116
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s67, v67
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s3, v128, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s78, v117
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s19
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s67, v68
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v67, s3, v129, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s78, v118
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s18
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s67, v69
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v68, s3, v82, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v72, s78, v119
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s17
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s67, v70
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v69, s3, v130, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v73, s78, v120
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s16
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s67, v71
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v70, s3, v83, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v74, s78, v121
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s15
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s67, v72
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v71, s3, v84, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v75, s78, v122
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s14
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s67, v73
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v72, s3, v85, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v77, s78, v124
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s13
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s67, v74
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v73, s3, v131, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v76, s78, v123
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s12
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s67, v75
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v74, s3, v86, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v78, s78, v125
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s9
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s5, s67, v77
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v75, s3, v87, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v79, s78, v126
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s8
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s67, v76
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v76, s3, v89, 1
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s7
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v80, s78, v127
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s67, v78
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v77, s3, v88, 1
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s5
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s67, v79
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v78, s3, v90, 1
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s6
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v79, s3, v91, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s67, v80
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v80, s3, v92, 1
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s20, s11
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
	s_and_b32 vcc_lo, s20, s10
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
	buffer_load_u16 v72, v72, s[68:71], 0 offen
	buffer_load_u16 v68, v68, s[68:71], 0 offen
	buffer_load_u16 v80, v80, s[68:71], 0 offen
	buffer_load_u16 v77, v77, s[68:71], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s24, v234, 1
	v_readlane_b32 s31, v234, 8
	v_readlane_b32 s25, v234, 2
	v_readlane_b32 s26, v234, 3
	v_readlane_b32 s27, v234, 4
	v_readlane_b32 s28, v234, 5
	v_readlane_b32 s29, v234, 6
	v_readlane_b32 s30, v234, 7
	v_dual_mov_b32 v177, s31 :: v_dual_add_nc_u32 v178, 0, v136
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v176, s30 :: v_dual_mov_b32 v175, s29
	v_dual_mov_b32 v174, s28 :: v_dual_mov_b32 v173, s27
	v_dual_mov_b32 v172, s26 :: v_dual_mov_b32 v171, s25
	v_mov_b32_e32 v170, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v169, s78, v109
	v_or_b32_e32 v168, s78, v110
	v_or_b32_e32 v167, s78, v108
	v_or_b32_e32 v165, s78, v107
	v_or_b32_e32 v166, s78, v106
	v_or_b32_e32 v162, s78, v105
	v_or_b32_e32 v160, s78, v104
	v_or_b32_e32 v158, s78, v103
	v_or_b32_e32 v157, s78, v102
	v_or_b32_e32 v156, s78, v101
	v_or_b32_e32 v155, s78, v100
	v_or_b32_e32 v154, s78, v99
	v_or_b32_e32 v164, s78, v97
	v_or_b32_e32 v163, s78, v98
	v_or_b32_e32 v161, s78, v96
	v_or_b32_e32 v159, s78, v95
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v168
	v_cmp_gt_i32_e64 s3, s67, v169
	v_cmp_gt_i32_e64 s21, s67, v165
	v_cmp_gt_i32_e64 s22, s67, v167
	v_cmp_gt_i32_e64 s23, s67, v162
	v_cmp_gt_i32_e64 s24, s67, v166
	v_cmp_gt_i32_e64 s25, s67, v158
	v_cmp_gt_i32_e64 s26, s67, v160
	v_cmp_gt_i32_e64 s27, s67, v156
	v_cmp_gt_i32_e64 s28, s67, v157
	v_cmp_gt_i32_e64 s29, s67, v154
	v_cmp_gt_i32_e64 s30, s67, v155
	v_cmp_gt_i32_e64 s31, s67, v163
	v_cmp_gt_i32_e64 s33, s67, v164
	v_cmp_gt_i32_e64 s34, s67, v159
	v_cmp_gt_i32_e64 s35, s67, v161
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s95, s2, s3
	s_and_b32 s96, s2, vcc_lo
	s_and_b32 s97, s2, s22
	s_and_b32 s98, s2, s21
	s_and_b32 s103, s2, s24
	s_and_b32 s99, s2, s23
	s_and_b32 s102, s2, s26
	s_and_b32 s101, s2, s25
	s_and_b32 vcc_hi, s2, s28
	s_and_b32 s100, s2, s27
	s_and_b32 s83, s2, s30
	s_and_b32 s104, s2, s29
	s_and_b32 s81, s2, s33
	s_and_b32 s62, s2, s31
	s_and_b32 s85, s2, s35
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s84, s2, s34
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
	ds_load_b128 v[65:68], v178
	ds_load_b128 v[178:181], v178 offset:2048
	ds_load_b128 v[182:185], v143 offset:2048
	ds_load_b128 v[186:189], v144
	ds_load_b128 v[194:197], v144 offset:2048
	ds_load_b128 v[190:193], v145
	ds_load_b128 v[198:201], v145 offset:2048
	ds_load_b128 v[202:205], v146
	ds_load_b128 v[210:213], v146 offset:2048
	ds_load_b128 v[206:209], v147
	ds_load_b128 v[214:217], v147 offset:2048
	ds_load_b128 v[218:221], v148
	ds_load_b128 v[226:229], v148 offset:2048
	ds_load_b128 v[222:225], v149
	ds_load_b128 v[230:233], v149 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[33:40], v[170:177]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[178:185], v[33:40], v[170:177]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[186:193], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[194:201], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[202:209], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[210:217], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[218:225], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[226:233], v[57:64], v[65:72]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v169, v137
	v_cmp_le_i32_e64 s3, v168, v137
	v_cmp_le_i32_e64 s21, v167, v137
	v_cmp_le_i32_e64 s22, v165, v137
	v_cmp_le_i32_e64 s23, v166, v137
	v_cmp_le_i32_e64 s24, v162, v137
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s36, vcc_lo, s95
	s_and_b32 s3, s3, s96
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v160, v137
	v_cmp_le_i32_e64 s26, v158, v137
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s97
	s_and_b32 s22, s22, s98
	s_and_not1_b32 s37, s95, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s96, exec_lo
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v157, v137
	v_cmp_le_i32_e64 s28, v156, v137
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s103
	s_and_b32 s24, s24, s99
	s_or_b32 s95, s37, s36
	s_or_b32 s96, s38, s3
	s_and_not1_b32 s3, s97, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s36, s98, exec_lo
	s_and_b32 s22, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v155, v137
	v_cmp_le_i32_e64 s30, v154, v137
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s102
	s_and_b32 s26, s26, s101
	s_or_b32 s97, s3, s21
	s_or_b32 s98, s36, s22
	s_and_not1_b32 s3, s103, exec_lo
	s_and_b32 s21, s23, exec_lo
	s_and_not1_b32 s22, s99, exec_lo
	s_and_b32 s23, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v164, v137
	v_cmp_le_i32_e64 s33, v163, v137
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, vcc_hi
	s_and_b32 s28, s28, s100
	s_or_b32 s103, s3, s21
	s_or_b32 s99, s22, s23
	s_and_not1_b32 s3, s102, exec_lo
	s_and_b32 s21, s25, exec_lo
	s_and_not1_b32 s22, s101, exec_lo
	s_and_b32 s23, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v161, v137
	v_cmp_le_i32_e64 s35, v159, v137
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s83
	s_and_b32 s30, s30, s104
	s_or_b32 s102, s3, s21
	s_or_b32 s101, s22, s23
	s_and_not1_b32 s3, vcc_hi, exec_lo
	s_and_b32 s21, s27, exec_lo
	s_and_not1_b32 s22, s100, exec_lo
	s_and_b32 s23, s28, exec_lo
	s_and_b32 s31, s31, s81
	s_and_b32 s33, s33, s62
	s_or_b32 vcc_hi, s3, s21
	s_or_b32 s100, s22, s23
	s_and_not1_b32 s3, s83, exec_lo
	s_and_b32 s21, s29, exec_lo
	s_and_not1_b32 s22, s104, exec_lo
	s_and_b32 s23, s30, exec_lo
	s_and_b32 s34, s34, s85
	s_and_b32 s35, s35, s84
	s_or_b32 s83, s3, s21
	s_or_b32 s104, s22, s23
	s_and_not1_b32 s3, s81, exec_lo
	s_and_b32 s21, s31, exec_lo
	s_and_not1_b32 s22, s62, exec_lo
	s_and_b32 s23, s33, exec_lo
	s_or_b32 s81, s3, s21
	s_or_b32 s62, s22, s23
	s_and_not1_b32 s3, s85, exec_lo
	s_and_b32 s21, s34, exec_lo
	s_and_not1_b32 s22, s84, exec_lo
	s_and_b32 s23, s35, exec_lo
	s_or_b32 s85, s3, s21
	s_or_b32 s84, s22, s23
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s77
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v169, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v169, v139
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v168, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v168, v139
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v167, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v167, v139
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v165, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v165, v139
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v166, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v166, v139
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v162, v138
	v_cmp_ge_i32_e64 s33, v157, v138
	v_cmp_ge_i32_e64 s34, v156, v138
	v_cmp_ge_i32_e64 s37, v164, v138
	v_cmp_ge_i32_e64 s38, v163, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s41, v162, v139
	v_cmp_le_i32_e64 s44, v157, v139
	s_mov_b32 s66, s4
	s_mov_b32 s4, s77
	s_mov_b32 s77, s45
	v_cmp_le_i32_e64 s45, v156, v139
	v_cmp_le_i32_e64 s48, v164, v139
	v_cmp_le_i32_e64 s49, v163, v139
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s64, s3
	s_and_b32 s21, s21, s22
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v160, v138
	v_cmp_ge_i32_e64 s31, v158, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v160, v139
	v_cmp_le_i32_e64 s43, v158, v139
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s95
	s_and_b32 s21, s21, s96
	s_and_b32 s22, s23, s24
	s_and_b32 s23, s25, s26
	s_and_b32 s22, s22, s97
	s_and_b32 s23, s23, s98
	s_and_b32 s24, s27, s28
	s_and_b32 s25, s29, s41
	s_and_b32 s28, s33, s44
	s_and_b32 s29, s34, s45
	s_and_b32 s33, s37, s48
	s_and_b32 s34, s38, s49
	s_and_not1_b32 s37, s95, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s38, s96, exec_lo
	s_and_b32 s21, s21, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v155, v138
	v_cmp_ge_i32_e64 s36, v154, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v155, v139
	v_cmp_le_i32_e64 s47, v154, v139
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s24, s24, s103
	s_and_b32 s25, s25, s99
	s_and_b32 s26, s30, s42
	s_and_b32 s27, s31, s43
	s_or_b32 s95, s37, s3
	s_or_b32 s96, s38, s21
	s_and_not1_b32 s3, s97, exec_lo
	s_and_b32 s21, s22, exec_lo
	s_and_not1_b32 s22, s98, exec_lo
	s_and_b32 s23, s23, exec_lo
	s_and_b32 s26, s26, s102
	s_and_b32 s27, s27, s101
	s_or_b32 s97, s3, s21
	s_or_b32 s98, s22, s23
	s_and_not1_b32 s3, s103, exec_lo
	s_and_b32 s21, s24, exec_lo
	s_and_not1_b32 s22, s99, exec_lo
	s_and_b32 s23, s25, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v161, v138
	v_cmp_ge_i32_e64 s40, v159, v138
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s50, v161, v139
	v_cmp_le_i32_e64 s51, v159, v139
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s28, s28, vcc_hi
	s_and_b32 s29, s29, s100
	s_and_b32 s30, s35, vcc_lo
	s_and_b32 s31, s36, s47
	s_or_b32 s103, s3, s21
	s_or_b32 s99, s22, s23
	s_and_not1_b32 s3, s102, exec_lo
	s_and_b32 s21, s26, exec_lo
	s_and_not1_b32 s22, s101, exec_lo
	s_and_b32 s23, s27, exec_lo
	s_and_b32 s30, s30, s83
	s_and_b32 s31, s31, s104
	s_or_b32 s102, s3, s21
	s_or_b32 s101, s22, s23
	s_and_not1_b32 s3, vcc_hi, exec_lo
	s_and_b32 s21, s28, exec_lo
	s_and_not1_b32 s22, s100, exec_lo
	s_and_b32 s23, s29, exec_lo
	s_and_b32 s33, s33, s81
	s_and_b32 s34, s34, s62
	s_and_b32 s35, s39, s50
	s_and_b32 s36, s40, s51
	s_or_b32 vcc_hi, s3, s21
	s_or_b32 s100, s22, s23
	s_and_not1_b32 s3, s83, exec_lo
	s_and_b32 s21, s30, exec_lo
	s_and_not1_b32 s22, s104, exec_lo
	s_and_b32 s23, s31, exec_lo
	s_and_b32 s35, s35, s85
	s_and_b32 s36, s36, s84
	s_or_b32 s83, s3, s21
	s_or_b32 s104, s22, s23
	s_and_not1_b32 s3, s81, exec_lo
	s_and_b32 s21, s33, exec_lo
	s_and_not1_b32 s22, s62, exec_lo
	s_and_b32 s23, s34, exec_lo
	s_or_b32 s81, s3, s21
	s_or_b32 s62, s22, s23
	s_and_not1_b32 s3, s85, exec_lo
	s_and_b32 s21, s35, exec_lo
	s_and_not1_b32 s22, s84, exec_lo
	s_and_b32 s23, s36, exec_lo
	s_mov_b32 s45, s77
	s_mov_b32 s77, s4
	s_mov_b32 s4, s66
	s_or_b32 s85, s3, s21
	s_or_b32 s84, s22, s23
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_readlane_b32 s71, v234, 0
.LBB0_12:                               ; %Flow240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v48, null, v73, v73, v25
	v_div_scale_f32 v50, null, v73, v73, v26
	v_div_scale_f32 v53, null, v73, v73, v27
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v50
	v_div_scale_f32 v52, vcc_lo, v25, v73, v25
	v_rcp_f32_e32 v56, v53
	v_div_scale_f32 v55, s0, v26, v73, v26
	v_div_scale_f32 v57, null, v73, v73, v28
	v_div_scale_f32 v62, null, v73, v73, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v48, v49, 1.0
	v_fma_f32 v44, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v57
	v_fma_f32 v60, -v53, v56, 1.0
	v_div_scale_f32 v64, null, v73, v73, v18
	v_fmac_f32_e32 v49, v42, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s61, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v60, v56
	v_fmac_f32_e32 v51, v44, v51
	v_div_scale_f32 v60, s1, v27, v73, v27
	v_mul_f32_e32 v54, v52, v49
	v_fma_f32 v61, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v59, v55, v51
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_fma_f32 v46, -v48, v54, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s76, v106
	v_cmp_gt_i32_e64 s7, s76, v105
	v_cmp_gt_i32_e64 s8, s76, v104
	v_cmp_gt_i32_e64 s9, s76, v103
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v46, v49
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s76, v102
	v_cmp_gt_i32_e64 s11, s76, v101
	v_cmp_gt_i32_e64 s12, s76, v100
	v_cmp_gt_i32_e64 s13, s76, v99
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v48, v54, v52
	v_fma_f32 v52, -v50, v59, v55
	v_fmac_f32_e32 v58, v61, v58
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s76, v97
	v_cmp_gt_i32_e64 s15, s76, v98
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v48, v48, v49, v54
	v_fmac_f32_e32 v59, v52, v51
	v_div_scale_f32 v52, null, v73, v73, v29
	v_div_scale_f32 v54, s3, v28, v73, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v48, v73, v25
	v_fma_f32 v48, -v50, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v52
	v_mul_f32_e32 v61, v54, v58
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v48, v48, v51, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v51, -v57, v61, v54
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s76, v96
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v26, v48, v73, v26
	v_fma_f32 v59, -v52, v55, 1.0
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v47, 32, v109
	v_or_b32_e32 v46, 34, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s76, v95
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v55, v59, v55
	v_fmac_f32_e32 v61, v51, v58
	v_div_scale_f32 v51, s4, v29, v73, v29
	v_mul_f32_e32 v49, v60, v56
	v_div_scale_f32 v59, null, v73, v73, v31
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v45, 36, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s76, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v53, v49, v60
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s76, v46
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v44, 38, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s76, v45
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v43, 40, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v50, v56
	v_rcp_f32_e32 v50, v62
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v42, 42, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s76, v44
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v41, 44, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v53, v49, v60
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s76, v43
	v_cmp_gt_i32_e64 s23, s76, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v40, 46, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s76, v41
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v39, 48, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v62, v50, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v38, 50, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s76, v40
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v37, 52, v109
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s76, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v53, v50
	v_div_fmas_f32 v48, v48, v56, v49
	v_div_scale_f32 v56, s1, v30, v73, v30
	v_fma_f32 v49, -v57, v61, v54
	v_rcp_f32_e32 v53, v59
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v56, v50
	v_mul_f32_e32 v54, v51, v55
	v_div_fmas_f32 v49, v49, v58, v61
	v_div_scale_f32 v57, null, v73, v73, v32
	v_div_fixup_f32 v27, v48, v73, v27
	v_fma_f32 v58, -v52, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v28, v49, v73, v28
	v_fma_f32 v61, -v59, v53, 1.0
	v_rcp_f32_e32 v63, v57
	v_fma_f32 v48, -v62, v60, v56
	v_fmac_f32_e32 v54, v58, v55
	v_div_scale_f32 v58, null, v73, v73, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v61, v53 :: v_dual_fmac_f32 v60, v48, v50
	v_div_scale_f32 v49, s3, v31, v73, v31
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
	v_div_scale_f32 v61, s5, v32, v73, v32
	v_fma_f32 v62, -v58, v52, 1.0
	v_div_fmas_f32 v50, v54, v50, v60
	v_fmac_f32_e32 v48, v55, v53
	v_div_scale_f32 v60, s1, v17, v73, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v62, v52
	v_div_fixup_f32 v30, v50, v73, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v59, v48, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v59, null, v73, v73, v20
	v_mul_f32_e32 v50, v60, v52
	v_div_fmas_f32 v48, v49, v53, v48
	v_rcp_f32_e32 v54, v64
	v_div_fixup_f32 v29, v51, v73, v29
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v53, -v58, v50, v60
	v_div_fixup_f32 v31, v48, v73, v31
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
	v_div_scale_f32 v58, s4, v19, v73, v19
	v_fmac_f32_e32 v54, v51, v54
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s76, v38
	v_cmp_gt_i32_e64 s28, s76, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v60, -v59, v53, 1.0
	v_mul_f32_e32 v56, v61, v63
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 54, v109
	v_or_b32_e32 v35, 56, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v60, v53
	v_fma_f32 v55, -v57, v56, v61
	v_div_scale_f32 v60, null, v73, v73, v22
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 60, v109
	v_or_b32_e32 v34, 58, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v55, v63
	v_div_scale_f32 v55, null, v73, v73, v19
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s76, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v57, v56, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v55
	v_div_scale_f32 v57, s3, v18, v73, v18
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s76, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v49, v49, v63, v56
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v56, v57, v54
	v_rcp_f32_e32 v63, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v32, v49, v73, v32
	v_fma_f32 v61, -v55, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v64, v56, v57
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v61, v51
	v_div_scale_f32 v61, null, v73, v73, v21
	v_div_fmas_f32 v48, v48, v52, v50
	v_dual_fmac_f32 v56, v49, v54 :: v_dual_mul_f32 v49, v58, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v61
	v_div_scale_f32 v52, s1, v20, v73, v20
	v_div_fixup_f32 v17, v48, v73, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v64, v56, v57
	v_fma_f32 v57, -v55, v49, v58
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v61, v50, 1.0
	v_fmac_f32_e32 v49, v57, v51
	v_fma_f32 v57, -v60, v63, 1.0
	v_mul_f32_e32 v62, v52, v53
	v_div_fmas_f32 v48, v48, v54, v56
	v_fmac_f32_e32 v50, v64, v50
	v_div_scale_f32 v56, s3, v21, v73, v21
	v_fmac_f32_e32 v63, v57, v63
	v_fma_f32 v54, -v59, v62, v52
	v_div_fixup_f32 v18, v48, v73, v18
	v_fma_f32 v48, -v55, v49, v58
	v_div_scale_f32 v57, null, v73, v73, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v62, v54, v53
	v_mul_f32_e32 v54, v56, v50
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v55, s5, v22, v73, v22
	v_div_fmas_f32 v48, v48, v51, v49
	v_fma_f32 v49, -v59, v62, v52
	v_fma_f32 v51, -v61, v54, v56
	v_rcp_f32_e32 v52, v57
	v_div_scale_f32 v59, null, v73, v73, v24
	v_mul_f32_e32 v58, v55, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v51, v50
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v51, v59
	v_div_fmas_f32 v49, v49, v53, v62
	v_fma_f32 v53, -v60, v58, v55
	v_div_fixup_f32 v19, v48, v73, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v62, -v57, v52, 1.0
	v_fma_f32 v48, -v61, v54, v56
	v_div_fixup_f32 v20, v49, v73, v20
	v_fmac_f32_e32 v58, v53, v63
	v_div_scale_f32 v49, s1, v23, v73, v23
	v_fmac_f32_e32 v52, v62, v52
	v_fma_f32 v53, -v59, v51, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v61, null, v73, v73, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v53, v51
	v_div_fmas_f32 v48, v48, v50, v54
	v_fma_f32 v50, -v60, v58, v55
	v_mul_f32_e32 v54, v49, v52
	v_div_scale_f32 v53, null, v73, v73, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v55, s3, v24, v73, v24
	v_div_fmas_f32 v50, v50, v63, v58
	v_rcp_f32_e32 v56, v53
	v_fma_f32 v58, -v57, v54, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v60, v55, v51
	v_div_fixup_f32 v21, v48, v73, v21
	v_div_fixup_f32 v22, v50, v73, v22
	v_rcp_f32_e32 v50, v61
	v_fmac_f32_e32 v54, v58, v52
	v_fma_f32 v48, -v59, v60, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v63, null, v73, v73, v12
	v_fma_f32 v58, -v53, v56, 1.0
	v_fma_f32 v49, -v57, v54, v49
	v_div_scale_f32 v57, null, v73, v73, v11
	v_fmac_f32_e32 v60, v48, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v58, v56
	v_fma_f32 v62, -v61, v50, 1.0
	v_rcp_f32_e32 v58, v57
	v_div_fmas_f32 v49, v49, v52, v54
	v_fma_f32 v52, -v59, v60, v55
	v_div_scale_f32 v55, s1, v10, v73, v10
	v_fmac_f32_e32 v50, v62, v50
	v_div_scale_f32 v48, s4, v9, v73, v9
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v65, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v59, -v57, v58, 1.0
	v_mul_f32_e32 v64, v55, v50
	v_mul_f32_e32 v54, v48, v56
	v_div_fmas_f32 v51, v52, v51, v60
	v_div_fixup_f32 v23, v49, v73, v23
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, s5, v11, v73, v11
	v_fma_f32 v52, -v61, v64, v55
	v_fma_f32 v62, -v53, v54, v48
	v_div_fixup_f32 v24, v51, v73, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v59, v58
	v_fma_f32 v51, -v63, v65, 1.0
	v_fmac_f32_e32 v64, v52, v50
	v_div_scale_f32 v52, null, v73, v73, v13
	v_fma_f32 v49, -v57, v60, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v62, v56 :: v_dual_fmac_f32 v65, v51, v65
	v_div_scale_f32 v51, s3, v12, v73, v12
	v_fmac_f32_e32 v60, v49, v58
	v_rcp_f32_e32 v49, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v53, v54, v48
	v_fma_f32 v53, -v61, v64, v55
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v55, null, v73, v73, v14
	v_div_fmas_f32 v48, v48, v56, v54
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v54, v51, v65
	v_div_fmas_f32 v50, v53, v50, v64
	v_fma_f32 v53, -v57, v60, v59
	v_fma_f32 v56, -v52, v49, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v57, v55
	v_div_fixup_f32 v9, v48, v73, v9
	v_div_fmas_f32 v53, v53, v58, v60
	v_fma_f32 v58, -v63, v54, v51
	v_fmac_f32_e32 v49, v56, v49
	v_div_scale_f32 v56, s1, v13, v73, v13
	v_div_fixup_f32 v10, v50, v73, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v58, v65
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v56, v49
	v_fma_f32 v50, -v55, v57, 1.0
	v_div_fixup_f32 v11, v53, v73, v11
	v_fma_f32 v51, -v63, v54, v51
	v_div_scale_f32 v53, null, v73, v73, v15
	v_fma_f32 v58, -v52, v48, v56
	v_fmac_f32_e32 v57, v50, v57
	v_div_scale_f32 v50, s4, v14, v73, v14
	v_div_fmas_f32 v51, v51, v65, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v58, v49
	v_rcp_f32_e32 v59, v53
	v_mul_f32_e32 v54, v50, v57
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v51, v73, v12
	v_fma_f32 v51, -v52, v48, v56
	v_div_scale_f32 v58, null, v73, v73, v16
	v_fma_f32 v52, -v55, v54, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v48, v51, v49, v48
	v_div_scale_f32 v49, null, v73, v73, v1
	v_fma_f32 v56, -v53, v59, 1.0
	v_rcp_f32_e32 v60, v58
	v_fmac_f32_e32 v54, v52, v57
	v_rcp_f32_e32 v52, v49
	v_div_scale_f32 v51, s1, v15, v73, v15
	v_fmac_f32_e32 v59, v56, v59
	v_div_scale_f32 v56, null, v73, v73, v2
	v_div_fixup_f32 v13, v48, v73, v13
	v_fma_f32 v50, -v55, v54, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v58, v60, 1.0
	v_rcp_f32_e32 v62, v56
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v61, -v49, v52, 1.0
	v_mul_f32_e32 v55, v51, v59
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v60, v48, v60
	v_div_scale_f32 v48, s3, v16, v73, v16
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, null, v73, v73, v3
	v_div_fmas_f32 v50, v50, v57, v54
	v_fma_f32 v54, -v53, v55, v51
	v_mul_f32_e32 v57, v48, v60
	v_div_scale_f32 v63, s4, v1, v73, v1
	v_fma_f32 v64, -v56, v62, 1.0
	v_rcp_f32_e32 v65, v61
	v_fmac_f32_e32 v55, v54, v59
	v_fma_f32 v54, -v58, v57, v48
	v_mul_f32_e32 v66, v63, v52
	v_fmac_f32_e32 v62, v64, v62
	v_div_scale_f32 v64, s5, v2, v73, v2
	v_div_fixup_f32 v14, v50, v73, v14
	v_fma_f32 v50, -v53, v55, v51
	v_fmac_f32_e32 v57, v54, v60
	v_fma_f32 v51, -v49, v66, v63
	v_mul_f32_e32 v53, v64, v62
	v_fma_f32 v54, -v61, v65, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v58, v57, v48
	v_fmac_f32_e32 v66, v51, v52
	v_fma_f32 v51, -v56, v53, v64
	v_fmac_f32_e32 v65, v54, v65
	v_div_scale_f32 v54, s1, v3, v73, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v49, v66, v63
	v_fmac_f32_e32 v53, v51, v62
	v_div_fmas_f32 v50, v50, v59, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v54, v65
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v55, null, v73, v73, v4
	v_div_fmas_f32 v48, v48, v60, v57
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v50, v73, v15
	v_div_fmas_f32 v49, v49, v52, v66
	v_fma_f32 v52, -v56, v53, v64
	v_fma_f32 v56, -v61, v51, v54
	v_rcp_f32_e32 v57, v55
	v_div_fixup_f32 v16, v48, v73, v16
	v_div_fixup_f32 v1, v49, v73, v1
	v_div_scale_f32 v49, null, v73, v73, v5
	v_fmac_f32_e32 v51, v56, v65
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v59, null, v73, v73, v8
	v_div_fmas_f32 v52, v52, v62, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v48, -v61, v51, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v50, -v55, v57, 1.0
	v_rcp_f32_e32 v61, v59
	v_div_fixup_f32 v2, v52, v73, v2
	v_div_fmas_f32 v48, v48, v65, v51
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v57, v50, v57
	v_div_scale_f32 v50, null, v73, v73, v6
	v_div_scale_f32 v52, null, v73, v73, v7
	v_div_scale_f32 v53, vcc_lo, v4, v73, v4
	v_div_fixup_f32 v3, v48, v73, v3
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
	v_div_scale_f32 v48, s1, v5, v73, v5
	v_fma_f32 v62, -v55, v58, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v50, v54, 1.0
	v_dual_fmac_f32 v61, v65, v61 :: v_dual_mul_f32 v64, v48, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v52, v56, 1.0
	v_fmac_f32_e32 v58, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v60, v54
	v_div_scale_f32 v60, s3, v6, v73, v6
	v_fma_f32 v62, -v49, v64, v48
	v_fmac_f32_e32 v56, v63, v56
	v_div_scale_f32 v63, s4, v7, v73, v7
	v_mul_f32_e32 v66, v60, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v62, v51
	v_div_scale_f32 v65, s5, v8, v73, v8
	v_mul_f32_e32 v67, v63, v56
	v_fma_f32 v53, -v55, v58, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v48, -v49, v64, v48
	v_fma_f32 v55, -v50, v66, v60
	v_mul_f32_e32 v68, v65, v61
	v_fma_f32 v62, -v52, v67, v63
	v_div_fmas_f32 v53, v53, v57, v58
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v66, v55, v54
	v_div_fmas_f32 v48, v48, v51, v64
	v_fma_f32 v49, -v59, v68, v65
	v_fmac_f32_e32 v67, v62, v56
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v50, v66, v60
	v_div_fixup_f32 v5, v48, v73, v5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v48, s71, v111
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v68, v49, v61
	v_fma_f32 v49, -v52, v67, v63
	v_div_fmas_f32 v50, v50, v54, v66
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v48, v48, s76
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v59, v68, v65
	v_div_fmas_f32 v49, v49, v56, v67
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s76, v109
	v_cmp_gt_i32_e64 s3, s76, v110
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v51, v51, v61, v68
	v_div_fixup_f32 v7, v49, v73, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v109, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v50, v73, v6
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s76, v108
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v50, v48, v110, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v51, v73, v8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v51, v48, v108, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s76, v107
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v25, v49, s[60:63], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_add_lshl_u32 v25, v48, v107, 2
	s_clause 0x1
	buffer_store_b32 v26, v50, s[60:63], 0 offen
	buffer_store_b32 v27, v51, s[60:63], 0 offen
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
	buffer_store_b32 v28, v25, s[60:63], 0 offen
	buffer_store_b32 v29, v26, s[60:63], 0 offen
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
	buffer_store_b32 v30, v27, s[60:63], 0 offen
	buffer_store_b32 v31, v49, s[60:63], 0 offen
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
	buffer_store_b32 v32, v25, s[60:63], 0 offen
	buffer_store_b32 v17, v26, s[60:63], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v99, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_clause 0x1
	buffer_store_b32 v18, v27, s[60:63], 0 offen
	buffer_store_b32 v19, v28, s[60:63], 0 offen
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
	buffer_store_b32 v20, v17, s[60:63], 0 offen
	buffer_store_b32 v21, v18, s[60:63], 0 offen
	v_add_lshl_u32 v17, v48, v95, 2
	v_add_lshl_u32 v18, v48, v47, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v19, s[60:63], 0 offen
	buffer_store_b32 v23, v25, s[60:63], 0 offen
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
	buffer_store_b32 v24, v17, s[60:63], 0 offen
	buffer_store_b32 v9, v18, s[60:63], 0 offen
	v_add_lshl_u32 v9, v48, v44, 2
	s_clause 0x1
	buffer_store_b32 v10, v19, s[60:63], 0 offen
	buffer_store_b32 v11, v20, s[60:63], 0 offen
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
	buffer_store_b32 v12, v9, s[60:63], 0 offen
	buffer_store_b32 v13, v10, s[60:63], 0 offen
	v_add_lshl_u32 v9, v48, v40, 2
	v_add_lshl_u32 v10, v48, v39, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[60:63], 0 offen
	buffer_store_b32 v15, v17, s[60:63], 0 offen
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
	v_div_fixup_f32 v4, v53, v73, v4
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
	buffer_store_b32 v16, v9, s[60:63], 0 offen
	buffer_store_b32 v1, v10, s[60:63], 0 offen
	v_add_lshl_u32 v1, v48, v36, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s76, v34
	v_cmp_gt_i32_e32 vcc_lo, s76, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[60:63], 0 offen
	buffer_store_b32 v3, v12, s[60:63], 0 offen
	v_add_lshl_u32 v2, v48, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s76, v0
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
	buffer_store_b32 v4, v1, s[60:63], 0 offen
	buffer_store_b32 v5, v2, s[60:63], 0 offen
	buffer_store_b32 v6, v3, s[60:63], 0 offen
	buffer_store_b32 v7, v9, s[60:63], 0 offen
	buffer_store_b32 v8, v0, s[60:63], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp29:
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
		.amdhsa_next_free_vgpr 235
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 235
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14412
; TotalNumSgprs: 107
; NumVgprs: 235
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 235
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
    .sgpr_count:     107
    .sgpr_spill_count: 9
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     235
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
