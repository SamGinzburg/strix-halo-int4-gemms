	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[80:83], s[0:1], 0x4c
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b32 s79, s[0:1], 0x5c
	v_mov_b32_e32 v65, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s98, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 6, v65
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v1, 63, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 2, v2
	v_or_b32_e32 v4, 4, v2
	v_or_b32_e32 v5, 6, v2
	v_or_b32_e32 v6, 8, v2
	v_or_b32_e32 v7, 10, v2
	v_or_b32_e32 v8, 12, v2
	v_or_b32_e32 v9, 14, v2
	v_or_b32_e32 v10, 16, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	v_or_b32_e32 v11, 18, v2
	s_cselect_b32 s97, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v12, 20, v2
	s_cselect_b32 s45, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s80
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s78, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v13, 22, v2
	v_or_b32_e32 v14, 24, v2
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v0, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v15, 26, v2
	v_or_b32_e32 v16, 28, v2
	v_or_b32_e32 v17, 30, v2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[97:98], null, s79, v2, v[1:2]
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v5, off offset:12
	scratch_store_b32 off, v6, off offset:16
	scratch_store_b32 off, v7, off offset:20
	scratch_store_b32 off, v8, off offset:24
	scratch_store_b32 off, v9, off offset:28
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, s78, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s78, v3
	v_or_b32_e32 v3, s78, v4
	v_or_b32_e32 v4, s78, v5
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s78, v6
	v_or_b32_e32 v6, s78, v7
	v_or_b32_e32 v7, s78, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s78, v9
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v10, off offset:32
	scratch_store_b32 off, v11, off offset:36
	scratch_store_b32 off, v12, off offset:40
	scratch_store_b32 off, v13, off offset:44
	scratch_store_b32 off, v14, off offset:48
	scratch_store_b32 off, v15, off offset:52
	scratch_store_b32 off, v16, off offset:56
	scratch_store_b32 off, v17, off offset:60
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s7, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s78, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s7, s3
	s_add_i32 s6, s6, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[38:39], null, s79, 10, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s6
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s5, s3, s82
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s2, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[39:40], null, s79, 12, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[42:43], null, s79, 18, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[36:37], null, s79, 6, v[97:98]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s44, s7, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s81
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s82, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s6, s2
	s_sub_i32 s7, 0, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[40:41], null, s79, 14, v[97:98]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s6
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[43:44], null, s79, 20, v[97:98]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s78, v11
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v41, s79, 4, v97
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s82, v7
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v34, s79, 1, v97
	v_mad_u64_u32 v[44:45], null, s79, 22, v[97:98]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s82, v4
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v0
	v_mov_b32_e32 v4, v36
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v35, s79, 2, v97
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s78, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s82, v10
	v_mov_b32_e32 v10, v42
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, 32, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, 34, v0
	v_or_b32_e32 v20, 38, v0
	v_or_b32_e32 v21, 40, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, 42, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, 44, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s80, s81
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s56, s7, 31
	s_mul_i32 s8, s6, s2
	s_add_i32 s7, s6, 1
	s_sub_i32 s4, s4, s8
	v_mov_b32_e32 v6, v38
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, 46, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[6:7], off offset:84 ; 8-byte Folded Spill
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s60, s7, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s65, s5, s78
	v_mov_b32_e32 v7, v39
	s_mul_i32 s64, s65, s79
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s82, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s64, v97
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s79, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, 48, v0
	v_or_b32_e32 v26, 50, v0
	v_or_b32_e32 v27, 52, v0
	v_or_b32_e32 v28, 54, v0
	v_or_b32_e32 v29, 56, v0
	v_or_b32_e32 v30, 58, v0
	v_or_b32_e32 v31, 60, v0
	v_or_b32_e32 v32, 62, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s82, v2
	v_cmp_gt_i32_e64 s13, s82, v8
	v_cmp_gt_i32_e64 s15, s82, v11
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v0, 1, v33
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:92
	scratch_store_b64 off, v[10:11], off offset:112
	v_dual_mov_b32 v8, v40 :: v_dual_mov_b32 v11, v43
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[45:46], null, s79, 24, v[97:98]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s82, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s64, v34, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v37, s79, 3, v97
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s64, v35, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s78, v13
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s82, v12
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[8:9], off offset:100
	scratch_store_b64 off, v[11:12], off offset:120
	v_mov_b32_e32 v12, v44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s82, v5
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v34, off offset:64
	scratch_store_b32 off, v35, off offset:68
	scratch_store_b64 off, v[4:5], off offset:72
	scratch_store_b32 off, v37, off offset:80
	v_add_lshl_u32 v4, s64, v36, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[46:47], null, s79, 26, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v5, s64, v37, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s78, v14
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s82, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s64, v38, 1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v41, off offset:108
	scratch_store_b64 off, v[12:13], off offset:128
	v_mov_b32_e32 v13, v45
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[47:48], null, s79, 28, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s64, v39, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s82, v9
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v8, s64, v40, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s78, v15
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s82, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[13:14], off offset:136 ; 8-byte Folded Spill
	v_mov_b32_e32 v14, v46
	v_add_lshl_u32 v9, s64, v41, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[48:49], null, s79, 30, v[97:98]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s64, v42, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s78, v16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s82, v15
	v_cmp_gt_i32_e32 vcc_lo, s82, v28
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s64, v43, 1
	scratch_store_b64 off, v[14:15], off offset:144 ; 8-byte Folded Spill
	v_mov_b32_e32 v15, v47
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s64, v44, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s46, s79, 54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s78, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, s64, v45, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s82, v16
	v_cmp_gt_i32_e64 s5, s82, v31
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[15:16], off offset:152 ; 8-byte Folded Spill
	v_add_lshl_u32 v31, v33, s46, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	v_mov_b32_e32 v16, v48
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, s64, v46, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s82, v17
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s64, v47, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s63, s79, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s82, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	scratch_store_b64 off, v[16:17], off offset:160 ; 8-byte Folded Spill
	v_add_lshl_u32 v16, s64, v48, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s61, s79, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s82, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s63, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s59, s79, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s61, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s79, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s82, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s59, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s79, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s82, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s58, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s79, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s82, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s57, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s79, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s82, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s55, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s2
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s79, 46
	s_mul_i32 s52, s79, 48
	s_mul_i32 s48, s79, 50
	s_mul_i32 s49, s79, 52
	s_mul_i32 s51, s79, 56
	s_mul_i32 s50, s79, 58
	s_mul_i32 s47, s79, 60
	s_mul_i32 s62, s79, 62
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s82, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s54, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s82, v25
	v_cmp_gt_i32_e64 s31, s82, v26
	v_cmp_gt_i32_e64 s33, s82, v27
	v_cmp_gt_i32_e64 s34, s82, v29
	v_cmp_gt_i32_e64 s35, s82, v30
	v_cmp_gt_i32_e64 s4, s82, v32
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s53, 1
	v_add_lshl_u32 v25, v33, s52, 1
	v_add_lshl_u32 v26, v33, s51, 1
	v_add_lshl_u32 v27, v33, s48, 1
	v_add_lshl_u32 v28, v33, s49, 1
	v_add_lshl_u32 v29, v33, s50, 1
	v_add_lshl_u32 v30, v33, s47, 1
	v_add_lshl_u32 v32, v33, s62, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v33, v65, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v34, 1, v1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s2
	s_and_b32 s5, s5, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v30, 0x80000000, v30, s5
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s35, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v34, 0x120, v33
	v_cndmask_b32_e64 v29, 0x80000000, v29, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s33, s2
	s_and_b32 vcc_lo, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s6
	s_and_b32 s41, s41, 0xffff
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_add_nc_u32 v155, 0, v34
	s_clause 0x1f
	buffer_load_u16 v0, v0, s[40:43], 0 offen
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
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s60, s56
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s83, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s4, s56
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v154, 0, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v35, 0x240, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s6, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, 0x360, v33
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s6
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s6, s7, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v156, 0, v35
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s6, s6, 27
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v157, 0, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s6, s7, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v154, v0
	s_waitcnt vmcnt(27)
	ds_store_b16 v154, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v154, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v154, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v154, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v154, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v154, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v154, v26 offset:7168
	ds_store_b16 v155, v2
	ds_store_b16 v155, v6 offset:1024
	ds_store_b16 v155, v10 offset:2048
	ds_store_b16 v155, v14 offset:3072
	ds_store_b16 v155, v18 offset:4096
	ds_store_b16 v155, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v155, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v155, v29 offset:7168
	ds_store_b16 v156, v3
	ds_store_b16 v156, v7 offset:1024
	ds_store_b16 v156, v11 offset:2048
	ds_store_b16 v156, v15 offset:3072
	ds_store_b16 v156, v19 offset:4096
	ds_store_b16 v156, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v156, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v156, v30 offset:7168
	ds_store_b16 v157, v4
	ds_store_b16 v157, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v157, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v157, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v157, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v157, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v157, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v157, v32 offset:7168
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s99, s6, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s6, s36, 0x10008
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v36
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v0, 0, 1, s45
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s52, 1, v0
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	v_lshlrev_b32_e32 v18, 2, v65
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s98, s99
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v0, 2, v65
	s_mov_b32 s7, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s78, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s78, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s7, s83, s7
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s7, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s8, s7, 31
	s_lshr_b32 s8, s8, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s8, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s7, s7, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s98, s8, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s99, s99, s7
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v0, 0, 1, s45
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s52, 1, v0
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s7, s78, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 64
	s_min_i32 s7, s83, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 27
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s7, s7, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s99, s99, s7
	v_lshlrev_b32_e32 v18, 2, v65
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s98, s99
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr0
.LBB0_7:                                ; %Flow192
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s96, s[0:1], 0x64
	v_and_b32_e32 v66, 15, v65
	v_and_b32_e32 v68, 0x60, v65
	v_and_b32_e32 v67, 64, v65
	v_and_b32_e32 v69, 16, v65
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v0, 7, v65
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v2, 7, v66
	v_lshlrev_b32_e32 v3, 6, v68
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 5, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_lshlrev_b32_e32 v7, 3, v66
	v_lshrrev_b32_e32 v8, 2, v69
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v10, v4, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v3, v2, v3, v6
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	v_lshlrev_b32_e32 v5, 1, v65
	v_lshlrev_b32_e32 v9, 3, v65
	v_or3_b32 v159, v8, v7, v10
	v_xad_u32 v10, v3, 32, 0
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v7, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v12, v9, v5
	v_xad_u32 v13, v3, 48, 0
	v_xad_u32 v8, v3, 16, 0
	v_xad_u32 v14, v3, 64, 0
	v_or_b32_e32 v161, v6, v2
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v2, 60, v5
	ds_load_b128 v[41:44], v10
	ds_load_b128 v[45:48], v13
	v_xad_u32 v10, 0x50, v3, 0
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[37:40], v8
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v8, 48, v12
	v_xad_u32 v12, 0x60, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[49:52], v14
	ds_load_b128 v[53:56], v10
	ds_load_b128 v[57:60], v12
	ds_load_b128 v[61:64], v3
	v_lshl_or_b32 v2, v68, 4, v2
	v_lshrrev_b32_e32 v3, 3, v68
	s_xor_b32 s7, s3, s80
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	v_mov_b32_e32 v88, 0
	v_xor_b32_e32 v2, v2, v3
	v_lshlrev_b32_e32 v3, 6, v65
	s_xor_b32 s8, s44, s7
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s19, s8, s7
	s_sub_i32 s7, 0, s4
	s_mul_i32 s8, s19, s80
	s_mul_i32 s7, s7, s6
	v_and_or_b32 v162, v3, 64, v2
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v2, 48, v9
	s_sub_i32 s3, s3, s8
	s_mul_hi_u32 s7, s6, s7
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_load_b32 s80, s[0:1], 0x7c
	s_abs_i32 s8, s3
	s_add_i32 s6, s6, s7
	v_lshl_or_b32 v0, v0, 6, v2
	v_bfe_i32 v2, v65, 3, 1
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s3, 31
	s_ashr_i32 s5, s5, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s9, s6, s4
	s_xor_b32 s5, s7, s5
	s_sub_i32 s7, s8, s9
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v2, 0x210, v2
	s_add_i32 s8, s6, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v163, v0, v2
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s7, s9, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, s78, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s6, 1
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v11, 6, v1
	v_lshrrev_b32_e32 v7, 3, v67
	s_cmp_ge_u32 s7, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s4, s8, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 16, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s4, s4, s5
	v_or3_b32 v160, v11, v7, v8
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b64 s[84:85], s[0:1], 0x30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s82, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 8, v0
	v_or_b32_e32 v5, 12, v0
	v_or_b32_e32 v7, 20, v0
	v_or_b32_e32 v8, 24, v0
	v_or_b32_e32 v9, 28, v0
	v_or_b32_e32 v10, 32, v0
	v_or_b32_e32 v11, 36, v0
	v_or_b32_e32 v12, 40, v0
	v_or_b32_e32 v13, 44, v0
	v_or_b32_e32 v14, 48, v0
	v_or_b32_e32 v15, 52, v0
	v_or_b32_e32 v16, 56, v0
	v_or_b32_e32 v17, 60, v0
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v70, s39, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s23, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s4, s4, s5
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s5, s19, s81
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v71, s39, v2
	s_add_i32 s81, s4, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s82, v2
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v74, s39, v6
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v2, 31, v65
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s82, v9
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v77, s39, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v23, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[109:110], null, s80, v2, v[0:1]
	v_lshrrev_b32_e32 v0, 2, v68
	v_mov_b32_e32 v9, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:420
	scratch_store_b32 off, v2, off offset:168
	v_mov_b32_e32 v2, 0x7632
	v_xor_b32_e32 v181, v18, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v182, 4, v67
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s96, v1
	v_cndmask_b32_e32 v2, 0x3276, v2, vcc_lo
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s82, v3
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v72, s39, v3
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s82, v11
	v_lshl_or_b32 v2, v2, 8, v2
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v79, s39, v11
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v25 :: v_dual_and_b32 v2, 0x760076, v2
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v73, s39, v5
	v_and_b32_e32 v0, 0x540054, v0
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v75, s39, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[3:4], null, s96, v182, v[1:2]
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v2, 4, v2
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v76, s39, v8
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v78, s39, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v183, 0x5040504, v0
	v_xor_b32_e32 v0, 16, v161
	v_and_b32_e32 v184, 0x7060706, v1
	v_lshl_or_b32 v1, v66, 9, v18
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v80, s39, v12
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v185, 0, v0
	v_xor_b32_e32 v0, 32, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v149, v1 :: v_dual_add_nc_u32 v98, s39, v13
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v99, s39, v14
	v_add_nc_u32_e32 v186, 0, v0
	v_xor_b32_e32 v0, 48, v161
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s82, v17
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v102, s39, v17
	v_mov_b32_e32 v17, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v187, 0, v0
	v_xor_b32_e32 v0, 64, v161
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v100, s39, v15
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v101, s39, v16
	v_add_nc_u32_e32 v188, 0, v0
	v_xor_b32_e32 v0, 0x50, v161
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s100, s20, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s20, s23, s78
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s19, s19, s21
	v_writelane_b32 v255, s65, 0
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v189, 0, v0
	v_xor_b32_e32 v0, 0x60, v161
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s82, v5
	v_cmp_gt_i32_e64 s7, s82, v6
	v_cmp_gt_i32_e64 s8, s82, v7
	v_cmp_gt_i32_e64 s9, s82, v8
	v_add_nc_u32_e32 v190, 0, v0
	v_xor_b32_e32 v0, 0x70, v161
	v_cmp_gt_i32_e64 s11, s82, v10
	v_cmp_gt_i32_e64 s13, s82, v12
	v_cmp_gt_i32_e64 s14, s82, v13
	v_cmp_gt_i32_e64 s15, s82, v14
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v191, 0, v0
	v_xor_b32_e32 v0, 0x810, v162
	v_cmp_gt_i32_e64 s16, s82, v15
	v_cmp_gt_i32_e64 s17, s82, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:424
	scratch_store_b32 off, v18, off offset:440
	v_mov_b32_e32 v18, v25
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v192, 0, v0
	v_xor_b32_e32 v0, 0x1020, v162
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_add_nc_u32_e32 v193, 0, v0
	v_xor_b32_e32 v0, 0x1830, v162
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v2, v25
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v194, 0, v0
	v_xor_b32_e32 v0, 4, v1
	v_mov_b32_e32 v6, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v141, s23, 2, v109
	v_lshl_add_u32 v142, s23, 3, v109
	v_lshl_add_u32 v143, s23, 4, v109
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_add_nc_u32 v196, 0, v0
	v_xor_b32_e32 v0, 8, v1
	v_mov_b32_e32 v137, 0xff800000
	v_lshl_add_u32 v144, s23, 5, v109
	v_mov_b32_e32 v239, 0xff800000
	v_mov_b32_e32 v243, 0xff800000
	v_add_nc_u32_e32 v197, 0, v0
	v_xor_b32_e32 v0, 12, v1
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_mov_b32 v248, 0xff800000
	v_mov_b32_e32 v135, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_add_nc_u32 v198, 0, v0
	v_xor_b32_e32 v0, 16, v1
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_mov_b32 v247, 0xff800000
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v250, 0xff800000
	v_add_nc_u32_e32 v199, 0, v0
	v_xor_b32_e32 v0, 20, v1
	v_mov_b32_e32 v133, 0xff800000
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_mov_b32 v138, 0xff800000
	v_mov_b32_e32 v136, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v200, 0, v0
	v_xor_b32_e32 v0, 24, v1
	v_mov_b32_e32 v134, 0xff800000
	v_mov_b32_e32 v132, 0xff800000
	v_mov_b32_e32 v150, 0xff800000
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v201, 0, v0
	v_xor_b32_e32 v0, 28, v1
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_mov_b32 v158, 0xff800000
	v_mov_b32_e32 v254, 0xff800000
	v_mov_b32_e32 v252, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v202, 0, v0
	v_xor_b32_e32 v0, 32, v1
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s22
	s_add_i32 s101, s19, s20
	v_mov_b32_e32 v151, 0xff800000
	s_mov_b32 s68, 0
	v_add_nc_u32_e32 v203, 0, v0
	v_xor_b32_e32 v0, 36, v1
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s81, s81, s83
	s_and_b32 s89, s25, 0xffff
	s_mov_b32 s88, s24
	s_mov_b32 s91, 0x31027000
	v_add_nc_u32_e32 v204, 0, v0
	v_xor_b32_e32 v0, 40, v1
	v_mov_b32_e32 v153, 0xff800000
	s_mov_b32 s90, 0x7ffffffe
	s_add_i32 s101, s101, s3
	s_and_b32 s85, s85, 0xffff
	v_add_nc_u32_e32 v205, 0, v0
	v_xor_b32_e32 v0, 44, v1
	s_lshl_b32 s102, s96, 1
	s_lshl_b32 s103, s96, 3
	s_lshl_b32 s104, s96, 4
	s_mul_i32 vcc_hi, s96, 27
	v_add_nc_u32_e32 v206, 0, v0
	v_xor_b32_e32 v0, 48, v1
	v_mov_b32_e32 v253, 0xff800000
	s_and_b32 s93, s27, 0xffff
	s_mov_b32 s92, s26
	s_mov_b32 s69, s68
	v_add_nc_u32_e32 v207, 0, v0
	v_xor_b32_e32 v0, 52, v1
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	v_add_nc_u32_e32 v208, 0, v0
	v_xor_b32_e32 v0, 56, v1
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s67, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v209, 0, v0
	v_xor_b32_e32 v0, 60, v1
	v_dual_mov_b32 v1, v25 :: v_dual_mov_b32 v140, 0xff800000
	v_mov_b32_e32 v180, 0xff800000
	v_mov_b32_e32 v238, 0xff800000
	v_add_nc_u32_e32 v210, 0, v0
	v_xor_b32_e32 v0, 0x220, v181
	v_mov_b32_e32 v240, 0xff800000
	v_mov_b32_e32 v242, 0xff800000
	v_mov_b32_e32 v244, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:172
	scratch_store_b32 off, v67, off offset:428
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x440, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v68, off offset:432
	scratch_store_b32 off, v0, off offset:184
	v_xor_b32_e32 v0, 0x660, v181
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v69, off offset:436
	scratch_store_b32 off, v0, off offset:188
	v_xor_b32_e32 v0, 8, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v159
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v159
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v159
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v106, 0, v0
	v_xor_b32_e32 v0, 64, v159
	v_add_nc_u32_e32 v107, 0, v0
	v_xor_b32_e32 v0, 0x48, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v108, 0, v0
	v_xor_b32_e32 v0, 0x50, v159
	v_add_nc_u32_e32 v110, 0, v0
	v_xor_b32_e32 v0, 0x58, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[111:112], null, s23, 12, v[109:110]
	v_add_nc_u32_e32 v0, 0, v0
	v_mad_u64_u32 v[112:113], null, s23, 20, v[109:110]
	v_mad_u64_u32 v[113:114], null, s23, 24, v[109:110]
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v159
	v_mad_u64_u32 v[114:115], null, s23, 28, v[109:110]
	v_mad_u64_u32 v[115:116], null, s23, 36, v[109:110]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v0
	v_mad_u64_u32 v[116:117], null, s23, 40, v[109:110]
	v_mad_u64_u32 v[117:118], null, s23, 44, v[109:110]
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v159
	v_mad_u64_u32 v[118:119], null, s23, 48, v[109:110]
	v_mad_u64_u32 v[119:120], null, s23, 52, v[109:110]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	v_mad_u64_u32 v[120:121], null, s23, 56, v[109:110]
	v_mad_u64_u32 v[121:122], null, s23, 60, v[109:110]
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v159
	v_add_nc_u32_e32 v227, 0, v0
	v_xor_b32_e32 v0, 0x78, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v228, 0, v0
	v_xor_b32_e32 v0, 16, v160
	v_add_nc_u32_e32 v229, 0, v0
	v_xor_b32_e32 v0, 32, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v230, 0, v0
	v_xor_b32_e32 v0, 48, v160
	v_add_nc_u32_e32 v231, 0, v0
	v_xor_b32_e32 v0, 16, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v232, 0, v0
	v_xor_b32_e32 v0, 32, v163
	v_add_nc_u32_e32 v233, 0, v0
	v_xor_b32_e32 v0, 48, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v234, 0, v0
	v_xor_b32_e32 v0, 0x420, v163
	v_add_nc_u32_e32 v235, 0, v0
	v_xor_b32_e32 v0, 0x430, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v236, 0, v0
	v_xor_b32_e32 v0, 0x410, v163
	v_add_nc_u32_e32 v237, 0, v0
	v_subrev_nc_u32_e32 v0, s37, v70
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v71
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v72
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v73
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v74
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v75
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v76
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v77
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v78
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v79
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v80
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v98
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v99
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v100
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v101
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v102
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:352
	scratch_store_b32 off, v70, off offset:228
	v_add_nc_u32_e32 v0, s38, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:356
	scratch_store_b32 off, v71, off offset:232
	v_add_nc_u32_e32 v0, s38, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:360
	scratch_store_b32 off, v72, off offset:236
	v_add_nc_u32_e32 v0, s38, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:364
	scratch_store_b32 off, v73, off offset:240
	v_add_nc_u32_e32 v0, s38, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:368
	scratch_store_b32 off, v74, off offset:244
	v_add_nc_u32_e32 v0, s38, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:372
	scratch_store_b32 off, v75, off offset:248
	v_add_nc_u32_e32 v0, s38, v75
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:376
	scratch_store_b32 off, v76, off offset:252
	v_add_nc_u32_e32 v0, s38, v76
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:380
	scratch_store_b32 off, v77, off offset:256
	v_add_nc_u32_e32 v0, s38, v77
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:384
	scratch_store_b32 off, v78, off offset:260
	v_add_nc_u32_e32 v0, s38, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:388
	scratch_store_b32 off, v79, off offset:264
	v_add_nc_u32_e32 v0, s38, v79
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:392
	scratch_store_b32 off, v80, off offset:268
	v_add_nc_u32_e32 v0, s38, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:396
	scratch_store_b32 off, v98, off offset:272
	v_add_nc_u32_e32 v0, s38, v98
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:400
	scratch_store_b32 off, v99, off offset:276
	v_add_nc_u32_e32 v0, s38, v99
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:404
	scratch_store_b32 off, v100, off offset:280
	v_add_nc_u32_e32 v0, s38, v100
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:408
	scratch_store_b32 off, v101, off offset:284
	v_add_nc_u32_e32 v0, s38, v101
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:412
	scratch_store_b32 off, v102, off offset:288
	v_add_nc_u32_e32 v0, s38, v102
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s98, s80
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s86, s90
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s101, s3
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s87, s91
	v_add_lshl_u32 v0, s3, v109, 2
	v_add_lshl_u32 v98, s3, v141, 2
	v_add_lshl_u32 v105, s3, v144, 2
	v_add_lshl_u32 v99, s3, v142, 2
	v_add_lshl_u32 v122, s3, v115, 2
	v_add_lshl_u32 v100, s3, v111, 2
	v_add_lshl_u32 v123, s3, v116, 2
	v_add_lshl_u32 v101, s3, v143, 2
	v_add_lshl_u32 v102, s3, v112, 2
	v_add_lshl_u32 v103, s3, v113, 2
	v_add_lshl_u32 v104, s3, v114, 2
	v_add_lshl_u32 v124, s3, v117, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s61
	v_add_lshl_u32 v125, s3, v118, 2
	v_add_lshl_u32 v126, s3, v119, 2
	v_add_lshl_u32 v127, s3, v120, 2
	v_add_lshl_u32 v128, s3, v121, 2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s56
	v_cndmask_b32_e64 v105, 0x80000000, v105, s66
	v_cndmask_b32_e64 v99, 0x80000000, v99, s54
	v_cndmask_b32_e64 v122, 0x80000000, v122, s63
	v_cndmask_b32_e64 v100, 0x80000000, v100, s51
	v_cndmask_b32_e64 v123, 0x80000000, v123, s59
	v_cndmask_b32_e64 v101, 0x80000000, v101, s65
	v_cndmask_b32_e64 v102, 0x80000000, v102, s60
	v_cndmask_b32_e64 v103, 0x80000000, v103, s57
	v_cndmask_b32_e64 v104, 0x80000000, v104, s53
	v_cndmask_b32_e64 v124, 0x80000000, v124, s55
	s_clause 0x7
	buffer_load_b32 v0, v0, s[84:87], 0 offen
	buffer_load_b32 v98, v98, s[84:87], 0 offen
	buffer_load_b32 v99, v99, s[84:87], 0 offen
	buffer_load_b32 v100, v100, s[84:87], 0 offen
	buffer_load_b32 v101, v101, s[84:87], 0 offen
	buffer_load_b32 v102, v102, s[84:87], 0 offen
	buffer_load_b32 v103, v103, s[84:87], 0 offen
	buffer_load_b32 v104, v104, s[84:87], 0 offen
	v_cndmask_b32_e64 v125, 0x80000000, v125, s94
	v_cndmask_b32_e64 v126, 0x80000000, v126, s64
	v_cndmask_b32_e64 v127, 0x80000000, v127, s62
	v_cndmask_b32_e64 v128, 0x80000000, v128, s58
	s_clause 0x7
	buffer_load_b32 v105, v105, s[84:87], 0 offen
	buffer_load_b32 v122, v122, s[84:87], 0 offen
	buffer_load_b32 v123, v123, s[84:87], 0 offen
	buffer_load_b32 v124, v124, s[84:87], 0 offen
	buffer_load_b32 v125, v125, s[84:87], 0 offen
	buffer_load_b32 v126, v126, s[84:87], 0 offen
	buffer_load_b32 v127, v127, s[84:87], 0 offen
	buffer_load_b32 v128, v128, s[84:87], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v139, 0, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s95, s91
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v0, 0xff800000, v0, s61
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v98, 0xff800000, v98, s56
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v99, 0xff800000, v99, s54
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v100, 0xff800000, v100, s51
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v101, 0xff800000, v101, s65
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v105, 0xff800000, v105, s66
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v130, 0xff800000, v122, s63
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v122, 0, v162
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v102, 0xff800000, v102, s60
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v148, 0xff800000, v125, s94
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v165, 0xff800000, v126, s64
	v_cndmask_b32_e64 v103, 0xff800000, v103, s57
	v_cndmask_b32_e64 v104, 0xff800000, v104, s53
	v_cndmask_b32_e64 v146, 0xff800000, v123, s59
	v_cndmask_b32_e64 v147, 0xff800000, v124, s55
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v166, 0xff800000, v127, s62
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v167, 0xff800000, v128, s58
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v122, v0, v101 offset1:32
	ds_store_2addr_b32 v122, v105, v148 offset0:64 offset1:96
	ds_store_2addr_b32 v192, v98, v102 offset1:32
	ds_store_2addr_b32 v192, v130, v165 offset0:64 offset1:96
	ds_store_2addr_b32 v193, v99, v103 offset1:32
	ds_store_2addr_b32 v193, v146, v166 offset0:64 offset1:96
	ds_store_2addr_b32 v194, v100, v104 offset1:32
	ds_store_2addr_b32 v194, v147, v167 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v123, v139
	ds_load_b32 v124, v196
	ds_load_b32 v125, v197
	ds_load_b32 v126, v198
	ds_load_b32 v127, v199
	ds_load_b32 v128, v200
	ds_load_b32 v129, v201
	ds_load_b32 v168, v202
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v148
	v_cmp_neq_f32_e64 s3, 0xff800000, v105
	v_cmp_neq_f32_e64 s19, 0xff800000, v0
	v_cmp_neq_f32_e64 s20, 0xff800000, v101
	v_cmp_neq_f32_e64 s21, 0xff800000, v98
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 vcc_lo, s94, vcc_lo
	s_and_b32 s24, s66, s3
	v_cndmask_b32_e64 v0, 0, 1, vcc_lo
	s_and_b32 s29, s65, s20
	s_and_b32 s34, s61, s19
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v165
	v_cmp_neq_f32_e64 s19, 0xff800000, v130
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v164, 0x3fb8aa3b, v123 :: v_dual_mul_f32 v123, 0x3fb8aa3b, v124
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v124, 0x3fb8aa3b, v125 :: v_dual_mul_f32 v125, 0x3fb8aa3b, v126
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v126, 0x3fb8aa3b, v127 :: v_dual_mul_f32 v127, 0x3fb8aa3b, v128
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v128, 0x3fb8aa3b, v129 :: v_dual_mul_f32 v129, 0x3fb8aa3b, v168
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v164, s100, v73 :: v_dual_fmac_f32 v123, s100, v74
	v_dual_fmac_f32 v124, s100, v75 :: v_dual_fmac_f32 v125, s100, v76
	v_dual_fmac_f32 v126, s100, v77 :: v_dual_fmac_f32 v127, s100, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v128, s100, v79 :: v_dual_fmac_f32 v129, s100, v80
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v73, v203
	ds_load_b32 v74, v204
	ds_load_b32 v75, v205
	ds_load_b32 v76, v206
	ds_load_b32 v77, v207
	ds_load_b32 v78, v208
	ds_load_b32 v79, v209
	ds_load_b32 v80, v210
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v0.l, 8, v0.l
	s_and_b32 s20, s64, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v102
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s63, s19
	s_and_b32 s30, s56, s21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v166
	v_cmp_neq_f32_e64 s19, 0xff800000, v146
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s60, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v99
	v_cmp_neq_f32_e64 s26, 0xff800000, v103
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s62, s3
	s_and_b32 s23, s59, s19
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v73, 0x3fb8aa3b, v73 :: v_dual_mul_f32 v74, 0x3fb8aa3b, v74
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v75, 0x3fb8aa3b, v75 :: v_dual_mul_f32 v76, 0x3fb8aa3b, v76
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s26, s57, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v73, s100, v65 :: v_dual_fmac_f32 v74, s100, v66
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s24
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v75, s100, v67 :: v_dual_fmac_f32 v76, s100, v68
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v66, 0, 1, s30
	s_and_b32 s31, s54, s22
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v68.h, v65.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s29
	v_cndmask_b32_e64 v65, 0, 1, s34
	v_cndmask_b32_e64 v67, 0, 1, s31
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v167
	v_cmp_neq_f32_e64 s22, 0xff800000, v147
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.l, 8, v0.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v100
	v_cmp_neq_f32_e64 s27, 0xff800000, v104
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s58, s3
	s_and_b32 s22, s55, s22
	v_or_b16 v68.l, v65.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s20
	v_cndmask_b32_e64 v65, 0, 1, s25
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v77, 0x3fb8aa3b, v77 :: v_dual_mul_f32 v78, 0x3fb8aa3b, v78
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s27, s53, s27
	v_lshlrev_b16 v0.l, 8, v0.l
	s_and_b32 s33, s51, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, s100, v69 :: v_dual_fmac_f32 v78, s100, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v69, 0, 1, s33
	v_or_b16 v65.h, v65.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s28
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b16 v0.l, 8, v0.l
	s_mul_i32 s3, s96, 3
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v79, 0x3fb8aa3b, v79 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v80
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s94, s90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v65.l, v65.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s21
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, s100, v71 :: v_dual_fmac_f32 v80, s100, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v66.h, v66.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s26
	v_mov_b16_e32 v66.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v66.l, v66.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v67.h, v67.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s27
	v_mov_b16_e32 v67.l, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v67.l, v67.l, v0.l
	v_add_nc_u32_e32 v0, 0, v181
	ds_store_b32 v0, v68
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v182
	scratch_load_b64 v[68:69], off, off offset:172 ; 8-byte Folded Reload
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s42, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 1, v182
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 2, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s66, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 3, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s59, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 8, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s61, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 9, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 10, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s62, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 11, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 16, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s63, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 17, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 18, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s65, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 19, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 24, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s64, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 25, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 26, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s60, s83, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v0, 27, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s98, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s98, s98, 32
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s83, v0
	.loc	1 881 25                        ; attention.py:881:25
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[68:69], null, s50, s96, v[68:69]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v99, v68, s3, 1
	s_mul_i32 s3, s96, 9
	v_add_lshl_u32 v70, v68, s102, 1
	v_add_lshl_u32 v173, v68, s3, 1
	s_mul_i32 s3, s96, 10
	v_add_lshl_u32 v72, v68, s103, 1
	v_add_lshl_u32 v100, v68, s3, 1
	s_mul_i32 s3, s96, 11
	v_add_lshl_u32 v101, v68, s104, 1
	v_add_lshl_u32 v175, v68, s3, 1
	s_mul_i32 s3, s96, 17
	v_add_lshl_u32 v172, v68, s96, 1
	v_add_lshl_u32 v174, v68, s3, 1
	s_mul_i32 s3, s96, 18
	v_add_lshl_u32 v178, v68, vcc_hi, 1
	v_add_lshl_u32 v102, v68, s3, 1
	s_mul_i32 s3, s96, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v176, v68, s3, 1
	s_mul_i32 s3, s96, 24
	v_add_lshl_u32 v103, v68, s3, 1
	s_mul_i32 s3, s96, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v177, v68, s3, 1
	s_mul_i32 s3, s96, 26
	v_add_lshl_u32 v71, v68, s3, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v65
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v66
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:192
	scratch_load_b32 v65, off, off offset:196
	scratch_load_b32 v66, off, off offset:204
	scratch_load_b32 v67, off, off offset:212
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v0, v0
	s_waitcnt vmcnt(2) lgkmcnt(0)
	ds_load_u8_d16_hi v0, v65
	scratch_load_b32 v65, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s57, 1, v0.l
	v_and_b16 v0.l, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v123, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s56, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v124, s56
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v69, 1, v68
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v65, v65
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v66
	scratch_load_b32 v66, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s55, 1, v0.l
	v_and_b16 v0.l, 1, v65.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v125, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s53, 1, v0.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v105, 0, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v126, s53
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v66, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v67
	ds_load_u8_d16 v67, v106
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v0.l
	v_and_b16 v0.l, 1, v66.h
	scratch_load_b32 v66, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v127, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s51, 1, v0.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v67.l
	scratch_load_b32 v67, off, off offset:224 ; 4-byte Folded Reload
	v_cmp_eq_u16_e64 s50, 1, v0.l
	ds_load_u8_d16 v0, v107
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v0, v108
	ds_load_u8_d16 v65, v110
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v195, 0xff800000, v129, s50
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v0.l
	v_and_b16 v0.l, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v73, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v0.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v74, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v75, s40
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(1)
	ds_load_u8_d16_hi v65, v66
	scratch_load_b32 v66, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v65.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v69, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v76, s39
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v66, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v67
	ds_load_u8_d16 v67, v227
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v228
	v_and_b16 v0.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s38, 1, v0.l
	v_and_b16 v0.l, 1, v66.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v70, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s61
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v77, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v0.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v78, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v0.l
	v_and_b16 v0.l, 1, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v79, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s35, 1, v0.l
	v_add_nc_u32_e32 v0, 0, v159
	ds_load_u8_d16 v0, v0
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s58, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v0, 0xff800000, v128, s51
	v_cndmask_b32_e64 v179, 0xff800000, v164, s58
	v_cndmask_b32_e64 v164, 0xff800000, v80, s35
	ds_store_b32 v139, v179
	ds_store_b32 v196, v148
	ds_store_b32 v197, v98
	ds_store_b32 v198, v147
	ds_store_b32 v199, v146
	ds_store_b32 v200, v130
	ds_store_b32 v201, v0
	ds_store_b32 v202, v195
	ds_store_b32 v203, v171
	ds_store_b32 v204, v170
	ds_store_b32 v205, v169
	ds_store_b32 v206, v168
	ds_store_b32 v207, v167
	ds_store_b32 v208, v166
	ds_store_b32 v209, v165
	ds_store_b32 v210, v164
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v69, v65, s[92:95], 0 offen
	buffer_load_u16 v70, v66, s[92:95], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v72, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s62
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v100, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s63
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v65, v65, s[92:95], 0 offen
	buffer_load_u16 v66, v66, s[92:95], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v101, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s65
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v102, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s64
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v67, v67, s[92:95], 0 offen
	buffer_load_u16 v68, v68, s[92:95], 0 offen
	v_cndmask_b32_e64 v72, 0x80000000, v103, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s60
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v71, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s59
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v71, v72, s[92:95], 0 offen
	buffer_load_u16 v72, v73, s[92:95], 0 offen
	v_cndmask_b32_e64 v73, 0x80000000, v99, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v175, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s46
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v75, 0x80000000, v173, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v76, 0x80000000, v172, s42
	s_clause 0x3
	buffer_load_u16 v99, v74, s[92:95], 0 offen
	buffer_load_u16 v100, v75, s[92:95], 0 offen
	buffer_load_u16 v73, v73, s[92:95], 0 offen
	buffer_load_u16 v74, v76, s[92:95], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s47
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v66.h, v99.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v65.h, v100.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v70.h, v73.l
	v_cndmask_b32_e64 v73, 0x80000000, v176, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s54
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v69.h, v74.l
	v_cndmask_b32_e64 v74, 0x80000000, v178, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s48
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v75, 0x80000000, v177, s42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s42, s0, s45
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s98, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v76, 0x80000000, v174, s42
	s_clause 0x3
	buffer_load_u16 v101, v74, s[92:95], 0 offen
	buffer_load_u16 v102, v75, s[92:95], 0 offen
	buffer_load_u16 v103, v73, s[92:95], 0 offen
	buffer_load_u16 v104, v76, s[92:95], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[126:127], v122 offset1:32
	ds_load_2addr_b32 v[77:78], v122 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v192 offset1:32
	ds_load_2addr_b32 v[124:125], v193 offset1:32
	ds_load_2addr_b32 v[122:123], v194 offset1:32
	ds_load_2addr_b32 v[79:80], v192 offset0:64 offset1:96
	ds_load_2addr_b32 v[75:76], v193 offset0:64 offset1:96
	ds_load_2addr_b32 v[73:74], v194 offset0:64 offset1:96
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v105, v[69:70]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v179, v148
	v_max3_f32 v70, v147, v146, v130
	v_max3_f32 v105, v167, v166, v165
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v229, v[65:66]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v69, v98, v70
	v_max3_f32 v70, v170, v169, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v70, v70, v105, v164
	v_max3_f32 v105, v0, v195, v171
	v_max3_f32 v69, v69, v105, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v69, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v140, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v148, v139
	v_sub_f32_e32 v0, v0, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v69, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.h, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s51
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s42, v70, v70
	v_mov_b16_e64 v148.h, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v105, 1, v69
	v_add3_u32 v70, v70, v105, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v179, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v148.l, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s44, v105, v105
	v_and_b32_e32 v148, 1, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v105, v105, v148, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v105.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v105, v70, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v172, v105, v70, v183
	v_perm_b32 v173, v105, v70, v184
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v98, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v98.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v98.l, v70.h
	v_cmp_o_f32_e64 s42, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v98, 1, v98
	v_add3_u32 v70, v70, v98, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v147, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v98.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s44, v98, v98
	v_and_b32_e32 v105, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v98, v98, v105, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v98.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v98, v70, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v174, v98, v70, v183
	v_perm_b32 v175, v98, v70, v184
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v146, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v98.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v98.l, v70.h
	v_cmp_o_f32_e64 s42, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v98, 1, v98
	v_add3_u32 v70, v70, v98, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v130, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v98.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v98, v98
	v_and_b32_e32 v105, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v98, v98, v105, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v98.h, s3
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v98, v70, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v176, v98, v70, v183
	v_perm_b32 v177, v98, v70, v184
	v_mov_b16_e32 v70.h, v69.h
	v_mov_b16_e32 v70.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v0, v0, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v195, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v70, v70
	v_and_b32_e32 v98, 1, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v70, v70, v98, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v72.h, v101.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v71.h, v102.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.h, 0x7fff, v70.h, s42
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v68.h, v103.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, v104.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v70, v0, s67, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v230, v[67:68]
	ds_store_b64 v231, v[71:72]
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v178, v70, v0, v183
	v_perm_b32 v179, v70, v0, v184
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v140, v139
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[219:222], v235 offset:2048
	ds_load_b128 v[223:226], v236 offset:2048
	v_mov_b32_e32 v140, v139
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v0, 0, v0, s3
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v17, v17, v0 :: v_dual_add_nc_u32 v70, 0, v163
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[98:101], v70
	ds_load_b128 v[102:105], v232
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v0
	v_mul_f32_e32 v26, v26, v0
	v_mul_f32_e32 v27, v27, v0
	v_mul_f32_e32 v28, v28, v0
	v_mul_f32_e32 v29, v29, v0
	v_mul_f32_e32 v30, v30, v0
	v_mul_f32_e32 v31, v31, v0
	v_mul_f32_e32 v32, v32, v0
	v_mul_f32_e32 v18, v18, v0
	v_mul_f32_e32 v19, v19, v0
	v_mul_f32_e32 v20, v20, v0
	v_mul_f32_e32 v21, v21, v0
	v_mul_f32_e32 v22, v22, v0
	v_mul_f32_e32 v23, v23, v0
	v_mul_f32_e32 v24, v24, v0
	v_mul_f32_e32 v9, v9, v0
	v_mul_f32_e32 v10, v10, v0
	v_mul_f32_e32 v11, v11, v0
	v_mul_f32_e32 v12, v12, v0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[98:105], v[172:179], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[98:101], v235
	ds_load_b128 v[102:105], v236
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v0
	v_mul_f32_e32 v14, v14, v0
	v_mul_f32_e32 v15, v15, v0
	v_mul_f32_e32 v16, v16, v0
	v_mul_f32_e32 v1, v1, v0
	v_mul_f32_e32 v2, v2, v0
	v_mul_f32_e32 v3, v3, v0
	v_mul_f32_e32 v4, v4, v0
	v_mul_f32_e32 v5, v5, v0
	v_mul_f32_e32 v6, v6, v0
	v_mul_f32_e32 v7, v7, v0
	v_mul_f32_e32 v8, v8, v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v171, v139
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[215:218], v232 offset:2048
	ds_load_b128 v[65:68], v70 offset:1024
	ds_load_b128 v[211:214], v70 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[172:179], v[1:8]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[98:105], v[172:179], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[98:101], v70 offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, v69.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v0, v0, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v170, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v70, v70
	v_and_b32_e32 v71, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v70.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v0, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v170, v70, v0, v183
	v_perm_b32 v171, v70, v0, v184
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v169, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v0, v0, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v168, v139
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[211:218], v[172:179], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[215:218], v234
	ds_load_b128 v[211:214], v233
	ds_load_b128 v[219:222], v233 offset:2048
	ds_load_b128 v[223:226], v234 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v70, v70
	v_and_b32_e32 v71, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v70.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v0, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v172, v70, v0, v183
	v_perm_b32 v173, v70, v0, v184
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v167, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v0, v0, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v166, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v70, v70
	v_and_b32_e32 v71, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v70.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v0, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v174, v70, v0, v183
	v_perm_b32 v175, v70, v0, v184
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v165, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v0, v0, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v164, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v70, v70
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v70, v69, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v69.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v0, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v176, v69, v0, v183
	v_perm_b32 v177, v69, v0, v184
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v237
	ds_load_b128 v[102:105], v237 offset:2048
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v0, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[211:218], v[170:177], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[170:177], v[9:16]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp9:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[170:177], v[17:24]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v126, v126
.Ltmp11:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[98:105], v[170:177], v[1:8]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v75, v75
	v_max_f32_e32 v66, v128, v128
	v_max_f32_e32 v67, v124, v124
	v_max_f32_e32 v0, v65, v0
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v68, v122, v122 :: v_dual_max_f32 v69, v127, v127
	v_max_f32_e32 v70, v129, v129
	v_max_f32_e32 v71, v125, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v72, v123, v123
	v_dual_max_f32 v98, v77, v77 :: v_dual_max_f32 v99, v79, v79
	v_max_f32_e32 v65, v66, v65
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v67, v66
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v69, v70, v69
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v70, v71, v70
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v71, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v71, v72, v71
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v72, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v72, v98, v72
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v98, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v98
	v_max_f32_e32 v98, v99, v98
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v99, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v99, v99, v99
	v_max_f32_e32 v99, v100, v99
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v0, v0, v100
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v65, v65, v100
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v66, v66, v100
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v67, v67, v100
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v68, v68, v100
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v69, v69, v100
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v70, v70, v100
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v71, v71, v100
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v72, v72, v100
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v98, v98, v100
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v99, v99, v100
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v0, v0, v100
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v65, v65, v100
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v66, v66, v100
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v67, v67, v100
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v68, v68, v100
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v69, v69, v100
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v70, v70, v100
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v71, v71, v100
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v72, v72, v100
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v98, v98, v100
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v99, v99, v100
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v0, v0, v100
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v65, v65, v100
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v66, v66, v100
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v67, v67, v100
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v68, v68, v100
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v69, v69, v100
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v70, v70, v100
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v71, v71, v100
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v100, v0, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v0, v0, v100
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v100, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s40, v0, 31
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v0, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v100
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v100, v66, -1, -1 op_sel:[1,0]
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v0, v72, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v100
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s37, v66, 31
	v_mov_b32_dpp v66, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v98, v66
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v100, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v67, v67, v100
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v100, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s36, v67, 31
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v67, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v68, v68, v100 :: v_dual_max_f32 v67, v67, v67
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s35, v68, 31
	v_permlanex16_b32 v68, v0, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v71, v67 :: v_dual_max_f32 v68, v68, v68
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s41, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v73, v73 :: v_dual_max_f32 v0, v0, v68
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v72, s41, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v0, 31
	v_permlanex16_b32 v0, v66, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v98, s39, s39
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v68, v99, v68
	v_max_f32_e32 v0, v66, v0
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s44, v0, 31
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v0, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v100, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v99, s44, s44
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v67, v66
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s38, v65, 31
	v_permlanex16_b32 v65, v70, -1, -1 op_sel:[1,0]
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v67, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v100, v100, v100 :: v_dual_max_f32 v65, v65, v65
	v_max_f32_e32 v0, v67, v0
	v_max_f32_e32 v67, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v69, v100
	v_max_f32_e32 v65, v70, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v69, 31
	v_readlane_b32 s42, v65, 31
	v_permlanex16_b32 v65, v68, -1, -1 op_sel:[1,0]
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v70, s3, s3
	v_max_f32_e64 v71, s42, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v65, v68, v65
	v_max_f32_e32 v68, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s43, v65, 31
	v_mov_b32_dpp v65, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp131:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v100, s43, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v65, v67, v65
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v66, v66, v67
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v66, 31
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp167:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v66, s38, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v69
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v0, -1, -1 op_sel:[1,0]
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v0, v0, v69
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	v_readlane_b32 s46, v0, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp175:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v145, v145
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v69
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s47, v65, 31
.Ltmp178:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v65, s40, s40
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp180:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v145, v0, v65 :: v_dual_max_f32 v0, v138, v138
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v69
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp183:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v0, v65
	v_max_f32_e32 v65, v180, v180
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s48, v67, 31
.Ltmp186:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v67, s37, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v180, v65, v66
	v_max_f32_e32 v65, v137, v137
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v69
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v69, s35, s35
	v_max_f32_e32 v65, v65, v66
	v_max_f32_e32 v66, v238, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s49, v68, 31
