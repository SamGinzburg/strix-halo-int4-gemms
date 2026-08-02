	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
	v_lshrrev_b32_e32 v159, 6, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v65, 63, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s91, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 8, v159
	v_or_b32_e32 v6, 32, v159
	v_or_b32_e32 v4, 16, v159
	v_or_b32_e32 v5, 24, v159
	v_or_b32_e32 v7, 2, v159
	v_or_b32_e32 v8, 4, v159
	v_or_b32_e32 v9, 6, v159
	v_or_b32_e32 v10, 10, v159
	v_or_b32_e32 v11, 12, v159
	v_or_b32_e32 v12, 14, v159
	v_or_b32_e32 v13, 18, v159
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[97:98], null, s46, v159, v[65:66]
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 vcc_hi, s46, v65
	s_cselect_b32 s30, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 6
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v157, s46, 3, v97
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v159
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[150:151], null, s46, 24, v[97:98]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s33, v5
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v193, s46, 5, v97
	v_mad_u64_u32 v[151:152], null, s46, 6, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v194, s46, 1, v97
	v_lshl_add_u32 v195, s46, 2, v97
	v_mad_u64_u32 v[152:153], null, s46, 10, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[153:154], null, s46, 12, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v14, 20, v159
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[154:155], null, s46, 14, v[97:98]
	v_mad_u64_u32 v[155:156], null, s46, 18, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v15, 22, v159
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v16, 26, v159
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[190:191], null, s46, 20, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s5, s7, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[191:192], null, s46, 22, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s5, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, 28, v159
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s7, s6
	s_add_i32 s6, s5, 1
	s_sub_i32 s7, s2, s4
	s_cmp_ge_u32 s2, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 30, v159
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[106:107], null, s46, 26, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s31, s6, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s65
	s_xor_b32 s8, s64, s65
	s_cvt_f32_u32 s2, s5
	s_sub_i32 s7, 0, s5
	s_ashr_i32 s34, s8, 31
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s6, s3, s66
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[107:108], null, s46, 28, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, 34, v159
	v_or_b32_e32 v20, 36, v159
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[108:109], null, s46, 30, v[97:98]
	v_mad_u64_u32 v[109:110], null, s46, 34, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v21, 38, v159
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
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v10, s46, 4, v97
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v22, 40, v159
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[110:111], null, s46, 36, v[97:98]
	scratch_store_b32 off, v10, off offset:4 ; 4-byte Folded Spill
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[111:112], null, s46, 38, v[97:98]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s2, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v23, 42, v159
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s7, s2, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s4, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v24, 44, v159
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s9, s7, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[112:113], null, s46, 40, v[97:98]
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s9
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s66, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s35, s9, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s45, s6, s33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s44, s45, s46
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, vcc_hi
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s44, v97, 1
	v_add_lshl_u32 v2, s44, v157, 1
	v_add_lshl_u32 v3, s44, v10, 1
	v_add_lshl_u32 v4, s44, v150, 1
	v_add_lshl_u32 v5, s44, v193, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v7
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s66, v8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, vcc_hi
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s44, v151, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, vcc_hi
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s33, v11
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v6
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s44, v194, 1
	v_add_lshl_u32 v7, s44, v195, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s33, v12
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v9
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, vcc_hi
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v12, s33, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v10
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v9, s44, v152, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s33, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s44, v153, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s66, v11
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v14, s33, v15
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s66, v12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v11, s44, v154, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s33, v16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s44, v155, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s66, v13
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v16, s33, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s7, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s66, v14
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v13, s44, v190, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s33, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, s44, v191, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s8, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s66, v15
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v18, s33, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s9, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s66, v16
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s44, v106, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s33, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s44, v107, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s10, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s66, v17
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v20, s33, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s11, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s66, v18
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v17, s44, v108, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, s33, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, s44, v109, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s12, vcc_hi
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[113:114], null, s46, 42, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v25, 46, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s66, v19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, s33, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s14, vcc_hi
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v26, 48, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s66, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, s44, v110, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[114:115], null, s46, 44, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, s33, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, s44, v111, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, vcc_hi
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[115:116], null, s46, 46, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v27, 50, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s66, v21
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, s33, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, vcc_hi
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v28, 52, v159
	v_or_b32_e32 v29, 54, v159
	v_or_b32_e32 v30, 56, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s66, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, s44, v112, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[116:117], null, s46, 48, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, s33, v26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, s44, v113, 1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, vcc_hi
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[117:118], null, s46, 50, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v31, 58, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s66, v23
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, s33, v27
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s66, v24
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v23, s44, v114, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[118:119], null, s46, 56, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v27, s33, v28
	v_or_b32_e32 v28, s33, v29
	v_or_b32_e32 v29, s33, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, s44, v115, 1
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, vcc_hi
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[119:120], null, s46, 58, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 60, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s66, v25
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, s33, v31
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s20, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s66, v26
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v25, s44, v116, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[120:121], null, s46, 52, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, s44, v117, 1
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s21, vcc_hi
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[121:122], null, s46, 60, v[97:98]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 62, v159
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s66, v29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v31, s33, v32
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s22, vcc_hi
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
	s_and_b32 vcc_lo, s23, vcc_hi
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[123:124], null, s46, 62, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v32, s33, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s66, v31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v29, s44, v120, 1
	v_add_lshl_u32 v30, s44, v121, 1
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, vcc_hi
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s66, v32
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, vcc_hi
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v31, s44, v122, 1
	v_add_lshl_u32 v32, s44, v123, 1
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, vcc_hi
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s41, s41, 0xffff
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, vcc_hi
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
	s_and_b32 vcc_lo, s29, vcc_hi
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
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v33, v0, 6, 1
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s35, s34
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s67, 63
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s4, s2, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s4
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
	s_ashr_i32 s2, s6, 31
	s_lshr_b32 s2, s2, 26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v196, 0, v33
	v_xor_b32_e32 v34, 0x120, v33
	v_xor_b32_e32 v35, 0x240, v33
	v_xor_b32_e32 v33, 0x360, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s6, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v197, 0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v198, 0, v35
	v_add_nc_u32_e32 v199, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v36
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s42, s2, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v196, v1
	s_waitcnt vmcnt(30)
	ds_store_b16 v196, v2 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v196, v3 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v196, v4 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v196, v5 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v196, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v196, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v196, v27 offset:7168
	ds_store_b16 v197, v6
	ds_store_b16 v197, v9 offset:1024
	ds_store_b16 v197, v12 offset:2048
	ds_store_b16 v197, v15 offset:3072
	ds_store_b16 v197, v18 offset:4096
	ds_store_b16 v197, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v197, v26 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v197, v28 offset:7168
	ds_store_b16 v198, v7
	ds_store_b16 v198, v10 offset:1024
	ds_store_b16 v198, v13 offset:2048
	ds_store_b16 v198, v16 offset:3072
	ds_store_b16 v198, v19 offset:4096
	ds_store_b16 v198, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v198, v29 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v198, v30 offset:7168
	ds_store_b16 v199, v8
	ds_store_b16 v199, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v199, v14 offset:2048
	ds_store_b16 v199, v17 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v199, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v199, v24 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v199, v31 offset:6144
	ds_store_b16 v199, v32 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s33, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s33, s37
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
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s2, 31
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s7
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s7, s8, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s91, s7, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s42, s42, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s30
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v33, 15, v0
	v_and_b32_e32 v34, 0x60, v0
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s43, 1, v1
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
	s_ashr_i32 s7, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s42, s42, s2
