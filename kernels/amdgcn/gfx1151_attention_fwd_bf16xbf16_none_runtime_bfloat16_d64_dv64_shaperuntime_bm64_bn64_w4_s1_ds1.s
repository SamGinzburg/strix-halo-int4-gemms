	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s46, s[0:1], 0x5c
	s_load_b64 s[40:41], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v127, 6, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v33, v0, 6, 1
	v_or_b32_e32 v3, 8, v127
	v_or_b32_e32 v6, 32, v127
	v_or_b32_e32 v4, 16, v127
	v_or_b32_e32 v5, 24, v127
	v_or_b32_e32 v7, 2, v127
	v_or_b32_e32 v8, 4, v127
	v_or_b32_e32 v9, 6, v127
	v_or_b32_e32 v10, 10, v127
	v_or_b32_e32 v11, 12, v127
	v_or_b32_e32 v12, 14, v127
	v_or_b32_e32 v13, 18, v127
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[97:98], null, s46, v127, v[65:66]
	s_cselect_b32 s102, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s59, s46, v65
	s_cselect_b32 s30, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 6
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v159, s46, 3, v97
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v127
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[98:99], null, s46, 24, v[97:98]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s33, v5
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v160, s46, 4, v97
	v_lshl_add_u32 v161, s46, 5, v97
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v162, s46, 1, v97
	v_mad_u64_u32 v[99:100], null, s46, 6, v[97:98]
	v_lshl_add_u32 v163, s46, 2, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[100:101], null, s46, 10, v[97:98]
	v_mad_u64_u32 v[101:102], null, s46, 12, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v14, 20, v127
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[102:103], null, s46, 14, v[97:98]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[103:104], null, s46, 18, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s4, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v15, 22, v127
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v16, 26, v127
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s4, s7, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[104:105], null, s46, 20, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s4, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[105:106], null, s46, 22, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s7, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s2, s5
	s_cmp_ge_u32 s2, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, 28, v127
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s7, s3, s66
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s31, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s65
	s_xor_b32 s9, s64, s65
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s8, 0, s6
	s_ashr_i32 s34, s9, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 30, v127
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[106:107], null, s46, 26, v[97:98]
	v_mad_u64_u32 v[107:108], null, s46, 28, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, 34, v127
	v_or_b32_e32 v20, 36, v127
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[108:109], null, s46, 30, v[97:98]
	v_mad_u64_u32 v[109:110], null, s46, 34, v[97:98]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s33, v6
	v_or_b32_e32 v6, s33, v7
	v_or_b32_e32 v7, s33, v8
	v_or_b32_e32 v8, s33, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s33, v10
	v_or_b32_e32 v10, s33, v11
	v_or_b32_e32 v11, s33, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s33, v13
	v_or_b32_e32 v13, s33, v14
	v_or_b32_e32 v14, s33, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s8, s8, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s33, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s8, s2, s8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s33, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s8, s2, s8
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s8, s5, s8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s33, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s10, s8, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v21, 38, v127
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s9, s5, s10
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s35, s10, s8
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s45, s7, s33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s66, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s44, s45, s46
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s44, v97, 1
	v_add_lshl_u32 v2, s44, v159, 1
	v_add_lshl_u32 v3, s44, v160, 1
	v_add_lshl_u32 v4, s44, v98, 1
	v_add_lshl_u32 v5, s44, v161, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v7
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, s59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s44, v99, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s7, s59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s44, v163, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v6
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s44, v162, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v9
	v_cmp_gt_i32_e64 s7, s66, v10
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, s44, v100, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s44, v101, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s66, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s66, v12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, s59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s44, v102, 1
	v_add_lshl_u32 v12, s44, v103, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s7, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s66, v13
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s8, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s66, v14
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v13, s44, v104, 1
	v_add_lshl_u32 v14, s44, v105, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s9, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s66, v15
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v18, s33, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s10, s59
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v126, 40, v127
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[110:111], null, s46, 36, v[97:98]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s66, v16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, s44, v106, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s33, v20
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[111:112], null, s46, 38, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s44, v107, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s11, s59
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v22, 42, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s66, v17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s33, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s12, s59
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v23, 44, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s66, v18
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[112:113], null, s46, 40, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, s44, v108, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, s33, v126
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, s44, v109, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s13, s59
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[113:114], null, s46, 42, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v24, 46, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s66, v19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, s33, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s14, s59
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v25, 48, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s66, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, s44, v110, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[114:115], null, s46, 44, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, s33, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, s44, v111, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, s59
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[115:116], null, s46, 46, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v152, 50, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s66, v21
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, s33, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, s59
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v155, 56, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s66, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, s44, v112, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[116:117], null, s46, 48, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, s33, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, s44, v113, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s59
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[117:118], null, s46, 50, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v153, 52, v127
	v_or_b32_e32 v156, 58, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s66, v23
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v154, 54, v127
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v26, s33, v152
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s66, v24
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v23, s44, v114, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[118:119], null, s46, 56, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v29, s33, v155
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, s44, v115, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s59
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[119:120], null, s46, 58, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v157, 60, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s66, v25
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v27, s33, v153
	v_or_b32_e32 v30, s33, v156
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s20, s59
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, s33, v154
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s66, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, s44, v116, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[120:121], null, s46, 52, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, s44, v117, 1
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s21, s59
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[121:122], null, s46, 60, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v158, 62, v127
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s66, v29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v31, s33, v157
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s22, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s66, v27
	v_cmp_gt_i32_e64 s27, s66, v30
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v27, s44, v118, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[122:123], null, s46, 54, v[97:98]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s66, v28
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, s44, v119, 1
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s59
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[123:124], null, s46, 62, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v32, s33, v158
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s66, v31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v29, s44, v120, 1
	v_add_lshl_u32 v30, s44, v121, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s59
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s66, v32
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v31, s44, v122, 1
	v_add_lshl_u32 v32, s44, v123, 1
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s59
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s41, s41, 0xffff
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s59
	.loc	1 788 26                        ; attention.py:788:26
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
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s59
	.loc	1 788 26                        ; attention.py:788:26
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
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s35, s34
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s2, s34
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s67, 63
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s5
	s_mov_b32 s91, 0
	s_cvt_f32_u32 s2, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s7, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v164, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v165, 0, v34
	v_add_nc_u32_e32 v166, 0, v35
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s7, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v167, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s103, s2, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
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
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s33, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s33, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s67, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s8, s2, 31
	s_lshr_b32 s8, s8, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s8
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s8, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s91, s8, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s103, s103, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s30
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v33, 15, v0
	v_and_b32_e32 v34, 0x60, v0
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s104, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s33, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s67, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 26
	s_add_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s103, s103, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v34
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s71, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	v_and_b32_e32 v168, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s91, s103
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v86, v1, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_cmp_eq_u32_e64 s42, 0, v168
	v_mov_b32_e32 v6, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v67, s33, v86
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v67
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
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s16, 0
	v_writelane_b32 v255, s45, 0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s40, 1
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 7, v0
	v_writelane_b32 v255, s41, 2
	s_xor_b32 s8, s3, s64
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	v_lshlrev_b32_e32 v2, 7, v33
	v_writelane_b32 v255, s42, 3
	s_xor_b32 s9, s31, s8
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 4, v1
	v_writelane_b32 v255, s43, 4
	v_lshlrev_b32_e32 v3, 6, v34
	s_sub_i32 s8, s9, s8
	s_sub_i32 s9, 0, s6
	s_mul_i32 s10, s8, s64
	v_writelane_b32 v255, s16, 5
	s_mul_i32 s9, s9, s7
	v_or3_b32 v3, v2, v3, v4
	s_clause 0x1
	s_load_b128 s[72:75], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	v_lshlrev_b32_e32 v13, 1, v0
	v_writelane_b32 v255, s17, 6
	s_sub_i32 s3, s3, s10
	s_mul_hi_u32 s9, s7, s9
	s_abs_i32 s10, s3
	s_add_i32 s7, s7, s9
	v_writelane_b32 v255, s18, 7
	s_mul_hi_u32 s7, s10, s7
	v_xad_u32 v11, 0x60, v3, 0
	v_and_b32_e32 v12, 64, v0
	v_and_b32_e32 v13, 0x70, v13
	v_writelane_b32 v255, s19, 8
	v_add_nc_u32_e32 v5, 0, v3
	v_xad_u32 v6, v3, 16, 0
	v_xad_u32 v7, v3, 32, 0
	v_xad_u32 v8, v3, 48, 0
	v_writelane_b32 v255, s20, 9
	v_xad_u32 v9, v3, 64, 0
	v_xad_u32 v10, 0x50, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	s_ashr_i32 s3, s3, 31
	v_writelane_b32 v255, s21, 10
	s_ashr_i32 s5, s5, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s9, s7, s6
	s_xor_b32 s3, s3, s5
	s_sub_i32 s5, s10, s9
	v_writelane_b32 v255, s22, 11
	ds_load_b128 v[57:60], v11
	ds_load_b128 v[61:64], v3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s80, s71, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v169, 4, v12
	v_mov_b32_e32 v11, 0x7632
	v_or_b32_e32 v170, v4, v2
	v_lshlrev_b32_e32 v14, 7, v65
	v_lshrrev_b32_e32 v12, 3, v12
	v_xor_b32_e32 v4, v4, v13
	v_bfe_i32 v13, v0, 3, 1
	v_writelane_b32 v255, s23, 12
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s5, s6
	s_cmp_ge_u32 s5, s6
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[53:56], v10
	s_cselect_b32 s1, s9, s7
	s_cselect_b32 s5, s10, s5
	v_mov_b32_e32 v10, 0x5410
	v_or3_b32 v0, v14, v12, v4
	v_and_b32_e32 v4, 0x410, v13
	v_mul_u32_u24_e32 v1, 0x90, v1
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s80, 13
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s7, s1, 1
	s_cmp_ge_u32 s5, s6
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_cselect_b32 s1, s7, s1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s73, s73, 0xffff
	s_and_b32 s77, s75, 0xffff
	s_mov_b32 s76, s74
	s_mov_b32 s74, s78
	s_mov_b32 s75, s79
	v_cndmask_b32_e64 v10, 0x1054, v10, s42
	v_cndmask_b32_e64 v11, 0x3276, v11, s42
	v_xor_b32_e32 v173, v1, v4
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s72, 14
	ds_load_b128 v[41:44], v7
	ds_load_b128 v[45:48], v8
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v11, v11, 8, v11
	v_xor_b32_e32 v28, 0x840, v173
	v_writelane_b32 v255, s73, 15
	v_xor_b32_e32 v20, 0x60, v173
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v11, 0x760076, v11
	v_xor_b32_e32 v29, 0x850, v173
	v_add_nc_u32_e32 v200, 0, v28
	v_mov_b32_e32 v28, v25
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v6
	v_writelane_b32 v255, s74, 16
	v_dual_mov_b32 v218, v25 :: v_dual_add_nc_u32 v193, 0, v20
	v_add_nc_u32_e32 v201, 0, v29
	v_mov_b32_e32 v29, v25
	v_lshl_or_b32 v10, v10, 4, v10
	v_mov_b32_e32 v20, v25
	v_lshl_or_b32 v11, v11, 4, v11
	v_writelane_b32 v255, s75, 17
	v_mad_u64_u32 v[124:125], null, s71, v169, v[65:66]
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v171, s39, v67
	v_xor_b32_e32 v2, 16, v170
	v_xor_b32_e32 v3, 32, v170
	v_xor_b32_e32 v5, 48, v170
	v_xor_b32_e32 v6, 64, v170
	v_xor_b32_e32 v7, 0x50, v170
	v_xor_b32_e32 v8, 0x60, v170
	v_xor_b32_e32 v9, 0x70, v170
	v_and_b32_e32 v125, 0x5040504, v10
	v_and_b32_e32 v172, 0x7060706, v11
	v_xor_b32_e32 v10, 16, v0
	v_xor_b32_e32 v11, 32, v0
	v_xor_b32_e32 v12, 48, v0
	v_xor_b32_e32 v1, 64, v0
	v_xor_b32_e32 v4, 0x50, v0
	v_xor_b32_e32 v13, 0x60, v0
	v_xor_b32_e32 v14, 0x70, v0
	v_xor_b32_e32 v15, 16, v173
	v_xor_b32_e32 v16, 32, v173
	v_xor_b32_e32 v17, 48, v173
	v_xor_b32_e32 v18, 64, v173
	v_xor_b32_e32 v19, 0x50, v173
	v_xor_b32_e32 v21, 0x70, v173
	v_xor_b32_e32 v22, 0x820, v173
	v_xor_b32_e32 v23, 0x830, v173
	v_xor_b32_e32 v24, 0x810, v173
	v_xor_b32_e32 v26, 0x860, v173
	v_xor_b32_e32 v27, 0x870, v173
	v_xor_b32_e32 v30, 0x1040, v173
	v_xor_b32_e32 v31, 0x1050, v173
	v_xor_b32_e32 v32, 0x1060, v173
	v_xor_b32_e32 v65, 0x1070, v173
	v_xor_b32_e32 v66, 0x1010, v173
	v_xor_b32_e32 v67, 0x1020, v173
	v_xor_b32_e32 v68, 0x1030, v173
	v_xor_b32_e32 v69, 0x1860, v173
	v_xor_b32_e32 v70, 0x1870, v173
	v_xor_b32_e32 v71, 0x1840, v173
	v_xor_b32_e32 v72, 0x1850, v173
	v_xor_b32_e32 v73, 0x1820, v173
	v_xor_b32_e32 v74, 0x1830, v173
	v_xor_b32_e32 v75, 0x1810, v173
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s59, 18
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s1, s3
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s8, s8, s65
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s1, s3
	v_add_nc_u32_e32 v174, 0, v2
	v_add_nc_u32_e32 v175, 0, v3
	v_add_nc_u32_e32 v176, 0, v5
	v_add_nc_u32_e32 v177, 0, v6
	v_add_nc_u32_e32 v178, 0, v7
	v_add_nc_u32_e32 v179, 0, v8
	v_add_nc_u32_e32 v180, 0, v9
	v_add_nc_u32_e32 v181, 0, v10
	v_add_nc_u32_e32 v182, 0, v11
	v_add_nc_u32_e32 v183, 0, v12
	v_add_nc_u32_e32 v184, 0, v1
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v185, 0, v4
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v186, 0, v13
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v187, 0, v14
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v188, 0, v15
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v189, 0, v16
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v190, 0, v17
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v191, 0, v18
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v192, 0, v19
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_add_nc_u32 v194, 0, v21
	v_add_nc_u32_e32 v195, 0, v22
	v_add_nc_u32_e32 v196, 0, v23
	v_add_nc_u32_e32 v197, 0, v24
	v_add_nc_u32_e32 v198, 0, v26
	v_add_nc_u32_e32 v199, 0, v27
	v_add_nc_u32_e32 v202, 0, v30
	v_add_nc_u32_e32 v203, 0, v31
	v_add_nc_u32_e32 v204, 0, v32
	v_add_nc_u32_e32 v205, 0, v65
	v_add_nc_u32_e32 v206, 0, v66
	v_add_nc_u32_e32 v207, 0, v67
	v_add_nc_u32_e32 v208, 0, v68
	v_add_nc_u32_e32 v209, 0, v69
	v_add_nc_u32_e32 v210, 0, v70
	v_add_nc_u32_e32 v211, 0, v71
	v_add_nc_u32_e32 v212, 0, v72
	v_add_nc_u32_e32 v213, 0, v73
	v_add_nc_u32_e32 v214, 0, v74
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v215, 0, v75
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_subrev_nc_u32_e32 v216, s37, v171
	v_add_nc_u32_e32 v217, s38, v171
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s2, 19
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s1, s1, s8
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s84, s0, 0x3fb8aa3b
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 vcc_hi, s1, s67
	s_lshl_b32 s41, s71, 1
	s_lshl_b32 s45, s71, 3
	s_lshl_b32 s48, s71, 4
	s_lshl_b32 s15, s71, 5
	s_mov_b32 s42, 0x76543210
	scratch_store_b32 off, v86, off         ; 4-byte Folded Spill
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v224, s84, v65 :: v_dual_mul_f32 v225, s84, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v228, s84, v83 :: v_dual_mul_f32 v229, s84, v84
	v_mad_u64_u32 v[83:84], null, s4, s71, v[124:125]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 1, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v234, s84, v73 :: v_dual_mul_f32 v235, s84, v74
	v_mul_f32_e32 v226, s84, v67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, v83, s41, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v67, 41, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v221, s84, v89 :: v_dual_mul_f32 v222, s84, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 2, v169
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s91, v67
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v92, s84, v92 :: v_dual_mul_f32 v89, s84, v95
	v_mul_f32_e32 v95, s84, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v77, s84, v69
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v69, 43, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v232, s84, v87 :: v_dual_mul_f32 v233, s84, v88
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 3, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s91, v69
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v87, s84, v75 :: v_dual_mul_f32 v88, s84, v76
	v_dual_mul_f32 v76, s84, v68 :: v_dual_mul_f32 v75, s84, v70
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v90, s84, v96 :: v_dual_mul_f32 v227, s84, v82
	v_mul_f32_e32 v96, s84, v78
	v_mul_f32_e32 v78, s84, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 8, v169
	v_or_b32_e32 v71, 49, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v220, s84, v91 :: v_dual_mul_f32 v93, s84, v93
	v_dual_mul_f32 v94, s84, v94 :: v_dual_mul_f32 v91, s84, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b32_e32 v71, s91, v71
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 51, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v223, s84, v79 :: v_dual_mul_f32 v80, s84, v80
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 9, v169
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v79, s84, v72
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v81, s91, v81
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v230, s84, v85 :: v_dual_mul_f32 v231, s84, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v248, v83, s71, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s80, s19
	s_and_b32 s6, s80, s6
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v235, 0xff800000, v235, s0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 10, v169
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v130, 0x80000000, v248, s6
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v93, s54
	v_cndmask_b32_e64 v144, 0xff800000, v94, s53
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s9, s80, s9
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v220, s56
	v_cndmask_b32_e64 v146, 0xff800000, v90, s93
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.h, 0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v89, s92
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 11, v169
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v142, 0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 16, v169
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s10, s80, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 17, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 18, v169
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 19, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 24, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 25, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 26, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 27, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 32, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 33, v169
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s80, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 34, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	s_clause 0x1
	buffer_load_u16 v73, v65, s[76:79], 0 offen
	buffer_load_u16 v74, v66, s[76:79], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 35, v169
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s13
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v67
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v67, 42, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	v_or_b32_e32 v67, s91, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 40, v169
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, v83, s45, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	s_mul_i32 s3, s71, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v66, v83, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s23
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s67, v67
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v67, v83, s48, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s14
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v69
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v69, 48, v169
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	s_mul_i32 s3, s71, 18
	s_clause 0x1
	buffer_load_u16 v65, v65, s[76:79], 0 offen
	buffer_load_u16 v66, v66, s[76:79], 0 offen
	v_add_lshl_u32 v68, v83, s3, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s91, v69
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s21
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	s_mul_i32 s3, s71, 24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v83, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s17
	s_mul_i32 s17, s71, 40
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v67, v67, s[76:79], 0 offen
	buffer_load_u16 v68, v68, s[76:79], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s21, s80, s21
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	s_mul_i32 s3, s71, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v70, v83, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s80, s18
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s67, v71
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 50, v169
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v69, v69, s[76:79], 0 offen
	buffer_load_u16 v70, v70, s[76:79], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s91, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v71, v83, s15, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s80, s18
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s16
	s_mul_i32 s16, s71, 34
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v72, v83, s16, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s80, s20
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s16
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v81
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 56, v169
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v71, v71, s[76:79], 0 offen
	buffer_load_u16 v72, v72, s[76:79], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v81, s91, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v81
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v81, v83, s17, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s80, s22
	s_and_b32 s20, s80, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v81, 0x80000000, v81, s17
	s_mul_i32 s17, s71, 42
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v82, v83, s17, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s80, s23
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v82, 0x80000000, v82, s17
	s_mul_i32 s17, s71, 3
	s_clause 0x1
	buffer_load_u16 v81, v81, s[76:79], 0 offen
	buffer_load_u16 v82, v82, s[76:79], 0 offen
	v_add_lshl_u32 v128, v83, s17, 1
	s_mul_i32 s17, s71, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v249, v83, s17, 1
	s_mul_i32 s17, s71, 11
	v_cndmask_b32_e64 v251, 0x80000000, v128, s19
	v_add_lshl_u32 v250, v83, s17, 1
	s_mul_i32 s17, s71, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v236, v83, s17, 1
	s_mul_i32 s17, s71, 19
	v_cndmask_b32_e64 v128, 0x80000000, v250, s10
	v_add_lshl_u32 v237, v83, s17, 1
	s_mul_i32 s17, s71, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v238, v83, s17, 1
	s_mul_i32 s17, s71, 27
	v_add_lshl_u32 v239, v83, s17, 1
	s_mul_i32 s17, s71, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v240, v83, s17, 1
	s_mul_i32 s17, s71, 35
	v_add_lshl_u32 v241, v83, s17, 1
	s_mul_i32 s17, s71, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v242, v83, s17, 1
	s_mul_i32 s17, s71, 43
	v_add_lshl_u32 v243, v83, s17, 1
	s_mul_i32 s17, s71, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v84, v83, s17, 1
	s_mul_i32 s17, s71, 49
	v_add_lshl_u32 v244, v83, s17, 1
	s_mul_i32 s17, s71, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v85, v83, s17, 1
	s_mul_i32 s17, s71, 51
	v_add_lshl_u32 v245, v83, s17, 1
	s_mul_i32 s17, s71, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v86, v83, s17, 1
	s_mul_i32 s17, s71, 57
	v_add_lshl_u32 v246, v83, s17, 1
	s_mul_i32 s17, s71, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v129, v83, s17, 1
	s_mul_i32 s17, s71, 59
	v_add_lshl_u32 v247, v83, s17, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v83, 57, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v83, s91, v83
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v83
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v83, 58, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v83, s91, v83
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v83
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v83, 0x80000000, v84, s21
	v_cndmask_b32_e64 v84, 0x80000000, v85, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v85, 59, v169
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v83, v83, s[76:79], 0 offen
	buffer_load_u16 v84, v84, s[76:79], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v85, s91, v85
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s91, s91, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v85
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v85, 0x80000000, v86, s20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s20, s80, s22
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v86, 0x80000000, v129, s20
	v_cndmask_b32_e64 v129, 0x80000000, v249, s9
	s_clause 0x5
	buffer_load_u16 v128, v128, s[76:79], 0 offen
	buffer_load_u16 v129, v129, s[76:79], 0 offen
	buffer_load_u16 v131, v251, s[76:79], 0 offen
	buffer_load_u16 v130, v130, s[76:79], 0 offen
	buffer_load_u16 v85, v85, s[76:79], 0 offen
	buffer_load_u16 v86, v86, s[76:79], 0 offen
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v66.h, v128.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v65.h, v129.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v74.h, v131.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v73.h, v130.l
	v_cndmask_b32_e32 v130, 0x80000000, v236, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v236, 0xff800000, v234, s69
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v131, 0x80000000, v237, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s7
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v237, 0xff800000, v233, s70
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v132, 0x80000000, v238, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s8
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v238, 0xff800000, v232, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v133, 0x80000000, v239, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v239, 0xff800000, v231, s89
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v134, 0x80000000, v240, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s12
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v240, 0xff800000, v230, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v135, 0x80000000, v241, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s13
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v241, 0xff800000, v229, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v136, 0x80000000, v242, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v242, 0xff800000, v228, s97
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v137, 0x80000000, v243, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s3
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v243, 0xff800000, v227, s98
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v138, 0x80000000, v244, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s16
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v234, 0xff800000, v87, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v139, 0x80000000, v245, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s17
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v233, 0xff800000, v88, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v140, 0x80000000, v246, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s80, s18
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v232, 0xff800000, v95, s100
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v141, 0x80000000, v247, vcc_lo
	s_clause 0xb
	buffer_load_u16 v133, v133, s[76:79], 0 offen
	buffer_load_u16 v132, v132, s[76:79], 0 offen
	buffer_load_u16 v131, v131, s[76:79], 0 offen
	buffer_load_u16 v130, v130, s[76:79], 0 offen
	buffer_load_u16 v137, v137, s[76:79], 0 offen
	buffer_load_u16 v136, v136, s[76:79], 0 offen
	buffer_load_u16 v135, v135, s[76:79], 0 offen
	buffer_load_u16 v134, v134, s[76:79], 0 offen
	buffer_load_u16 v141, v141, s[76:79], 0 offen
	buffer_load_u16 v140, v140, s[76:79], 0 offen
	buffer_load_u16 v139, v139, s[76:79], 0 offen
	buffer_load_u16 v138, v138, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v142, v[73:74]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v243, v242, v241
	v_max3_f32 v74, v240, v239, v238
	v_max3_f32 v142, v237, v236, v235
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v231, 0xff800000, v96, s82
	v_cndmask_b32_e64 v230, 0xff800000, v223, s85
	v_cndmask_b32_e64 v229, 0xff800000, v80, s88
	v_cndmask_b32_e64 v228, 0xff800000, v224, s64
	v_cndmask_b32_e64 v227, 0xff800000, v225, s63
	v_cndmask_b32_e64 v223, 0xff800000, v226, s90
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v73, v74, v142
	v_max3_f32 v74, v234, v233, v232
	v_max3_f32 v80, v231, v230, v229
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v222, s57
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v228, v227, v223
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, 0xff800000, v92, s55
	v_cndmask_b32_e64 v226, 0xff800000, v91, s58
	v_cndmask_b32_e64 v222, 0xff800000, v76, s61
	v_cndmask_b32_e64 v95, 0xff800000, v77, s83
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v74, v80, v87
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v221, s99
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v142, v143, v144
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v79, s86
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v145, v146, v226
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v75, s81
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v87, v80, v88
	v_max_f32_e32 v75, v222, v95