.Ltmp190:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v68, s36, s36
	v_max_f32_e32 v238, v66, v67
	v_max_f32_e32 v66, v136, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v67
	v_max_f32_e32 v67, v239, v239
	v_max_f32_e32 v239, v67, v68
	v_max_f32_e32 v67, v135, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v122, v239
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v67, v68
	v_max_f32_e32 v68, v243, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v243, v68, v69 :: v_dual_max_f32 v68, v134, v134
	v_max_f32_e32 v68, v68, v69
	v_max_f32_e32 v69, v240, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v240, v69, v70
	v_max_f32_e32 v69, v133, v133
	v_max_f32_e32 v69, v69, v70
	v_max_f32_e32 v70, v241, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v241, v70, v71 :: v_dual_max_f32 v70, v132, v132
	v_max_f32_e32 v70, v70, v71
	v_max_f32_e32 v71, v242, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v242, v71, v72
	v_max_f32_e32 v71, v131, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v123, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v71, v71, v72
	v_max_f32_e32 v72, v244, v244
	v_max_f32_e32 v244, v72, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v72, v150, v150 :: v_dual_sub_f32 v77, v77, v244
	v_max_f32_e32 v72, v72, v98
	v_max_f32_e32 v98, v248, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v248, v98, v99
	v_max_f32_e32 v98, v151, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v79, v79, v248 :: v_dual_max_f32 v98, v98, v99
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v245, v245
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v125, v241
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v245, v99, v100
	v_max_f32_e32 v99, v152, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp192:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v130, v99, v100 :: v_dual_max_f32 v99, v246, v246
	v_max_f32_e64 v100, s45, s45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
