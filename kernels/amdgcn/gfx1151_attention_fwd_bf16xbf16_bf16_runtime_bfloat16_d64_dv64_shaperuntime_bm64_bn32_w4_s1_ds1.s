	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
	s_load_b32 s97, s[0:1], 0x5c
	v_mov_b32_e32 v65, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s99, 0
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
	s_cselect_b32 s98, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v12, 20, v2
	s_cselect_b32 s45, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s80
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s96, s2, 6
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
	v_mad_u64_u32 v[109:110], null, s97, v2, v[1:2]
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
	v_or_b32_e32 v0, s96, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s96, v3
	v_or_b32_e32 v3, s96, v4
	v_or_b32_e32 v4, s96, v5
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s96, v6
	v_or_b32_e32 v6, s96, v7
	v_or_b32_e32 v7, s96, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s96, v9
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
	v_or_b32_e32 v9, s96, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s7, s3
	s_add_i32 s6, s6, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[38:39], null, s97, 10, v[109:110]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s6
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s5, s3, s82
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s2, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[39:40], null, s97, 12, v[109:110]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[42:43], null, s97, 18, v[109:110]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[36:37], null, s97, 6, v[109:110]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s35, s7, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s81
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s82, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s6, s2
	s_sub_i32 s7, 0, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[40:41], null, s97, 14, v[109:110]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s6
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[43:44], null, s97, 20, v[109:110]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s96, v11
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v41, s97, 4, v109
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s82, v7
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v34, s97, 1, v109
	v_mad_u64_u32 v[44:45], null, s97, 22, v[109:110]
	v_lshl_add_u32 v35, s97, 2, v109
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v0
	v_or_b32_e32 v12, s96, v12
	v_or_b32_e32 v18, 32, v0
	v_or_b32_e32 v19, 34, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s82, v10
	v_mov_b32_e32 v10, v42
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, 38, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, 40, v0
	v_or_b32_e32 v22, 42, v0
	v_or_b32_e32 v23, 44, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, 46, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, 48, v0
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
	v_or_b32_e32 v26, 50, v0
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
	s_add_i32 s65, s5, s96
	v_mov_b32_e32 v7, v39
	s_mul_i32 s64, s65, s97
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s82, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s64, v109
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s82, v4
	v_mov_b32_e32 v4, v36
	.loc	1 790 61 is_stmt 0              ; attention.py:790:61
	v_cmp_gt_i32_e64 s44, s97, v1
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v27, 52, v0
	v_or_b32_e32 v28, 54, v0
	v_or_b32_e32 v29, 56, v0
	v_or_b32_e32 v30, 58, v0
	v_or_b32_e32 v31, 60, v0
	v_or_b32_e32 v32, 62, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s82, v2
	v_cmp_gt_i32_e64 s12, s82, v8
	v_cmp_gt_i32_e64 s14, s82, v11
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v0, 1, v33
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:92
	scratch_store_b64 off, v[10:11], off offset:112
	v_dual_mov_b32 v8, v40 :: v_dual_mov_b32 v11, v43
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[45:46], null, s97, 24, v[109:110]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s82, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s64, v34, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v37, s97, 3, v109
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s5, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s64, v35, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s96, v13
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s82, v12
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s6, s44
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[8:9], off offset:100
	scratch_store_b64 off, v[11:12], off offset:120
	v_mov_b32_e32 v12, v44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s82, v5
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v34, off offset:64
	scratch_store_b32 off, v35, off offset:68
	scratch_store_b64 off, v[4:5], off offset:72
	scratch_store_b32 off, v37, off offset:80
	v_add_lshl_u32 v4, s64, v36, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[46:47], null, s97, 26, v[109:110]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s7, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v5, s64, v37, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s8, s44
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s96, v14
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s82, v13
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s64, v38, 1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v41, off offset:108
	scratch_store_b64 off, v[12:13], off offset:128
	v_mov_b32_e32 v13, v45
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s9, s44
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[47:48], null, s97, 28, v[109:110]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s64, v39, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s10, s44
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s82, v9
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v8, s64, v40, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s96, v15
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s82, v14
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s11, s44
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[13:14], off offset:136 ; 8-byte Folded Spill
	v_mov_b32_e32 v14, v46
	v_add_lshl_u32 v9, s64, v41, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[48:49], null, s97, 30, v[109:110]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s12, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, s64, v42, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s13, s44
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s96, v16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s82, v15
	v_cmp_gt_i32_e32 vcc_lo, s82, v28
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v11, s64, v43, 1
	scratch_store_b64 off, v[14:15], off offset:144 ; 8-byte Folded Spill
	v_mov_b32_e32 v15, v47
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s14, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, s64, v44, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s46, s97, 54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s96, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s15, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, s64, v45, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s82, v16
	v_cmp_gt_i32_e64 s4, s82, v31
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s16, s44
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[15:16], off offset:152 ; 8-byte Folded Spill
	v_add_lshl_u32 v31, v33, s46, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s44
	v_mov_b32_e32 v16, v48
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, s64, v46, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s17, s44
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s82, v17
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v15, s64, v47, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s18, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s63, s97, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s82, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	scratch_store_b64 off, v[16:17], off offset:160 ; 8-byte Folded Spill
	v_add_lshl_u32 v16, s64, v48, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s19, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s61, s97, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s82, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v17, v33, s63, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s20, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s59, s97, 36
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v18, v33, s61, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s21, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s97, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s82, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v19, v33, s59, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s22, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s97, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s82, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s58, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s23, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s97, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s82, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s57, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s24, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s97, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s82, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s55, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s25, s44
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s97, 46
	s_mul_i32 s52, s97, 48
	s_mul_i32 s48, s97, 50
	s_mul_i32 s49, s97, 52
	s_mul_i32 s51, s97, 56
	s_mul_i32 s50, s97, 58
	s_mul_i32 s47, s97, 60
	s_mul_i32 s62, s97, 62
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s82, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v23, v33, s54, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s26, s44
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s82, v25
	v_cmp_gt_i32_e64 s30, s82, v26
	v_cmp_gt_i32_e64 s31, s82, v27
	v_cmp_gt_i32_e64 s33, s82, v29
	v_cmp_gt_i32_e64 s34, s82, v30
	v_cmp_gt_i32_e64 s2, s82, v32
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
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s27, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v34, 1, v1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s28, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 0x90, v33
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s29, s44
	s_and_b32 s4, s4, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s33, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, v33, v34
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s30, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s34, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v34, 0x120, v33
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s5, s31, s44
	s_and_b32 vcc_lo, s2, s44
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	s_and_b32 s41, s41, 0xffff
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_add_nc_u32 v175, 0, v34
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
	s_xor_b32 s2, s60, s56
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v174, 0, v33
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s56
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v35, 0x240, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s6
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s4, s83, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v33, 0x360, v33
	v_add_nc_u32_e32 v176, 0, v35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s4, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v177, 0, v33
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 27
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v174, v0
	s_waitcnt vmcnt(27)
	ds_store_b16 v174, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v174, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v174, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v174, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v174, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v174, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v174, v26 offset:7168
	ds_store_b16 v175, v2
	ds_store_b16 v175, v6 offset:1024
	ds_store_b16 v175, v10 offset:2048
	ds_store_b16 v175, v14 offset:3072
	ds_store_b16 v175, v18 offset:4096
	ds_store_b16 v175, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v175, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v175, v29 offset:7168
	ds_store_b16 v176, v3
	ds_store_b16 v176, v7 offset:1024
	ds_store_b16 v176, v11 offset:2048
	ds_store_b16 v176, v15 offset:3072
	ds_store_b16 v176, v19 offset:4096
	ds_store_b16 v176, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v176, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v176, v30 offset:7168
	ds_store_b16 v177, v4
	ds_store_b16 v177, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v177, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v177, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v177, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v177, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v177, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v177, v32 offset:7168
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v36
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s100, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v0, 0, 1, s45
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v0
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	v_lshlrev_b32_e32 v19, 2, v65
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s99, s100
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v0, 2, v65
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s96, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s96, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s83, s2
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
	s_and_b32 s99, s4, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s100, s100, s2
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v0, 0, 1, s45
	s_and_not1_b32 vcc_lo, exec_lo, s45
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v0
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s96, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s83, s2
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
	s_min_i32 s100, s100, s2
	v_lshlrev_b32_e32 v19, 2, v65
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s99, s100
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr0
.LBB0_7:                                ; %Flow220
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s79, s[0:1], 0x64
	v_and_b32_e32 v69, 16, v65
	v_and_b32_e32 v66, 15, v65
	v_and_b32_e32 v68, 0x60, v65
	v_and_b32_e32 v67, 64, v65
	s_and_not1_b32 vcc_lo, exec_lo, s8
	v_cmp_eq_u32_e64 s2, 0, v69
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v0, 7, v65
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v2, 7, v66
	v_lshlrev_b32_e32 v3, 6, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v5, 4, v0
	v_lshrrev_b32_e32 v6, 4, v65
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v7, 8, v66
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v8, 1, v67
	v_or3_b32 v3, v2, v3, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v6, 2, v6
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v4, 1, v65
	v_xad_u32 v17, v3, 64, 0
	v_xad_u32 v18, 0x50, v3, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v6, v6, v7, v8
	v_xad_u32 v7, 0x60, v3, 0
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v13, 0, v3
	v_xad_u32 v14, v3, 16, 0
	v_xad_u32 v15, v3, 32, 0
	v_xad_u32 v16, v3, 48, 0
	v_xad_u32 v3, 0x70, v3, 0
	ds_load_b128 v[41:44], v17
	ds_load_b128 v[45:48], v18
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[53:56], v3
	v_lshrrev_b32_e32 v3, 2, v69
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v7, 3, v66
	v_or_b32_e32 v182, v5, v2
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v9, 3, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v180, v6, v3, v7
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v6, 5, v68
	v_mov_b32_e32 v105, 0
	s_xor_b32 s8, s3, s80
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_load_b128 s[20:23], s[0:1], 0x6c
	v_or_b32_e32 v3, v6, v3
	s_ashr_i32 s8, s8, 31
	s_cvt_u32_f32 s7, s7
	s_xor_b32 s9, s35, s8
	v_xor_b32_e32 v12, v9, v4
	v_or3_b32 v181, v3, v7, v2
	v_and_b32_e32 v2, 60, v4
	v_lshrrev_b32_e32 v3, 3, v68
	v_mov_b32_e32 v104, 0
	s_sub_i32 s28, s9, s8
	s_sub_i32 s8, 0, s5
	v_lshl_or_b32 v2, v68, 4, v2
	s_mul_i32 s9, s28, s80
	s_mul_i32 s8, s8, s7
	s_load_b32 s80, s[0:1], 0x7c
	s_sub_i32 s3, s3, s9
	v_xor_b32_e32 v2, v2, v3
	v_lshlrev_b32_e32 v3, 6, v65
	s_mul_hi_u32 s8, s7, s8
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v10, 6, v1
	v_lshrrev_b32_e32 v11, 3, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_and_or_b32 v183, v3, 64, v2
	v_and_b32_e32 v2, 48, v9
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v12, 48, v12
	v_mov_b32_e32 v57, 0
	s_abs_i32 s9, s3
	v_lshl_or_b32 v0, v0, 6, v2
	v_bfe_i32 v2, v65, 3, 1
	s_add_i32 s7, s7, s8
	v_or3_b32 v179, v10, v11, v12
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s3, 31
	v_and_b32_e32 v2, 0x210, v2
	s_ashr_i32 s6, s6, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s10, s7, s5
	s_xor_b32 s6, s8, s6
	s_sub_i32 s8, s9, s10
	v_xor_b32_e32 v184, v0, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, s96, v6
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	ds_load_b128 v[25:28], v13
	ds_load_b128 v[29:32], v14
	ds_load_b128 v[33:36], v15
	ds_load_b128 v[37:40], v16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 48, v0
	v_or_b32_e32 v11, 40, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s8, s5
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b64 s[84:85], s[0:1], 0x30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s82, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 32, v0
	v_or_b32_e32 v4, 16, v0
	v_or_b32_e32 v5, 52, v0
	v_or_b32_e32 v7, 36, v0
	v_or_b32_e32 v8, 20, v0
	v_or_b32_e32 v9, 4, v0
	v_or_b32_e32 v10, 56, v0
	v_or_b32_e32 v12, 24, v0
	v_or_b32_e32 v13, 8, v0
	v_or_b32_e32 v14, 60, v0
	v_or_b32_e32 v15, 44, v0
	v_or_b32_e32 v16, 28, v0
	v_or_b32_e32 v17, 12, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s82, v11
	v_dual_mov_b32 v62, v57 :: v_dual_add_nc_u32 v79, s39, v11
	v_cmp_gt_i32_e64 s16, s82, v2
	v_dual_mov_b32 v64, v57 :: v_dual_add_nc_u32 v81, s39, v2
	v_dual_mov_b32 v11, v57 :: v_dual_and_b32 v2, 31, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v69, off offset:484
	scratch_store_b32 off, v65, off offset:468
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v69, s39, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s23, v6
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v71, s39, v13
	s_cselect_b32 s5, s9, s7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[121:122], null, s80, v2, v[0:1]
	v_lshlrev_b32_e32 v0, 2, v2
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s5, s6
	scratch_store_b32 off, v2, off offset:168 ; 4-byte Folded Spill
	s_sub_i32 s5, s5, s6
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s6, s28, s81
	v_lshrrev_b32_e32 v2, 2, v68
	s_add_i32 s81, s5, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s82, v13
	v_mov_b32_e32 v13, v57
	v_lshl_or_b32 v0, v68, 3, v0
	v_cmp_gt_i32_e64 s15, s82, v15
	v_dual_mov_b32 v21, v57 :: v_dual_add_nc_u32 v80, s39, v15
	v_mov_b32_e32 v15, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v202, v0, v2
	v_mov_b32_e32 v0, 0x5410
	v_xor_b32_e32 v203, v19, v2
	v_mov_b32_e32 v2, 0x7632
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v204, 4, v67
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s82, v4
	v_cndmask_b32_e64 v0, 0x1054, v0, s2
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v73, s39, v4
	v_cndmask_b32_e64 v2, 0x3276, v2, s2
	v_cmp_gt_i32_e64 s12, s82, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v0, 8, v0
	v_dual_mov_b32 v60, v57 :: v_dual_add_nc_u32 v77, s39, v3
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s79, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 0x540054, v0
	v_dual_mov_b32 v59, v57 :: v_dual_add_nc_u32 v70, s39, v9
	v_and_b32_e32 v2, 0x760076, v2
	v_mov_b32_e32 v193, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v0, 4, v0
	v_dual_mov_b32 v61, v57 :: v_dual_add_nc_u32 v72, s39, v17
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[3:4], null, s79, v204, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v20, v57 :: v_dual_and_b32 v205, 0x5040504, v0
	v_xor_b32_e32 v0, 16, v182
	v_mov_b32_e32 v195, 0xff800000
	v_lshl_or_b32 v1, v2, 4, v2
	v_dual_mov_b32 v63, v57 :: v_dual_add_nc_u32 v74, s39, v8
	v_dual_mov_b32 v22, v57 :: v_dual_add_nc_u32 v207, 0, v0
	v_xor_b32_e32 v0, 32, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v206, 0x7060706, v1
	v_lshl_or_b32 v1, v66, 9, v19
	v_dual_mov_b32 v58, v57 :: v_dual_add_nc_u32 v75, s39, v12
	v_add_nc_u32_e32 v208, 0, v0
	v_xor_b32_e32 v0, 48, v182
	v_dual_mov_b32 v197, 0xff800000 :: v_dual_add_nc_u32 v76, s39, v16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s82, v17
	v_mov_b32_e32 v17, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v24, v57 :: v_dual_add_nc_u32 v209, 0, v0
	v_xor_b32_e32 v0, 64, v182
	v_dual_mov_b32 v199, 0xff800000 :: v_dual_add_nc_u32 v78, s39, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:472
	scratch_store_b32 off, v19, off offset:488
	v_dual_mov_b32 v19, v57 :: v_dual_add_nc_u32 v210, 0, v0
	v_xor_b32_e32 v0, 0x50, v182
	v_dual_mov_b32 v23, v57 :: v_dual_add_nc_u32 v82, s39, v5
	v_dual_mov_b32 v18, v57 :: v_dual_add_nc_u32 v83, s39, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v211, 0, v0
	v_xor_b32_e32 v0, 0x60, v182
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_add_nc_u32 v84, s39, v14
	v_cmp_gt_i32_e64 s5, s82, v9
	v_dual_mov_b32 v9, v57 :: v_dual_add_nc_u32 v212, 0, v0
	v_mov_b32_e32 v191, 0xff800000
	v_xor_b32_e32 v0, 0x70, v182
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s101, s20, 0x3fb8aa3b
	v_mov_b32_e32 v215, 0xff800000
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s20, s23, s96
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s21, s28, s21
	v_add_nc_u32_e32 v213, 0, v0
	v_xor_b32_e32 v0, 0x420, v202
	v_writelane_b32 v255, s65, 0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s82, v8
	v_cmp_gt_i32_e64 s10, s82, v12
	v_cmp_gt_i32_e64 s11, s82, v16
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:172
	scratch_store_b32 off, v67, off offset:476
	v_mov_b32_e32 v119, 0xff800000
	v_cmp_gt_i32_e64 s13, s82, v7
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v202
	v_cmp_gt_i32_e64 s17, s82, v5
	v_cmp_gt_i32_e64 s18, s82, v10
	v_cmp_gt_i32_e64 s19, s82, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v237, v1 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v68, off offset:480 ; 4-byte Folded Spill
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_mov_b32 v10, v57
	v_mov_b32_e32 v12, v57
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc60, v202
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v7, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v115, 0xff800000 :: v_dual_add_nc_u32 v0, 0, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v187, s23, 2, v121
	v_lshl_add_u32 v188, s23, 3, v121
	v_lshl_add_u32 v189, s23, 4, v121
	v_lshl_add_u32 v190, s23, 5, v121
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v180
	v_mov_b32_e32 v120, 0xff800000
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_mov_b32 v169, 0xff800000
	v_mov_b32_e32 v116, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v114, 0xff800000
	v_mov_b32_e32 v112, 0xff800000
	v_mov_b32_e32 v168, 0xff800000
	v_mov_b16_e64 v217.l, 0
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v180
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s22
	v_mov_b32_e32 v113, 0xff800000
	s_add_i32 s102, s21, s20
	s_mov_b32 s68, 0
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s81, s81, s83
	s_and_b32 s89, s25, 0xffff
	s_mov_b32 s88, s24
	s_mov_b32 s91, 0x31027000
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v180
	v_mov_b32_e32 v111, 0xff800000
	s_mov_b32 s90, 0x7ffffffe
	s_add_i32 s102, s102, s3
	s_and_b32 s85, s85, 0xffff
	v_add_nc_u32_e32 v0, 0, v0
	s_lshl_b32 s103, s79, 1
	s_lshl_b32 s104, s79, 3
	s_lshl_b32 vcc_hi, s79, 4
	s_and_b32 s93, s27, 0xffff
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v180
	s_mov_b32 s92, s26
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	v_add_nc_u32_e32 v0, 0, v0
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v180
	s_mov_b32 s78, 0x76543210
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v2, v57
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v8, v57
	v_mov_b32_e32 v192, 0xff800000
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v180
	v_mov_b32_e32 v194, 0xff800000
	v_mov_b32_e32 v198, 0xff800000
	v_mov_b32_e32 v196, 0xff800000
	v_mov_b32_e32 v200, 0xff800000
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v250, 0xff800000
	v_mov_b32_e32 v150, 0xff800000
	v_mov_b32_e32 v166, 0xff800000
	v_mov_b32_e32 v110, 0xff800000
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v180
	v_mov_b32_e32 v216, 0xff800000
	v_mov_b32_e32 v214, 0xff800000
	v_mov_b32_e32 v122, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[123:124], null, s23, 12, v[121:122]
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v180
	v_mad_u64_u32 v[124:125], null, s23, 20, v[121:122]
	v_mad_u64_u32 v[125:126], null, s23, 24, v[121:122]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v0
	v_mad_u64_u32 v[126:127], null, s23, 28, v[121:122]
	v_mad_u64_u32 v[127:128], null, s23, 36, v[121:122]
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v180
	v_mad_u64_u32 v[128:129], null, s23, 40, v[121:122]
	v_mad_u64_u32 v[129:130], null, s23, 44, v[121:122]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v0
	v_mad_u64_u32 v[130:131], null, s23, 48, v[121:122]
	v_mad_u64_u32 v[131:132], null, s23, 52, v[121:122]
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v180
	v_mad_u64_u32 v[132:133], null, s23, 56, v[121:122]
	v_mad_u64_u32 v[133:134], null, s23, 60, v[121:122]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v180
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v180
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x78, v180
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x220, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x440, v203
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x660, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v181
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v181
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v238, 0, v0
	v_xor_b32_e32 v0, 40, v181
	v_add_nc_u32_e32 v239, 0, v0
	v_xor_b32_e32 v0, 48, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v240, 0, v0
	v_xor_b32_e32 v0, 56, v181
	v_add_nc_u32_e32 v241, 0, v0
	v_xor_b32_e32 v0, 64, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v242, 0, v0
	v_xor_b32_e32 v0, 0x48, v181
	v_add_nc_u32_e32 v243, 0, v0
	v_xor_b32_e32 v0, 0x50, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v244, 0, v0
	v_xor_b32_e32 v0, 0x58, v181
	v_add_nc_u32_e32 v245, 0, v0
	v_xor_b32_e32 v0, 0x60, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v246, 0, v0
	v_xor_b32_e32 v0, 0x68, v181
	v_add_nc_u32_e32 v247, 0, v0
	v_xor_b32_e32 v0, 0x70, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v248, 0, v0
	v_xor_b32_e32 v0, 0x78, v181
	v_add_nc_u32_e32 v249, 0, v0
	v_xor_b32_e32 v0, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v251, 0, v0
	v_xor_b32_e32 v0, 8, v1
	v_add_nc_u32_e32 v252, 0, v0
	v_xor_b32_e32 v0, 12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v253, 0, v0
	v_xor_b32_e32 v0, 16, v1
	v_add_nc_u32_e32 v254, 0, v0
	v_xor_b32_e32 v0, 20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v178, 0, v0
	v_xor_b32_e32 v0, 24, v1
	v_add_nc_u32_e32 v173, 0, v0
	v_xor_b32_e32 v0, 28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v172, 0, v0
	v_xor_b32_e32 v0, 32, v1
	v_add_nc_u32_e32 v171, 0, v0
	v_xor_b32_e32 v0, 36, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v170, 0, v0
	v_xor_b32_e32 v0, 40, v1
	v_add_nc_u32_e32 v151, 0, v0
	v_xor_b32_e32 v0, 44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v152, 0, v0
	v_xor_b32_e32 v0, 48, v1
	v_add_nc_u32_e32 v153, 0, v0
	v_xor_b32_e32 v0, 52, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v154, 0, v0
	v_xor_b32_e32 v0, 56, v1
	v_add_nc_u32_e32 v155, 0, v0
	v_xor_b32_e32 v0, 60, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v1, v57 :: v_dual_add_nc_u32 v156, 0, v0
	v_xor_b32_e32 v0, 0x810, v183
	v_add_nc_u32_e32 v157, 0, v0
	v_xor_b32_e32 v0, 0x1020, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v158, 0, v0
	v_xor_b32_e32 v0, 0x1830, v183
	v_add_nc_u32_e32 v159, 0, v0
	v_xor_b32_e32 v0, 16, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v160, 0, v0
	v_xor_b32_e32 v0, 32, v179
	v_add_nc_u32_e32 v161, 0, v0
	v_xor_b32_e32 v0, 48, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v162, 0, v0
	v_xor_b32_e32 v0, 16, v184
	v_add_nc_u32_e32 v163, 0, v0
	v_xor_b32_e32 v0, 32, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v164, 0, v0
	v_xor_b32_e32 v0, 48, v184
	v_add_nc_u32_e32 v165, 0, v0
	v_xor_b32_e32 v0, 0x420, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v201, 0, v0
	v_xor_b32_e32 v0, 0x430, v184
	v_add_nc_u32_e32 v185, 0, v0
	v_xor_b32_e32 v0, 0x410, v184
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v186, 0, v0
	v_subrev_nc_u32_e32 v0, s37, v69
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v70
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v71
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v72
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v73
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v74
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v75
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v76
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v77
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v78
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v79
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v80
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v81
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v82
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v83
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v84
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:400
	scratch_store_b32 off, v69, off offset:276
	v_add_nc_u32_e32 v0, s38, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:404
	scratch_store_b32 off, v70, off offset:280
	v_add_nc_u32_e32 v0, s38, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:408
	scratch_store_b32 off, v71, off offset:284
	v_add_nc_u32_e32 v0, s38, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:412
	scratch_store_b32 off, v72, off offset:288
	v_add_nc_u32_e32 v0, s38, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:416
	scratch_store_b32 off, v73, off offset:292
	v_add_nc_u32_e32 v0, s38, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:420
	scratch_store_b32 off, v74, off offset:296
	v_add_nc_u32_e32 v0, s38, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:424
	scratch_store_b32 off, v75, off offset:300
	v_add_nc_u32_e32 v0, s38, v75
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:428
	scratch_store_b32 off, v76, off offset:304
	v_add_nc_u32_e32 v0, s38, v76
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:432
	scratch_store_b32 off, v77, off offset:308
	v_add_nc_u32_e32 v0, s38, v77
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:436
	scratch_store_b32 off, v78, off offset:312
	v_add_nc_u32_e32 v0, s38, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:440
	scratch_store_b32 off, v79, off offset:316
	v_add_nc_u32_e32 v0, s38, v79
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:444
	scratch_store_b32 off, v80, off offset:320
	v_add_nc_u32_e32 v0, s38, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:448
	scratch_store_b32 off, v81, off offset:324
	v_add_nc_u32_e32 v0, s38, v81
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:452
	scratch_store_b32 off, v82, off offset:328
	v_add_nc_u32_e32 v0, s38, v82
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:456
	scratch_store_b32 off, v83, off offset:332
	v_add_nc_u32_e32 v0, s38, v83
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:460
	scratch_store_b32 off, v84, off offset:336
	v_add_nc_u32_e32 v0, s38, v84
	v_mov_b32_e32 v82, 0xff800000
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s99, s80
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s86, s90
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s102, s3
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s87, s91
	v_add_lshl_u32 v81, s3, v130, 1
	v_add_lshl_u32 v83, s3, v190, 1
	v_add_lshl_u32 v91, s3, v124, 1
	v_add_lshl_u32 v92, s3, v187, 1
	v_add_lshl_u32 v85, s3, v127, 1
	v_cndmask_b32_e64 v81, 0x80000000, v81, s94
	v_cndmask_b32_e64 v84, 0x80000000, v83, s67
	v_cndmask_b32_e64 v91, 0x80000000, v91, s62
	v_cndmask_b32_e64 v92, 0x80000000, v92, s59
	v_add_lshl_u32 v134, s3, v125, 1
	s_clause 0x1
	buffer_load_u16 v83, v81, s[84:87], 0 offen
	buffer_load_u16 v81, v84, s[84:87], 0 offen
	v_add_lshl_u32 v84, s3, v131, 1
	v_add_lshl_u32 v86, s3, v132, 1
	v_add_lshl_u32 v135, s3, v188, 1
	v_add_lshl_u32 v87, s3, v128, 1
	v_add_lshl_u32 v136, s3, v126, 1
	v_add_lshl_u32 v88, s3, v133, 1
	v_add_lshl_u32 v89, s3, v129, 1
	v_add_lshl_u32 v137, s3, v123, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s65
	v_cndmask_b32_e64 v85, 0x80000000, v85, s64
	v_cndmask_b32_e64 v134, 0x80000000, v134, s58
	v_cndmask_b32_e64 v86, 0x80000000, v86, s61
	v_cndmask_b32_e64 v135, 0x80000000, v135, s56
	v_cndmask_b32_e64 v87, 0x80000000, v87, s60
	v_cndmask_b32_e64 v136, 0x80000000, v136, s54
	v_cndmask_b32_e64 v88, 0x80000000, v88, s57
	v_cndmask_b32_e64 v89, 0x80000000, v89, s55
	v_cndmask_b32_e64 v137, 0x80000000, v137, s53
	s_clause 0x9
	buffer_load_u16 v84, v84, s[84:87], 0 offen
	buffer_load_u16 v85, v85, s[84:87], 0 offen
	buffer_load_u16 v86, v86, s[84:87], 0 offen
	buffer_load_u16 v87, v87, s[84:87], 0 offen
	buffer_load_u16 v88, v88, s[84:87], 0 offen
	buffer_load_u16 v89, v89, s[84:87], 0 offen
	buffer_load_u16 v134, v134, s[84:87], 0 offen
	buffer_load_u16 v135, v135, s[84:87], 0 offen
	buffer_load_u16 v136, v136, s[84:87], 0 offen
	buffer_load_u16 v137, v137, s[84:87], 0 offen
	s_mul_i32 s36, s79, 3
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s95, s91
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v0, v0
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(11)
	v_cndmask_b16 v90.h, 0xff80, v83.l, s94
	s_waitcnt vmcnt(10)
	v_cndmask_b16 v90.l, 0xff80, v81.l, s67
	v_add_lshl_u32 v81, s3, v189, 1
	v_add_lshl_u32 v83, s3, v121, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v81, 0x80000000, v81, s66
	v_cndmask_b32_e64 v83, 0x80000000, v83, s63
	s_clause 0x3
	buffer_load_u16 v81, v81, s[84:87], 0 offen
	buffer_load_u16 v83, v83, s[84:87], 0 offen
	buffer_load_u16 v91, v91, s[84:87], 0 offen
	buffer_load_u16 v92, v92, s[84:87], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(13)
	v_cndmask_b16 v139.h, 0xff80, v84.l, s65
	s_waitcnt vmcnt(12)
	v_cndmask_b16 v139.l, 0xff80, v85.l, s64
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v92.h, 0xff80, v86.l, s61
	v_cndmask_b16 v134.h, 0xff80, v134.l, s58
	v_cndmask_b16 v134.l, 0xff80, v135.l, s56
	v_cndmask_b16 v135.h, 0xff80, v88.l, s57
	v_cndmask_b16 v135.l, 0xff80, v89.l, s55
	v_cndmask_b16 v136.h, 0xff80, v136.l, s54
	v_cndmask_b16 v136.l, 0xff80, v137.l, s53
	v_cndmask_b16 v138.h, 0xff80, v81.l, s66
	v_cndmask_b16 v138.l, 0xff80, v83.l, s63
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v81, 0, v202
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v91.h, 0xff80, v91.l, s62
	v_cndmask_b16 v91.l, 0xff80, v92.l, s59
	v_cndmask_b16 v92.l, 0xff80, v87.l, s60
	v_mov_b16_e64 v217.h, v138.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v81, v138, v90 offset1:32
	scratch_load_b32 v81, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v138.l, v217.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v138
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s28, s66, s20
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v81, v91, v139 offset1:32
	scratch_load_b32 v81, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v81, v134, v92 offset1:32
	scratch_load_b32 v81, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v81, v136, v135 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v83, off, off offset:192
	scratch_load_b32 v84, off, off offset:196
	scratch_load_b32 v85, off, off offset:200
	scratch_load_b32 v86, off, off offset:204
	scratch_load_b32 v87, off, off offset:208
	scratch_load_b32 v88, off, off offset:212
	scratch_load_b32 v89, off, off offset:216
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v81, 0, v180
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v81, v81
	s_waitcnt vmcnt(6)
	ds_load_u16 v83, v83
	s_waitcnt vmcnt(5)
	ds_load_u16 v84, v84
	s_waitcnt vmcnt(4)
	ds_load_u16 v85, v85
	s_waitcnt vmcnt(3)
	ds_load_u16 v86, v86
	s_waitcnt vmcnt(2)
	ds_load_u16 v87, v87
	s_waitcnt vmcnt(1)
	ds_load_u16 v88, v88
	s_waitcnt vmcnt(0)
	ds_load_u16 v89, v89
	s_waitcnt lgkmcnt(6)
	v_lshlrev_b32_e32 v83, 16, v83
	s_waitcnt lgkmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v137, 16, v86
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v140, 16, v87
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v86, 0x3fb8aa3b, v85
	v_mul_f32_e32 v85, 0x3fb8aa3b, v137
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v87, 0x3fb8aa3b, v84 :: v_dual_lshlrev_b32 v142, 16, v89
	v_mul_f32_e32 v84, 0x3fb8aa3b, v140
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v141, 16, v88
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v89, 0x3fb8aa3b, v81 :: v_dual_mul_f32 v88, 0x3fb8aa3b, v83
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v87, s101, v75
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	scratch_load_b32 v75, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v81, 0x3fb8aa3b, v142
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v89, s101, v73 :: v_dual_fmac_f32 v88, s101, v74
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:220
	scratch_load_b32 v74, off, off offset:224
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v86, s101, v76 :: v_dual_fmac_f32 v85, s101, v77
	v_dual_fmac_f32 v84, s101, v78 :: v_dual_mul_f32 v83, 0x3fb8aa3b, v141
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v76, off, off offset:232
	scratch_load_b32 v77, off, off offset:236
	scratch_load_b32 v78, off, off offset:240
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v81, s101, v80
	v_fmac_f32_e32 v83, s101, v79
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:244
	scratch_load_b32 v80, off, off offset:248
	s_waitcnt vmcnt(7)
	ds_load_u16 v75, v75
	s_waitcnt vmcnt(6)
	ds_load_u16 v73, v73
	s_waitcnt vmcnt(5)
	ds_load_u16 v74, v74
	s_waitcnt vmcnt(4)
	ds_load_u16 v76, v76
	s_waitcnt vmcnt(3)
	ds_load_u16 v77, v77
	s_waitcnt vmcnt(2)
	ds_load_u16 v78, v78
	s_waitcnt vmcnt(1)
	ds_load_u16 v79, v79
	s_waitcnt vmcnt(0)
	ds_load_u16 v80, v80
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v75, 16, v75
	v_lshlrev_b32_e32 v74, 16, v74
	v_lshlrev_b32_e32 v76, 16, v76
	v_lshlrev_b32_e32 v140, 16, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v75 :: v_dual_lshlrev_b32 v73, 16, v73
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v141, 16, v79
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v79, 0x3fb8aa3b, v74 :: v_dual_lshlrev_b32 v142, 16, v80
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v78, s101, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v80, 0x3fb8aa3b, v73
	v_dual_mul_f32 v74, 0x3fb8aa3b, v141 :: v_dual_mul_f32 v73, 0x3fb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v79, s101, v66
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v137, 16, v77
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v80, s101, v65
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v90.l
	v_mov_b16_e64 v90.l, v217.l
	v_mov_b16_e64 v65.l, v217.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v73, s101, v72
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v77, 0x3fb8aa3b, v76 :: v_dual_fmac_f32 v74, s101, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v90
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v76, 0x3fb8aa3b, v137 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v140
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 vcc_lo, s94, vcc_lo
	s_and_b32 s23, s67, s3
	v_cndmask_b32_e64 v65, 0, 1, vcc_lo
	v_cndmask_b32_e64 v66, 0, 1, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v217
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v217.h, v91.l
	v_mov_b16_e64 v91.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, s101, v69
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s63, s3
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v75, s101, v70
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v91
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s28
	v_cndmask_b32_e64 v66, 0, 1, s34
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.h, v139.l
	v_mov_b16_e64 v139.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s62, s22
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s94, s90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v139
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_or_b16 v67.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s65, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v217
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v217.h, v134.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s20
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v134.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s59, s3
	s_and_b32 s24, s64, s21
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s24
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v72.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s29
	v_cndmask_b32_e64 v66, 0, 1, s35
	s_and_b32 s30, s58, s25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v72.l, v66.l, v65.l
	v_add_nc_u32_e32 v65, 0, v203
	ds_store_b32 v65, v67
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v92.l
	v_mov_b16_e64 v92.l, v217.l
	v_mov_b16_e64 v65.l, v217.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v92
	v_cmp_neq_f32_e64 s22, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s21, s61, s3
	s_and_b32 s26, s60, s22
	v_cndmask_b32_e64 v65, 0, 1, s21
	v_cndmask_b32_e64 v66, 0, 1, s26
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v217
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v217.h, v136.l
	v_mov_b16_e64 v136.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s31, s56, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v136
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v137.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s30
	v_cndmask_b32_e64 v66, 0, 1, s31
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.h, v135.l
	v_mov_b16_e64 v135.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s27, s54, s27
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v135
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v137.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v217.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s57, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_neq_f32_e64 s25, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s22
	s_and_b32 s33, s53, s3
	s_and_b32 s25, s55, s25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v138.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s27
	v_cndmask_b32_e64 v66, 0, 1, s33
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v138.l, v66.l, v65.l
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, s99, v204
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s67, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 1, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s67, s0, s67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 2, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s66, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 3, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s66, s0, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s59, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 8, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s59, s0, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s60, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 9, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s60, s0, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 10, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s48, s0, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s61, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 11, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 16, v204
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s62, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 17, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 18, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s63, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 19, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 24, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s64, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 25, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 26, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s65, s83, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v65, 27, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s99, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s99, s99, 32
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s83, v65
	scratch_load_b64 v[65:66], off, off offset:172 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[140:141], null, s52, s79, v[65:66]
	.loc	1 881 25                        ; attention.py:881:25
	scratch_load_b32 v141, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v90, v140, s36, 1
	s_mul_i32 s36, s79, 9
	v_lshlrev_b32_e32 v142, 1, v140
	v_add_lshl_u32 v69, v140, s36, 1
	s_mul_i32 s36, s79, 10
	v_add_lshl_u32 v66, v140, s79, 1
	v_add_lshl_u32 v134, v140, s36, 1
	s_mul_i32 s36, s79, 11
	v_add_lshl_u32 v139, v140, s103, 1
	v_add_lshl_u32 v70, v140, s36, 1
	s_mul_i32 s36, s79, 17
	v_add_lshl_u32 v91, v140, s104, 1
	v_add_lshl_u32 v65, v140, s36, 1
	s_mul_i32 s36, s79, 18
	v_add_lshl_u32 v92, v140, vcc_hi, 1
	v_add_lshl_u32 v136, v140, s36, 1
	s_mul_i32 s36, s79, 19
	v_cndmask_b32_e64 v70, 0x80000000, v70, s50
	v_add_lshl_u32 v67, v140, s36, 1
	s_mul_i32 s36, s79, 24
	v_cndmask_b32_e64 v69, 0x80000000, v69, s48
	v_add_lshl_u32 v135, v140, s36, 1
	s_mul_i32 s36, s79, 25
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s46
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_store_b32 v141, v72
	scratch_load_b32 v72, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v72, v137
	scratch_load_b32 v72, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v72, v138
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:264
	scratch_load_b32 v138, off, off offset:272
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, s101, v68 :: v_dual_add_nc_u32 v72, 0, v181
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, v140, s36, 1
	s_mul_i32 s36, s79, 27
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v72, v72
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v71, v140, s36, 1
	s_mul_i32 s36, s79, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v140, v140, s36, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v72.l, 1, v72.l
	v_cmp_eq_u16_e64 s57, 1, v72.l
	s_waitcnt vmcnt(1)
	ds_load_u8_d16_hi v72, v137
	scratch_load_b32 v137, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v72.l, 1, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s58, 1, v72.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v219, 0xff800000, v88, s58
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v137, v137
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v137, v138
	ds_load_u8_d16 v138, v238
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v138, v239
	ds_load_u8_d16 v141, v240
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v141, v241
	v_and_b16 v72.l, 1, v137.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s55, 1, v72.l
	v_and_b16 v72.l, 1, v137.h
	v_cmp_eq_u16_e64 s56, 1, v72.l
	v_and_b16 v72.l, 1, v138.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v86, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s53, 1, v72.l
	v_and_b16 v72.l, 1, v138.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s54, 1, v72.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v72.l, 1, v141.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v84, s54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s51, 1, v72.l
	v_and_b16 v72.l, 1, v141.h
	v_cmp_eq_u16_e64 s52, 1, v72.l
	ds_load_u8_d16 v72, v242
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v72, v243
	ds_load_u8_d16 v137, v244
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v137, v245
	ds_load_u8_d16 v138, v246
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v138, v247
	ds_load_u8_d16 v141, v248
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v141, v249
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v86, 0xff800000, v81, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v81, 0x80000000, v90, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v72.l, 1, v72.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s42, 1, v72.l
	v_and_b16 v72.l, 1, v72.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v226, 0xff800000, v80, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v72.l
	v_and_b16 v72.l, 1, v137.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v227, 0xff800000, v79, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v72.l
	v_and_b16 v72.l, 1, v137.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v137, 0x80000000, v142, s67
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v72.l
	v_and_b16 v72.l, 1, v138.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v77, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v72.l
	v_and_b16 v72.l, 1, v138.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v138, 0x80000000, v139, s66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v224, 0xff800000, v76, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v72.l
	v_and_b16 v72.l, 1, v141.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v225, 0xff800000, v75, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v72.l
	v_and_b16 v72.l, 1, v141.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v222, 0xff800000, v74, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v72.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v89, s57
	v_add_nc_u32_e32 v89, 0, v237
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v223, 0xff800000, v73, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v91, s60
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v89, v72
	v_cndmask_b32_e64 v89, 0xff800000, v87, s55
	v_cndmask_b32_e64 v87, 0xff800000, v85, s53
	v_cndmask_b32_e64 v85, 0xff800000, v83, s51
	v_cndmask_b32_e64 v83, 0xff800000, v78, s40
	ds_store_b32 v251, v219
	ds_store_b32 v252, v89
	ds_store_b32 v253, v218
	ds_store_b32 v254, v87
	ds_store_b32 v178, v88
	ds_store_b32 v173, v85
	ds_store_b32 v172, v86
	ds_store_b32 v171, v226
	ds_store_b32 v170, v227
	ds_store_b32 v151, v83
	ds_store_b32 v152, v84
	ds_store_b32 v153, v224
	ds_store_b32 v154, v225
	ds_store_b32 v155, v222
	ds_store_b32 v156, v223
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x5
	buffer_load_u16 v90, v70, s[92:95], 0 offen
	buffer_load_u16 v91, v69, s[92:95], 0 offen
	buffer_load_u16 v69, v81, s[92:95], 0 offen
	buffer_load_u16 v66, v66, s[92:95], 0 offen
	buffer_load_u16 v79, v137, s[92:95], 0 offen
	buffer_load_u16 v80, v138, s[92:95], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s60, s0, s61
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v69.h, v217.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v134, s60
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s60, s0, s62
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v73, v73, s[92:95], 0 offen
	buffer_load_u16 v74, v74, s[92:95], 0 offen
	v_cndmask_b32_e64 v75, 0x80000000, v92, s60
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s60, s0, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.h, v217.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v76, 0x80000000, v136, s60
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s60, s0, s64
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v75, v75, s[92:95], 0 offen
	buffer_load_u16 v76, v76, s[92:95], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v135, s60
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s60, s0, s65
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v78, 0x80000000, v140, s60
	s_clause 0x1
	buffer_load_u16 v77, v77, s[92:95], 0 offen
	buffer_load_u16 v78, v78, s[92:95], 0 offen
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v74.h, v90.l
	v_mov_b16_e32 v73.h, v91.l
	v_mov_b16_e32 v80.h, v69.l
	v_mov_b16_e32 v79.h, v66.l
	v_cndmask_b32_e64 v66, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v71, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.h, v217.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s45
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s99, s100
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	s_clause 0x3
	buffer_load_u16 v92, v67, s[92:95], 0 offen
	buffer_load_u16 v220, v68, s[92:95], 0 offen
	buffer_load_u16 v221, v66, s[92:95], 0 offen
	buffer_load_u16 v228, v65, s[92:95], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v65, 0, v183
	ds_load_2addr_b32 v[148:149], v65 offset1:32
	ds_load_2addr_b32 v[138:139], v65 offset0:64 offset1:96
	ds_load_2addr_b32 v[142:143], v157 offset1:32
	ds_load_2addr_b32 v[140:141], v157 offset0:64 offset1:96
	ds_load_2addr_b32 v[144:145], v158 offset1:32
	ds_load_2addr_b32 v[134:135], v158 offset0:64 offset1:96
	ds_load_2addr_b32 v[146:147], v159 offset1:32
	ds_load_2addr_b32 v[136:137], v159 offset0:64 offset1:96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v65, 0, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v218, v87, v88
	v_max3_f32 v67, v224, v225, v222
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v65, v[79:80]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v72, v219
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v68.h, v217.l
	v_mov_b16_e64 v79.h, v217.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v160, v[73:74]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v89, v66
	v_max3_f32 v66, v227, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v67, v223
	v_max3_f32 v67, v85, v86, v226
	v_max3_f32 v65, v65, v67, v66
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v217.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v81, v82, v65, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.h, v217.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v219, v81
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v82, v81
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v72, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v72.h, v217.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v66.h
	v_cmp_o_f32_e64 s45, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s45
	v_permlanex16_b32 v66, v67, s78, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v66, v67, v205
	v_perm_b32 v66, v66, v67, v206
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v218, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v67, v67
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v89, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v68, v68
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v67.h, s3
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v69, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v69, v205
	v_perm_b32 v68, v68, v69, v206
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v88, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	v_cmp_o_f32_e64 s3, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v87, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s45, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v69.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s45
	v_permlanex16_b32 v70, v71, s78, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v70, v71, v205
	v_perm_b32 v70, v70, v71, v206
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v86, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s52
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v72.l, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v72, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v85, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v78.h, v92.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v77.h, v220.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v76.h, v221.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v75.h, v228.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s51
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v161, v[75:76]
	ds_store_b64 v162, v[77:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v79.l, v72.h
	v_cmp_o_f32_e64 s45, v72, v72
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[229:232], v201
	ds_load_b128 v[233:236], v185
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v72, v72, v79, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v71.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v82
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v82, 0, v184
	ds_load_b128 v[85:88], v82
	ds_load_b128 v[89:92], v163
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.l, 0x7fff, v72.h, s45
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v228, 0, v73, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v82 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v79, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v57, v57, v228
	v_mul_f32_e32 v58, v58, v228
	v_mul_f32_e32 v59, v59, v228
	v_mul_f32_e32 v60, v60, v228
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v72, v79, v205
	v_perm_b32 v72, v72, v79, v206
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v61, v61, v228
	v_mul_f32_e32 v62, v62, v228
	v_mul_f32_e32 v63, v63, v228
	v_mul_f32_e32 v64, v64, v228
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[77:80], v163 offset:2048
	ds_load_b128 v[218:221], v82 offset:1024
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v228
	v_mul_f32_e32 v18, v18, v228
	v_mul_f32_e32 v19, v19, v228
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[85:92], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v201 offset:2048
	ds_load_b128 v[89:92], v185 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v228
	v_mul_f32_e32 v21, v21, v228
	v_mul_f32_e32 v22, v22, v228
	v_mul_f32_e32 v23, v23, v228
	v_mul_f32_e32 v24, v24, v228
	v_mul_f32_e32 v9, v9, v228
	v_mul_f32_e32 v10, v10, v228
	v_mul_f32_e32 v11, v11, v228
	v_mul_f32_e32 v12, v12, v228
	v_mul_f32_e32 v13, v13, v228
	v_mul_f32_e32 v14, v14, v228
	v_mul_f32_e32 v15, v15, v228
	v_mul_f32_e32 v16, v16, v228
	v_mul_f32_e32 v1, v1, v228
	v_mul_f32_e32 v2, v2, v228
	v_mul_f32_e32 v3, v3, v228
	v_mul_f32_e32 v4, v4, v228
	v_mul_f32_e32 v5, v5, v228
	v_mul_f32_e32 v6, v6, v228
	v_mul_f32_e32 v7, v7, v228
	v_mul_f32_e32 v8, v8, v228
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[229:236], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[229:232], v82 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v73.h, v217.l
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[85:92], v[65:72], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v65, v227, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.h, v217.l
	v_mov_b16_e64 v67.h, v217.l
	v_mov_b16_e64 v68.h, v217.l
	v_mov_b16_e64 v69.h, v217.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.h, v217.l
	v_mov_b16_e64 v71.h, v217.l
	v_mov_b16_e64 v72.h, v217.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v65, v65
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v226, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v66, v66
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v67, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v67, v205
	v_perm_b32 v66, v66, v67, v206
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s3, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v83, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v68.h
	v_cmp_o_f32_e64 s40, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v67.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s40
	v_permlanex16_b32 v68, v69, s78, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v68, v69, v205
	v_perm_b32 v68, v68, v69, v206
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v225, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v69, v69
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v224, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v70, v70
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v69.h, s3
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v71, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v71, v205
	v_perm_b32 v70, v70, v71, v206
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v223, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_o_f32_e64 s3, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v71, v71, v72, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v222, v81
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[222:225], v186
	ds_load_b128 v[233:236], v186 offset:2048
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v72, v72
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v72, v72, v73, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v71.h, s3
	v_cndmask_b16 v73.l, 0x7fff, v72.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v72, v73, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v72, v73, v205
	v_perm_b32 v72, v72, v73, v206
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[77:80], v165
	ds_load_b128 v[73:76], v164
	ds_load_b128 v[82:85], v164 offset:2048
	ds_load_b128 v[86:89], v165 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[218:225], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[229:236], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[73:80], v[65:72], v[57:64]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v75, v115, v115
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[82:89], v[65:72], v[9:16]
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v148 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v148, v148 :: v_dual_max_f32 v69, v146, v146
	v_dual_max_f32 v70, v147, v147 :: v_dual_max_f32 v67, v142, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v68, v144, v144
	v_max_f32_e32 v65, v66, v65
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v142 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v67, v66
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v144 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v146 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s37, v65, 31
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v149 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v69
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s36, v66, 31
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v149, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v67, v67, v69
	v_max_f32_e32 v65, v66, v65
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v143 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s3, v67, 31
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v143, v143 :: v_dual_max_f32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v66, v67, v66
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v69
	v_max_f32_e32 v69, v145, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v67, v67, v67
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s41, v68, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v68, v140, v140 :: v_dual_max_f32 v65, v65, v67
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v67
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v65, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v67
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v65, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v67
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v67, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v65, v65, v67
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v145 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s40, v65, 31
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v69, v67
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v69
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s39, v66, 31
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v138 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v71, s39, s39
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v69
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v147 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v69, v69, v69
	v_max_f32_e32 v69, v70, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v67, v67, v70
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v67, v67, v70
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v67, v67, v70
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s38, v67, 31
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v138, v138
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v72, s38, s38
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v67, v66
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v140 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v70 :: v_dual_max_f32 v70, v136, v136
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v69, -1, -1 op_sel:[1,0]
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v68, v67
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v68, v68, v68
	v_max_f32_e32 v65, v69, v65
	v_max_f32_e32 v69, v134, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v68
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v67, v67, v68
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v67, v67, v68
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v67, v67, v68
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v68, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v66, v66, v68
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v134 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v66, 31
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v139 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v74, s45, s45
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v69, v68
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s43, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_dual_max_f32 v67, v139, v139 :: v_dual_max_f32 v68, v68, v69
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v136 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v67, v66
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v141 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v69, v70, v69
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v69, v70
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v69, v70
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s42, v68, 31
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v141, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v70, v70, v70
.Ltmp137:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v76, s42, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v68, v67
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v68, v66, -1, -1 op_sel:[1,0]
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s48, v66, 31
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
.Ltmp155:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v66, s37, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e64 v78, s48, s48
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v68
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v135 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s49, v67, 31
.Ltmp158:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v67, s36, s36
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v70 :: v_dual_max_f32 v68, v68, v68
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s46, v65, 31
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v137, v137
.Ltmp162:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v79, s49, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v69, -1, -1 op_sel:[1,0]
.Ltmp164:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v73, s46, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v65, v69, v65
	v_max_f32_e32 v69, v135, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v69, v68
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v137 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v70, v69
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v69, v70
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v69, v70
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v69, v70
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s47, v65, 31
.Ltmp183:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v65, v191, v191 :: v_dual_max_f32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e64 v77, s47, s47
	v_max_f32_e32 v191, v65, v66
	v_max_f32_e32 v65, v216, v216
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	v_readlane_b32 s50, v68, 31
.Ltmp185:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v68, s3, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v65, v65, v66 :: v_dual_max_f32 v66, v192, v192
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp187:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v80, s50, s50
	v_max_f32_e32 v192, v66, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v66, v215, v215 :: v_dual_max_f32 v69, v69, v70
	v_max_f32_e64 v70, s40, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v142, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v66, v66, v67 :: v_dual_max_f32 v67, v193, v193
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s51, v69, 31
.Ltmp189:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v69, s41, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v193, v67, v68
	v_max_f32_e32 v67, v214, v214
	v_max_f32_e64 v82, s51, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_max_f32 v67, v67, v68 :: v_dual_max_f32 v68, v194, v194
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v194, v68, v69
	v_max_f32_e32 v68, v122, v122
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp191:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v146, v194
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v68, v68, v69 :: v_dual_max_f32 v69, v198, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp193:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v198, v69, v70 :: v_dual_max_f32 v69, v120, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp195:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v149, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v69, v69, v70 :: v_dual_max_f32 v70, v195, v195
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp197:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v195, v70, v71
	v_max_f32_e32 v70, v119, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_max_f32 v70, v70, v71 :: v_dual_max_f32 v71, v196, v196
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v196, v71, v72 :: v_dual_max_f32 v71, v118, v118
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp199:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v71, v71, v72 :: v_dual_max_f32 v72, v197, v197
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp201:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v197, v72, v73
	v_max_f32_e32 v72, v117, v117
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp203:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v147, v197
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v72, v72, v73 :: v_dual_max_f32 v73, v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp205:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v199, v73, v74
	v_max_f32_e32 v73, v116, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, v73, v74
	v_max_f32_e64 v74, s43, s43
	v_max_f32_e32 v0, v0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v140, v0
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v74, v75, v74 :: v_dual_max_f32 v75, v200, v200
	v_dual_max_f32 v200, v75, v76 :: v_dual_max_f32 v75, v114, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v200
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v75, v75, v76 :: v_dual_max_f32 v76, v250, v250
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v144, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v250, v76, v77
	v_max_f32_e32 v76, v169, v169
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v76, v76, v77 :: v_dual_max_f32 v77, v150, v150
	v_max_f32_e32 v150, v77, v78
	v_max_f32_e32 v77, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v139, v150
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v77, v77, v78
	v_max_f32_e32 v78, v166, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v166, v78, v79
	v_max_f32_e32 v78, v112, v112
	v_max_f32_e32 v78, v78, v79
	v_max_f32_e32 v79, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v167, v79, v80
	v_max_f32_e32 v79, v111, v111
	v_dual_max_f32 v79, v79, v80 :: v_dual_max_f32 v80, v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v110, v80, v82
	v_dual_max_f32 v80, v168, v168 :: v_dual_sub_f32 v85, v143, v195
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v137, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v80, v80, v82
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v148, v191
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v138, v199
	v_sub_f32_e32 v138, v141, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v82, 0, v82, s34
.Ltmp206:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v82, v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v85, v85 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v82, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v85, v85 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v85, v85 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v139, v82, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v82, v139
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v139, v84, -1, -1 op_sel:[1,0]
	v_readlane_b32 s34, v82, 31
.Ltmp210:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v84, v139
.Ltmp212:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v84, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s31
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v82, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v84, v82, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v82, v84
.Ltmp217:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v88
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp218:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s33, v82, 31
.Ltmp219:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v89
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v84, v84, v84 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp221:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v86, v84, -1, -1 op_sel:[1,0]
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v84, v84, v86
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v86, v83, -1, -1 op_sel:[1,0]
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp227:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v145, v196
	v_sub_f32_e32 v135, v135, v167
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s31, v84, 31
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v83, v86
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v86, v85, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v85, v86
.Ltmp232:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v86, v87
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s29, v85, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp234:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s30
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s30, v83, 31
	v_permlanex16_b32 v83, v82, -1, -1 op_sel:[1,0]
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v82, v82, v83
.Ltmp237:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v90
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v86, v86, v86 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp239:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v87, v86, -1, -1 op_sel:[1,0]
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v86, v86, v87
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp243:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s28, v86, 31
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v84, v83, -1, -1 op_sel:[1,0]
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v83, v84
.Ltmp247:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s24
.Ltmp248:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v84, v84, v84 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v85, v84, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v84, v85
.Ltmp251:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v85, v134
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s24, v84, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s26
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v82, 31
.Ltmp255:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v91
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v85, v85, v85 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp257:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp258:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v85, v85, v85 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v82, v82, v82 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v86, v85, -1, -1 op_sel:[1,0]
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v85, v85, v86
.Ltmp261:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v86, v136
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v82, v82, v82 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v85, 31
.Ltmp264:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s25
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s25, v83, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v83, v82, -1, -1 op_sel:[1,0]
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v82, v82, v83
.Ltmp267:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v138
.Ltmp268:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v86, v86, v86 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp269:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v86, v86, v86 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v83, v83, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp271:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v87, v86, -1, -1 op_sel:[1,0]
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v83, v83, v83 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v86, v86, v87
	v_add_f32_dpp v83, v83, v83 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v83, v83, v83 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v84, v83, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v83, v84
.Ltmp275:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v135
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s21
.Ltmp276:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v86, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v84, v84, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v84, v84, v84 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v84, v84, v84 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v85, v84, -1, -1 op_sel:[1,0]
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v84, v85
.Ltmp280:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v85, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s35, v84, 31
.Ltmp282:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s22
.Ltmp283:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s22, v82, 31
.Ltmp284:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v216, v65
	v_mov_b32_e32 v216, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v85, v85, v85 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp288:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v215
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v85, v85, v85 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp290:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v105, v105, v82, s34
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v82, v215, v66 :: v_dual_mov_b32 v215, v66
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v87, v85, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp292:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v82, v82
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v85, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v85, 31
.Ltmp295:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v214
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s27, v83, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp297:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v106, v106, v82, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v214, v67
	v_mov_b32_e32 v214, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v122
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v107, v107, v82, s33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v122, v68
	v_mov_b32_e32 v122, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v108, v108, v82, s31
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v120, v69
	v_mov_b32_e32 v120, v69
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v119
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v101, v101, v82, s30
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v82, v119, v70 :: v_dual_mov_b32 v119, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v102, v102, v82, s29
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v118, v71
	v_mov_b32_e32 v118, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v117
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v103, v103, v82, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v82, v117, v72 :: v_dual_mov_b32 v117, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v104, v104, v82, s26
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v116, v73
	v_mov_b32_e32 v116, v73
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v115
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v97, v97, v82, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v82, v115, v74 :: v_dual_mov_b32 v115, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v98, v98, v82, s24
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v114, v75
	v_mov_b32_e32 v114, v75
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v169
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v99, v99, v82, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v82, v169, v76 :: v_dual_mov_b32 v169, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v100, v100, v82, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v113, v77
	v_mov_b32_e32 v113, v77
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v112
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v93, v93, v82, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v112, v78
	v_mov_b32_e32 v112, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v94, v94, v82, s27
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v111, v79
	v_mov_b32_e32 v111, v79
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v168
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v95, v95, v82, s35
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v168, v80
	v_mov_b32_e32 v168, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v82, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v96, v96, v82, s20
	v_mov_b32_e32 v82, v81
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off
	scratch_load_b32 v66, off, off offset:64
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s52, s99, s81
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v141, s75 :: v_dual_mov_b32 v140, s74
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s35, s52, s97
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v139, s73 :: v_dual_mov_b32 v138, s72
	v_dual_mov_b32 v137, s71 :: v_dual_mov_b32 v136, s70
	v_dual_mov_b32 v135, s69 :: v_dual_mov_b32 v134, s68
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0xd                            ; 100-byte Folded Reload
	scratch_load_b32 v67, off, off offset:68
	scratch_load_b64 v[68:69], off, off offset:72
	scratch_load_b32 v69, off, off offset:80
	scratch_load_b64 v[70:71], off, off offset:84
	scratch_load_b64 v[71:72], off, off offset:92
	scratch_load_b64 v[72:73], off, off offset:100
	scratch_load_b32 v73, off, off offset:108
	scratch_load_b64 v[74:75], off, off offset:112
	scratch_load_b64 v[75:76], off, off offset:120
	scratch_load_b64 v[76:77], off, off offset:136
	scratch_load_b64 v[77:78], off, off offset:128
	scratch_load_b64 v[78:79], off, off offset:144
	scratch_load_b64 v[79:80], off, off offset:152
	scratch_load_b64 v[80:81], off, off offset:160
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(15)
	v_or_b32_e32 v65, s99, v65
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v66, s35, v66, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s3
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v67, s35, v67, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v68, s35, v68, 1
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v69, s35, v69, 1
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v70, s35, v70, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v71, s35, v71, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v72, s35, v72, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v73, s35, v73, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v74, s35, v74, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v75, s35, v75, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v76, s35, v76, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v77, s35, v77, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v78, s35, v78, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v79, s35, v79, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v80, s35, v80, 1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s83, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s99, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s83, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s35, v109, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s44, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s21
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s23
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s25
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s26
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v65, v65, s[88:91], 0 offen
	buffer_load_u16 v66, v66, s[88:91], 0 offen
	buffer_load_u16 v67, v67, s[88:91], 0 offen
	buffer_load_u16 v69, v69, s[88:91], 0 offen
	buffer_load_u16 v70, v70, s[88:91], 0 offen
	buffer_load_u16 v71, v71, s[88:91], 0 offen
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s28
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v74, 0x80000000, v74, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v75, 0x80000000, v75, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s31
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v76, 0x80000000, v76, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v77, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s33
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v78, 0x80000000, v78, s3
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s44, s34
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_u16 v73, v73, s[88:91], 0 offen
	buffer_load_u16 v76, v76, s[88:91], 0 offen
	buffer_load_u16 v74, v74, s[88:91], 0 offen
	buffer_load_u16 v78, v78, s[88:91], 0 offen
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	s_clause 0x5
	buffer_load_u16 v75, v75, s[88:91], 0 offen
	buffer_load_u16 v79, v79, s[88:91], 0 offen
	buffer_load_u16 v72, v72, s[88:91], 0 offen
	buffer_load_u16 v68, v68, s[88:91], 0 offen
	buffer_load_u16 v80, v80, s[88:91], 0 offen
	buffer_load_u16 v77, v77, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v174, v65
	s_waitcnt vmcnt(12)
	ds_store_b16 v174, v69 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v174, v73 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v174, v76 offset:3072
	ds_store_b16 v175, v66
	ds_store_b16 v175, v70 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v175, v74 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v175, v78 offset:3072
	ds_store_b16 v176, v67
	ds_store_b16 v176, v71 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v176, v75 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v176, v79 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v177, v68
	ds_store_b16 v177, v72 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v177, v77 offset:2048
	ds_store_b16 v177, v80 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v81, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v73, 0, v182
	ds_load_b128 v[69:72], v207
	ds_load_b128 v[65:68], v73
	ds_load_b128 v[83:86], v73 offset:2048
	ds_load_b128 v[87:90], v207 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[25:32], v[134:141]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[83:90], v[25:32], v[134:141]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[87:90], v209
	ds_load_b128 v[83:86], v208
	ds_load_b128 v[134:137], v208 offset:2048
	ds_load_b128 v[138:141], v209 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[83:90], v[33:40], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[134:141], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[87:90], v211
	ds_load_b128 v[83:86], v210
	ds_load_b128 v[134:137], v210 offset:2048
	ds_load_b128 v[138:141], v211 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[83:90], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[134:141], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[87:90], v213
	ds_load_b128 v[83:86], v212
	ds_load_b128 v[134:137], v212 offset:2048
	ds_load_b128 v[138:141], v213 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[83:90], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[134:141], v[49:56], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v81, s99, v81
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s83, v81
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s63, s1, s3
	s_and_b32 s59, s5, s3
	s_and_b32 s56, s6, s3
	s_and_b32 s53, s7, s3
	s_and_b32 s66, s8, s3
	s_and_b32 s62, s9, s3
	s_and_b32 s58, s10, s3
	s_and_b32 s54, s11, s3
	s_and_b32 s67, s12, s3
	s_and_b32 s64, s13, s3
	s_and_b32 s60, s14, s3
	s_and_b32 s55, s15, s3
	s_and_b32 s94, s16, s3
	s_and_b32 s65, s17, s3
	s_and_b32 s61, s18, s3
	s_and_b32 s57, s19, s3
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v83, off, off offset:276 ; 4-byte Folded Reload
	s_and_not1_b32 s36, s63, exec_lo
	s_and_not1_b32 s37, s59, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v81, v83
	scratch_load_b32 v83, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s35, vcc_lo, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, exec_lo
	s_or_b32 s63, s36, s35
	s_and_not1_b32 s35, s53, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v81, v83
	scratch_load_b32 v83, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s59, s37, s3
	s_and_not1_b32 s3, s56, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v81, v83
	scratch_load_b32 v83, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s56, s3, s20
	s_and_not1_b32 s3, s66, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v81, v83
	scratch_load_b32 v83, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s53, s35, s21
	s_and_not1_b32 s21, s62, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v81, v83
	scratch_load_b32 v83, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s22, exec_lo
	s_or_b32 s66, s3, s20
	s_and_not1_b32 s3, s58, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v81, v83
	scratch_load_b32 v83, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s23, exec_lo
	s_or_b32 s62, s21, s22
	s_and_not1_b32 s21, s54, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v81, v83
	scratch_load_b32 v83, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s24, exec_lo
	s_or_b32 s58, s3, s20
	s_and_not1_b32 s3, s67, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v81, v83
	scratch_load_b32 v83, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s25, exec_lo
	s_or_b32 s54, s21, s22
	s_and_not1_b32 s21, s64, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v81, v83
	scratch_load_b32 v83, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s26, exec_lo
	s_or_b32 s67, s3, s20
	s_and_not1_b32 s3, s60, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v81, v83
	scratch_load_b32 v83, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s27, exec_lo
	s_or_b32 s64, s21, s22
	s_and_not1_b32 s21, s55, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v81, v83
	scratch_load_b32 v83, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s28, exec_lo
	s_or_b32 s60, s3, s20
	s_and_not1_b32 s3, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v81, v83
	scratch_load_b32 v83, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s29, exec_lo
	s_or_b32 s55, s21, s22
	s_and_not1_b32 s21, s65, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v81, v83
	scratch_load_b32 v83, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s30, exec_lo
	s_or_b32 s94, s3, s20
	s_and_not1_b32 s3, s61, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v81, v83
	scratch_load_b32 v83, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s31, exec_lo
	s_or_b32 s65, s21, s22
	s_and_not1_b32 s21, s57, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v81, v83
	scratch_load_b32 v83, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s33, exec_lo
	s_or_b32 s61, s3, s20
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v81, v83
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s34, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s34, exec_lo
	s_or_b32 s57, s21, s22
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s98
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v83, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v81, v83
	scratch_load_b32 v83, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v81, v83
	scratch_load_b32 v83, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v81, v83
	scratch_load_b32 v83, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v81, v83
	scratch_load_b32 v83, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v81, v83
	scratch_load_b32 v83, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v81, v83
	scratch_load_b32 v83, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v81, v83
	scratch_load_b32 v83, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v81, v83
	scratch_load_b32 v83, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v81, v83
	scratch_load_b32 v83, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v81, v83
	scratch_load_b32 v83, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v81, v83
	scratch_load_b32 v83, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v81, v83
	scratch_load_b32 v83, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v81, v83
	scratch_load_b32 v83, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v81, v83
	scratch_load_b32 v83, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v81, v83
	scratch_load_b32 v83, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v81, v83
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v83, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v81, v83
	scratch_load_b32 v83, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s35, vcc_lo, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, s63
	s_and_b32 s35, s35, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v81, v83
	scratch_load_b32 v83, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s36
	s_and_not1_b32 s36, s63, exec_lo
	s_and_b32 s3, s3, s59
	s_or_b32 s63, s36, s35
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s35, s53, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v81, v83
	scratch_load_b32 v83, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s37
	s_and_not1_b32 s37, s59, exec_lo
	s_and_b32 s20, s20, s56
	s_or_b32 s59, s37, s3
	s_and_not1_b32 s3, s56, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s56, s3, s20
	s_and_not1_b32 s3, s66, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v81, v83
	scratch_load_b32 v83, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s53
	s_and_b32 s21, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s53, s35, s21
	s_and_not1_b32 s21, s62, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v81, v83
	scratch_load_b32 v83, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s66
	s_and_b32 s20, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s66, s3, s20
	s_and_not1_b32 s3, s58, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v81, v83
	scratch_load_b32 v83, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s62
	s_and_b32 s22, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s62, s21, s22
	s_and_not1_b32 s21, s54, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v81, v83
	scratch_load_b32 v83, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s58
	s_and_b32 s20, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s58, s3, s20
	s_and_not1_b32 s3, s67, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v81, v83
	scratch_load_b32 v83, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s54
	s_and_b32 s22, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s21, s22
	s_and_not1_b32 s21, s64, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v81, v83
	scratch_load_b32 v83, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s67
	s_and_b32 s20, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s67, s3, s20
	s_and_not1_b32 s3, s60, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v81, v83
	scratch_load_b32 v83, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s64
	s_and_b32 s22, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s64, s21, s22
	s_and_not1_b32 s21, s55, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v81, v83
	scratch_load_b32 v83, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s60
	s_and_b32 s20, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s60, s3, s20
	s_and_not1_b32 s3, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v81, v83
	scratch_load_b32 v83, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s94
	s_and_b32 s20, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s3, s20
	s_and_not1_b32 s3, s61, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v81, v83
	scratch_load_b32 v83, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s55
	s_and_b32 s22, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s55, s21, s22
	s_and_not1_b32 s21, s65, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v81, v83
	scratch_load_b32 v83, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s65
	s_and_b32 s22, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s65, s21, s22
	s_and_not1_b32 s21, s57, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v81, v83
	scratch_load_b32 v83, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s33, s61
	s_and_b32 s20, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s61, s3, s20
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v81, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s34, s51
	s_and_b32 s34, s34, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s34, exec_lo
	s_or_b32 s57, s21, s22
	s_branch .LBB0_9
.LBB0_14:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v7, v8
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
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v65, off, off offset:468
	scratch_load_b32 v66, off, off offset:472
	scratch_load_b32 v67, off, off offset:476
	scratch_load_b32 v68, off, off offset:480
	scratch_load_b32 v69, off, off offset:484
	scratch_load_b32 v0, off, off offset:488
	v_readlane_b32 s65, v255, 0
.LBB0_16:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v25, 5, v65
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v0, 0x80, v0
	v_and_b32_e32 v28, 12, v65
	v_lshrrev_b32_e32 v29, 2, v67
	v_add_nc_u32_e32 v27, 0, v68
	v_and_b32_e32 v25, 0x60, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v27, v[105:108]
	ds_store_b128 v27, v[97:100] offset:16
	v_add3_u32 v0, 0, v25, v0
	ds_store_b128 v27, v[101:104] offset:128
	ds_store_b128 v27, v[93:96] offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v26, 1, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v29, v28
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v47, 1, v69
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v56, v26, v66
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v65, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v54, 2, v47
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s79, v47
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v47
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v76, s96, v56
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v25, 54, v47
	v_or_b32_e32 v26, 53, v47
	v_or_b32_e32 v27, 52, v47
	v_or_b32_e32 v28, 51, v47
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s82, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v29, 50, v47
	v_or_b32_e32 v30, 49, v47
	v_or_b32_e32 v31, 48, v47
	v_or_b32_e32 v32, 39, v47
	v_or_b32_e32 v33, 38, v47
	v_or_b32_e32 v34, 37, v47
	v_or_b32_e32 v35, 36, v47
	v_or_b32_e32 v36, 35, v47
	v_or_b32_e32 v37, 34, v47
	v_or_b32_e32 v38, 33, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v68, null, v65, v65, v58
	v_div_scale_f32 v66, null, v65, v65, v57
	v_div_scale_f32 v70, null, v65, v65, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v68
	v_rcp_f32_e32 v67, v66
	v_div_scale_f32 v74, null, v65, v65, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v72, v70
	v_div_scale_f32 v75, s1, v58, v65, v58
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v71, vcc_lo, v57, v65, v57
	v_fma_f32 v55, -v68, v69, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v66, v67, 1.0
	v_div_scale_f32 v80, null, v65, v65, v62
	v_fma_f32 v78, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v55, v69
	v_fmac_f32_e32 v67, v53, v67
	v_div_scale_f32 v82, null, v65, v65, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v72, v78, v72 :: v_dual_mul_f32 v79, v75, v69
	v_mul_f32_e32 v73, v71, v67
	v_fma_f32 v78, -v74, v77, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v39, 32, v47
	v_or_b32_e32 v40, 23, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v76, -v68, v79, v75
	v_fma_f32 v55, -v66, v73, v71
	v_fmac_f32_e32 v77, v78, v77
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v41, 22, v47
	v_or_b32_e32 v42, 21, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v79, v76, v69
	v_div_scale_f32 v76, s4, v60, v65, v60
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v43, 20, v47
	v_or_b32_e32 v44, 19, v47
	v_or_b32_e32 v45, 18, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v78, v76, v77 :: v_dual_fmac_f32 v73, v55, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v55, 1, v47
	v_or_b32_e32 v46, 17, v47
	v_or_b32_e32 v48, 16, v47
	v_or_b32_e32 v49, 7, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v73, v71
	v_div_scale_f32 v71, s3, v59, v65, v59
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v50, 6, v47
	v_or_b32_e32 v51, 5, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v67, v73
	v_mul_f32_e32 v67, v71, v72
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v73, null, v65, v65, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v57, v66, v65, v57
	v_fma_f32 v66, -v68, v79, v75
	v_fma_f32 v68, -v70, v67, v71
	v_rcp_f32_e32 v75, v73
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v65
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v52, 4, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v69, v79
	v_fmac_f32_e32 v67, v68, v72
	v_rcp_f32_e32 v68, v80
	v_fma_f32 v69, -v74, v78, v76
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v58, v66, v65, v58
	v_fma_f32 v66, -v70, v67, v71
	v_div_scale_f32 v71, null, v65, v65, v63
	v_fma_f32 v79, -v73, v75, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v57, 0, v57, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v72, v67
	v_fma_f32 v70, -v80, v68, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v57, v57
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v59, v66, v65, v59
	v_fmac_f32_e32 v68, v70, v68
	v_rcp_f32_e32 v70, v71
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v58, v58
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v59, 0, v59, s1
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v53, 3, v47
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s79, v55
	v_cmp_gt_i32_e64 s30, s79, v54
	v_cmp_gt_i32_e64 s28, s79, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s36, v59, v59
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s79, v53
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v71, v70, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s79, v51
	v_cmp_gt_i32_e64 s26, s79, v50
	v_cmp_gt_i32_e64 s25, s79, v49
	v_cmp_gt_i32_e64 s24, s79, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v79, v70
	v_fmac_f32_e32 v78, v69, v77
	v_div_scale_f32 v69, s5, v61, v65, v61
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s79, v46
	v_cmp_gt_i32_e64 s22, s79, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v74, v78, v76
	v_div_scale_f32 v74, s3, v62, v65, v62
	v_div_scale_f32 v76, null, v65, v65, v64
	v_div_fmas_f32 v67, v67, v77, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v74, v68
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v81, v76
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s79, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v60, v67, v65, v60
	v_fma_f32 v66, -v80, v78, v74
	v_div_scale_f32 v67, s4, v63, v65, v63
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s79, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v60, 0, v60, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v78, v66, v68
	v_mul_f32_e32 v72, v69, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v76, v81, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s79, v42
	v_cmp_gt_i32_e64 s18, s79, v41
	v_cmp_gt_i32_e64 s17, s79, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v73, v72, v69
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s79, v39
	v_cmp_gt_i32_e64 s15, s79, v38
	v_cmp_gt_i32_e64 s14, s79, v37
	v_cmp_gt_i32_e64 s13, s79, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v72, v77, v75
	v_div_scale_f32 v77, null, v65, v65, v17
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s79, v35
	v_cmp_gt_i32_e64 s11, s79, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v73, v72, v69
	v_rcp_f32_e32 v73, v77
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s79, v33
	v_cmp_gt_i32_e64 s9, s79, v26
	v_cmp_gt_i32_e64 s8, s79, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v75, v72
	v_fma_f32 v72, -v80, v78, v74
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s79, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v61, v69, v65, v61
	v_div_fmas_f32 v68, v72, v68, v78
	v_rcp_f32_e32 v72, v82
	v_fma_f32 v80, -v77, v73, 1.0
	v_mul_f32_e32 v66, v67, v70
	v_div_scale_f32 v78, s3, v17, v65, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v74, -v71, v66, v67
	v_div_fixup_f32 v62, v68, v65, v62
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v61, 0, v61, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v82, v72, 1.0
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s6, v64, v65, v64
	v_fmac_f32_e32 v66, v74, v70
	v_fmac_f32_e32 v72, v69, v72
	v_mul_f32_e32 v68, v78, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v79, v81
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v71, v66, v67
	v_div_scale_f32 v71, null, v65, v65, v19
	v_fma_f32 v74, -v76, v75, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v67, v70, v66
	v_rcp_f32_e32 v69, v71
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v74, v81
	v_div_scale_f32 v74, s4, v18, v65, v18
	v_fma_f32 v70, -v77, v68, v78
	v_div_fixup_f32 v63, v66, v65, v63
	v_fma_f32 v67, -v76, v75, v79
	v_div_scale_f32 v76, null, v65, v65, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v71, v69, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v81, v75
	v_mul_f32_e32 v75, v74, v72
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v21
	v_div_fixup_f32 v64, v67, v65, v64
	v_fma_f32 v67, -v82, v75, v74
	v_fmac_f32_e32 v68, v70, v73
	v_rcp_f32_e32 v70, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v64, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v67, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v77, v68, v78
	v_div_scale_f32 v77, s5, v19, v65, v19
	v_div_fmas_f32 v66, v66, v73, v68
	v_rcp_f32_e32 v68, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v76, v70, 1.0
	v_div_scale_f32 v73, s3, v20, v65, v20
	v_div_fixup_f32 v17, v66, v65, v17
	v_fma_f32 v66, -v82, v75, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, null, v65, v65, v22
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v82, -v79, v68, 1.0
	v_mul_f32_e32 v80, v73, v70
	v_rcp_f32_e32 v81, v78
	v_div_fmas_f32 v66, v66, v72, v75
	s_mov_b32 vcc_lo, s5
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
	v_div_scale_f32 v72, s6, v22, v65, v22
	v_fmac_f32_e32 v67, v74, v69
	v_div_scale_f32 v74, s4, v21, v65, v21
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
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v66, v65, v19
	v_div_fmas_f32 v67, v67, v70, v80
	v_fma_f32 v70, -v78, v76, v72
	v_fmac_f32_e32 v71, v69, v68
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v73, v75
	v_rcp_f32_e32 v69, v77
	v_fmac_f32_e32 v76, v70, v81
	v_fma_f32 v66, -v79, v71, v74
	v_div_scale_f32 v79, null, v65, v65, v10
	v_div_fixup_f32 v20, v67, v65, v20
	v_div_scale_f32 v67, s3, v23, v65, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v66, v66, v68, v71
	v_fma_f32 v68, -v78, v76, v72
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v80, -v75, v73, 1.0
	v_fma_f32 v70, -v77, v69, 1.0
	v_div_scale_f32 v72, s4, v24, v65, v24
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
	s_mov_b32 vcc_lo, s3
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
	v_div_scale_f32 v66, s5, v9, v65, v9
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
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v73, s3, v10, v65, v10
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
	v_div_scale_f32 v77, s6, v11, v65, v11
	v_fma_f32 v66, -v70, v72, v66
	v_div_scale_f32 v70, null, v65, v65, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v77, v76
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v24, v69, v65, v24
	v_fma_f32 v69, -v81, v83, 1.0
	v_div_fmas_f32 v66, v66, v74, v72
	v_fma_f32 v67, -v75, v78, v77
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v83, v69, v83
	v_div_scale_f32 v69, s4, v12, v65, v12
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
	v_div_scale_f32 v74, s3, v13, v65, v13
	v_div_scale_f32 v73, null, v65, v65, v14
	v_div_fmas_f32 v68, v71, v68, v82
	v_fma_f32 v71, -v75, v78, v77
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v66, v74, v67
	v_rcp_f32_e32 v75, v73
	v_div_fixup_f32 v10, v68, v65, v10
	v_div_fmas_f32 v71, v71, v76, v78
	v_fma_f32 v76, -v81, v72, v69
	s_mov_b32 vcc_lo, s4
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
	v_div_scale_f32 v68, s5, v14, v65, v14
	s_mov_b32 vcc_lo, s3
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
	v_div_scale_f32 v69, s3, v15, v65, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v80, v74
	v_div_fixup_f32 v13, v66, v65, v13
	v_fma_f32 v66, -v76, v78, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v81, s5, v1, v65, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v82, -v74, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v82, v80
	v_mul_f32_e32 v72, v68, v75
	v_div_scale_f32 v82, s6, v2, v65, v2
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
	s_mov_b32 vcc_lo, s3
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
	v_div_scale_f32 v66, s4, v16, v65, v16
	v_fma_f32 v68, -v71, v73, v69
	v_mul_f32_e32 v75, v66, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v77, v73
	v_div_scale_f32 v73, null, v65, v65, v4
	v_fma_f32 v72, -v76, v75, v66
	s_mov_b32 vcc_lo, s4
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
	v_div_scale_f32 v72, s3, v3, v65, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v78, v75
	v_rcp_f32_e32 v75, v73
	v_fma_f32 v69, -v67, v84, v81
	s_mov_b32 vcc_lo, s5
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
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v1, v67, v65, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v70, v70, v80, v71
	v_fmac_f32_e32 v69, v74, v83
	v_div_scale_f32 v67, null, v65, v65, v5
	s_mov_b32 vcc_lo, s3
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
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v83, -v77, v79, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v68, v72, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	v_fma_f32 v81, -v70, v74, 1.0
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s6, v8, v65, v8
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s3, v5, v65, v5
	v_fma_f32 v80, -v73, v76, v71
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s5, v7, v65, v7
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
	v_div_scale_f32 v78, s4, v6, v65, v6
	v_fma_f32 v66, -v67, v82, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v80, v74
	v_fma_f32 v67, -v77, v86, v83
	v_mul_f32_e32 v84, v78, v72
	v_div_fmas_f32 v71, v71, v75, v76
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s79, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v86, v67, v79
	v_fma_f32 v73, -v68, v84, v78
	v_fma_f32 v67, -v70, v85, v81
	v_div_fmas_f32 v66, v66, v69, v82
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v69, -v77, v86, v83
	v_fmac_f32_e32 v84, v73, v72
	v_div_fixup_f32 v4, v71, v65, v4
	v_div_fixup_f32 v5, v66, v65, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v58, 16, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s79, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v68, v84, v78
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v72, v84
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s79, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v68, v65, v6
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v67, v65, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v67, v59, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v69, v65, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v65, 0, v1, s1
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v1, s65, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v56, v57, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s79, v32
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v1, s79
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v56, v57, v56, 0x7fff
	v_add3_u32 v57, v58, v66, 0x7fff
	v_add3_u32 v58, v59, v67, 0x7fff
	v_bfe_u32 v59, v60, 16, 1
	v_bfe_u32 v66, v62, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s34
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s35
	v_bfe_u32 v57, v61, 16, 1
	v_add3_u32 v59, v60, v59, 0x7fff
	v_cmp_o_f32_e64 s34, v60, v60
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s36
	v_cmp_o_f32_e64 s35, v61, v61
	v_add3_u32 v57, v61, v57, 0x7fff
	v_add3_u32 v60, v62, v66, 0x7fff
	v_cmp_o_f32_e64 s36, v62, v62
	v_cndmask_b16 v58.h, 0x7fff, v59.h, s34
	v_bfe_u32 v59, v63, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s35
	v_bfe_u32 v61, v64, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v60.h, s36
	v_bfe_u32 v60, v17, 16, 1
	v_add3_u32 v59, v63, v59, 0x7fff
	v_cmp_o_f32_e64 s34, v63, v63
	v_add3_u32 v61, v64, v61, 0x7fff
	v_cmp_o_f32_e64 s35, v64, v64
	v_add3_u32 v60, v17, v60, 0x7fff
	v_cmp_o_f32_e64 s36, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v59.h, s34
	v_bfe_u32 v59, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v61.h, s35
	v_bfe_u32 v61, v19, 16, 1
	v_bfe_u32 v62, v20, 16, 1
	v_cmp_o_f32_e64 s34, v18, v18
	v_add3_u32 v59, v18, v59, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s36
	v_add3_u32 v18, v19, v61, 0x7fff
	v_cmp_o_f32_e64 s35, v19, v19
	v_add3_u32 v19, v20, v62, 0x7fff
	v_cmp_o_f32_e64 s36, v20, v20
	v_cndmask_b16 v60.h, 0x7fff, v59.h, s34
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v59, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s35
	v_cmp_o_f32_e64 s34, v21, v21
	v_cmp_o_f32_e64 s35, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v59, 0x7fff
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
	v_bfe_u32 v13, v65, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s35
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s36
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v65, v13, 0x7fff
	v_cmp_o_f32_e64 s34, v65, v65
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
	v_cndmask_b32_e64 v7, v17, v58, s2
	v_cndmask_b32_e64 v8, v58, v17, s2
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s35
	v_cndmask_b32_e64 v14, v20, v60, s2
	v_cndmask_b32_e64 v15, v60, v20, s2
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
	v_cndmask_b32_e64 v6, v56, v57, s2
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
	v_cndmask_b32_e64 v5, v57, v56, s2
	v_lshl_or_b32 v12, v17, 4, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v47, v1, v47, 1
	v_add_lshl_u32 v55, v1, v55, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 0x5040504, v8
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
	v_add_lshl_u32 v54, v1, v54, 1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s31
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s79, v28
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s30
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s79, v27
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
	s_mov_b32 s79, 0x31027000
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	buffer_store_b16 v18, v47, s[76:79], 0 offen
	v_add_lshl_u32 v18, v1, v53, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v4.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v11, v55, s[76:79], 0 offen
	buffer_store_b16 v4, v54, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v52, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v2, v2, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v18, s2
	v_add_lshl_u32 v18, v1, v51, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s28
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v47, v1, v50, 1
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
	v_mov_b16_e32 v13.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	s_clause 0x1
	buffer_store_b16 v68, v11, s[76:79], 0 offen
	buffer_store_b16 v5, v4, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v49, 1
	v_add_lshl_u32 v5, v1, v48, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[76:79], 0 offen
	buffer_store_b16 v6, v47, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v11, v1, v45, 1
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
	v_mov_b16_e32 v22.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_store_b16 v12, v4, s[76:79], 0 offen
	buffer_store_b16 v7, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[76:79], 0 offen
	buffer_store_b16 v14, v11, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v41, 1
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
	v_mov_b16_e32 v24.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v21, v4, s[76:79], 0 offen
	buffer_store_b16 v15, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	v_add_lshl_u32 v5, v1, v39, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s17
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v24, v6, s[76:79], 0 offen
	buffer_store_b16 v16, v7, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v37, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v57.l, v17.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v57.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v23, v4, s[76:79], 0 offen
	buffer_store_b16 v17, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v36, 1
	v_add_lshl_u32 v5, v1, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s13
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v57, v6, s[76:79], 0 offen
	buffer_store_b16 v9, v7, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v34, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v56.l, v9.h
	v_mov_b16_e32 v56.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v33, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v59.l, v19.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v59.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v56, v4, s[76:79], 0 offen
	buffer_store_b16 v19, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v32, 1
	v_add_lshl_u32 v5, v1, v31, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s6
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v59, v6, s[76:79], 0 offen
	buffer_store_b16 v10, v7, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v30, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v7, v1, v29, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v58.l, v10.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v58.h, v68.h
	v_mov_b16_e32 v61.l, v20.h
	v_mov_b16_e32 v61.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v60.l, v3.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x3
	buffer_store_b16 v58, v4, s[76:79], 0 offen
	buffer_store_b16 v20, v5, s[76:79], 0 offen
	buffer_store_b16 v61, v6, s[76:79], 0 offen
	buffer_store_b16 v3, v7, s[76:79], 0 offen
	v_add_lshl_u32 v3, v1, v27, 1
	v_add_lshl_u32 v4, v1, v28, 1
	v_add_lshl_u32 v5, v1, v26, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v1, v25, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s9
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v60.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v63.l, v8.h
	v_mov_b16_e32 v63.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v62.l, v2.h
	v_mov_b16_e32 v62.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v60, v4, s[76:79], 0 offen
	buffer_store_b16 v8, v3, s[76:79], 0 offen
	buffer_store_b16 v63, v1, s[76:79], 0 offen
	buffer_store_b16 v2, v5, s[76:79], 0 offen
	buffer_store_b16 v62, v0, s[76:79], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp298:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 496
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 496
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26940
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 496
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
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
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
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
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
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
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
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp190-.Lfunc_begin0
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
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
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
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp190-.Lfunc_begin0
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
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 496
    .sgpr_count:     107
    .sgpr_spill_count: 1
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 123
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