.Ltmp14:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v181, v[65:66]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s91, s103
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v87, v93, v92
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v78, s87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v87, v89, v73
	v_max_f32_e32 v76, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v75, v75, v96, v76
	v_max3_f32 v73, v73, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v74, v73, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v87, v219, v73, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v88, v87
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v219, v87
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v144, v87
	v_sub_f32_e32 v95, v95, v87
	v_sub_f32_e32 v96, v96, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v87
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v96, v96
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v91, v87
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v74, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v221, 0, v78, s53
	v_cndmask_b32_e64 v95, 0, v95, s83
	v_cndmask_b32_e64 v96, 0, v96, s81
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v90.l, v89.h
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s87
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v74, 1, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s86
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v74, v89, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v74.h, 0x7fff, v74.h, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v70.h, v133.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v69.h, v132.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v68.h, v131.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v67.h, v130.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v82.h, v137.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v81.h, v136.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v72.h, v135.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v71.h, v134.l
	ds_store_b64 v182, v[67:68]
	ds_store_b64 v183, v[69:70]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v84.h, v139.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v83.h, v138.l
	ds_store_b64 v184, v[71:72]
	ds_store_b64 v185, v[81:82]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v81, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v142, v87
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v86.h, v141.l
	v_mov_b16_e64 v85.h, v140.l
	ds_store_b64 v186, v[83:84]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v187, v[85:86]
	v_add_nc_u32_e32 v86, 0, v173
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v86
	ds_load_b128 v[69:72], v188
	ds_load_b128 v[244:247], v189
	ds_load_b128 v[128:131], v86 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v76, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v94.h
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v76, 1, v90
	v_mov_b16_e64 v90.l, v221.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v80, v87
	v_sub_f32_e32 v80, v146, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v76, v94, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v78, 1, v90
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v80, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.h, 0x7fff, v76.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v221, v221
	v_add3_u32 v78, v221, v78, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v73, s99
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v73.h, v90.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v225, 0, v80, s93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	v_mov_b16_e32 v73.l, v88.h
	v_cmp_o_f32_e64 s1, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v90.l, v225.h
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v80, 1, v90
	v_add3_u32 v73, v88, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v80, v225, v80, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v219
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v75, v74, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v85, 0, v81, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v73, v75, v74, v125
	v_perm_b32 v74, v75, v74, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v75, v93, v87 :: v_dual_mul_f32 v26, v26, v85
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v85
	v_mul_f32_e32 v30, v30, v85
	v_mul_f32_e32 v25, v25, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v85
	v_mul_f32_e32 v29, v29, v85
	v_mul_f32_e32 v31, v31, v85
	v_mul_f32_e32 v32, v32, v85
	v_mul_f32_e32 v17, v17, v85
	v_mul_f32_e32 v18, v18, v85
	v_mul_f32_e32 v19, v19, v85
	v_mul_f32_e32 v20, v20, v85
	v_mul_f32_e32 v21, v21, v85
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v93, 0, v75, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.h, v90.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v85
	v_mul_f32_e32 v23, v23, v85
	v_mul_f32_e32 v24, v24, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.l, v93.h
	v_cmp_o_f32_e64 s1, v93, v93
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v85
	v_mul_f32_e32 v10, v10, v85
	v_mul_f32_e32 v11, v11, v85
	v_dual_mul_f32 v12, v12, v85 :: v_dual_and_b32 v75, 1, v75
	v_mul_f32_e32 v13, v13, v85
	v_mul_f32_e32 v14, v14, v85
	v_mul_f32_e32 v15, v15, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v93, v75, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v85
	v_mul_f32_e32 v1, v1, v85
	v_mul_f32_e32 v2, v2, v85
	v_mul_f32_e32 v3, v3, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.l, 0x7fff, v75.h, s1
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v85
	v_mul_f32_e32 v5, v5, v85
	v_mul_f32_e32 v6, v6, v85
	v_mul_f32_e32 v7, v7, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v77, v76, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v75, v77, v76, v125
	v_perm_b32 v76, v77, v76, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v143, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v220, 0, v77, s54
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v77.h, v90.h
	v_mov_b16_e64 v77.l, v220.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v220, v220
	v_and_b32_e32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v77, v220, v77, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v77.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v78, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v79, v78, v125
	v_perm_b32 v78, v79, v78, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v145, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[144:147], v211
	ds_load_b128 v[81:84], v208
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v224, 0, v79, s92
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.h, v90.h
	v_mov_b16_e64 v79.l, v224.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v224, v224
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v79, v224, v79, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v79.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v142, v80, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v142, v80, v125
	v_perm_b32 v80, v142, v80, v172
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v195
	ds_load_b128 v[140:143], v196
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[73:80], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v226, v87
	v_sub_f32_e32 v66, v243, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[132:135], v197
	ds_load_b128 v[69:72], v194
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[136:143], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v202
	ds_load_b128 v[140:143], v203
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[136:143], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v209
	ds_load_b128 v[140:143], v210
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[136:143], v[73:80], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v65, s58
	v_cndmask_b32_e64 v74, 0, v66, s98
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v65.l, v73.h
	v_mov_b16_e32 v90.l, v74.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cmp_o_f32_e64 s1, v73, v73
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v73, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v74, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v136, v65, v66, v125
	v_perm_b32 v137, v65, v66, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v242, v87
	v_sub_f32_e32 v66, v241, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v65, s97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0, v66, s96
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	v_mov_b16_e32 v65.l, v75.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v90.l, v76.h
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_cmp_o_f32_e64 s1, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v75, v65, 0x7fff
	v_add3_u32 v66, v76, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v138, v65, v66, v125
	v_perm_b32 v139, v65, v66, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v240, v87
	v_sub_f32_e32 v66, v239, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v219, 0, v65, s95
	v_cndmask_b32_e64 v226, 0, v66, s89
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v219.h
	v_mov_b16_e64 v90.l, v226.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	v_cmp_o_f32_e64 s1, v219, v219
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v219, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v226, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v140, v65, v66, v125
	v_perm_b32 v141, v65, v66, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v238, v87
	v_sub_f32_e32 v66, v237, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[248:251], v190
	ds_load_b128 v[238:241], v191
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v237, 0, v65, s94
	v_cndmask_b32_e64 v252, 0, v66, s70
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v237.h
	v_mov_b16_e64 v90.l, v252.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v252, v252
	v_cmp_o_f32_e64 s1, v237, v237
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v237, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v252, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_perm_b32 v142, v65, v66, v125
	v_perm_b32 v143, v65, v66, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v236, v87
	v_sub_f32_e32 v66, v235, v87
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[128:135], v[136:143], v[17:24]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[128:131], v204
	ds_load_b128 v[132:135], v205
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[244:251], v[136:143], v[25:32]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v246, 0, v65, s69
	v_cndmask_b32_e64 v247, 0, v66, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v246.h
	v_mov_b16_e64 v90.l, v247.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v247, v247
	v_cmp_o_f32_e64 s1, v246, v246
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v90
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[128:135], v[136:143], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[148:151], v212
	ds_load_b128 v[128:131], v213
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v246, v65, 0x7fff
	v_add3_u32 v66, v247, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[144:151], v[136:143], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v136, v65, v66, v125
	v_perm_b32 v137, v65, v66, v172
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v65, v234, v87
	v_sub_f32_e32 v66, v233, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[144:147], v198
	ds_load_b128 v[148:151], v199
	ds_load_b128 v[132:135], v214
	ds_load_b128 v[233:236], v215
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v248, 0, v65, s52
	v_cndmask_b32_e64 v249, 0, v66, s5
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v248.h
	v_mov_b16_e64 v90.l, v249.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v249, v249
	v_cmp_o_f32_e64 s1, v248, v248
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v248, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v249, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v138, v65, v66, v125
	v_perm_b32 v139, v65, v66, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v232, v87
	v_sub_f32_e32 v66, v231, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v250, 0, v65, s100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v251, 0, v66, s82
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	v_mov_b16_e64 v65.l, v250.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v90.l, v251.h
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	v_cmp_o_f32_e64 s1, v250, v250
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v250, v65, 0x7fff
	v_add3_u32 v66, v251, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v140, v65, v66, v125
	v_perm_b32 v141, v65, v66, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v230, v87
	v_sub_f32_e32 v66, v229, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v253, 0, v65, s85
	v_cndmask_b32_e64 v254, 0, v66, s88
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v253.h
	v_mov_b16_e64 v90.l, v254.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v254, v254
	v_cmp_o_f32_e64 s1, v253, v253
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v253, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v254, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v142, v65, v66, v125
	v_perm_b32 v143, v65, v66, v172
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[242:245], v192
	ds_load_b128 v[65:68], v193
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[144:151], v[136:143], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[144:147], v86 offset:4096
	ds_load_b128 v[148:151], v206
	ds_load_b128 v[77:80], v207
	ds_load_b128 v[229:232], v86 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[128:135], v[136:143], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v228, v87
	v_sub_f32_e32 v128, v227, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v129.h, v90.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v222, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v128, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v131, v131
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[238:245], v[136:143], v[25:32]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s64
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[144:151], v[136:143], v[9:16]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v128, s63
	v_cndmask_b32_e64 v138, 0, v131, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v129.l, v86.h
	v_cmp_o_f32_e64 s1, v86, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v90.l, v136.h
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_and_b32_e32 v128, 1, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v129, 1, v90
	v_mov_b16_e64 v90.l, v138.h
	v_add3_u32 v128, v86, v128, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v129, v136, v129, 0x7fff
	v_and_b32_e32 v131, 1, v90
	v_mov_b16_e32 v90.l, v96.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v129.l, 0x7fff, v128.h, s1
	v_cndmask_b16 v129.h, 0x7fff, v129.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v131, v138, v131, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_and_b32_e32 v133, 1, v90
	v_mov_b16_e32 v90.l, v91.h
	v_permlanex16_b32 v130, v129, s42, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v131.h, 0x7fff, v131.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v133, v96, v133, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_perm_b32 v128, v130, v129, v125
	v_perm_b32 v129, v130, v129, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v223, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v133.h, 0x7fff, v133.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v130, s90
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v130.h, v90.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v130.l, v137.h
	v_cmp_o_f32_e64 s1, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v130, v137, v130, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v131.l, 0x7fff, v130.h, s1
	v_cmp_o_f32_e64 s1, v95, v95
	v_permlanex16_b32 v132, v131, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v130, v132, v131, v125
	v_perm_b32 v131, v132, v131, v172
	v_mov_b16_e64 v132.l, v95.h
	v_mov_b16_e64 v132.h, v90.h
	v_and_b32_e32 v132, 1, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v132, v95, v132, 0x7fff
	v_cndmask_b16 v133.l, 0x7fff, v132.h, s1
	v_cmp_o_f32_e64 s1, v92, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v134, v133, s42, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v132, v134, v133, v125
	v_perm_b32 v133, v134, v133, v172
	v_mov_b16_e64 v134.l, v92.h
	v_mov_b16_e64 v134.h, v90.h
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v134, 1, v134
	v_add3_u32 v90, v91, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v134, v92, v134, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v90.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v90.l, 0x7fff, v134.h, s1
	v_permlanex16_b32 v135, v90, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v134, v135, v90, v125
	v_perm_b32 v135, v135, v90, v172
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[128:135], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[65:68], v200
	ds_load_b128 v[69:72], v201
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[77:84], v[128:135], v[9:16]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v92, v91
.Ltmp21:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[229:236], v[128:135], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[128:135], v[17:24]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v88, v89 :: v_dual_add_f32 v66, v93, v94
	v_add_f32_e32 v67, v220, v221
	v_dual_add_f32 v68, v224, v225 :: v_dual_add_f32 v69, v73, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v70, v75, v76 :: v_dual_add_f32 v65, v65, v66
	v_dual_add_f32 v71, v248, v249 :: v_dual_add_f32 v66, v67, v68
	v_add_f32_e32 v68, v219, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_add_f32 v67, v69, v70 :: v_dual_add_f32 v70, v246, v247
	v_dual_add_f32 v69, v237, v252 :: v_dual_add_f32 v72, v250, v251
	v_dual_add_f32 v73, v253, v254 :: v_dual_add_f32 v74, v86, v136
	v_dual_add_f32 v75, v137, v138 :: v_dual_add_f32 v76, v95, v96
	v_dual_add_f32 v68, v68, v69 :: v_dual_add_f32 v69, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v70, v72, v73 :: v_dual_add_f32 v65, v65, v66
	v_dual_add_f32 v71, v74, v75 :: v_dual_add_f32 v72, v76, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v66, v67, v68 :: v_dual_add_f32 v67, v69, v70
	v_mov_b32_e32 v219, v87
	v_dual_add_f32 v68, v71, v72 :: v_dual_add_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v66, v67, v68
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v66, v65, s42, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v66, v218, v85
	v_mov_b32_e32 v218, v66
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v127
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s4, s91, vcc_hi
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v128, 4, v168
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s5, s4, s46
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s5, v162, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 2, v127
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v88, s5, v116, 1
	v_add_lshl_u32 v67, s5, v163, 1
	v_add_lshl_u32 v73, s5, v160, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s59, s31
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v80, s5, v108, 1
	v_add_lshl_u32 v81, s5, v161, 1
	v_add_lshl_u32 v93, s5, v120, 1
	v_add_lshl_u32 v74, s5, v103, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s36, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 4, v127
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v76, s5, v105, 1
	v_add_lshl_u32 v82, s5, v109, 1
	v_add_lshl_u32 v89, s5, v118, 1
	v_add_lshl_u32 v91, s5, v117, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v94, s5, v121, 1
	v_add_lshl_u32 v68, s5, v99, 1
	v_add_lshl_u32 v75, s5, v104, 1
	v_add_lshl_u32 v83, s5, v110, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 6, v127
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v90, s5, v115, 1
	v_add_lshl_u32 v77, s5, v98, 1
	v_add_lshl_u32 v84, s5, v111, 1
	v_add_lshl_u32 v85, s5, v112, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v92, s5, v119, 1
	v_add_lshl_u32 v69, s5, v159, 1
	v_add_lshl_u32 v70, s5, v100, 1
	v_add_lshl_u32 v71, s5, v101, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 8, v127
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v72, s5, v102, 1
	v_add_lshl_u32 v78, s5, v106, 1
	v_add_lshl_u32 v79, s5, v107, 1
	v_add_lshl_u32 v86, s5, v113, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v87, s5, v114, 1
	v_add_lshl_u32 v95, s5, v122, 1
	v_add_lshl_u32 v96, s5, v123, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 10, v127
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 12, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s30, s59, s30
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 14, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s29, s59, s29
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v71, 0x80000000, v71, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 16, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s59, s28
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v72, 0x80000000, v72, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 18, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, s59, s27
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 20, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s26, s59, s26
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v74, 0x80000000, v74, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 22, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s25, s59, s25
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v75, 0x80000000, v75, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 24, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s59, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v76, 0x80000000, v76, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 26, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s23, s59, s23
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v77, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 28, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s22, s59, s22
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v78, 0x80000000, v78, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 30, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s21, s59, s21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v79, 0x80000000, v79, s21
	s_clause 0x5
	buffer_load_u16 v73, v73, s[72:75], 0 offen
	buffer_load_u16 v74, v74, s[72:75], 0 offen
	buffer_load_u16 v75, v75, s[72:75], 0 offen
	buffer_load_u16 v77, v77, s[72:75], 0 offen
	buffer_load_u16 v78, v78, s[72:75], 0 offen
	buffer_load_u16 v79, v79, s[72:75], 0 offen
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 32, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s20, s59, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v80, 0x80000000, v80, s20
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 34, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s19, s59, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v81, 0x80000000, v81, s19
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 36, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s59, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v82, 0x80000000, v82, s18
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 38, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s17, s59, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v83, 0x80000000, v83, s17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v126
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s16, s59, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 42, v127
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v84, 0x80000000, v84, s16
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s16, v255, 5
	v_readlane_b32 s23, v255, 12
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s14, s59, s14
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v85, 0x80000000, v85, s14
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s17, v255, 6
	v_readlane_b32 s18, v255, 7
	v_readlane_b32 s19, v255, 8
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 44, v127
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s20, v255, 9
	v_readlane_b32 s21, v255, 10
	v_readlane_b32 s22, v255, 11
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s13, s59, s13
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v86, 0x80000000, v86, s13
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v243, s23 :: v_dual_mov_b32 v242, s22
	v_dual_mov_b32 v241, s21 :: v_dual_mov_b32 v240, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 46, v127
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v239, s19 :: v_dual_mov_b32 v238, s18
	v_dual_mov_b32 v237, s17 :: v_dual_mov_b32 v236, s16
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s12, s59, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v87, 0x80000000, v87, s12
	s_clause 0x5
	buffer_load_u16 v81, v81, s[72:75], 0 offen
	buffer_load_u16 v82, v82, s[72:75], 0 offen
	buffer_load_u16 v83, v83, s[72:75], 0 offen
	buffer_load_u16 v85, v85, s[72:75], 0 offen
	buffer_load_u16 v86, v86, s[72:75], 0 offen
	buffer_load_u16 v87, v87, s[72:75], 0 offen
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 48, v127
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s8, s59, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v90, 0x80000000, v90, s8
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v152
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s10, s59, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s91, v153
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v88, 0x80000000, v88, s10
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s7, s59, s7
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s91, v154
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v91, 0x80000000, v91, s7
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s59, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s91, v155
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v93, 0x80000000, v93, s6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, s59, s1
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s91, v156
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v95, 0x80000000, v95, s1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s10, s59, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s91, v157
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v89, 0x80000000, v89, s10
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s7, s59, s9
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s67, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s91, v158
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v92, 0x80000000, v92, s7
	s_clause 0x3
	buffer_load_u16 v88, v88, s[72:75], 0 offen
	buffer_load_u16 v89, v89, s[72:75], 0 offen
	buffer_load_u16 v91, v91, s[72:75], 0 offen
	buffer_load_u16 v92, v92, s[72:75], 0 offen
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s59, s3
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v65
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_add_lshl_u32 v65, s5, v97, 1
	v_cndmask_b32_e64 v94, 0x80000000, v94, s3
	s_clause 0x1
	buffer_load_u16 v93, v93, s[72:75], 0 offen
	buffer_load_u16 v94, v94, s[72:75], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v65, s31
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s59, s36
	s_and_b32 vcc_lo, s59, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v66, 0x80000000, v66, s31
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s59, s35
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	v_cndmask_b32_e64 v67, 0x80000000, v67, s31
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s59, s34
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v80, v80, s[72:75], 0 offen
	buffer_load_u16 v76, v76, s[72:75], 0 offen
	buffer_load_u16 v90, v90, s[72:75], 0 offen
	buffer_load_u16 v84, v84, s[72:75], 0 offen
	buffer_load_u16 v96, v96, s[72:75], 0 offen
	buffer_load_u16 v95, v95, s[72:75], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v68, s31
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s59, s33
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v69, s31
	s_clause 0x7
	buffer_load_u16 v65, v65, s[72:75], 0 offen
	buffer_load_u16 v66, v66, s[72:75], 0 offen
	buffer_load_u16 v67, v67, s[72:75], 0 offen
	buffer_load_u16 v68, v68, s[72:75], 0 offen
	buffer_load_u16 v69, v69, s[72:75], 0 offen
	buffer_load_u16 v70, v70, s[72:75], 0 offen
	buffer_load_u16 v71, v71, s[72:75], 0 offen
	buffer_load_u16 v72, v72, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b16 v164, v65
	s_waitcnt vmcnt(3)
	ds_store_b16 v164, v69 offset:1024
	ds_store_b16 v164, v73 offset:2048
	ds_store_b16 v164, v77 offset:3072
	ds_store_b16 v164, v81 offset:4096
	ds_store_b16 v164, v85 offset:5120
	ds_store_b16 v164, v88 offset:6144
	ds_store_b16 v164, v89 offset:7168
	ds_store_b16 v165, v66
	s_waitcnt vmcnt(2)
	ds_store_b16 v165, v70 offset:1024
	ds_store_b16 v165, v74 offset:2048
	ds_store_b16 v165, v78 offset:3072
	ds_store_b16 v165, v82 offset:4096
	ds_store_b16 v165, v86 offset:5120
	ds_store_b16 v165, v91 offset:6144
	ds_store_b16 v165, v92 offset:7168
	ds_store_b16 v166, v67
	s_waitcnt vmcnt(1)
	ds_store_b16 v166, v71 offset:1024
	ds_store_b16 v166, v75 offset:2048
	ds_store_b16 v166, v79 offset:3072
	ds_store_b16 v166, v83 offset:4096
	ds_store_b16 v166, v87 offset:5120
	ds_store_b16 v166, v93 offset:6144
	ds_store_b16 v166, v94 offset:7168
	ds_store_b16 v167, v68
	s_waitcnt vmcnt(0)
	ds_store_b16 v167, v72 offset:1024
	ds_store_b16 v167, v76 offset:2048
	ds_store_b16 v167, v80 offset:3072
	ds_store_b16 v167, v84 offset:4096
	ds_store_b16 v167, v90 offset:5120
	ds_store_b16 v167, v95 offset:6144
	ds_store_b16 v167, v96 offset:7168
	v_add_nc_u32_e32 v81, 0, v170
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v174
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v174 offset:2048
	ds_load_b128 v[224:227], v174 offset:4096
	ds_load_b128 v[220:223], v81 offset:4096
	ds_load_b128 v[228:231], v81 offset:6144
	ds_load_b128 v[232:235], v174 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[236:243]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[236:243]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[220:227], v[33:40], v[236:243]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[33:40], v[236:243]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[224:227], v176
	ds_load_b128 v[220:223], v175
	ds_load_b128 v[228:231], v175 offset:2048
	ds_load_b128 v[232:235], v176 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[220:227], v[41:48], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[228:235], v[41:48], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[224:227], v176 offset:4096
	ds_load_b128 v[220:223], v175 offset:4096
	ds_load_b128 v[228:231], v175 offset:6144
	ds_load_b128 v[232:235], v176 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[220:227], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[224:227], v178
	ds_load_b128 v[220:223], v177
	ds_load_b128 v[228:231], v177 offset:2048
	ds_load_b128 v[232:235], v178 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[220:227], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[228:235], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[224:227], v178 offset:4096
	ds_load_b128 v[220:223], v177 offset:4096
	ds_load_b128 v[228:231], v177 offset:6144
	ds_load_b128 v[232:235], v178 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[220:227], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[224:227], v180
	ds_load_b128 v[220:223], v179
	ds_load_b128 v[228:231], v179 offset:2048
	ds_load_b128 v[232:235], v180 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[220:227], v[57:64], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[228:235], v[57:64], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[224:227], v180 offset:4096
	ds_load_b128 v[220:223], v179 offset:4096
	ds_load_b128 v[228:231], v179 offset:6144
	ds_load_b128 v[232:235], v180 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[220:227], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[57:64], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v232, s91, v128
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v238, 2, v232
	v_or_b32_e32 v239, 6, v232
	v_or_b32_e32 v246, 4, v232
	v_or_b32_e32 v233, 10, v232
	v_or_b32_e32 v244, 8, v232
	v_or_b32_e32 v240, 14, v232
	v_or_b32_e32 v247, 12, v232
	v_or_b32_e32 v234, 18, v232
	v_or_b32_e32 v248, 16, v232
	v_or_b32_e32 v235, 22, v232
	v_or_b32_e32 v249, 20, v232
	v_or_b32_e32 v241, 26, v232
	v_or_b32_e32 v250, 24, v232
	v_or_b32_e32 v220, 30, v232
	v_or_b32_e32 v251, 28, v232
	v_or_b32_e32 v221, 34, v232
	v_or_b32_e32 v224, 32, v232
	v_or_b32_e32 v222, 38, v232
	v_or_b32_e32 v227, 36, v232
	v_or_b32_e32 v223, 42, v232
	v_or_b32_e32 v230, 40, v232
	v_or_b32_e32 v225, 46, v232
	v_or_b32_e32 v236, 44, v232
	v_or_b32_e32 v228, 50, v232
	v_or_b32_e32 v237, 48, v232
	v_or_b32_e32 v231, 54, v232
	v_or_b32_e32 v242, 52, v232
	v_or_b32_e32 v229, 58, v232
	v_or_b32_e32 v245, 56, v232
	v_or_b32_e32 v226, 62, v232
	v_or_b32_e32 v243, 60, v232
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v232
	v_cmp_gt_i32_e64 s1, s67, v238
	v_cmp_gt_i32_e64 s3, s67, v239
	v_cmp_gt_i32_e64 s6, s67, v246
	v_cmp_gt_i32_e64 s7, s67, v233
	v_cmp_gt_i32_e64 s8, s67, v244
	v_cmp_gt_i32_e64 s9, s67, v240
	v_cmp_gt_i32_e64 s10, s67, v247
	v_cmp_gt_i32_e64 s11, s67, v234
	v_cmp_gt_i32_e64 s12, s67, v248
	v_cmp_gt_i32_e64 s13, s67, v235
	v_cmp_gt_i32_e64 s14, s67, v249
	v_cmp_gt_i32_e64 s16, s67, v241
	v_cmp_gt_i32_e64 s17, s67, v250
	v_cmp_gt_i32_e64 s18, s67, v220
	v_cmp_gt_i32_e64 s19, s67, v251
	v_cmp_gt_i32_e64 s20, s67, v221
	v_cmp_gt_i32_e64 s21, s67, v224
	v_cmp_gt_i32_e64 s22, s67, v222
	v_cmp_gt_i32_e64 s23, s67, v227
	v_cmp_gt_i32_e64 s24, s67, v223
	v_cmp_gt_i32_e64 s25, s67, v230
	v_cmp_gt_i32_e64 s26, s67, v225
	v_cmp_gt_i32_e64 s27, s67, v236
	v_cmp_gt_i32_e64 s28, s67, v228
	v_cmp_gt_i32_e64 s29, s67, v237
	v_cmp_gt_i32_e64 s30, s67, v231
	v_cmp_gt_i32_e64 s31, s67, v242
	v_cmp_gt_i32_e64 s33, s67, v229
	v_cmp_gt_i32_e64 s34, s67, v245
	v_cmp_gt_i32_e64 s35, s67, v226
	v_cmp_gt_i32_e64 s36, s67, v243
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s99, s2, vcc_lo
	s_and_b32 s57, s2, s1
	s_and_b32 s56, s2, s6
	s_and_b32 s55, s2, s3
	s_and_b32 s54, s2, s8
	s_and_b32 s53, s2, s7
	s_and_b32 s92, s2, s10
	s_and_b32 s93, s2, s9
	s_and_b32 s58, s2, s12
	s_and_b32 s98, s2, s11
	s_and_b32 s97, s2, s14
	s_and_b32 s96, s2, s13
	s_and_b32 s95, s2, s17
	s_and_b32 s89, s2, s16
	s_and_b32 s94, s2, s19
	s_and_b32 s70, s2, s18
	s_and_b32 s69, s2, s21
	s_and_b32 s0, s2, s20
	s_and_b32 s52, s2, s23
	s_and_b32 s5, s2, s22
	s_and_b32 s100, s2, s25
	s_and_b32 s82, s2, s24
	s_and_b32 s85, s2, s27
	s_and_b32 s88, s2, s26
	s_and_b32 s64, s2, s29
	s_and_b32 s63, s2, s28
	s_and_b32 s90, s2, s31
	s_and_b32 s61, s2, s30
	s_and_b32 s83, s2, s34
	s_and_b32 s81, s2, s33
	s_and_b32 s87, s2, s36
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s104
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s86, s2, s35
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v232, v171
	v_cmp_le_i32_e64 s1, v238, v171
	v_cmp_le_i32_e64 s3, v246, v171
	v_cmp_le_i32_e64 s6, v239, v171
	v_cmp_le_i32_e64 s7, v244, v171
	v_cmp_le_i32_e64 s8, v233, v171
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s37, vcc_lo, s99
	s_and_b32 s1, s1, s57
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v247, v171
	v_cmp_le_i32_e64 s10, v240, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s56
	s_and_b32 s6, s6, s55
	s_and_not1_b32 s38, s99, exec_lo
	s_and_b32 s37, s37, exec_lo
	s_and_not1_b32 s39, s57, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v248, v171
	v_cmp_le_i32_e64 s12, v234, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s54
	s_and_b32 s8, s8, s53
	s_or_b32 s99, s38, s37
	s_or_b32 s57, s39, s1
	s_and_not1_b32 s1, s56, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s37, s55, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v249, v171
	v_cmp_le_i32_e64 s14, v235, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s92
	s_and_b32 s10, s10, s93
	s_or_b32 s56, s1, s3
	s_or_b32 s55, s37, s6
	s_and_not1_b32 s1, s54, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s53, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v250, v171
	v_cmp_le_i32_e64 s17, v241, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s58
	s_and_b32 s12, s12, s98
	s_or_b32 s54, s1, s3
	s_or_b32 s53, s6, s7
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s93, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v251, v171
	v_cmp_le_i32_e64 s19, v220, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s97
	s_and_b32 s14, s14, s96
	s_or_b32 s92, s1, s3
	s_or_b32 s93, s6, s7
	s_and_not1_b32 s1, s58, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s6, s98, exec_lo
	s_and_b32 s7, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v224, v171
	v_cmp_le_i32_e64 s21, v221, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s16, s95
	s_and_b32 s17, s17, s89
	s_or_b32 s58, s1, s3
	s_or_b32 s98, s6, s7
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s13, exec_lo
	s_and_not1_b32 s6, s96, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v227, v171
	v_cmp_le_i32_e64 s23, v222, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s18, s94
	s_and_b32 s19, s19, s70
	s_or_b32 s97, s1, s3
	s_or_b32 s96, s6, s7
	s_and_not1_b32 s1, s95, exec_lo
	s_and_b32 s3, s16, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s7, s17, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v230, v171
	v_cmp_le_i32_e64 s25, v223, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s69
	s_and_b32 s21, s21, s0
	s_or_b32 s95, s1, s3
	s_or_b32 s89, s6, s7
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s18, exec_lo
	s_and_not1_b32 s6, s70, exec_lo
	s_and_b32 s7, s19, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v236, v171
	v_cmp_le_i32_e64 s27, v225, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s52
	s_and_b32 s23, s23, s5
	s_or_b32 s94, s1, s3
	s_or_b32 s70, s6, s7
	s_and_not1_b32 s1, s69, exec_lo
	s_and_b32 s3, s20, exec_lo
	s_and_not1_b32 s6, s0, exec_lo
	s_and_b32 s7, s21, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v237, v171
	v_cmp_le_i32_e64 s29, v228, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s100
	s_and_b32 s25, s25, s82
	s_or_b32 s69, s1, s3
	s_or_b32 s0, s6, s7
	s_and_not1_b32 s1, s52, exec_lo
	s_and_b32 s3, s22, exec_lo
	s_and_not1_b32 s5, s5, exec_lo
	s_and_b32 s6, s23, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v242, v171
	v_cmp_le_i32_e64 s31, v231, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s85
	s_and_b32 s27, s27, s88
	s_or_b32 s52, s1, s3
	s_or_b32 s5, s5, s6
	s_and_not1_b32 s1, s100, exec_lo
	s_and_b32 s3, s24, exec_lo
	s_and_not1_b32 s6, s82, exec_lo
	s_and_b32 s7, s25, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v245, v171
	v_cmp_le_i32_e64 s34, v229, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s64
	s_and_b32 s29, s29, s63
	s_or_b32 s100, s1, s3
	s_or_b32 s82, s6, s7
	s_and_not1_b32 s1, s85, exec_lo
	s_and_b32 s3, s26, exec_lo
	s_and_not1_b32 s6, s88, exec_lo
	s_and_b32 s7, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v243, v171
	v_cmp_le_i32_e64 s36, v226, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s90
	s_and_b32 s31, s31, s61
	s_or_b32 s85, s1, s3
	s_or_b32 s88, s6, s7
	s_and_not1_b32 s1, s64, exec_lo
	s_and_b32 s3, s28, exec_lo
	s_and_not1_b32 s6, s63, exec_lo
	s_and_b32 s7, s29, exec_lo
	s_and_b32 s33, s33, s83
	s_and_b32 s34, s34, s81
	s_or_b32 s64, s1, s3
	s_or_b32 s63, s6, s7
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s30, exec_lo
	s_and_not1_b32 s6, s61, exec_lo
	s_and_b32 s7, s31, exec_lo
	s_and_b32 s35, s35, s87
	s_and_b32 s36, s36, s86
	s_or_b32 s90, s1, s3
	s_or_b32 s61, s6, s7
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s33, exec_lo
	s_and_not1_b32 s6, s81, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_or_b32 s83, s1, s3
	s_or_b32 s81, s6, s7
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s3, s35, exec_lo
	s_and_not1_b32 s6, s86, exec_lo
	s_and_b32 s7, s36, exec_lo
	s_or_b32 s87, s1, s3
	s_or_b32 s86, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s102
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v255, s76, 20
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v246, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s39, v246, v217
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v232, v216
	v_cmp_ge_i32_e64 s1, v238, v216
	v_writelane_b32 v255, s77, 21
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v232, v217
	v_cmp_le_i32_e64 s38, v238, v217
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v239, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s40, v239, v217
	v_writelane_b32 v255, s78, 22
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v244, v216
	v_cmp_ge_i32_e64 s36, v226, v216
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s3, s39
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v226, v217
	v_writelane_b32 v255, s79, 23
	s_mov_b32 s78, s41
	v_cmp_le_i32_e64 s41, v244, v217
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, vcc_lo, s37
	s_and_b32 s38, s1, s38
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v233, v216
	v_cmp_ge_i32_e64 s9, v247, v216
	v_cmp_ge_i32_e64 s35, v243, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v233, v217
	v_cmp_le_i32_e64 s43, v247, v217
	v_cmp_le_i32_e64 s1, v243, v217
	s_mov_b32 s74, s96
	s_mov_b32 s96, s55
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s37, s37, s99
	s_and_b32 s38, s38, s57
	s_and_b32 s6, s6, s40
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v240, v216
	v_cmp_ge_i32_e64 s11, v248, v216
	v_cmp_ge_i32_e64 s22, v227, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s44, v240, v217
	s_mov_b32 s72, s89
	s_mov_b32 s89, s45
	v_cmp_le_i32_e64 s45, v248, v217
	v_cmp_le_i32_e64 s55, v227, v217
	s_mov_b32 s73, s95
	s_mov_b32 s75, s97
	s_mov_b32 s95, s54
	s_mov_b32 s97, s56
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s6, s6, s96
	s_and_b32 s7, s7, s41
	s_and_b32 s3, s36, s3
	s_and_b32 s36, s37, exec_lo
	s_and_not1_b32 s37, s57, exec_lo
	s_and_b32 s38, s38, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v234, v216
	v_cmp_ge_i32_e64 s13, v249, v216
	v_cmp_ge_i32_e64 s21, v221, v216
	v_cmp_ge_i32_e64 s23, v222, v216
	s_mov_b32 s101, s46
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s46, v234, v217
	v_cmp_le_i32_e64 s47, v249, v217
	v_cmp_le_i32_e64 s54, v221, v217
	v_cmp_le_i32_e64 s56, v222, v217
	v_writelane_b32 v255, s4, 24
	s_mov_b32 s4, s94
	s_mov_b32 s94, s53
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s39, s39, s97
	s_and_b32 s8, s8, s42
	s_and_b32 s7, s7, s95
	s_and_b32 s9, s9, s43
	s_and_b32 s1, s35, s1
	s_and_not1_b32 s35, s99, exec_lo
	s_or_b32 s57, s37, s38
	s_and_not1_b32 s37, s96, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v235, v216
	v_cmp_ge_i32_e64 s16, v250, v216
	v_cmp_ge_i32_e64 s20, v224, v216
	s_mov_b32 s66, s15
	s_mov_b32 s15, s48
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s48, v235, v217
	v_cmp_le_i32_e64 s49, v250, v217
	v_cmp_le_i32_e64 s53, v224, v217
	s_mov_b32 s2, s58
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s8, s8, s94
	s_and_b32 s10, s10, s44
	s_and_b32 s9, s9, s92
	s_and_b32 s11, s11, s45
	s_and_b32 s22, s22, s55
	s_or_b32 s99, s35, s36
	s_and_not1_b32 s35, s97, exec_lo
	s_and_b32 s36, s39, exec_lo
	s_or_b32 s55, s37, s6
	s_and_not1_b32 s6, s95, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v241, v216
	v_cmp_ge_i32_e64 s18, v251, v216
	v_cmp_ge_i32_e64 s25, v223, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s50, v241, v217
	v_cmp_le_i32_e64 s51, v251, v217
	v_cmp_le_i32_e64 s58, v223, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s93
	s_and_b32 s12, s12, s46
	s_and_b32 s11, s11, s2
	s_and_b32 s13, s13, s47
	s_and_b32 s21, s21, s54
	s_and_b32 s23, s23, s56
	s_or_b32 s56, s35, s36
	s_and_not1_b32 s35, s94, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s54, s6, s7
	s_and_not1_b32 s6, s92, exec_lo
	s_and_b32 s7, s9, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v220, v216
	s_mov_b32 s79, s5
	s_mov_b32 s5, s52
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s52, v220, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s12, s12, s98
	s_and_b32 s14, s14, s48
	s_and_b32 s13, s13, s75
	s_and_b32 s16, s16, s49
	s_and_b32 s20, s20, s53
	s_or_b32 s53, s35, s8
	s_and_not1_b32 s8, s93, exec_lo
	s_and_b32 s9, s10, exec_lo
	s_or_b32 s92, s6, s7
	s_and_not1_b32 s6, s2, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_b32 s14, s14, s74
	s_and_b32 s17, s17, s50
	s_and_b32 s16, s16, s73
	s_and_b32 s18, s18, s51
	s_and_b32 s25, s25, s58
	s_or_b32 s93, s8, s9
	s_and_not1_b32 s8, s98, exec_lo
	s_and_b32 s9, s12, exec_lo
	s_or_b32 s58, s6, s7
	s_and_not1_b32 s6, s75, exec_lo
	s_and_b32 s7, s13, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v230, v216
	s_mov_b32 s68, s0
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s0, v230, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s17, s17, s72
	s_and_b32 s19, s19, s52
	s_and_b32 s18, s18, s4
	s_or_b32 s98, s8, s9
	s_and_not1_b32 s8, s74, exec_lo
	s_and_b32 s9, s14, exec_lo
	s_or_b32 s97, s6, s7
	s_and_not1_b32 s6, s73, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v236, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v236, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, s19, s70
	s_and_b32 s20, s20, s69
	s_or_b32 s96, s8, s9
	s_and_not1_b32 s8, s72, exec_lo
	s_and_b32 s9, s17, exec_lo
	s_or_b32 s95, s6, s7
	s_and_not1_b32 s6, s4, exec_lo
	s_and_b32 s7, s18, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v225, v216
	v_cmp_ge_i32_e64 s28, v237, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v225, v217
	s_mov_b32 s80, s61
	v_cmp_le_i32_e64 s61, v237, v217
	s_mov_b32 s45, s89
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s21, s21, s68
	s_and_b32 s22, s22, s5
	s_and_b32 s24, s24, s0
	s_or_b32 s89, s8, s9
	s_and_not1_b32 s8, s70, exec_lo
	s_and_b32 s9, s19, exec_lo
	s_or_b32 s94, s6, s7
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s7, s20, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v228, v216
	v_cmp_ge_i32_e64 s30, v242, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v228, v217
	s_mov_b32 s76, s63
	v_cmp_le_i32_e64 s63, v242, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s23, s23, s79
	s_and_b32 s24, s24, s100
	s_and_b32 s26, s26, s59
	s_or_b32 s70, s8, s9
	s_and_not1_b32 s8, s68, exec_lo
	s_and_b32 s9, s21, exec_lo
	s_or_b32 s69, s6, s7
	s_and_not1_b32 s6, s5, exec_lo
	s_and_b32 s7, s22, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v231, v216
	v_cmp_ge_i32_e64 s33, v245, v216
	s_mov_b32 s77, s64
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v231, v217
	v_cmp_le_i32_e64 s65, v245, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s25, s25, s82
	s_and_b32 s27, s27, s60
	s_and_b32 s26, s26, s85
	s_and_b32 s28, s28, s61
	s_or_b32 s0, s8, s9
	s_and_not1_b32 s5, s79, exec_lo
	s_and_b32 s8, s23, exec_lo
	s_or_b32 s52, s6, s7
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v229, v216
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v229, v217
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s27, s27, s88
	s_and_b32 s29, s29, s62
	s_and_b32 s28, s28, s77
	s_and_b32 s30, s30, s63
	s_or_b32 s5, s5, s8
	s_and_not1_b32 s8, s82, exec_lo
	s_and_b32 s9, s25, exec_lo
	s_or_b32 s100, s6, s7
	s_and_not1_b32 s6, s85, exec_lo
	s_and_b32 s7, s26, exec_lo
	s_and_b32 s29, s29, s76
	s_and_b32 s31, s31, s64
	s_and_b32 s30, s30, s90
	s_and_b32 s33, s33, s65
	s_or_b32 s82, s8, s9
	s_and_not1_b32 s8, s88, exec_lo
	s_and_b32 s9, s27, exec_lo
	s_or_b32 s85, s6, s7
	s_and_not1_b32 s6, s77, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s80
	s_and_b32 s34, s34, vcc_lo
	s_and_b32 s33, s33, s83
	s_or_b32 s88, s8, s9
	s_and_not1_b32 s8, s76, exec_lo
	s_and_b32 s9, s29, exec_lo
	s_or_b32 s64, s6, s7
	s_and_not1_b32 s6, s90, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_mov_b32 s41, s78
	s_and_b32 s34, s34, s81
	s_and_b32 s1, s1, s87
	s_and_b32 s3, s3, s86
	v_readlane_b32 s72, v255, 14
	v_readlane_b32 s76, v255, 20
	s_or_b32 s63, s8, s9
	s_and_not1_b32 s8, s80, exec_lo
	s_and_b32 s9, s31, exec_lo
	s_or_b32 s90, s6, s7
	s_and_not1_b32 s6, s83, exec_lo
	s_and_b32 s7, s33, exec_lo
	v_readlane_b32 s73, v255, 15
	v_readlane_b32 s74, v255, 16
	v_readlane_b32 s75, v255, 17
	v_readlane_b32 s4, v255, 24
	v_readlane_b32 s2, v255, 19
	v_readlane_b32 s59, v255, 18
	v_readlane_b32 s77, v255, 21
	v_readlane_b32 s78, v255, 22
	v_readlane_b32 s79, v255, 23
	v_readlane_b32 s80, v255, 13
	s_or_b32 s61, s8, s9
	s_and_not1_b32 s8, s81, exec_lo
	s_and_b32 s9, s34, exec_lo
	s_or_b32 s83, s6, s7
	s_and_not1_b32 s6, s87, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s7, s86, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s46, s101
	s_mov_b32 s48, s15
	s_mov_b32 s15, s66
	s_or_b32 s81, s8, s9
	s_or_b32 s87, s6, s1
	s_or_b32 s86, s7, s3
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	scratch_load_b32 v86, off, off          ; 4-byte Folded Reload
	v_readlane_b32 s40, v255, 1
	v_readlane_b32 s42, v255, 3
	v_readlane_b32 s41, v255, 2
	v_readlane_b32 s45, v255, 0
	v_cmp_eq_u32_e64 s42, 0, v168
	v_readlane_b32 s43, v255, 4