.Ltmp193:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp194:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v246, v99, v100 :: v_dual_max_f32 v99, v153, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp196:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v73, v73, v246 :: v_dual_max_f32 v146, v99, v100
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v247, v247
	v_max_f32_e64 v100, s46, s46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v73
.Ltmp197:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp198:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v247, v99, v100
	v_max_f32_e32 v99, v158, v158
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp200:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v78, v78, v247 :: v_dual_max_f32 v147, v99, v100
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v249, v249
	v_max_f32_e64 v100, s47, s47
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp202:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s22
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp204:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v249, v99, v100
	v_max_f32_e32 v99, v254, v254
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v249
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v148, v99, v100 :: v_dual_max_f32 v99, v250, v250
	v_max_f32_e64 v100, s48, s48
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp208:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v250, v99, v100 :: v_dual_max_f32 v99, v253, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v164, v99, v100
	v_max_f32_e32 v99, v251, v251
	v_max_f32_e64 v100, s49, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp212:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v251, v99, v100
	v_max_f32_e32 v99, v252, v252
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v101, v128, v180
	v_sub_f32_e32 v103, v124, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v165, v99, v100
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v99, v126, v145 :: v_dual_sub_f32 v100, v127, v243
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v100, v100
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v100, 0, v100, s29
.Ltmp213:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v100, v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v100, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v100, v100, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v100, v100, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v123, v99, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v123
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v99, 31
.Ltmp217:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s30
.Ltmp218:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v99, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v99, v99, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v99, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v101
.Ltmp221:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v103
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v101, v101, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v103, v101, -1, -1 op_sel:[1,0]
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v101, v103
.Ltmp225:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s31, v101, 31
.Ltmp227:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s33
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s33, v99, 31
.Ltmp229:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v103, v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v103, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp231:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s26
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v103, v103, v103 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v99, v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v103, v103, v103 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v99, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v105, v103, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v103, v103, v105
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v105, v100, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s30, v103, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v100, v105
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s29, v100, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v100, v99, -1, -1 op_sel:[1,0]
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v100
.Ltmp241:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v100, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v100, s27
.Ltmp242:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s27, v99, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v100, v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v100, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v100, v100, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v100, v100, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v100, -1, -1 op_sel:[1,0]
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v100, v101
.Ltmp246:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v77, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v101
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v79, -1, -1 op_sel:[1,0]
	v_readlane_b32 s25, v77, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v101
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v101, v75, -1, -1 op_sel:[1,0]
	v_readlane_b32 s24, v79, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v101
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v75, 31
	v_permlanex16_b32 v75, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v75