.LBB0_4:
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v34
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s73, s[0:1], 0x64
	v_lshrrev_b32_e32 v2, 4, v0
	v_bfe_u32 v156, v0, 4, 1
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v53, v1, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s91, s42
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, 62, v2
	v_or_b32_e32 v192, 30, v156
	v_mov_b32_e32 v7, v8
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v67, s33, v53
	v_mov_b32_e32 v6, v8
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_cmp_gt_i32_e64 s89, s66, v67
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
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s7, s3, s64
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_clause 0x1
	s_load_b128 s[100:103], s[0:1], 0x8
	s_load_b32 s0, s[0:1], 0x6c
	s_xor_b32 s8, s31, s7
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s7, s8, s7
	s_sub_i32 s8, 0, s5
	s_mul_i32 s9, s7, s64
	s_mul_i32 s8, s8, s6
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s8, s6, s8
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s40, 0
	s_abs_i32 s9, s3
	s_add_i32 s6, s6, s8
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s4, s4, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s8, s6, s5
	v_writelane_b32 v255, s41, 1
	s_xor_b32 s3, s3, s4
	s_sub_i32 s4, s9, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s9, s4, s5
	s_cmp_ge_u32 s4, s5
	v_writelane_b32 v255, s42, 2
	s_cselect_b32 s1, s8, s6
	s_cselect_b32 s4, s9, s4
	s_add_i32 s6, s1, 1
	s_cmp_ge_u32 s4, s5
	v_writelane_b32 v255, s43, 3
	s_cselect_b32 s1, s6, s1
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s7, s7, s65
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s1, s3
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s72, s0, 0x3fb8aa3b
	v_writelane_b32 v255, s45, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s1, s3
	s_mov_b32 s0, 0
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s1, s1, s7
	s_mov_b32 s2, s0
	.loc	1 852 32 is_stmt 0              ; attention.py:852:32
	s_mul_i32 s40, s1, s67
	s_mov_b32 s1, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	v_writelane_b32 v255, s0, 5
	v_and_b32_e32 v1, 7, v0
	v_lshlrev_b32_e32 v2, 7, v33
	v_lshlrev_b32_e32 v3, 6, v34
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v12, 64, v0
	v_writelane_b32 v255, s1, 6
	v_lshlrev_b32_e32 v4, 4, v1
	v_lshlrev_b32_e32 v13, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v200, 4, v12
	v_lshlrev_b32_e32 v14, 7, v65
	v_writelane_b32 v255, s2, 7
	v_or3_b32 v3, v2, v3, v4
	v_and_b32_e32 v13, 0x70, v13
	v_lshrrev_b32_e32 v12, 3, v12
	s_mov_b32 s83, 0x31027000
	v_writelane_b32 v255, s3, 8
	v_xad_u32 v7, v3, 32, 0
	v_xad_u32 v8, v3, 48, 0
	v_xad_u32 v11, 0x60, v3, 0
	ds_load_b128 v[41:44], v7
	ds_load_b128 v[45:48], v8
	v_writelane_b32 v255, s4, 9
	v_and_b32_e32 v8, 16, v0
	v_add_nc_u32_e32 v5, 0, v3
	v_xad_u32 v6, v3, 16, 0
	v_xad_u32 v9, v3, 64, 0
	v_writelane_b32 v255, s5, 10
	v_xad_u32 v10, 0x50, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[57:60], v11
	ds_load_b128 v[61:64], v3
	v_writelane_b32 v255, s6, 11
	v_mov_b32_e32 v11, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	s_mov_b32 s82, 0x7ffffffe
	s_and_b32 s101, s101, 0xffff
	v_writelane_b32 v255, s7, 12
	s_and_b32 s81, s103, 0xffff
	v_cndmask_b32_e32 v11, 0x1054, v11, vcc_lo
	v_or_b32_e32 v201, v4, v2
	v_xor_b32_e32 v4, v4, v13
	v_bfe_i32 v13, v0, 3, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s72, 13
	s_mov_b32 s80, s102
	s_mov_b32 s102, s82
	s_mov_b32 s103, s83
	v_mov_b32_e32 v8, 0x7632
	v_or3_b32 v0, v14, v12, v4
	v_and_b32_e32 v4, 0x410, v13
	v_mul_u32_u24_e32 v1, 0x90, v1
	v_writelane_b32 v255, s100, 14
	v_cndmask_b32_e32 v8, 0x3276, v8, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	scratch_store_b32 off, v53, off offset:8 ; 4-byte Folded Spill
	v_xor_b32_e32 v204, v1, v4
	v_writelane_b32 v255, s101, 15
	v_lshl_or_b32 v8, v8, 8, v8
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[53:56], v10
	v_and_b32_e32 v11, 0x540054, v11
	v_xor_b32_e32 v26, 0x860, v204
	v_writelane_b32 v255, s102, 16
	v_and_b32_e32 v8, 0x760076, v8
	v_xor_b32_e32 v31, 0x1050, v204
	v_xor_b32_e32 v32, 0x1060, v204
	v_add_nc_u32_e32 v229, 0, v26
	v_mov_b32_e32 v26, v25
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v6
	v_writelane_b32 v255, s103, 17
	v_add_nc_u32_e32 v234, 0, v31
	v_add_nc_u32_e32 v235, 0, v32
	v_mov_b32_e32 v31, v25
	v_lshl_or_b32 v8, v8, 4, v8
	v_mov_b32_e32 v32, v25
	v_lshl_or_b32 v11, v11, 4, v11
	v_writelane_b32 v255, s89, 18
	v_mad_u64_u32 v[124:125], null, s73, v200, v[65:66]
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s78, s73, v65
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v202, s39, v67
	v_xor_b32_e32 v2, 16, v201
	v_xor_b32_e32 v3, 32, v201
	v_xor_b32_e32 v5, 48, v201
	v_xor_b32_e32 v6, 64, v201
	v_xor_b32_e32 v7, 0x50, v201
	v_xor_b32_e32 v9, 0x60, v201
	v_xor_b32_e32 v10, 0x70, v201
	v_and_b32_e32 v125, 0x5040504, v11
	v_and_b32_e32 v203, 0x7060706, v8
	v_xor_b32_e32 v8, 16, v0
	v_xor_b32_e32 v11, 32, v0
	v_xor_b32_e32 v12, 48, v0
	v_xor_b32_e32 v1, 64, v0
	v_xor_b32_e32 v4, 0x50, v0
	v_xor_b32_e32 v13, 0x60, v0
	v_xor_b32_e32 v14, 0x70, v0
	v_xor_b32_e32 v15, 16, v204
	v_xor_b32_e32 v16, 32, v204
	v_xor_b32_e32 v17, 48, v204
	v_xor_b32_e32 v18, 64, v204
	v_xor_b32_e32 v19, 0x50, v204
	v_xor_b32_e32 v20, 0x60, v204
	v_xor_b32_e32 v21, 0x70, v204
	v_xor_b32_e32 v22, 0x820, v204
	v_xor_b32_e32 v23, 0x830, v204
	v_xor_b32_e32 v24, 0x810, v204
	v_xor_b32_e32 v27, 0x870, v204
	v_xor_b32_e32 v28, 0x840, v204
	v_xor_b32_e32 v29, 0x850, v204
	v_xor_b32_e32 v30, 0x1040, v204
	v_xor_b32_e32 v65, 0x1070, v204
	v_xor_b32_e32 v66, 0x1010, v204
	v_xor_b32_e32 v67, 0x1020, v204
	v_xor_b32_e32 v68, 0x1030, v204
	v_xor_b32_e32 v69, 0x1860, v204
	v_xor_b32_e32 v70, 0x1870, v204
	v_xor_b32_e32 v71, 0x1840, v204
	v_xor_b32_e32 v72, 0x1850, v204
	v_xor_b32_e32 v73, 0x1820, v204
	v_xor_b32_e32 v74, 0x1830, v204
	v_xor_b32_e32 v75, 0x1810, v204
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, vcc_hi, 19
	v_add_nc_u32_e32 v205, 0, v2
	v_add_nc_u32_e32 v206, 0, v3
	v_add_nc_u32_e32 v207, 0, v5
	v_add_nc_u32_e32 v208, 0, v6
	v_add_nc_u32_e32 v209, 0, v7
	v_add_nc_u32_e32 v210, 0, v9
	v_mov_b32_e32 v9, v25
	v_add_nc_u32_e32 v211, 0, v10
	v_add_nc_u32_e32 v212, 0, v8
	v_add_nc_u32_e32 v213, 0, v11
	v_add_nc_u32_e32 v214, 0, v12
	v_add_nc_u32_e32 v215, 0, v1
	v_add_nc_u32_e32 v216, 0, v4
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v217, 0, v13
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v218, 0, v14
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v219, 0, v15
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v220, 0, v16
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v221, 0, v17
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v222, 0, v18
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v223, 0, v19
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v224, 0, v20
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v225, 0, v21
	v_dual_mov_b32 v249, v25 :: v_dual_add_nc_u32 v226, 0, v22
	v_add_nc_u32_e32 v227, 0, v23
	v_add_nc_u32_e32 v228, 0, v24
	v_add_nc_u32_e32 v230, 0, v27
	v_add_nc_u32_e32 v231, 0, v28
	v_add_nc_u32_e32 v232, 0, v29
	v_add_nc_u32_e32 v233, 0, v30
	v_add_nc_u32_e32 v236, 0, v65
	v_add_nc_u32_e32 v237, 0, v66
	v_add_nc_u32_e32 v238, 0, v67
	v_add_nc_u32_e32 v239, 0, v68
	v_add_nc_u32_e32 v240, 0, v69
	v_add_nc_u32_e32 v241, 0, v70
	v_add_nc_u32_e32 v242, 0, v71
	v_add_nc_u32_e32 v243, 0, v72
	v_add_nc_u32_e32 v244, 0, v73
	v_add_nc_u32_e32 v245, 0, v74
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v246, 0, v75
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_subrev_nc_u32_e32 v247, s37, v202
	v_add_nc_u32_e32 v248, s38, v202
	v_writelane_b32 v255, s78, 20
	s_lshl_b32 s39, s73, 1
	s_lshl_b32 s41, s73, 3
	s_lshl_b32 s44, s73, 4
	s_lshl_b32 s45, s73, 5
	s_mov_b32 s56, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v158, s72, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v163, s72, v83 :: v_dual_mul_f32 v164, s72, v84
	v_mad_u64_u32 v[83:84], null, s65, s73, v[124:125]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 1, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v167, s72, v87 :: v_dual_mul_f32 v168, s72, v88
	v_dual_mul_f32 v87, s72, v75 :: v_dual_mul_f32 v88, s72, v76
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v76, s72, v68
	v_mul_f32_e32 v160, s72, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, v83, s39, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s78, s3
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s5, s67, v65
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v65, 2, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v169, s72, v73 :: v_dual_mul_f32 v170, s72, v74
	v_dual_mul_f32 v80, s72, v80 :: v_dual_mul_f32 v161, s72, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v67, 41, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v252, s72, v89 :: v_dual_mul_f32 v253, s72, v90
	v_dual_mul_f32 v89, s72, v95 :: v_dual_mul_f32 v90, s72, v96
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 3, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s91, v67
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v95, s72, v77 :: v_dual_mul_f32 v96, s72, v78
	v_dual_mul_f32 v254, s72, v79 :: v_dual_mul_f32 v77, s72, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v69, 43, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v78, s72, v71
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 49, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v75, s72, v70
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 8, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s91, v69
	v_or_b32_e32 v71, s91, v71
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v251, s72, v91 :: v_dual_mul_f32 v92, s72, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v91, s72, v81 :: v_dual_mul_f32 v162, s72, v82
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 51, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v79, s72, v72
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 9, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v165, s72, v85 :: v_dual_mul_f32 v166, s72, v86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v81, s91, v81
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v183, v83, s73, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s78, s18
	s_and_b32 s5, s78, s5
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v161, s97
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v183, s5
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 10, v200
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v93, s72, v93 :: v_dual_mul_f32 v94, s72, v94
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v89, s66
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s8, s78, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v93, s70
	v_cndmask_b32_e64 v134, 0xff800000, v94, s69
	v_cndmask_b32_e64 v93, 0xff800000, v251, s68
	v_cndmask_b32_e64 v136, 0xff800000, v90, s85
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 11, v200
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v251, 0xff800000, v91, s84
	v_cndmask_b32_e64 v91, 0xff800000, v79, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v135, v136, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 16, v200
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s9, s78, s9
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 17, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 18, v200
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 19, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 24, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 25, v200
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s78, s14
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 26, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 27, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 32, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 33, v200
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s78, s15
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 34, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v83
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s78, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	s_clause 0x1
	buffer_load_u16 v73, v65, s[80:83], 0 offen
	buffer_load_u16 v74, v66, s[80:83], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 35, v200
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s78, s12
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v67
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v67, 42, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	v_or_b32_e32 v67, s91, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 40, v200
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, v83, s41, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	s_mul_i32 s3, s73, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v66, v83, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s78, s22
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v67
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v67, v83, s44, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s78, s19
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v65, v65, s[80:83], 0 offen
	buffer_load_u16 v66, v66, s[80:83], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	s_mul_i32 s3, s73, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v68, v83, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s78, s20
	s_mul_i32 s20, s73, 24
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s67, v69
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v69, 48, v200
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v69, s91, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v83, s20, 1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s14
	s_mul_i32 s14, s73, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v70, v83, s14, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s78, s16
	s_mul_i32 s16, s73, 40
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s14
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v71
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 50, v200
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v69, v69, s[80:83], 0 offen
	buffer_load_u16 v70, v70, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v71, s91, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v71, v83, s45, 1
	v_cndmask_b32_e64 v71, 0x80000000, v71, s15
	s_mul_i32 s15, s73, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v72, v83, s15, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s78, s17
	s_and_b32 s17, s78, s19
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s15
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v81
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 56, v200
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	buffer_load_u16 v72, v72, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v81, s91, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s67, v81
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v81, v83, s16, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s78, s21
	s_and_b32 s19, s78, s23
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v81, 0x80000000, v81, s16
	s_mul_i32 s16, s73, 42
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v82, v83, s16, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s78, s22
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v82, 0x80000000, v82, s16
	s_mul_i32 s16, s73, 3
	s_clause 0x1
	buffer_load_u16 v81, v81, s[80:83], 0 offen
	buffer_load_u16 v82, v82, s[80:83], 0 offen
	v_add_lshl_u32 v98, v83, s16, 1
	s_mul_i32 s16, s73, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v184, v83, s16, 1
	s_mul_i32 s16, s73, 11
	v_cndmask_b32_e64 v186, 0x80000000, v98, s18
	v_add_lshl_u32 v185, v83, s16, 1
	s_mul_i32 s16, s73, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v171, v83, s16, 1
	s_mul_i32 s16, s73, 19
	v_cndmask_b32_e64 v98, 0x80000000, v185, s9
	v_add_lshl_u32 v172, v83, s16, 1
	s_mul_i32 s16, s73, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v173, v83, s16, 1
	s_mul_i32 s16, s73, 27
	v_add_lshl_u32 v174, v83, s16, 1
	s_mul_i32 s16, s73, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v175, v83, s16, 1
	s_mul_i32 s16, s73, 35
	v_add_lshl_u32 v176, v83, s16, 1
	s_mul_i32 s16, s73, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v177, v83, s16, 1
	s_mul_i32 s16, s73, 43
	v_add_lshl_u32 v178, v83, s16, 1
	s_mul_i32 s16, s73, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v84, v83, s16, 1
	s_mul_i32 s16, s73, 49
	v_add_lshl_u32 v179, v83, s16, 1
	s_mul_i32 s16, s73, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v85, v83, s16, 1
	s_mul_i32 s16, s73, 51
	v_add_lshl_u32 v180, v83, s16, 1
	s_mul_i32 s16, s73, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v86, v83, s16, 1
	s_mul_i32 s16, s73, 57
	v_add_lshl_u32 v181, v83, s16, 1
	s_mul_i32 s16, s73, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v99, v83, s16, 1
	s_mul_i32 s16, s73, 59
	v_add_lshl_u32 v182, v83, s16, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v83, 57, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v83, s91, v83
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v83
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v83, 58, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v83, s91, v83
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v83
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v83, 0x80000000, v84, s17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s78, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v84, 0x80000000, v85, s17
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v85, 59, v200
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v83, v83, s[80:83], 0 offen
	buffer_load_u16 v84, v84, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v85, s91, v85
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s91, s91, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v85
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v85, 0x80000000, v86, s19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s78, s21
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v86, 0x80000000, v99, s19
	v_cndmask_b32_e64 v99, 0x80000000, v184, s8
	s_clause 0x5
	buffer_load_u16 v98, v98, s[80:83], 0 offen
	buffer_load_u16 v99, v99, s[80:83], 0 offen
	buffer_load_u16 v101, v186, s[80:83], 0 offen
	buffer_load_u16 v100, v100, s[80:83], 0 offen
	buffer_load_u16 v85, v85, s[80:83], 0 offen
	buffer_load_u16 v86, v86, s[80:83], 0 offen
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v66.h, v98.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v65.h, v99.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v74.h, v101.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v73.h, v100.l
	v_cndmask_b32_e32 v100, 0x80000000, v171, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v88, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v101, 0x80000000, v172, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s6
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, 0xff800000, v87, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v102, 0x80000000, v173, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s7
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v173, 0xff800000, v170, s49
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v103, 0x80000000, v174, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, 0xff800000, v169, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v104, 0x80000000, v175, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v168, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v105, 0x80000000, v176, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s12
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v176, 0xff800000, v167, s92
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v126, 0x80000000, v177, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s3
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v177, 0xff800000, v166, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v127, 0x80000000, v178, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v165, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v128, 0x80000000, v179, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s15
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v164, s74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v129, 0x80000000, v180, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s16
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v180, 0xff800000, v163, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v130, 0x80000000, v181, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s78, s17
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v181, 0xff800000, v162, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v131, 0x80000000, v182, vcc_lo
	s_clause 0xb
	buffer_load_u16 v103, v103, s[80:83], 0 offen
	buffer_load_u16 v102, v102, s[80:83], 0 offen
	buffer_load_u16 v101, v101, s[80:83], 0 offen
	buffer_load_u16 v100, v100, s[80:83], 0 offen
	buffer_load_u16 v127, v127, s[80:83], 0 offen
	buffer_load_u16 v126, v126, s[80:83], 0 offen
	buffer_load_u16 v105, v105, s[80:83], 0 offen
	buffer_load_u16 v104, v104, s[80:83], 0 offen
	buffer_load_u16 v131, v131, s[80:83], 0 offen
	buffer_load_u16 v130, v130, s[80:83], 0 offen
	buffer_load_u16 v129, v129, s[80:83], 0 offen
	buffer_load_u16 v128, v128, s[80:83], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v95, s98
	v_cndmask_b32_e64 v162, 0xff800000, v76, s60
	v_cndmask_b32_e64 v95, 0xff800000, v77, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v132, 0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v96, s48
	v_cndmask_b32_e64 v168, 0xff800000, v254, s77
	v_cndmask_b32_e64 v167, 0xff800000, v80, s64
	v_cndmask_b32_e64 v166, 0xff800000, v158, s94
	v_cndmask_b32_e64 v165, 0xff800000, v160, s62
	v_cndmask_b32_e64 v96, 0xff800000, v75, s58
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v75, v162, v95
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v132, v[73:74]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v181, v180, v179
	v_max3_f32 v74, v178, v177, v176
	v_max3_f32 v132, v175, v174, v173
	v_max3_f32 v80, v169, v168, v167
	v_max3_f32 v87, v166, v165, v161
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v253, s79
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v212, v[65:66]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v73, v74, v132
	v_max3_f32 v74, v172, v171, v170
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v92, s71
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s91, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v74, v80, v87
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v252, s86
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v132, v133, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v87, v80, v88
	v_max3_f32 v87, v87, v93, v92
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v78, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v87, v89, v73
	v_max_f32_e32 v76, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v75, v75, v96, v76
	v_max3_f32 v73, v73, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v74, v73, s56, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v87, v250, v73, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v88, v87
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v250, v87
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v134, v87
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
	v_cndmask_b32_e64 v89, 0, v74, s79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v78, s69
	v_cndmask_b32_e64 v95, 0, v95, s96
	v_cndmask_b32_e64 v96, 0, v96, s58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v90.l, v89.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v80, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v136, v87
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v74, 1, v90
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v74, v89, v74, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v73, s86
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v73.h, v90.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v80, s85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v73.l, v88.h
	v_cmp_o_f32_e64 s1, v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v88, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s1
	v_permlanex16_b32 v75, v74, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v73, v75, v74, v125
	v_perm_b32 v74, v75, v74, v203
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v70.h, v103.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v69.h, v102.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v68.h, v101.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v67.h, v100.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v82.h, v127.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v81.h, v126.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v72.h, v105.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v71.h, v104.l
	ds_store_b64 v213, v[67:68]
	ds_store_b64 v214, v[69:70]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v84.h, v129.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v83.h, v128.l
	ds_store_b64 v215, v[71:72]
	ds_store_b64 v216, v[81:82]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v81, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v132, v87
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v86.h, v131.l
	v_mov_b16_e64 v85.h, v130.l
	ds_store_b64 v217, v[83:84]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v218, v[85:86]
	v_add_nc_u32_e32 v86, 0, v204
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v86
	ds_load_b128 v[69:72], v219
	ds_load_b128 v[182:185], v220
	ds_load_b128 v[126:129], v86 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v76, s71
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[186:189], v221
	ds_load_b128 v[98:101], v222
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v94.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v93, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v76, 1, v90
	v_mov_b16_e64 v90.l, v160.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v76, v94, v76, 0x7fff
	v_and_b32_e32 v78, 1, v90
	v_mov_b16_e64 v90.l, v164.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.h, 0x7fff, v76.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_add3_u32 v78, v160, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v80, 1, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v93, 0, v75, s68
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.h, v90.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	v_add3_u32 v80, v164, v80, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_mov_b16_e32 v75.l, v93.h
	v_cmp_o_f32_e64 s1, v93, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v250
	v_cndmask_b32_e32 v85, 0, v81, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v75, 1, v75
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[142:145], v242
	ds_load_b128 v[81:84], v239
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v75, v93, v75, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v85
	v_mul_f32_e32 v17, v17, v85
	v_mul_f32_e32 v18, v18, v85
	v_mul_f32_e32 v19, v19, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v76.l, 0x7fff, v75.h, s1
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v85
	v_mul_f32_e32 v21, v21, v85
	v_mul_f32_e32 v22, v22, v85
	v_mul_f32_e32 v23, v23, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v77, v76, s56, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v85
	v_mul_f32_e32 v9, v9, v85
	v_mul_f32_e32 v10, v10, v85
	v_mul_f32_e32 v11, v11, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v75, v77, v76, v125
	v_perm_b32 v76, v77, v76, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v77, v133, v87 :: v_dual_mul_f32 v12, v12, v85
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v85
	v_mul_f32_e32 v14, v14, v85
	v_mul_f32_e32 v15, v15, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v85
	v_mul_f32_e32 v25, v25, v85
	v_mul_f32_e32 v27, v27, v85
	v_mul_f32_e32 v29, v29, v85
	v_mul_f32_e32 v30, v30, v85
	v_mul_f32_e32 v31, v31, v85
	v_mul_f32_e32 v32, v32, v85
	v_mul_f32_e32 v1, v1, v85
	v_mul_f32_e32 v2, v2, v85
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v77, s70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v77.h, v90.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v85
	v_mul_f32_e32 v4, v4, v85
	v_mul_f32_e32 v5, v5, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v77.l, v158.h
	v_cmp_o_f32_e64 s1, v158, v158
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v85
	v_mul_f32_e32 v7, v7, v85
	v_mul_f32_e32 v8, v8, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v77, v158, v77, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v77.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v78, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v79, v78, v125
	v_perm_b32 v78, v79, v78, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v135, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[134:137], v226
	ds_load_b128 v[138:141], v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v79, s66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v79.h, v90.h
	v_mov_b16_e64 v79.l, v163.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v163, v163
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v79, v163, v79, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v79.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v132, v80, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v132, v80, v125
	v_perm_b32 v80, v132, v80, v203
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[134:141], v[73:80], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[134:137], v233
	ds_load_b128 v[138:141], v234
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[73:80], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v251, v87
	v_sub_f32_e32 v66, v181, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[130:133], v228
	ds_load_b128 v[69:72], v225
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[134:141], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[134:137], v240
	ds_load_b128 v[138:141], v241
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[134:141], v[73:80], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v65, s84
	v_cndmask_b32_e64 v74, 0, v66, s75
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
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v134, v65, v66, v125
	v_perm_b32 v135, v65, v66, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v180, v87
	v_sub_f32_e32 v66, v179, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v65, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v76, 0, v66, s74
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
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v136, v65, v66, v125
	v_perm_b32 v137, v65, v66, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v178, v87
	v_sub_f32_e32 v66, v177, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v65, s13
	v_cndmask_b32_e64 v178, 0, v66, s93
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v177.h
	v_mov_b16_e64 v90.l, v178.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_cmp_o_f32_e64 s1, v177, v177
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v177, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v178, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v138, v65, v66, v125
	v_perm_b32 v139, v65, v66, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v176, v87
	v_sub_f32_e32 v66, v175, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v175, 0, v65, s92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v176, 0, v66, s90
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	v_mov_b16_e64 v65.l, v175.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v90.l, v176.h
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_cmp_o_f32_e64 s1, v175, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v175, v65, 0x7fff
	v_add3_u32 v66, v176, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v140, v65, v66, v125
	v_perm_b32 v141, v65, v66, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v174, v87
	v_sub_f32_e32 v66, v173, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[126:133], v[134:141], v[17:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v235
	ds_load_b128 v[130:133], v236
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[182:189], v[134:141], v[25:32]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v65, s95
	v_cndmask_b32_e64 v174, 0, v66, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v173.h
	v_mov_b16_e64 v90.l, v174.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cmp_o_f32_e64 s1, v173, v173
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v90
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[126:133], v[134:141], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[146:149], v243
	ds_load_b128 v[126:129], v244
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v173, v65, 0x7fff
	v_add3_u32 v66, v174, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[142:149], v[134:141], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v134, v65, v66, v125
	v_perm_b32 v135, v65, v66, v203
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v65, v172, v87
	v_sub_f32_e32 v66, v171, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[130:133], v245
	ds_load_b128 v[146:149], v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v65, s88
	v_cndmask_b32_e64 v172, 0, v66, s99
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v171.h
	v_mov_b16_e64 v90.l, v172.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_cmp_o_f32_e64 s1, v171, v171
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v171, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v172, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v136, v65, v66, v125
	v_perm_b32 v137, v65, v66, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v170, v87
	v_sub_f32_e32 v66, v169, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v65, s98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v170, 0, v66, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	v_mov_b16_e64 v65.l, v169.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v90.l, v170.h
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cmp_o_f32_e64 s1, v169, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v66, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v169, v65, 0x7fff
	v_add3_u32 v66, v170, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v138, v65, v66, v125
	v_perm_b32 v139, v65, v66, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v168, v87
	v_sub_f32_e32 v66, v167, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v65, s77
	v_cndmask_b32_e64 v168, 0, v66, s64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.h, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v65.l, v167.h
	v_mov_b16_e64 v90.l, v168.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_cmp_o_f32_e64 s1, v167, v167
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v66, 1, v90
	v_add3_u32 v65, v167, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v168, v66, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	v_permlanex16_b32 v65, v66, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v140, v65, v66, v125
	v_perm_b32 v141, v65, v66, v203
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[102:105], v223
	ds_load_b128 v[65:68], v224
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[134:141], v[1:8]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[98:105], v[134:141], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[98:101], v229
	ds_load_b128 v[102:105], v230
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[98:105], v[134:141], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[98:101], v86 offset:4096
	ds_load_b128 v[102:105], v237
	ds_load_b128 v[77:80], v238
	ds_load_b128 v[142:145], v86 offset:6144
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v166, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s94
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[98:105], v[134:141], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v165, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v99.h, v90.h
	v_mov_b16_e32 v99.l, v86.h
	v_cmp_o_f32_e64 s1, v86, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v101, v162, v87
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v101, v101
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v98, s62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v98, 1, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v101, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v126.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v98, v86, v98, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v126, v126
	v_and_b32_e32 v99, 1, v90
	v_mov_b16_e64 v90.l, v128.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v99, v126, v99, 0x7fff
	v_cndmask_b16 v99.l, 0x7fff, v98.h, s1
	v_and_b32_e32 v101, 1, v90
	v_mov_b16_e32 v90.l, v96.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v99.h, 0x7fff, v99.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_add3_u32 v101, v128, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v103, 1, v90
	v_mov_b16_e32 v90.l, v91.h
	v_permlanex16_b32 v100, v99, s56, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v101.h, 0x7fff, v101.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v103, v96, v103, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_perm_b32 v98, v100, v99, v125
	v_perm_b32 v99, v100, v99, v203
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v161, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v103.h, 0x7fff, v103.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v100, v100
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v100, s97
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v100.h, v90.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v100.l, v127.h
	v_cmp_o_f32_e64 s1, v127, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v100, 1, v100
	v_add3_u32 v100, v127, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v101.l, 0x7fff, v100.h, s1
	v_cmp_o_f32_e64 s1, v95, v95
	v_permlanex16_b32 v102, v101, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v100, v102, v101, v125
	v_perm_b32 v101, v102, v101, v203
	v_mov_b16_e32 v102.l, v95.h
	v_mov_b16_e32 v102.h, v90.h
	v_and_b32_e32 v102, 1, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v102, v95, v102, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v102.h, s1
	v_cmp_o_f32_e64 s1, v92, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v104, v103, s56, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v102, v104, v103, v125
	v_perm_b32 v103, v104, v103, v203
	v_mov_b16_e32 v104.l, v92.h
	v_mov_b16_e32 v104.h, v90.h
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v104, 1, v104
	v_add3_u32 v90, v91, v90, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v104, v92, v104, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v90.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v90.l, 0x7fff, v104.h, s1
	v_permlanex16_b32 v105, v90, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v104, v105, v90, v125
	v_perm_b32 v105, v105, v90, v203
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[98:105], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[65:68], v231
	ds_load_b128 v[69:72], v232
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[77:84], v[98:105], v[9:16]
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v92, v91
.Ltmp17:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[142:149], v[98:105], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[98:105], v[17:24]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v88, v89 :: v_dual_add_f32 v66, v93, v94
	v_add_f32_e32 v67, v158, v160
	v_dual_add_f32 v68, v163, v164 :: v_dual_add_f32 v69, v73, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v70, v75, v76 :: v_dual_add_f32 v65, v65, v66
	v_add_f32_e32 v73, v167, v168
	v_add_f32_e32 v66, v67, v68
	v_add_f32_e32 v68, v177, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_e32 v67, v69, v70
	v_dual_add_f32 v69, v175, v176 :: v_dual_add_f32 v70, v173, v174
	v_add_f32_e32 v75, v127, v128
	v_dual_add_f32 v71, v171, v172 :: v_dual_add_f32 v72, v169, v170
	v_dual_add_f32 v68, v68, v69 :: v_dual_add_f32 v65, v65, v66
	v_add_f32_e32 v74, v86, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v76, v95, v96 :: v_dual_add_f32 v69, v70, v71
	v_add_f32_e32 v66, v67, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v70, v72, v73 :: v_dual_add_f32 v71, v74, v75
	v_dual_add_f32 v65, v65, v66 :: v_dual_add_f32 v72, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v67, v69, v70 :: v_dual_add_f32 v68, v71, v72
	v_add_f32_e32 v66, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v65, v65, v66
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v66, v65, s56, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v65, v66
.Ltmp21:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v66, v249, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v250, v87 :: v_dual_mov_b32 v249, v66
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v159
	.loc	1 854 32                        ; attention.py:854:32
	scratch_load_b32 v73, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s65, s91, s40
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v98, 2, v156
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s65, s46
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 2, v159
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s4, v194, 1
	v_add_lshl_u32 v67, s4, v195, 1
	v_add_lshl_u32 v68, s4, v151, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s27
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v69, s4, v157, 1
	v_add_lshl_u32 v88, s4, v116, 1
	v_add_lshl_u32 v70, s4, v152, 1
	v_add_lshl_u32 v80, s4, v108, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 4, v159
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v81, s4, v193, 1
	v_add_lshl_u32 v93, s4, v120, 1
	v_add_lshl_u32 v74, s4, v155, 1
	v_add_lshl_u32 v76, s4, v191, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v82, s4, v109, 1
	v_add_lshl_u32 v89, s4, v118, 1
	v_add_lshl_u32 v91, s4, v117, 1
	v_add_lshl_u32 v94, s4, v121, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 6, v159
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v71, s4, v153, 1
	v_add_lshl_u32 v75, s4, v190, 1
	v_add_lshl_u32 v83, s4, v110, 1
	v_add_lshl_u32 v90, s4, v115, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v77, s4, v150, 1
	v_add_lshl_u32 v84, s4, v111, 1
	v_add_lshl_u32 v85, s4, v112, 1
	v_add_lshl_u32 v92, s4, v119, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 8, v159
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v72, s4, v154, 1
	v_add_lshl_u32 v78, s4, v106, 1
	v_add_lshl_u32 v79, s4, v107, 1
	v_add_lshl_u32 v86, s4, v113, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v87, s4, v114, 1
	v_add_lshl_u32 v95, s4, v122, 1
	v_add_lshl_u32 v96, s4, v123, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v158, s91, v98
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 10, v159
	v_or_b32_e32 v98, 6, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 12, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 14, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 18, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s26, vcc_hi, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 20, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s25, vcc_hi, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v74, 0x80000000, v74, s25
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 22, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, vcc_hi, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v75, 0x80000000, v75, s24
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 24, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s23, vcc_hi, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v76, 0x80000000, v76, s23
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 26, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s22, vcc_hi, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v77, s22
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 28, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s21, vcc_hi, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v78, 0x80000000, v78, s21
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 30, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s20, vcc_hi, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v79, 0x80000000, v79, s20
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 32, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s19, vcc_hi, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v80, 0x80000000, v80, s19
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 34, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, vcc_hi, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v81, 0x80000000, v81, s18
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 36, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s17, vcc_hi, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v82, 0x80000000, v82, s17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 38, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s16, vcc_hi, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v83, 0x80000000, v83, s16
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 40, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s15, vcc_hi, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v84, 0x80000000, v84, s15
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 42, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s14, vcc_hi, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v85, 0x80000000, v85, s14
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 44, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s12, vcc_hi, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v86, 0x80000000, v86, s12
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 46, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s11, vcc_hi, s11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v87, 0x80000000, v87, s11
	s_clause 0x5
	buffer_load_u16 v81, v81, s[100:103], 0 offen
	buffer_load_u16 v82, v82, s[100:103], 0 offen
	buffer_load_u16 v83, v83, s[100:103], 0 offen
	buffer_load_u16 v85, v85, s[100:103], 0 offen
	buffer_load_u16 v86, v86, s[100:103], 0 offen
	buffer_load_u16 v87, v87, s[100:103], 0 offen
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 48, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s7, vcc_hi, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v90, 0x80000000, v90, s7
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 50, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s9, vcc_hi, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v88, 0x80000000, v88, s9
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 52, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, vcc_hi, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v91, 0x80000000, v91, s6
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s5, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 54, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s5, vcc_hi, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v93, 0x80000000, v93, s5
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 56, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, vcc_hi, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v95, 0x80000000, v95, s1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 58, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s9, vcc_hi, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v89, 0x80000000, v89, s9
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v73, s4, v73, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 60, v159
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s26
	s_clause 0x5
	buffer_load_u16 v73, v73, s[100:103], 0 offen
	buffer_load_u16 v74, v74, s[100:103], 0 offen
	buffer_load_u16 v75, v75, s[100:103], 0 offen
	buffer_load_u16 v77, v77, s[100:103], 0 offen
	buffer_load_u16 v78, v78, s[100:103], 0 offen
	buffer_load_u16 v79, v79, s[100:103], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, vcc_hi, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v92, 0x80000000, v92, s6
	s_clause 0x3
	buffer_load_u16 v88, v88, s[100:103], 0 offen
	buffer_load_u16 v89, v89, s[100:103], 0 offen
	buffer_load_u16 v91, v91, s[100:103], 0 offen
	buffer_load_u16 v92, v92, s[100:103], 0 offen
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 62, v159
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, vcc_hi, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s91, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v94, 0x80000000, v94, s3
	s_clause 0x1
	buffer_load_u16 v93, v93, s[100:103], 0 offen
	buffer_load_u16 v94, v94, s[100:103], 0 offen
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s4, v97, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s0, v255, 5
	v_readlane_b32 s7, v255, 12
	v_readlane_b32 s1, v255, 6
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, vcc_hi, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s33
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v66, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s34
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v80, v80, s[100:103], 0 offen
	buffer_load_u16 v76, v76, s[100:103], 0 offen
	buffer_load_u16 v90, v90, s[100:103], 0 offen
	buffer_load_u16 v84, v84, s[100:103], 0 offen
	buffer_load_u16 v96, v96, s[100:103], 0 offen
	buffer_load_u16 v95, v95, s[100:103], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v67, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s35
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s2, v255, 7
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v68, 0x80000000, v68, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s31
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s3, v255, 8
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v69, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s30
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s4, v255, 9
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s29
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s5, v255, 10
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v71, 0x80000000, v71, s27
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, vcc_hi, s28
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s6, v255, 11
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v72, 0x80000000, v72, s27
	s_clause 0x7
	buffer_load_u16 v65, v65, s[100:103], 0 offen
	buffer_load_u16 v66, v66, s[100:103], 0 offen
	buffer_load_u16 v67, v67, s[100:103], 0 offen
	buffer_load_u16 v68, v68, s[100:103], 0 offen
	buffer_load_u16 v69, v69, s[100:103], 0 offen
	buffer_load_u16 v70, v70, s[100:103], 0 offen
	buffer_load_u16 v71, v71, s[100:103], 0 offen
	buffer_load_u16 v72, v72, s[100:103], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v183, s7 :: v_dual_mov_b32 v182, s6
	v_dual_mov_b32 v181, s5 :: v_dual_mov_b32 v180, s4
	v_dual_mov_b32 v179, s3 :: v_dual_mov_b32 v178, s2
	v_dual_mov_b32 v177, s1 :: v_dual_mov_b32 v176, s0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v158
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v196, v65
	s_waitcnt vmcnt(3)
	ds_store_b16 v196, v69 offset:1024
	ds_store_b16 v196, v73 offset:2048
	ds_store_b16 v196, v77 offset:3072
	ds_store_b16 v196, v81 offset:4096
	ds_store_b16 v196, v85 offset:5120
	ds_store_b16 v196, v88 offset:6144
	ds_store_b16 v196, v89 offset:7168
	ds_store_b16 v197, v66
	s_waitcnt vmcnt(2)
	ds_store_b16 v197, v70 offset:1024
	ds_store_b16 v197, v74 offset:2048
	ds_store_b16 v197, v78 offset:3072
	ds_store_b16 v197, v82 offset:4096
	ds_store_b16 v197, v86 offset:5120
	ds_store_b16 v197, v91 offset:6144
	ds_store_b16 v197, v92 offset:7168
	ds_store_b16 v198, v67
	s_waitcnt vmcnt(1)
	ds_store_b16 v198, v71 offset:1024
	ds_store_b16 v198, v75 offset:2048
	ds_store_b16 v198, v79 offset:3072
	ds_store_b16 v198, v83 offset:4096
	ds_store_b16 v198, v87 offset:5120
	ds_store_b16 v198, v93 offset:6144
	ds_store_b16 v198, v94 offset:7168
	ds_store_b16 v199, v68
	s_waitcnt vmcnt(0)
	ds_store_b16 v199, v72 offset:1024
	ds_store_b16 v199, v76 offset:2048
	ds_store_b16 v199, v80 offset:3072
	ds_store_b16 v199, v84 offset:4096
	ds_store_b16 v199, v90 offset:5120
	ds_store_b16 v199, v95 offset:6144
	ds_store_b16 v199, v96 offset:7168
	v_add_nc_u32_e32 v81, 0, v201
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v205
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v205 offset:2048
	ds_load_b128 v[164:167], v205 offset:4096
	ds_load_b128 v[160:163], v81 offset:4096
	ds_load_b128 v[168:171], v81 offset:6144
	ds_load_b128 v[172:175], v205 offset:6144
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s79, s89, vcc_lo
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s43
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[176:183]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[176:183]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[160:167], v[33:40], v[176:183]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[168:175], v[33:40], v[176:183]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[164:167], v207
	ds_load_b128 v[160:163], v206
	ds_load_b128 v[168:171], v206 offset:2048
	ds_load_b128 v[172:175], v207 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[160:167], v[41:48], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[168:175], v[41:48], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[164:167], v207 offset:4096
	ds_load_b128 v[160:163], v206 offset:4096
	ds_load_b128 v[168:171], v206 offset:6144
	ds_load_b128 v[172:175], v207 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[160:167], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[168:175], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[164:167], v209
	ds_load_b128 v[160:163], v208
	ds_load_b128 v[168:171], v208 offset:2048
	ds_load_b128 v[172:175], v209 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[160:167], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[168:175], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[164:167], v209 offset:4096
	ds_load_b128 v[160:163], v208 offset:4096
	ds_load_b128 v[168:171], v208 offset:6144
	ds_load_b128 v[172:175], v209 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[160:167], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[168:175], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[164:167], v211
	ds_load_b128 v[160:163], v210
	ds_load_b128 v[168:171], v210 offset:2048
	ds_load_b128 v[172:175], v211 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[160:167], v[57:64], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[168:175], v[57:64], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[164:167], v211 offset:4096
	ds_load_b128 v[160:163], v210 offset:4096
	ds_load_b128 v[168:171], v210 offset:6144
	ds_load_b128 v[172:175], v211 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[160:167], v[57:64], v[73:80]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v160, s91, v98
	v_or_b32_e32 v98, 4, v156
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[168:175], v[57:64], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v161, s91, v156
	v_or_b32_e32 v171, s91, v192
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s67, v160
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v163, s91, v98
	v_or_b32_e32 v98, 10, v156
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s67, v161
	v_cmp_gt_i32_e64 s17, s67, v171
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s71, s89, s3
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s5, s67, v163
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s91, v98
	v_or_b32_e32 v98, 8, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s86, s89, s1
	s_and_b32 s90, s89, s17
	s_and_b32 s68, s89, s5
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s67, v162
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v164, s91, v98
	v_or_b32_e32 v98, 14, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s69, s89, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s67, v164
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s91, v98
	v_or_b32_e32 v98, 12, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s70, s89, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s67, v165
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v169, s91, v98
	v_or_b32_e32 v98, 18, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s85, s89, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s67, v169
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v166, s91, v98
	v_or_b32_e32 v98, 16, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s66, s89, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s67, v166
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v172, s91, v98
	v_or_b32_e32 v98, 22, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s75, s89, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s67, v172
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v168, s91, v98
	v_or_b32_e32 v98, 20, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s84, s89, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s67, v168
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v173, s91, v98
	v_or_b32_e32 v98, 26, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s74, s89, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s67, v173
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v167, s91, v98
	v_or_b32_e32 v98, 24, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, s89, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s67, v167
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v170, s91, v98
	v_or_b32_e32 v98, 28, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s93, s89, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s67, v170
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v174, s91, v98
	v_or_b32_e32 v98, 34, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s13, s89, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v174
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v175, s91, v98
	v_or_b32_e32 v98, 32, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s92, s89, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v175
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v176, s91, v98
	v_or_b32_e32 v98, 38, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s49, s89, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s67, v176
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v177, s91, v98
	v_or_b32_e32 v98, 36, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s95, s89, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s67, v177
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v179, s91, v98
	v_or_b32_e32 v98, 42, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s99, s89, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s67, v179
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v178, s91, v98
	v_or_b32_e32 v98, 40, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s88, s89, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s67, v178
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v184, s91, v98
	v_or_b32_e32 v98, 46, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s48, s89, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s67, v184
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v180, s91, v98
	v_or_b32_e32 v98, 44, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s98, s89, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s67, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v186, s91, v98
	v_or_b32_e32 v98, 50, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s64, s89, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s67, v186
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v181, s91, v98
	v_or_b32_e32 v98, 48, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s77, s89, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s67, v181
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v251, s91, v98
	v_or_b32_e32 v98, 54, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s62, s89, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s67, v251
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v185, s91, v98
	v_or_b32_e32 v98, 52, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s94, s89, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s67, v185
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v252, s91, v98
	v_or_b32_e32 v98, 58, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s60, s89, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s67, v252
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v182, s91, v98
	v_or_b32_e32 v98, 56, v156
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s97, s89, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s67, v182
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v254, s91, v98
	scratch_load_b32 v98, off, off          ; 4-byte Folded Reload
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s58, s89, s31
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s67, v254
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s96, s89, s33
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v183, s91, v98
	v_or_b32_e32 v98, 60, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s67, v183
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v253, s91, v98
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s4, s89, s34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s67, v253
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s57, s89, s35
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v161, v202
	v_cmp_le_i32_e64 s1, v158, v202
	v_cmp_le_i32_e64 s3, v163, v202
	v_cmp_le_i32_e64 s5, v160, v202
	v_cmp_le_i32_e64 s6, v164, v202
	v_cmp_le_i32_e64 s7, v162, v202
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s36, vcc_lo, s86
	s_and_b32 s1, s1, s79
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v169, v202
	v_cmp_le_i32_e64 s9, v165, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s68
	s_and_b32 s5, s5, s71
	s_and_not1_b32 s37, s86, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s79, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v172, v202
	v_cmp_le_i32_e64 s11, v166, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s70
	s_and_b32 s7, s7, s69
	s_or_b32 s86, s37, s36
	s_or_b32 s79, s38, s1
	s_and_not1_b32 s1, s68, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s36, s71, exec_lo
	s_and_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v173, v202
	v_cmp_le_i32_e64 s14, v168, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s66
	s_and_b32 s9, s9, s85
	s_or_b32 s68, s1, s3
	s_or_b32 s71, s36, s5
	s_and_not1_b32 s1, s70, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_and_not1_b32 s5, s69, exec_lo
	s_and_b32 s6, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v170, v202
	v_cmp_le_i32_e64 s16, v167, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s84
	s_and_b32 s11, s11, s75
	s_or_b32 s70, s1, s3
	s_or_b32 s69, s5, s6
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s5, s85, exec_lo
	s_and_b32 s6, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v174, v202
	v_cmp_le_i32_e64 s18, v171, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s2
	s_and_b32 s14, s14, s74
	s_or_b32 s66, s1, s3
	s_or_b32 s85, s5, s6
	s_and_not1_b32 s1, s84, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s5, s75, exec_lo
	s_and_b32 s6, s11, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v176, v202
	v_cmp_le_i32_e64 s20, v175, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s15, s13
	s_and_b32 s16, s16, s93
	s_or_b32 s84, s1, s3
	s_or_b32 s75, s5, s6
	s_and_not1_b32 s1, s2, exec_lo
	s_and_b32 s3, s12, exec_lo
	s_and_not1_b32 s5, s74, exec_lo
	s_and_b32 s6, s14, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v179, v202
	v_cmp_le_i32_e64 s22, v177, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s92
	s_and_b32 s18, s18, s90
	s_or_b32 s2, s1, s3
	s_or_b32 s74, s5, s6
	s_and_not1_b32 s1, s13, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s5, s93, exec_lo
	s_and_b32 s6, s16, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v184, v202
	v_cmp_le_i32_e64 s24, v178, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s95
	s_and_b32 s20, s20, s49
	s_or_b32 s13, s1, s3
	s_or_b32 s93, s5, s6
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s5, s90, exec_lo
	s_and_b32 s6, s18, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v186, v202
	v_cmp_le_i32_e64 s26, v180, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s88
	s_and_b32 s22, s22, s99
	s_or_b32 s92, s1, s3
	s_or_b32 s90, s5, s6
	s_and_not1_b32 s1, s95, exec_lo
	s_and_b32 s3, s19, exec_lo
	s_and_not1_b32 s5, s49, exec_lo
	s_and_b32 s6, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v251, v202
	v_cmp_le_i32_e64 s28, v181, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s98
	s_and_b32 s24, s24, s48
	s_or_b32 s95, s1, s3
	s_or_b32 s49, s5, s6
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s3, s21, exec_lo
	s_and_not1_b32 s5, s99, exec_lo
	s_and_b32 s6, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v252, v202
	v_cmp_le_i32_e64 s30, v185, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s77
	s_and_b32 s26, s26, s64
	s_or_b32 s88, s1, s3
	s_or_b32 s99, s5, s6
	s_and_not1_b32 s1, s98, exec_lo
	s_and_b32 s3, s23, exec_lo
	s_and_not1_b32 s5, s48, exec_lo
	s_and_b32 s6, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v254, v202
	v_cmp_le_i32_e64 s33, v182, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s94
	s_and_b32 s28, s28, s62
	s_or_b32 s98, s1, s3
	s_or_b32 s48, s5, s6
	s_and_not1_b32 s1, s77, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_and_not1_b32 s5, s64, exec_lo
	s_and_b32 s6, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v253, v202
	v_cmp_le_i32_e64 s35, v183, v202
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s97
	s_and_b32 s30, s30, s60
	s_or_b32 s77, s1, s3
	s_or_b32 s64, s5, s6
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s27, exec_lo
	s_and_not1_b32 s5, s62, exec_lo
	s_and_b32 s6, s28, exec_lo
	s_and_b32 s31, s31, s96
	s_and_b32 s33, s33, s58
	s_or_b32 s94, s1, s3
	s_or_b32 s62, s5, s6
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s29, exec_lo
	s_and_not1_b32 s5, s60, exec_lo
	s_and_b32 s6, s30, exec_lo
	s_and_b32 s34, s34, s57
	s_and_b32 s35, s35, s4
	s_or_b32 s97, s1, s3
	s_or_b32 s60, s5, s6
	s_and_not1_b32 s1, s96, exec_lo
	s_and_b32 s3, s31, exec_lo
	s_and_not1_b32 s5, s58, exec_lo
	s_and_b32 s6, s33, exec_lo
	s_or_b32 s96, s1, s3
	s_or_b32 s58, s5, s6
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s3, s34, exec_lo
	s_and_not1_b32 s5, s4, exec_lo
	s_and_b32 s6, s35, exec_lo
	s_or_b32 s57, s1, s3
	s_or_b32 s4, s5, s6
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s47
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v255, s65, 21
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v254, v247
	v_cmp_ge_i32_e64 s20, v175, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s53, v175, v248
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v166, v247
	s_mov_b32 s65, s74
	v_writelane_b32 v255, s0, 22
	v_cmp_ge_i32_e64 s0, v182, v247
	v_cmp_ge_i32_e64 s74, v178, v247
	s_mov_b32 s34, s4
	s_mov_b32 s4, s45
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v166, v248
	v_writelane_b32 v255, s0, 23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v253, v247
	s_mov_b32 s72, s57
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v178, v248
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v161, v247
	v_cmp_ge_i32_e64 s15, v170, v247
	v_writelane_b32 v255, s0, 24
	v_cmp_ge_i32_e64 s0, v183, v247
	v_cmp_ge_i32_e64 s33, v186, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v161, v248
	s_mov_b32 s25, s48
	v_cmp_le_i32_e64 s48, v170, v248
	v_writelane_b32 v255, s0, 25
	s_mov_b32 s0, s58
	v_cmp_le_i32_e64 s58, v186, v248
	s_mov_b32 s24, s49
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, s20, s53
	s_and_b32 s11, s11, s45
	s_mov_b32 s45, s4
	s_and_b32 s20, s20, s24
	s_mov_b32 s4, s24
	s_and_b32 s24, s74, s57
	s_and_b32 s36, vcc_lo, s36
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v182, v248
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s15, s48
	s_and_b32 s24, s24, s25
	s_mov_b32 s48, s25
	s_and_b32 s25, s33, s58
	v_readlane_b32 s33, v255, 23
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v158, v247
	v_cmp_ge_i32_e64 s17, v174, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v158, v248
	v_cmp_le_i32_e64 s50, v174, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s33, s33, vcc_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v163, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v163, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s37, s1, s37
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v253, v248
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s17, s50
	s_mov_b32 s50, s0
	s_and_b32 s33, s33, s0
	v_readlane_b32 s0, v255, 24
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v160, v247
	s_mov_b32 vcc_hi, s39
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s39, v160, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s38, s3, s38
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v183, v248
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s0, s1
	v_readlane_b32 s0, v255, 25
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v164, v247
	v_cmp_ge_i32_e64 s7, v162, v247
	v_cmp_ge_i32_e64 s35, v180, v247
	s_mov_b32 s104, s40
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s40, v164, v248
	s_mov_b32 s78, s41
	v_cmp_le_i32_e64 s41, v162, v248
	v_cmp_le_i32_e64 s59, v180, v248
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v169, v247
	v_cmp_ge_i32_e64 s9, v165, v247
	s_mov_b32 s102, s42
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v169, v248
	s_mov_b32 s103, s43
	v_cmp_le_i32_e64 s43, v165, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s36, s36, s86
	s_and_b32 s37, s37, s79
	s_and_b32 s5, s5, s39
	s_and_b32 s3, s0, s3
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v172, v247
	s_mov_b32 s89, s44
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s44, v172, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s38, s38, s68
	s_and_b32 s5, s5, s71
	s_and_b32 s6, s6, s40
	s_and_b32 s7, s7, s41
	s_and_b32 s26, s35, s59
	s_mov_b32 s57, s34
	s_and_b32 s3, s3, s34
	s_and_not1_b32 s34, s86, exec_lo
	s_and_b32 s35, s36, exec_lo
	s_and_not1_b32 s36, s79, exec_lo
	s_and_b32 s37, s37, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v173, v247
	v_cmp_ge_i32_e64 s14, v168, v247
	s_mov_b32 s100, s46
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s46, v173, v248
	s_mov_b32 s101, s47
	v_cmp_le_i32_e64 s47, v168, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s6, s6, s70
	s_and_b32 s7, s7, s69
	s_and_b32 s8, s8, s42
	s_and_b32 s9, s9, s43
	s_or_b32 s86, s34, s35
	s_or_b32 s79, s36, s37
	s_and_not1_b32 s34, s68, exec_lo
	s_and_b32 s35, s38, exec_lo
	s_and_not1_b32 s36, s71, exec_lo
	s_and_b32 s5, s5, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v167, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s49, v167, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s8, s8, s66
	s_and_b32 s9, s9, s85
	s_and_b32 s10, s10, s44
	s_or_b32 s68, s34, s35
	s_or_b32 s71, s36, s5
	s_and_not1_b32 s5, s70, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s34, s69, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v171, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s51, v171, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s84
	s_and_b32 s11, s11, s75
	s_and_b32 s12, s12, s46
	s_and_b32 s14, s14, s47
	s_or_b32 s70, s5, s6
	s_or_b32 s69, s34, s7
	s_and_not1_b32 s5, s66, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s85, exec_lo
	s_and_b32 s8, s9, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v176, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s52, v176, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s12, s12, s2
	s_and_b32 s14, s14, s65
	s_and_b32 s16, s16, s49
	s_or_b32 s66, s5, s6
	s_or_b32 s85, s7, s8
	s_and_not1_b32 s5, s84, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s75, exec_lo
	s_and_b32 s8, s11, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v179, v247
	v_cmp_ge_i32_e64 s22, v177, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s54, v179, v248
	v_cmp_le_i32_e64 s55, v177, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s15, s15, s13
	s_and_b32 s16, s16, s93
	s_and_b32 s18, s18, s51
	s_or_b32 s84, s5, s6
	s_or_b32 s75, s7, s8
	s_and_not1_b32 s5, s2, exec_lo
	s_and_b32 s6, s12, exec_lo
	s_and_not1_b32 s7, s65, exec_lo
	s_and_b32 s8, s14, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v184, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s56, v184, v248
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v185, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v185, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s17, s17, s92
	s_and_b32 s18, s18, s90
	s_and_b32 s19, s19, s52
	s_or_b32 s2, s5, s6
	s_or_b32 s74, s7, s8
	s_and_not1_b32 s5, s13, exec_lo
	s_and_b32 s6, s15, exec_lo
	s_and_not1_b32 s7, s93, exec_lo
	s_and_b32 s8, s16, exec_lo
	s_and_b32 s19, s19, s95
	s_and_b32 s21, s21, s54
	s_and_b32 s22, s22, s55
	s_or_b32 s13, s5, s6
	s_or_b32 s93, s7, s8
	s_and_not1_b32 s5, s92, exec_lo
	s_and_b32 s6, s17, exec_lo
	s_and_not1_b32 s7, s90, exec_lo
	s_and_b32 s8, s18, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s87, v251, v247
	s_mov_b32 s31, s60
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v251, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s21, s21, s88
	s_and_b32 s22, s22, s99
	s_and_b32 s23, s23, s56
	s_or_b32 s92, s5, s6
	s_or_b32 s90, s7, s8
	s_and_not1_b32 s5, s95, exec_lo
	s_and_b32 s6, s19, exec_lo
	s_and_not1_b32 s7, s4, exec_lo
	s_and_b32 s8, s20, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v252, v247
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s76, v252, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s30, s30, s63
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v181, v247
	s_mov_b32 s27, s77
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v181, v248
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s23, s23, s98
	s_or_b32 s95, s5, s6
	s_or_b32 s49, s7, s8
	s_and_not1_b32 s5, s88, exec_lo
	s_and_b32 s6, s21, exec_lo
	s_and_not1_b32 s7, s99, exec_lo
	s_and_b32 s8, s22, exec_lo
	s_mov_b32 s77, s64
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v254, v248
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s31
	s_mov_b32 s51, s31
	v_readlane_b32 s31, v255, 22
	s_and_b32 s25, s25, s27
	s_mov_b32 s52, s27
	s_and_b32 s27, s87, s60
	s_or_b32 s88, s5, s6
	s_or_b32 s99, s7, s8
	s_and_not1_b32 s4, s98, exec_lo
	s_and_b32 s5, s23, exec_lo
	s_and_not1_b32 s6, s48, exec_lo
	s_and_b32 s7, s24, exec_lo
	s_and_b32 s27, s27, s94
	s_and_b32 s29, s29, s76
	s_or_b32 s98, s4, s5
	s_or_b32 s48, s6, s7
	s_and_not1_b32 s5, s52, exec_lo
	s_and_b32 s6, s25, exec_lo
	s_and_b32 s26, s26, s77
	s_and_b32 s28, s28, s61
	s_and_b32 s29, s29, s97
	s_and_b32 s31, s31, s64
	s_and_not1_b32 s7, s77, exec_lo
	s_or_b32 s77, s5, s6
	s_and_not1_b32 s5, s94, exec_lo
	s_and_b32 s6, s27, exec_lo
	s_and_b32 s28, s28, s62
	s_and_b32 s8, s26, exec_lo
	s_and_b32 s31, s31, s96
	s_or_b32 s94, s5, s6
	s_and_not1_b32 s5, s97, exec_lo
	s_and_b32 s6, s29, exec_lo
	s_or_b32 s64, s7, s8
	s_and_not1_b32 s7, s62, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_or_b32 s97, s5, s6
	s_and_not1_b32 s5, s96, exec_lo
	s_and_b32 s6, s31, exec_lo
	s_mov_b32 s42, s102
	s_mov_b32 s43, s103
	s_mov_b32 s46, s100
	s_mov_b32 s47, s101
	v_readlane_b32 s100, v255, 14
	s_and_b32 s1, s1, s72
	s_or_b32 s62, s7, s8
	s_and_not1_b32 s7, s51, exec_lo
	s_and_b32 s8, s30, exec_lo
	s_mov_b32 s39, vcc_hi
	s_mov_b32 s41, s78
	s_mov_b32 s44, s89
	v_readlane_b32 s101, v255, 15
	v_readlane_b32 s102, v255, 16
	v_readlane_b32 s103, v255, 17
	v_readlane_b32 s78, v255, 20
	v_readlane_b32 vcc_hi, v255, 19
	v_readlane_b32 s89, v255, 18
	v_readlane_b32 s65, v255, 21
	s_or_b32 s96, s5, s6
	s_and_not1_b32 s5, s72, exec_lo
	v_readlane_b32 s72, v255, 13
	s_or_b32 s60, s7, s8
	s_and_not1_b32 s7, s50, exec_lo
	s_and_b32 s8, s33, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_mov_b32 s40, s104
	s_mov_b32 s56, 0x76543210
	s_or_b32 s58, s7, s8
	s_or_b32 s57, s5, s1
	s_or_b32 s4, s6, s3
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	scratch_load_b32 v53, off, off offset:8 ; 4-byte Folded Reload
	v_readlane_b32 s40, v255, 0
	v_readlane_b32 s45, v255, 4
	v_readlane_b32 s41, v255, 1
	v_readlane_b32 s42, v255, 2
	v_readlane_b32 s43, v255, 3
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v66, v66, v25
	v_div_scale_f32 v33, null, v66, v66, v26
	v_div_scale_f32 v34, null, v66, v66, v27
	v_rcp_f32_e32 v35, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v25, v66, v25
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v26, v66, v26
	v_div_scale_f32 v42, null, v66, v66, v28
	v_div_scale_f32 v48, s3, v28, v66, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v0, v35, 1.0
	v_fma_f32 v41, -v33, v36, 1.0
	v_or_b32_e32 v63, 6, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v34, v37, 1.0
	v_or_b32_e32 v62, 8, v156
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_rcp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v40, s1, v27, v66, v27
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_or_b32_e32 v61, 10, v156
	.loc	1 1051 17                       ; attention.py:1051:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v0, v43, v38
	v_fma_f32 v47, -v33, v44, v39
	v_fma_f32 v49, -v42, v41, 1.0
	s_mov_b32 s42, 0x7ffffffe
	v_or_b32_e32 v60, 12, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v66, v66, v29
	v_fmac_f32_e32 v41, v49, v41
	v_fma_f32 v0, -v0, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v66, v66, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v35, v43
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v35, v48, v41
	v_div_fmas_f32 v33, v33, v36, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v66, v25
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v66, v26
	v_div_scale_f32 v33, s4, v29, v66, v29
	v_fma_f32 v36, -v42, v35, v48
	v_fmac_f32_e32 v38, v44, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v44, null, v66, v66, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v36, v41
	v_div_scale_f32 v36, null, v66, v66, v31
	v_fma_f32 v50, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v44
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v66
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s73, v62
	v_cmp_gt_i32_e64 s7, s73, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v50, v37
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s73, v60
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_or_b32_e32 v59, 14, v156
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v26, -v34, v45, v40
	v_mul_f32_e32 v40, v33, v38
	v_fma_f32 v34, -v39, v43, 1.0
	v_or_b32_e32 v58, 16, v156
	v_or_b32_e32 v57, 18, v156
	v_div_fmas_f32 v26, v26, v37, v45
	v_fma_f32 v37, -v42, v35, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v30, v66, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v66, v27
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s73, v59
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v27, v35, v66, v28
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v66, v66, v17
	v_div_scale_f32 v35, s3, v31, v66, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v40, v33
	v_rcp_f32_e32 v48, v37
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_or_b32_e32 v56, 20, v156
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s73, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v42, v43
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s73, v57
	v_or_b32_e32 v55, 22, v156
	v_cmp_gt_i32_e64 s12, s73, v56
	v_or_b32_e32 v54, 24, v156
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v41, v42
	v_fma_f32 v45, -v36, v34, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s73, v55
	v_cmp_gt_i32_e64 s17, s73, v192
	v_cmp_gt_i32_e64 s14, s73, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v28, v43 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v45, -v44, v47, 1.0
	v_div_fmas_f32 v28, v33, v38, v40
	v_fma_f32 v40, -v37, v48, 1.0
	v_fma_f32 v33, -v39, v41, v42
	v_mul_f32_e32 v46, v35, v34
	v_div_scale_f32 v42, null, v66, v66, v18
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v32, v66, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v36, v46, v35
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v48, v40, v48 :: v_dual_mul_f32 v39, v45, v47
	v_div_fmas_f32 v33, v33, v43, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v46, v38, v34
	v_rcp_f32_e32 v38, v42
	v_div_scale_f32 v40, s1, v17, v66, v17
	v_fma_f32 v41, -v44, v39, v45
	v_div_fixup_f32 v28, v28, v66, v29
	v_div_fixup_f32 v29, v33, v66, v30
	v_fma_f32 v30, -v36, v46, v35
	v_div_scale_f32 v36, null, v66, v66, v19
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v42, v38, 1.0
	v_mul_f32_e32 v33, v40, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v18, v66, v18
	v_fmac_f32_e32 v38, v35, v38
	v_rcp_f32_e32 v35, v36
	v_div_fmas_f32 v30, v30, v34, v46
	v_fma_f32 v34, -v44, v39, v45
	v_fma_f32 v41, -v37, v33, v40
	v_div_scale_f32 v44, null, v66, v66, v20
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v30, v30, v66, v31
	v_div_fmas_f32 v34, v34, v47, v39
	v_fmac_f32_e32 v33, v41, v48
	v_rcp_f32_e32 v39, v44
	v_mul_f32_e32 v41, v43, v38
	v_fma_f32 v45, -v36, v35, 1.0
	v_div_fixup_f32 v31, v34, v66, v32
	v_fma_f32 v32, -v37, v33, v40
	v_div_scale_f32 v37, s4, v19, v66, v19
	v_fma_f32 v34, -v42, v41, v43
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v66, v66, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v44, v39, 1.0
	v_fmac_f32_e32 v41, v34, v38
	v_div_scale_f32 v46, null, v66, v66, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v45
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v32, v32, v48, v33
	v_mul_f32_e32 v33, v37, v35
	v_div_scale_f32 v40, s1, v20, v66, v20
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v17, v32, v66, v17
	v_fma_f32 v32, -v42, v41, v43
	v_fma_f32 v42, -v36, v33, v37
	v_mul_f32_e32 v43, v40, v39
	v_fma_f32 v48, -v45, v34, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v41
	v_fmac_f32_e32 v33, v42, v35
	v_fma_f32 v38, -v44, v43, v40
	v_fmac_f32_e32 v34, v48, v34
	v_div_scale_f32 v41, s3, v21, v66, v21
	v_fma_f32 v42, -v46, v47, 1.0
	v_div_fixup_f32 v18, v32, v66, v18
	v_fma_f32 v32, -v36, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v38, v39 :: v_dual_mul_f32 v36, v41, v34
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v37, s5, v22, v66, v22
	v_div_scale_f32 v38, null, v66, v66, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v37, v47
	v_div_fmas_f32 v32, v32, v35, v33
	v_fma_f32 v33, -v44, v43, v40
	v_fma_f32 v35, -v45, v36, v41
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v44, null, v66, v66, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v35, v34
	v_div_fmas_f32 v33, v33, v39, v43
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v39, -v46, v42, v37
	v_div_fixup_f32 v19, v32, v66, v19
	v_fma_f32 v32, -v45, v36, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v39, v47
	v_div_fixup_f32 v20, v33, v66, v20
	v_div_scale_f32 v33, s1, v23, v66, v23
	v_fmac_f32_e32 v40, v43, v40
	v_fma_f32 v39, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v34, v36
	v_fma_f32 v34, -v46, v42, v37
	v_div_scale_f32 v37, null, v66, v66, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v33, v40 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, s3, v24, v66, v24
	v_rcp_f32_e32 v41, v37
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v66, v66, v10
	v_div_fmas_f32 v34, v34, v47, v42
	v_fma_f32 v42, -v38, v36, v33
	v_mul_f32_e32 v43, v39, v35
	v_div_fixup_f32 v21, v32, v66, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v66, v22
	v_fmac_f32_e32 v36, v42, v40
	v_fma_f32 v32, -v44, v43, v39
	v_rcp_f32_e32 v34, v45
	v_fma_f32 v42, -v37, v41, 1.0
	v_div_scale_f32 v47, null, v66, v66, v12
	v_fma_f32 v33, -v38, v36, v33
	v_fmac_f32_e32 v43, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v32, s4, v9, v66, v9
	v_div_fmas_f32 v33, v33, v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v45, v34, 1.0
	v_fma_f32 v36, -v44, v43, v39
	v_mul_f32_e32 v39, v32, v41
	v_div_scale_f32 v38, null, v66, v66, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v46, v34
	v_div_scale_f32 v40, s1, v10, v66, v10
	v_fma_f32 v46, -v37, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v40, v34
	v_div_fmas_f32 v35, v36, v35, v43
	v_fmac_f32_e32 v39, v46, v41
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v36, -v45, v48, v40
	v_div_fixup_f32 v23, v33, v66, v23
	v_fma_f32 v32, -v37, v39, v32
	v_fma_f32 v44, -v38, v42, 1.0
	v_div_fixup_f32 v24, v35, v66, v24
	v_fmac_f32_e32 v48, v36, v34
	v_div_scale_f32 v36, null, v66, v66, v13
	v_div_fmas_f32 v32, v32, v41, v39
	v_div_scale_f32 v39, null, v66, v66, v14
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s5, v11, v66, v11
	v_fma_f32 v37, -v45, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v44, v42
	v_fma_f32 v35, -v47, v49, 1.0
	v_div_fmas_f32 v34, v37, v34, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v32, v66, v9
	v_fma_f32 v33, -v38, v43, v44
	v_fmac_f32_e32 v49, v35, v49
	v_div_fixup_f32 v10, v34, v66, v10
	v_fma_f32 v34, -v39, v41, 1.0
	v_div_scale_f32 v35, s3, v12, v66, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v34, v41
	v_fmac_f32_e32 v43, v33, v42
	v_rcp_f32_e32 v33, v36
	v_div_scale_f32 v34, s4, v14, v66, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v38, v43, v44
	v_mul_f32_e32 v38, v35, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v42, -v47, v38, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v37, v66, v11
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v13, v66, v13
	v_fmac_f32_e32 v38, v42, v49
	v_div_scale_f32 v37, null, v66, v66, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v40, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v47, v38, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v36, v32, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v49, v38
	v_mul_f32_e32 v38, v34, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v66, v66, v16
	v_div_fixup_f32 v12, v35, v66, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v36, v32, v40
	v_fma_f32 v36, -v39, v38, v34
	v_fma_f32 v40, -v37, v43, 1.0
	v_rcp_f32_e32 v44, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v35, v33, v32
	v_div_scale_f32 v33, null, v66, v66, v1
	v_fmac_f32_e32 v38, v36, v41
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v66, v66, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v35, s1, v15, v66, v15
	v_div_fixup_f32 v13, v32, v66, v13
	v_fma_f32 v32, -v42, v44, 1.0
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v34, -v39, v38, v34
	v_mul_f32_e32 v39, v35, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v32, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v33, v36, 1.0
	v_div_scale_f32 v32, s3, v16, v66, v16
	v_div_fmas_f32 v34, v34, v41, v38
	v_fma_f32 v38, -v37, v39, v35
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v66, v66, v3
	v_mul_f32_e32 v41, v32, v44
	v_div_scale_f32 v47, s4, v1, v66, v1
	v_fma_f32 v48, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	v_mul_f32_e32 v50, v47, v36
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v2, v66, v2
	v_div_fixup_f32 v14, v34, v66, v14
	v_fma_f32 v34, -v37, v39, v35
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	v_fma_f32 v38, -v45, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v42, v41, v32
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_fmac_f32_e32 v49, v38, v49
	v_div_scale_f32 v38, s1, v3, v66, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_fmas_f32 v34, v34, v43, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v38, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v66, v66, v4
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v34, v66, v15
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	v_fma_f32 v40, -v45, v35, v38
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v16, v32, v66, v16
	v_div_fmas_f32 v36, v36, v46, v37
	v_fmac_f32_e32 v35, v40, v49
	v_div_fixup_f32 v1, v33, v66, v1
	v_div_scale_f32 v33, null, v66, v66, v5
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v45, v35, v38
	v_div_fixup_f32 v2, v36, v66, v2
	v_div_scale_f32 v36, null, v66, v66, v7
	v_fma_f32 v34, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v43, null, v66, v66, v8
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v37, vcc_lo, v4, v66, v4
	v_div_fixup_f32 v3, v32, v66, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v34, null, v66, v66, v6
	v_fma_f32 v32, -v33, v35, 1.0
	v_mul_f32_e32 v42, v37, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v36, v40, 1.0
	v_rcp_f32_e32 v38, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v66, v5
	v_fma_f32 v46, -v39, v42, v37
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s4, v7, v66, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v32, v35
	v_fma_f32 v49, -v43, v45, 1.0
	v_dual_fmac_f32 v42, v46, v41 :: v_dual_mul_f32 v51, v47, v40
	v_fma_f32 v44, -v34, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v33, v48, v32
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v8, v66, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_fmac_f32_e32 v48, v46, v35
	v_fma_f32 v46, -v36, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v45
	v_div_scale_f32 v44, s3, v6, v66, v6
	v_fma_f32 v32, -v33, v48, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v46, v40
	v_fma_f32 v33, -v43, v52, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v44, v38
	v_fma_f32 v37, -v39, v42, v37
	v_or_b32_e32 v46, 42, v156
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v33, v45
	v_fma_f32 v33, -v36, v51, v47
	scratch_load_b32 v36, off, off          ; 4-byte Folded Reload
	v_fma_f32 v39, -v34, v50, v44
	v_div_fmas_f32 v37, v37, v41, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s73, v156
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v35, v48
	v_fmac_f32_e32 v50, v39, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v43, v52, v49
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s89, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v32, v66, v5
	v_fma_f32 v34, -v34, v50, v44
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v32, s45, v53
	v_or_b32_e32 v53, 26, v156
	v_or_b32_e32 v49, 36, v156
	v_or_b32_e32 v48, 38, v156
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, v32, s73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v34, v66, v6
	v_div_fmas_f32 v35, v35, v45, v52
	v_or_b32_e32 v34, 2, v156
	v_div_fixup_f32 v7, v33, v66, v7
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s73, v63
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v156, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v35, v66, v8
	v_or_b32_e32 v35, 4, v156
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s73, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v34, v32, v34, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_or_b32_e32 v52, 28, v156
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s73, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v35, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s89, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v0, v33, s[40:43], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s89, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v32, v63, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	s_clause 0x1
	buffer_store_b32 v25, v34, s[40:43], 0 offen
	buffer_store_b32 v26, v35, s[40:43], 0 offen
	v_add_lshl_u32 v25, v32, v62, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v32, v61, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v60, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v27, v0, s[40:43], 0 offen
	buffer_store_b32 v28, v25, s[40:43], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v32, v59, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_add_lshl_u32 v25, v32, v58, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[40:43], 0 offen
	buffer_store_b32 v30, v33, s[40:43], 0 offen
	v_add_lshl_u32 v26, v32, v57, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v56, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v31, v0, s[40:43], 0 offen
	buffer_store_b32 v17, v25, s[40:43], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v32, v55, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s73, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v32, v54, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s13
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s73, v52
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[40:43], 0 offen
	buffer_store_b32 v19, v27, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v53, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s14
	v_or_b32_e32 v51, 32, v156
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v52, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s15
	v_or_b32_e32 v50, 34, v156
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s16
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s73, v51
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v0, s[40:43], 0 offen
	buffer_store_b32 v21, v17, s[40:43], 0 offen
	v_add_lshl_u32 v0, v32, v192, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s73, v50
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v32, v51, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s17
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s73, v49
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[40:43], 0 offen
	buffer_store_b32 v23, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v50, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s18
	v_or_b32_e32 v47, 40, v156
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v49, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s19
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s73, v48
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s20
	v_or_b32_e32 v45, 44, v156
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s73, v47
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v0, s[40:43], 0 offen
	buffer_store_b32 v9, v17, s[40:43], 0 offen
	v_add_lshl_u32 v0, v32, v48, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s73, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v47, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s21
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s73, v45
	v_or_b32_e32 v44, 46, v156
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[40:43], 0 offen
	buffer_store_b32 v11, v19, s[40:43], 0 offen
	v_add_lshl_u32 v10, v32, v46, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_or_b32_e32 v43, 48, v156
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v45, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s23
	v_or_b32_e32 v42, 50, v156
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s73, v44
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_or_b32_e32 v41, 52, v156
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s73, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v0, s[40:43], 0 offen
	buffer_store_b32 v13, v9, s[40:43], 0 offen
	v_add_lshl_u32 v0, v32, v44, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s73, v42
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v43, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s73, v41
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[40:43], 0 offen
	buffer_store_b32 v15, v11, s[40:43], 0 offen
	v_add_lshl_u32 v10, v32, v42, 2
	v_or_b32_e32 v40, 54, v156
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v41, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_or_b32_e32 v38, 56, v156
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v37, v66, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_or_b32_e32 v39, 58, v156
	v_or_b32_e32 v37, 60, v156
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s73, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s73, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v0, s[40:43], 0 offen
	buffer_store_b32 v1, v9, s[40:43], 0 offen
	v_add_lshl_u32 v0, v32, v40, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s73, v39
	v_cmp_gt_i32_e32 vcc_lo, s73, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v1, v32, v38, 2
	s_clause 0x1
	buffer_store_b32 v2, v10, s[40:43], 0 offen
	buffer_store_b32 v3, v11, s[40:43], 0 offen
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s29
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v2, v32, v39, 2
	v_add_lshl_u32 v3, v32, v37, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s89, s30
	s_and_b32 s0, s89, s0
	s_and_b32 vcc_lo, s89, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s1, s73, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s89, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[40:43], 0 offen
	buffer_store_b32 v5, v1, s[40:43], 0 offen
	buffer_store_b32 v6, v2, s[40:43], 0 offen
	buffer_store_b32 v7, v3, s[40:43], 0 offen
	buffer_store_b32 v8, v9, s[40:43], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 16
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 16
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20320
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 16
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
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 16
    .sgpr_count:     107
    .sgpr_spill_count: 26
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 3
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