.LBB0_12:                               ; %._crit_edge
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
	v_lshrrev_b32_e32 v52, 1, v168
	s_mov_b32 s15, 0x76543210
	.loc	1 1049 17                       ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v62, v65
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v63, 1, v52
	v_or_b32_e32 v62, 2, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s71, v52
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
	v_cmp_gt_i32_e64 s31, s71, v63
	v_cmp_gt_i32_e64 s30, s71, v62
	v_cmp_gt_i32_e64 s29, s71, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v64, v68
	v_fma_f32 v75, -v74, v70, v65
	v_div_scale_f32 v64, s4, v9, v66, v9
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s71, v60
	v_cmp_gt_i32_e64 s27, s71, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v75, v69
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s71, v58
	v_cmp_gt_i32_e64 s25, s71, v57
	v_cmp_gt_i32_e64 s24, s71, v56
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v70, v65
	v_div_scale_f32 v74, null, v66, v66, v11
	v_fmac_f32_e32 v73, v75, v73
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s71, v55
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
	v_cmp_gt_i32_e64 s22, s71, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v69, -v78, v81, v72
	v_div_fixup_f32 v24, v68, v66, v24
	v_fma_f32 v68, -v80, v82, 1.0
	v_fma_f32 v76, -v74, v75, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s71, v53
	v_cmp_gt_i32_e64 s20, s71, v51
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
	v_cmp_gt_i32_e64 s19, s71, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v74, v77, v76
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s71, v49
	v_cmp_gt_i32_e64 s17, s71, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v71, v70, v64
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s71, v46
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v65, v75
	v_rcp_f32_e32 v65, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s71, v47
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
	v_cmp_gt_i32_e64 s13, s71, v45
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
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s14, s2, s14
	s_and_b32 s13, s2, s13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v74, v67, v74
	v_div_fmas_f32 v70, v70, v75, v77
	v_fma_f32 v75, -v80, v71, v68
	v_div_scale_f32 v67, s4, v14, v66, v14
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v70, v66, v11
	v_div_scale_f32 v70, null, v66, v66, v15
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s71, v44
	v_cmp_gt_i32_e64 s10, s71, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v76, v70
	v_fmac_f32_e32 v71, v75, v82
	v_fma_f32 v75, -v69, v64, v73
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s71, v43
	v_cmp_gt_i32_e64 s9, s71, v41
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s12, s2, s12
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_fma_f32 v68, -v80, v71, v68
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s9, s2, s9
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s71, v34
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s71, v33
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s71, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
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
	v_cndmask_b32_e64 v7, v17, v26, s42
	v_cndmask_b32_e64 v8, v26, v17, s42
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s35
	v_cndmask_b32_e64 v14, v20, v29, s42
	v_cndmask_b32_e64 v15, v29, v20, s42
	v_cndmask_b32_e64 v16, v19, v18, s42
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e64 v18, v18, v19, s42
	v_cndmask_b32_e64 v19, v12, v9, s42
	v_cndmask_b32_e64 v9, v9, v12, s42
	v_cndmask_b32_e64 v12, 0x1054, v17, s42
	v_cndmask_b32_e64 v17, 0x3276, v20, s42
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s45, v86
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s36
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s37
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s38
	v_cndmask_b32_e64 v6, v25, v28, s42
	v_lshl_or_b32 v17, v17, 8, v17
	v_and_b32_e32 v12, 0x540054, v12
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v1, s71
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v20, v11, v10, s42
	v_cndmask_b32_e64 v10, v10, v11, s42
	v_cndmask_b32_e64 v11, v3, v13, s42
	v_cndmask_b32_e64 v3, v13, v3, s42
	v_cndmask_b32_e64 v13, v4, v2, s42
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v2, v2, v4, s42
	v_permlanex16_b32 v4, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s15, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_cndmask_b32_e64 v5, v28, v25, s42
	v_lshl_or_b32 v12, v17, 4, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v52, v1, v52, 1
	v_add_lshl_u32 v63, v1, v63, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 0x5040504, v8
	v_mov_b16_e32 v68.h, 0
	v_permlanex16_b32 v15, v15, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v18, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v10, v10, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v4, v5, v8
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v62, v1, v62, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s15
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s15, s2, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v4, v5, v12
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v63, 0x80000000, v63, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s30
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
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v62, 0x80000000, v62, s15
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
	s_and_b32 s15, s2, s29
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v52, v1, v58, 1
	v_cndmask_b32_e64 v11, 0x80000000, v18, s15
	v_add_lshl_u32 v18, v1, v59, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s15, s2, s28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v2, v13, v8
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v2, v13, v12
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v52, 0x80000000, v52, s15
	s_clause 0x1
	buffer_store_b16 v68, v11, s[40:43], 0 offen
	buffer_store_b16 v5, v4, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v57, 1
	v_add_lshl_u32 v5, v1, v56, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[40:43], 0 offen
	buffer_store_b16 v6, v52, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v55, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v11, v1, v54, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v7.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s15
	s_clause 0x1
	buffer_store_b16 v12, v4, s[40:43], 0 offen
	buffer_store_b16 v7, v5, s[40:43], 0 offen
	v_add_lshl_u32 v4, v1, v53, 1
	v_add_lshl_u32 v5, v1, v51, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[40:43], 0 offen
	buffer_store_b16 v14, v11, s[40:43], 0 offen
	v_add_lshl_u32 v6, v1, v50, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s15, s2, s20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v49, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s15
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s15, s2, s19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.l, v15.h
	v_mov_b16_e32 v24.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s15
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
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v16.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s15, s2, s16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v68.h
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e32 v26.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v9.h
	v_mov_b16_e32 v25.h, v68.h
	v_mov_b16_e32 v28.l, v19.h
	v_mov_b16_e32 v28.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	v_cndmask_b32_e64 v5, 0x80000000, v5, s11
	v_cndmask_b32_e64 v7, 0x80000000, v7, s9
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s71, v40
	v_cmp_gt_i32_e64 s3, s71, v38
	v_cmp_gt_i32_e64 s4, s71, v39
	v_cmp_gt_i32_e64 s1, s71, v37
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
	v_cmp_gt_i32_e32 vcc_lo, s71, v35
	v_cmp_gt_i32_e64 s0, s71, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v3.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
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
	v_add_lshl_u32 v0, v1, v0, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
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
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 8
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21952
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
    .private_segment_fixed_size: 8
    .sgpr_count:     107
    .sgpr_spill_count: 25
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
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