.Ltmp254:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v78
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v75, 0, v75, vcc_lo
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v77, v75, -1, -1 op_sel:[1,0]
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v77
.Ltmp258:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s20
.Ltmp259:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v73, 31
.Ltmp260:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v138, v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v102, v129, v240
	v_mov_b32_e32 v138, v0
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp262:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp264:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp266:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v93, v93, v73, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v137, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v137, v65
.Ltmp268:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v100, 31
.Ltmp269:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v102, v102, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp271:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v136
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp273:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v94, v94, v73, s33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v136, v66
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v105, v102, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v136, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp275:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v102, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s28, v102, 31
.Ltmp278:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v95, v95, v73, s31
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v135, v67
	v_mov_b32_e32 v135, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v134
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v96, v96, v73, s30
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v134, v68 :: v_dual_mov_b32 v134, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v89, v89, v73, s29
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v133, v69
	v_mov_b32_e32 v133, v69
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v132
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v90, v90, v73, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v132, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v91, v91, v73, s27
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v131, v71
	v_mov_b32_e32 v131, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v150
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v92, v92, v73, s26
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v150, v72 :: v_dual_mov_b32 v150, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v85, v85, v73, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v151, v98
	v_mov_b32_e32 v151, v98
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v152
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v86, v86, v73, s24
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v152, v130 :: v_dual_mov_b32 v152, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	v_mov_b32_e32 v132, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v87, v87, v73, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v153, v146
.Ltmp279:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v153, v146
.Ltmp280:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v78
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s22, v77, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp283:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v158
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v88, v88, v73, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v158, v147 :: v_dual_mov_b32 v158, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v76, v76, v250 :: v_dual_cndmask_b32 v73, 0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v254
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s21
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v75, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v81, v81, v73, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v254, v148 :: v_dual_mov_b32 v254, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp288:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp290:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v253
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v76, -1, -1 op_sel:[1,0]
.Ltmp292:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v82, v82, v73, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v253, v164
	v_mov_b32_e32 v253, v164
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s19
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v74, v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp294:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
.Ltmp295:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s34, v76, 31
.Ltmp296:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v252
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp298:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v83, v83, v73, s34
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v252, v165 :: v_dual_mov_b32 v252, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp300:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v74, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v74, v74, v78 :: v_dual_cndmask_b32 v73, 0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s19, v74, 31
.Ltmp304:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v84, v84, v73, s19
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off
	scratch_load_b32 v65, off, off offset:64
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s50, s98, s81
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v171, s75 :: v_dual_mov_b32 v170, s74
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s34, s50, s79
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v169, s73 :: v_dual_mov_b32 v168, s72
	v_dual_mov_b32 v167, s71 :: v_dual_mov_b32 v166, s70
	v_dual_mov_b32 v165, s69 :: v_dual_mov_b32 v164, s68
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0xd                            ; 100-byte Folded Reload
	scratch_load_b32 v66, off, off offset:68
	scratch_load_b64 v[67:68], off, off offset:72
	scratch_load_b32 v68, off, off offset:80
	scratch_load_b64 v[69:70], off, off offset:84
	scratch_load_b64 v[70:71], off, off offset:92
	scratch_load_b64 v[71:72], off, off offset:100
	scratch_load_b32 v72, off, off offset:108
	scratch_load_b64 v[73:74], off, off offset:112
	scratch_load_b64 v[74:75], off, off offset:120
	scratch_load_b64 v[75:76], off, off offset:136
	scratch_load_b64 v[76:77], off, off offset:128
	scratch_load_b64 v[77:78], off, off offset:144
	scratch_load_b64 v[78:79], off, off offset:152
	scratch_load_b64 v[79:80], off, off offset:160
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(15)
	v_or_b32_e32 v0, s98, v0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v65, s34, v65, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s3
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v66, s34, v66, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v67, s34, v67, 1
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v68, s34, v68, 1
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v69, s34, v69, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v70, s34, v70, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v71, s34, v71, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v72, s34, v72, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v73, s34, v73, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v74, s34, v74, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v75, s34, v75, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v76, s34, v76, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v77, s34, v77, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v78, s34, v78, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v79, s34, v79, 1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s83, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s83, v0
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v0, s34, v97, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s19
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s20
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s52
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s22
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s24
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s25
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v0, v0, s[88:91], 0 offen
	buffer_load_u16 v65, v65, s[88:91], 0 offen
	buffer_load_u16 v66, v66, s[88:91], 0 offen
	buffer_load_u16 v68, v68, s[88:91], 0 offen
	buffer_load_u16 v69, v69, s[88:91], 0 offen
	buffer_load_u16 v70, v70, s[88:91], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s27
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v74, 0x80000000, v74, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s30
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s31
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s33
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_u16 v72, v72, s[88:91], 0 offen
	buffer_load_u16 v75, v75, s[88:91], 0 offen
	buffer_load_u16 v73, v73, s[88:91], 0 offen
	buffer_load_u16 v77, v77, s[88:91], 0 offen
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	s_clause 0x5
	buffer_load_u16 v74, v74, s[88:91], 0 offen
	buffer_load_u16 v78, v78, s[88:91], 0 offen
	buffer_load_u16 v71, v71, s[88:91], 0 offen
	buffer_load_u16 v67, v67, s[88:91], 0 offen
	buffer_load_u16 v79, v79, s[88:91], 0 offen
	buffer_load_u16 v76, v76, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v154, v0
	s_waitcnt vmcnt(12)
	ds_store_b16 v154, v68 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v154, v72 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v154, v75 offset:3072
	ds_store_b16 v155, v65
	ds_store_b16 v155, v69 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v155, v73 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v155, v77 offset:3072
	ds_store_b16 v156, v66
	ds_store_b16 v156, v70 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v156, v74 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v156, v78 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v157, v67
	ds_store_b16 v157, v71 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v157, v76 offset:2048
	ds_store_b16 v157, v79 offset:3072
	v_add_nc_u32_e32 v0, 0, v161
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v185
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[122:125], v0 offset:2048
	ds_load_b128 v[126:129], v185 offset:2048
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[33:40], v[164:171]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[122:129], v[33:40], v[164:171]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[126:129], v187
	ds_load_b128 v[122:125], v186
	ds_load_b128 v[164:167], v186 offset:2048
	ds_load_b128 v[168:171], v187 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[122:129], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[164:171], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[126:129], v189
	ds_load_b128 v[122:125], v188
	ds_load_b128 v[164:167], v188 offset:2048
	ds_load_b128 v[168:171], v189 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[122:129], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[164:171], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[126:129], v191
	ds_load_b128 v[122:125], v190
	ds_load_b128 v[164:167], v190 offset:2048
	ds_load_b128 v[168:171], v191 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[122:129], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[164:171], v[57:64], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s98, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s83, v0
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s61, s1, s3
	s_and_b32 s56, s4, s3
	s_and_b32 s54, s5, s3
	s_and_b32 s51, s6, s3
	s_and_b32 s65, s7, s3
	s_and_b32 s60, s8, s3
	s_and_b32 s57, s9, s3
	s_and_b32 s53, s10, s3
	s_and_b32 s66, s11, s3
	s_and_b32 s63, s12, s3
	s_and_b32 s59, s13, s3
	s_and_b32 s55, s14, s3
	s_and_b32 s94, s15, s3
	s_and_b32 s64, s16, s3
	s_and_b32 s62, s17, s3
	s_and_b32 s58, s18, s3
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v98, off, off offset:228 ; 4-byte Folded Reload
	s_and_not1_b32 s35, s61, exec_lo
	s_and_not1_b32 s36, s56, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v98
	scratch_load_b32 v98, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s34, vcc_lo, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, exec_lo
	s_or_b32 s61, s35, s34
	s_and_not1_b32 s34, s51, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v98
	scratch_load_b32 v98, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s56, s36, s3
	s_and_not1_b32 s3, s54, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v0, v98
	scratch_load_b32 v98, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, exec_lo
	s_or_b32 s54, s3, s19
	s_and_not1_b32 s3, s65, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v0, v98
	scratch_load_b32 v98, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s51, s34, s20
	s_and_not1_b32 s20, s60, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v0, v98
	scratch_load_b32 v98, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s21, exec_lo
	s_or_b32 s65, s3, s19
	s_and_not1_b32 s3, s57, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v0, v98
	scratch_load_b32 v98, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s22, exec_lo
	s_or_b32 s60, s20, s21
	s_and_not1_b32 s20, s53, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v0, v98
	scratch_load_b32 v98, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s23, exec_lo
	s_or_b32 s57, s3, s19
	s_and_not1_b32 s3, s66, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v0, v98
	scratch_load_b32 v98, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s24, exec_lo
	s_or_b32 s53, s20, s21
	s_and_not1_b32 s20, s63, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v0, v98
	scratch_load_b32 v98, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s25, exec_lo
	s_or_b32 s66, s3, s19
	s_and_not1_b32 s3, s59, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v0, v98
	scratch_load_b32 v98, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s26, exec_lo
	s_or_b32 s63, s20, s21
	s_and_not1_b32 s20, s55, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v0, v98
	scratch_load_b32 v98, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s27, exec_lo
	s_or_b32 s59, s3, s19
	s_and_not1_b32 s3, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v0, v98
	scratch_load_b32 v98, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s28, exec_lo
	s_or_b32 s55, s20, s21
	s_and_not1_b32 s20, s64, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v0, v98
	scratch_load_b32 v98, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s29, exec_lo
	s_or_b32 s94, s3, s19
	s_and_not1_b32 s3, s62, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v0, v98
	scratch_load_b32 v98, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s30, exec_lo
	s_or_b32 s64, s20, s21
	s_and_not1_b32 s20, s58, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v0, v98
	scratch_load_b32 v98, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s31, exec_lo
	s_or_b32 s62, s3, s19
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v0, v98
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s58, s20, s21
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s97
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v98, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v0, v98
	scratch_load_b32 v98, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v0, v98
	scratch_load_b32 v98, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v0, v98
	scratch_load_b32 v98, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v0, v98
	scratch_load_b32 v98, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v0, v98
	scratch_load_b32 v98, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v0, v98
	scratch_load_b32 v98, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v0, v98
	scratch_load_b32 v98, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v0, v98
	scratch_load_b32 v98, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v0, v98
	scratch_load_b32 v98, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v0, v98
	scratch_load_b32 v98, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v0, v98
	scratch_load_b32 v98, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v0, v98
	scratch_load_b32 v98, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v0, v98
	scratch_load_b32 v98, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v0, v98
	scratch_load_b32 v98, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v0, v98
	scratch_load_b32 v98, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v0, v98
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v98, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v0, v98
	scratch_load_b32 v98, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s34, vcc_lo, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, s61
	s_and_b32 s34, s34, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v0, v98
	scratch_load_b32 v98, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s35
	s_and_not1_b32 s35, s61, exec_lo
	s_and_b32 s3, s3, s56
	s_or_b32 s61, s35, s34
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s34, s51, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v0, v98
	scratch_load_b32 v98, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s19, s36
	s_and_not1_b32 s36, s56, exec_lo
	s_and_b32 s19, s19, s54
	s_or_b32 s56, s36, s3
	s_and_not1_b32 s3, s54, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s3, s19
	s_and_not1_b32 s3, s65, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v0, v98
	scratch_load_b32 v98, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s51
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s51, s34, s20
	s_and_not1_b32 s20, s60, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v0, v98
	scratch_load_b32 v98, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s65
	s_and_b32 s19, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s65, s3, s19
	s_and_not1_b32 s3, s57, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v0, v98
	scratch_load_b32 v98, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s60
	s_and_b32 s21, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s60, s20, s21
	s_and_not1_b32 s20, s53, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v0, v98
	scratch_load_b32 v98, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s57
	s_and_b32 s19, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s57, s3, s19
	s_and_not1_b32 s3, s66, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v0, v98
	scratch_load_b32 v98, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s53
	s_and_b32 s21, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s53, s20, s21
	s_and_not1_b32 s20, s63, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v0, v98
	scratch_load_b32 v98, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s66
	s_and_b32 s19, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s66, s3, s19
	s_and_not1_b32 s3, s59, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v0, v98
	scratch_load_b32 v98, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s63
	s_and_b32 s21, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s63, s20, s21
	s_and_not1_b32 s20, s55, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v0, v98
	scratch_load_b32 v98, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s59
	s_and_b32 s19, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s3, s19
	s_and_not1_b32 s3, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v0, v98
	scratch_load_b32 v98, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s55
	s_and_b32 s21, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s55, s20, s21
	s_and_not1_b32 s20, s64, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v0, v98
	scratch_load_b32 v98, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s94
	s_and_b32 s19, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s3, s19
	s_and_not1_b32 s3, s62, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v0, v98
	scratch_load_b32 v98, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s64
	s_and_b32 s21, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s64, s20, s21
	s_and_not1_b32 s20, s58, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v0, v98
	scratch_load_b32 v98, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s62
	s_and_b32 s19, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s62, s3, s19
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v0, v98
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_and_b32 s33, s33, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s58, s20, s21
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v7, v8
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
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v65, off, off offset:420
	scratch_load_b32 v66, off, off offset:424
	scratch_load_b32 v67, off, off offset:428
	scratch_load_b32 v68, off, off offset:432
	scratch_load_b32 v69, off, off offset:436
	scratch_load_b32 v0, off, off offset:440
	v_readlane_b32 s65, v255, 0
.LBB0_16:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v33, 5, v65
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 0x80, v0
	v_and_b32_e32 v36, 12, v65
	v_lshrrev_b32_e32 v37, 2, v67
	v_add_nc_u32_e32 v35, 0, v68
	v_and_b32_e32 v33, 0x60, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v35, v[93:96]
	ds_store_b128 v35, v[85:88] offset:16
	v_add3_u32 v0, 0, v33, v0
	ds_store_b128 v35, v[89:92] offset:128
	ds_store_b128 v35, v[81:84] offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v37, v36
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v55, 4, v69
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s79, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v63, v34, v66
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v65, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v62, 4, v55
	v_or_b32_e32 v0, 62, v55
	v_or_b32_e32 v33, 60, v55
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v76, s78, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 58, v55
	v_or_b32_e32 v35, 56, v55
	v_or_b32_e32 v36, 54, v55
	v_or_b32_e32 v37, 52, v55
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s82, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v38, 50, v55
	v_or_b32_e32 v39, 48, v55
	v_or_b32_e32 v40, 46, v55
	v_or_b32_e32 v41, 44, v55
	v_or_b32_e32 v42, 42, v55
	v_or_b32_e32 v43, 40, v55
	v_or_b32_e32 v44, 38, v55
	v_or_b32_e32 v45, 36, v55
	v_or_b32_e32 v46, 34, v55
	v_or_b32_e32 v47, 32, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v68, null, v65, v65, v26
	v_div_scale_f32 v66, null, v65, v65, v25
	v_div_scale_f32 v70, null, v65, v65, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v68
	v_rcp_f32_e32 v67, v66
	v_div_scale_f32 v74, null, v65, v65, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v72, v70
	v_div_scale_f32 v75, s1, v26, v65, v26
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v71, vcc_lo, v25, v65, v25
	v_fma_f32 v64, -v68, v69, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v61, -v66, v67, 1.0
	v_div_scale_f32 v80, null, v65, v65, v30
	v_fma_f32 v78, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v64, v69
	v_fmac_f32_e32 v67, v61, v67
	v_div_scale_f32 v82, null, v65, v65, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v72, v78, v72 :: v_dual_mul_f32 v79, v75, v69
	v_mul_f32_e32 v73, v71, v67
	v_fma_f32 v78, -v74, v77, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v48, 30, v55
	v_or_b32_e32 v49, 28, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v76, -v68, v79, v75
	v_fma_f32 v64, -v66, v73, v71
	v_fmac_f32_e32 v77, v78, v77
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v50, 26, v55
	v_or_b32_e32 v51, 24, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v79, v76, v69
	v_div_scale_f32 v76, s3, v28, v65, v28
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v52, 22, v55
	v_or_b32_e32 v53, 20, v55
	v_or_b32_e32 v54, 18, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v78, v76, v77
	v_fmac_f32_e32 v73, v64, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v64, 2, v55
	v_or_b32_e32 v56, 16, v55
	v_or_b32_e32 v57, 14, v55
	v_or_b32_e32 v58, 12, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v73, v71
	v_div_scale_f32 v71, s2, v27, v65, v27
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v59, 10, v55
	v_or_b32_e32 v60, 8, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v67, v73
	v_mul_f32_e32 v67, v71, v72
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v73, null, v65, v65, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v25, v66, v65, v25
	v_fma_f32 v66, -v68, v79, v75
	v_fma_f32 v68, -v70, v67, v71
	v_rcp_f32_e32 v75, v73
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v61, 6, v55
	.loc	1 1044 28                       ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v65
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v69, v79
	v_fmac_f32_e32 v67, v68, v72
	v_rcp_f32_e32 v68, v80
	v_fma_f32 v69, -v74, v78, v76
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v66, v65, v26
	v_fma_f32 v66, -v70, v67, v71
	v_div_scale_f32 v71, null, v65, v65, v31
	v_fma_f32 v79, -v73, v75, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v72, v67
	v_fma_f32 v70, -v80, v68, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v66, v65, v27
	v_fmac_f32_e32 v68, v70, v68
	v_rcp_f32_e32 v70, v71
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s96, v60
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s96, v59
	v_cmp_gt_i32_e64 s8, s96, v58
	v_cmp_gt_i32_e64 s9, s96, v57
	v_cmp_gt_i32_e64 s10, s96, v56
	v_cmp_gt_i32_e64 s11, s96, v54
	v_cmp_gt_i32_e64 s12, s96, v53
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v71, v70, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s96, v52
	v_cmp_gt_i32_e64 s14, s96, v51
	v_cmp_gt_i32_e64 s15, s96, v50
	v_cmp_gt_i32_e64 s16, s96, v49
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v79, v70
	v_fmac_f32_e32 v78, v69, v77
	v_div_scale_f32 v69, s4, v29, v65, v29
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s96, v48
	v_cmp_gt_i32_e64 s18, s96, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v74, v78, v76
	v_div_scale_f32 v74, s2, v30, v65, v30
	v_div_scale_f32 v76, null, v65, v65, v32
	v_div_fmas_f32 v67, v67, v77, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v74, v68
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v81, v76
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s96, v46
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v67, v65, v28
	v_fma_f32 v66, -v80, v78, v74
	v_div_scale_f32 v67, s3, v31, v65, v31
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s96, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v78, v66, v68
	v_mul_f32_e32 v72, v69, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v76, v81, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s96, v44
	v_cmp_gt_i32_e64 s22, s96, v43
	v_cmp_gt_i32_e64 s23, s96, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v73, v72, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s96, v41
	v_cmp_gt_i32_e64 s25, s96, v40
	v_cmp_gt_i32_e64 s26, s96, v39
	v_cmp_gt_i32_e64 s27, s96, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v72, v77, v75
	v_div_scale_f32 v77, null, v65, v65, v17
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s96, v37
	v_cmp_gt_i32_e64 s29, s96, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v73, v72, v69
	v_rcp_f32_e32 v73, v77
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s96, v35
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v63, s65, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v75, v72
	v_fma_f32 v72, -v80, v78, v74
	s_mov_b32 vcc_lo, s2
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v63, v63, s96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v69, v65, v29
	v_div_fmas_f32 v68, v72, v68, v78
	v_rcp_f32_e32 v72, v82
	v_fma_f32 v80, -v77, v73, 1.0
	v_mul_f32_e32 v66, v67, v70
	v_div_scale_f32 v78, s2, v17, v65, v17
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v74, -v71, v66, v67
	v_div_fixup_f32 v30, v68, v65, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v82, v72, 1.0
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s5, v32, v65, v32
	v_fmac_f32_e32 v66, v74, v70
	v_fmac_f32_e32 v72, v69, v72
	v_mul_f32_e32 v68, v78, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v79, v81
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v71, v66, v67
	v_div_scale_f32 v71, null, v65, v65, v19
	v_fma_f32 v74, -v76, v75, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v67, v70, v66
	v_rcp_f32_e32 v69, v71
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v74, v81
	v_div_scale_f32 v74, s3, v18, v65, v18
	v_fma_f32 v70, -v77, v68, v78
	v_div_fixup_f32 v31, v66, v65, v31
	v_fma_f32 v67, -v76, v75, v79
	v_div_scale_f32 v76, null, v65, v65, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v71, v69, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v81, v75
	v_mul_f32_e32 v75, v74, v72
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v21
	v_div_fixup_f32 v32, v67, v65, v32
	v_fma_f32 v67, -v82, v75, v74
	v_fmac_f32_e32 v68, v70, v73
	v_rcp_f32_e32 v70, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v67, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v77, v68, v78
	v_div_scale_f32 v77, s4, v19, v65, v19
	v_div_fmas_f32 v66, v66, v73, v68
	v_rcp_f32_e32 v68, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v76, v70, 1.0
	v_div_scale_f32 v73, s2, v20, v65, v20
	v_div_fixup_f32 v17, v66, v65, v17
	v_fma_f32 v66, -v82, v75, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, null, v65, v65, v22
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v82, -v79, v68, 1.0
	v_mul_f32_e32 v80, v73, v70
	v_rcp_f32_e32 v81, v78
	v_div_fmas_f32 v66, v66, v72, v75
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v68, v82, v68 :: v_dual_mul_f32 v67, v77, v69
	v_fma_f32 v72, -v76, v80, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v66, v65, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v71, v67, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v78, v81, 1.0
	v_fmac_f32_e32 v80, v72, v70
	v_div_scale_f32 v72, s5, v22, v65, v22
	v_fmac_f32_e32 v67, v74, v69
	v_div_scale_f32 v74, s3, v21, v65, v21
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v75, null, v65, v65, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v71, v67, v77
	v_mul_f32_e32 v71, v74, v68
	v_div_scale_f32 v77, null, v65, v65, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v69, v67
	v_fma_f32 v67, -v76, v80, v73
	v_mul_f32_e32 v76, v72, v81
	v_fma_f32 v69, -v79, v71, v74
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v19, v66, v65, v19
	v_div_fmas_f32 v67, v67, v70, v80
	v_fma_f32 v70, -v78, v76, v72
	v_fmac_f32_e32 v71, v69, v68
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v73, v75
	v_rcp_f32_e32 v69, v77
	v_fmac_f32_e32 v76, v70, v81
	v_fma_f32 v66, -v79, v71, v74
	v_div_scale_f32 v79, null, v65, v65, v10
	v_div_fixup_f32 v20, v67, v65, v20
	v_div_scale_f32 v67, s2, v23, v65, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v66, v66, v68, v71
	v_fma_f32 v68, -v78, v76, v72
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v80, -v75, v73, 1.0
	v_fma_f32 v70, -v77, v69, 1.0
	v_div_scale_f32 v72, s3, v24, v65, v24
	v_div_fmas_f32 v68, v68, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v80, v73
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, null, v65, v65, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v68, v65, v22
	v_rcp_f32_e32 v68, v79
	v_div_scale_f32 v81, null, v65, v65, v12
	v_rcp_f32_e32 v74, v70
	v_div_fixup_f32 v21, v66, v65, v21
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v83, v81
	v_mul_f32_e32 v78, v72, v69
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v80, -v79, v68, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v77, v78, v72
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v68, v80, v68 :: v_dual_mul_f32 v71, v67, v73
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s4, v9, v65, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v75, v71, v67
	v_fmac_f32_e32 v71, v76, v73
	v_fma_f32 v76, -v70, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v11
	v_fmac_f32_e32 v74, v76, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v73, v71
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v71, -v77, v78, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v66, v74
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v73, s2, v10, v65, v10
	v_div_fixup_f32 v23, v67, v65, v23
	v_fma_f32 v80, -v70, v72, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v73, v68
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v72, v80, v74
	v_div_fmas_f32 v69, v71, v69, v78
	v_fma_f32 v71, -v79, v82, v73
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, s5, v11, v65, v11
	v_fma_f32 v66, -v70, v72, v66
	v_div_scale_f32 v70, null, v65, v65, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v77, v76
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v69, v65, v24
	v_fma_f32 v69, -v81, v83, 1.0
	v_div_fmas_f32 v66, v66, v74, v72
	v_fma_f32 v67, -v75, v78, v77
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v83, v69, v83
	v_div_scale_f32 v69, s3, v12, v65, v12
	v_fmac_f32_e32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	v_div_fixup_f32 v9, v66, v65, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v69, v83
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v70, v67, 1.0
	v_dual_fmac_f32 v82, v71, v68 :: v_dual_fmac_f32 v67, v74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v79, v82, v73
	v_div_scale_f32 v74, s2, v13, v65, v13
	v_div_scale_f32 v73, null, v65, v65, v14
	v_div_fmas_f32 v68, v71, v68, v82
	v_fma_f32 v71, -v75, v78, v77
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v66, v74, v67
	v_rcp_f32_e32 v75, v73
	v_div_fixup_f32 v10, v68, v65, v10
	v_div_fmas_f32 v71, v71, v76, v78
	v_fma_f32 v76, -v81, v72, v69
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v71, v65, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v76, v83
	v_div_scale_f32 v71, null, v65, v65, v15
	v_fma_f32 v76, -v70, v66, v74
	v_fma_f32 v68, -v73, v75, 1.0
	v_fma_f32 v69, -v81, v72, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v71
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v66, v76, v67
	v_fmac_f32_e32 v75, v68, v75
	v_div_fmas_f32 v69, v69, v83, v72
	v_div_scale_f32 v68, s4, v14, v65, v14
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v76, null, v65, v65, v16
	v_div_fixup_f32 v12, v69, v65, v12
	v_fma_f32 v69, -v70, v66, v74
	v_fma_f32 v74, -v71, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v76
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v69, v67, v66
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, null, v65, v65, v2
	v_div_scale_f32 v67, null, v65, v65, v1
	v_div_scale_f32 v69, s2, v15, v65, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v80, v74
	v_div_fixup_f32 v13, v66, v65, v13
	v_fma_f32 v66, -v76, v78, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v81, s4, v1, v65, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v82, -v74, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v82, v80
	v_mul_f32_e32 v72, v68, v75
	v_div_scale_f32 v82, s5, v2, v65, v2
	v_fma_f32 v70, -v73, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v70, v75
	v_rcp_f32_e32 v70, v67
	v_fma_f32 v68, -v73, v72, v68
	v_mul_f32_e32 v73, v69, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v68, v68, v75, v72
	v_fma_f32 v79, -v67, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v71, v73, v69
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v68, v65, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, null, v65, v65, v3
	v_fmac_f32_e32 v73, v72, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v83, v79
	v_fmac_f32_e32 v78, v66, v78
	v_div_scale_f32 v66, s3, v16, v65, v16
	v_fma_f32 v68, -v71, v73, v69
	v_mul_f32_e32 v75, v66, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v77, v73
	v_div_scale_f32 v73, null, v65, v65, v4
	v_fma_f32 v72, -v76, v75, v66
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v15, v68, v65, v15
	v_div_scale_f32 v77, null, v65, v65, v8
	v_fmac_f32_e32 v75, v72, v78
	v_fma_f32 v72, -v79, v83, 1.0
	v_mul_f32_e32 v71, v82, v80
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v76, v75, v66
	v_dual_fmac_f32 v83, v72, v83 :: v_dual_mul_f32 v84, v81, v70
	v_div_scale_f32 v72, s2, v3, v65, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v78, v75
	v_rcp_f32_e32 v75, v73
	v_fma_f32 v69, -v67, v84, v81
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v16, v66, v65, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v73, v75, 1.0
	v_fmac_f32_e32 v84, v69, v70
	v_fma_f32 v69, -v74, v71, v82
	v_fmac_f32_e32 v75, v68, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v67, v84, v81
	v_fmac_f32_e32 v71, v69, v80
	v_mul_f32_e32 v69, v72, v83
	v_div_scale_f32 v68, null, v65, v65, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v70, v84
	v_fma_f32 v70, -v74, v71, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v79, v69, v72
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v1, v67, v65, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v80, v71
	v_fmac_f32_e32 v69, v74, v83
	v_div_scale_f32 v67, null, v65, v65, v5
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v70, v65, v2
	v_fma_f32 v66, -v79, v69, v72
	v_div_scale_f32 v70, null, v65, v65, v7
	v_rcp_f32_e32 v79, v77
	v_rcp_f32_e32 v72, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v83, v69
	v_rcp_f32_e32 v69, v67
	v_rcp_f32_e32 v74, v70
	v_div_scale_f32 v71, vcc_lo, v4, v65, v4
	v_div_fixup_f32 v3, v66, v65, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v83, -v77, v79, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v68, v72, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	v_fma_f32 v81, -v70, v74, 1.0
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s5, v8, v65, v8
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s2, v5, v65, v5
	v_fma_f32 v80, -v73, v76, v71
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s4, v7, v65, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v66, v69
	v_fmac_f32_e32 v76, v80, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v83, v79 :: v_dual_mul_f32 v85, v81, v74
	v_fma_f32 v80, -v67, v82, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v73, v76, v71
	v_fmac_f32_e32 v82, v80, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v70, v85, v81
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, s3, v6, v65, v6
	v_fma_f32 v66, -v67, v82, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v80, v74
	v_div_fmas_f32 v71, v71, v75, v76
	v_mul_f32_e32 v84, v78, v72
	s_mov_b32 vcc_lo, s2
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s96, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v77, v86, v83
	v_div_fmas_f32 v66, v66, v69, v82
	v_fma_f32 v73, -v68, v84, v78
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s96, v64
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v55, v63, v55, 2
	v_add_lshl_u32 v64, v63, v64, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v84, v73, v72
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v86, v67, v79
	v_fma_f32 v67, -v70, v85, v81
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v68, v84, v78
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v77, v86, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	buffer_store_b32 v25, v55, s[76:79], 0 offen
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v72, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s96, v62
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v62, v63, v62, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s96, v61
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s2, s0, s4
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v25, v63, v61, 2
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	s_clause 0x1
	buffer_store_b32 v26, v64, s[76:79], 0 offen
	buffer_store_b32 v27, v62, s[76:79], 0 offen
	v_add_lshl_u32 v26, v63, v60, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v63, v59, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v55, v63, v58, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v28, v25, s[76:79], 0 offen
	buffer_store_b32 v29, v26, s[76:79], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v63, v57, 2
	v_cndmask_b32_e64 v55, 0x80000000, v55, s3
	v_add_lshl_u32 v26, v63, v56, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[76:79], 0 offen
	buffer_store_b32 v31, v55, s[76:79], 0 offen
	v_add_lshl_u32 v27, v63, v54, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v63, v53, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v32, v25, s[76:79], 0 offen
	buffer_store_b32 v17, v26, s[76:79], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v63, v52, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_clause 0x1
	buffer_store_b32 v18, v27, s[76:79], 0 offen
	buffer_store_b32 v19, v28, s[76:79], 0 offen
	v_add_lshl_u32 v18, v63, v51, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v63, v50, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s14
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v63, v49, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s15
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v20, v17, s[76:79], 0 offen
	buffer_store_b32 v21, v18, s[76:79], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s16
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v63, v48, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	v_add_lshl_u32 v18, v63, v47, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v19, s[76:79], 0 offen
	buffer_store_b32 v23, v25, s[76:79], 0 offen
	v_add_lshl_u32 v19, v63, v46, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v63, v45, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s19
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v24, v17, s[76:79], 0 offen
	buffer_store_b32 v9, v18, s[76:79], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s20
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v63, v44, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	s_clause 0x1
	buffer_store_b32 v10, v19, s[76:79], 0 offen
	buffer_store_b32 v11, v20, s[76:79], 0 offen
	v_add_lshl_u32 v10, v63, v43, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v63, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v63, v41, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s23
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s24
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v63, v40, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v10, v63, v39, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[76:79], 0 offen
	buffer_store_b32 v15, v17, s[76:79], 0 offen
	v_add_lshl_u32 v11, v63, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v12, v63, v37, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v71, v65, v4
	v_div_fixup_f32 v5, v66, v65, v5
	v_div_fixup_f32 v6, v68, v65, v6
	v_div_fixup_f32 v7, v67, v65, v7
	v_div_fixup_f32 v8, v69, v65, v8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s28
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_add_lshl_u32 v1, v63, v36, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s96, v34
	v_cmp_gt_i32_e32 vcc_lo, s96, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v2, v63, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s96, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s0, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v63, v34, 2
	v_add_lshl_u32 v9, v63, v33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v63, v0, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s1
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[76:79], 0 offen
	buffer_store_b32 v5, v2, s[76:79], 0 offen
	buffer_store_b32 v6, v3, s[76:79], 0 offen
	buffer_store_b32 v7, v9, s[76:79], 0 offen
	buffer_store_b32 v8, v0, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp305:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 448
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 448
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24152
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 448
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
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
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
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
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 448
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 111
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
