	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[80:83], s[0:1], 0x4c
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b32 s97, s[0:1], 0x5c
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v65, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s99, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v66, 6, v65
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v1, 63, v65
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v2, 2, v66
	v_or_b32_e32 v3, 4, v66
	v_or_b32_e32 v4, 6, v66
	v_or_b32_e32 v5, 8, v66
	v_or_b32_e32 v6, 10, v66
	v_or_b32_e32 v7, 12, v66
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v5, off offset:12
	scratch_store_b32 off, v6, off offset:16
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[97:98], null, s97, v66, v[1:2]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s44, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s4, s80
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s96, s2, 6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[36:37], null, s97, 6, v[97:98]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v0, s5
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[38:39], null, s97, 10, v[97:98]
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s5, s3, s82
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s96, v4
	v_or_b32_e32 v6, s96, v6
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[39:40], null, s97, 12, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v8, 14, v66
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v5, s96, v5
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	v_readfirstlane_b32 s6, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v0, s96, v66
	scratch_store_b32 off, v7, off offset:20 ; 4-byte Folded Spill
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v7, s96, v7
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	v_lshl_add_u32 v35, s97, 2, v97
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v37, s97, 3, v97
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s82, v6
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[40:41], null, s97, 14, v[97:98]
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s6, s6
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[42:43], null, s97, 18, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v9, 16, v66
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s7, s7, s6
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v11, 18, v66
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s7, s3
	s_add_i32 s6, s6, s2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:24
	scratch_store_b32 off, v9, off offset:28
	s_mul_hi_u32 s2, s7, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v8, s96, v8
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s2, s4
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s11, s82, v7
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s4
	s_cmp_ge_u32 s6, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[43:44], null, s97, 20, v[97:98]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v12, 20, v66
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s35, s7, s2
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s2, s81
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s96, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s6, s2
	s_sub_i32 s7, 0, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, s96, v9
	scratch_store_b32 off, v11, off offset:32 ; 4-byte Folded Spill
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v10, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, s96, v11
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v41, s97, 4, v97
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s12, s82, v8
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s96, v3
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v34, s97, 1, v97
	v_mad_u64_u32 v[44:45], null, s97, 22, v[97:98]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v13, 22, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:36
	scratch_store_b32 off, v34, off offset:60
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s6, v10
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, 36, v0
	v_or_b32_e32 v12, s96, v12
	v_or_b32_e32 v18, 32, v0
	v_or_b32_e32 v19, 34, v0
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s82, v10
	v_mov_b32_e32 v10, v42
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v20, 38, v0
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s6, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, 40, v0
	v_or_b32_e32 v22, 42, v0
	v_or_b32_e32 v23, 44, v0
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s7, s7, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v24, 46, v0
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v25, 48, v0
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s80, s81
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s55, s7, 31
	s_mul_i32 s8, s6, s2
	s_add_i32 s7, s6, 1
	s_sub_i32 s4, s4, s8
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v26, 50, v0
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	v_mov_b32_e32 v6, v38
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s82, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s59, s7, s6
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s65, s5, s96
	v_mov_b32_e32 v4, v36
	s_mul_i32 s64, s65, s97
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x3                            ; 24-byte Folded Spill
	scratch_store_b32 off, v35, off offset:64
	scratch_store_b32 off, v37, off offset:76
	scratch_store_b64 off, v[6:7], off offset:80
	scratch_store_b64 off, v[4:5], off offset:68
	.loc	1 598 26                        ; attention.py:598:26
	v_add_nc_u32_e32 v33, s64, v97
	v_mov_b32_e32 v7, v39
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s82, v0
	.loc	1 601 61 is_stmt 0              ; attention.py:601:61
	v_cmp_gt_i32_e64 s60, s97, v1
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v27, 52, v0
	v_or_b32_e32 v28, 54, v0
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[7:8], off offset:88 ; 8-byte Folded Spill
	v_mov_b32_e32 v8, v40
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v29, 56, v0
	v_or_b32_e32 v30, 58, v0
	v_or_b32_e32 v31, 60, v0
	v_or_b32_e32 v32, 62, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s82, v2
	v_cmp_gt_i32_e64 s14, s82, v11
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v0, 1, v33
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[8:9], off offset:96
	scratch_store_b64 off, v[10:11], off offset:108
	v_mov_b32_e32 v11, v43
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[45:46], null, s97, 24, v[97:98]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s7, s82, v3
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s64, v34, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s5, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s64, v35, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v14, 24, v66
	scratch_store_b32 off, v13, off offset:40 ; 4-byte Folded Spill
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v13, s96, v13
	.loc	1 601 23 is_stmt 1              ; attention.py:601:23
	v_cmp_gt_i32_e64 s15, s82, v12
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s6, s60
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v41, off offset:104
	scratch_store_b64 off, v[11:12], off offset:116
	v_mov_b32_e32 v12, v44
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s9, s82, v5
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v4, s64, v36, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[46:47], null, s97, 26, v[97:98]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s7, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v5, s64, v37, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s8, s60
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v15, 26, v66
	scratch_store_b32 off, v14, off offset:44 ; 4-byte Folded Spill
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v14, s96, v14
	.loc	1 601 23 is_stmt 1              ; attention.py:601:23
	v_cmp_gt_i32_e64 s16, s82, v13
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v6, s64, v38, 1
	scratch_store_b64 off, v[12:13], off offset:124 ; 8-byte Folded Spill
	v_mov_b32_e32 v13, v45
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s9, s60
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[47:48], null, s97, 28, v[97:98]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s64, v39, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s10, s60
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s13, s82, v9
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v8, s64, v40, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v16, 28, v66
	scratch_store_b32 off, v15, off offset:48 ; 4-byte Folded Spill
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v15, s96, v15
	.loc	1 601 23 is_stmt 1              ; attention.py:601:23
	v_cmp_gt_i32_e64 s17, s82, v14
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s11, s60
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[13:14], off offset:132 ; 8-byte Folded Spill
	v_mov_b32_e32 v14, v46
	v_add_lshl_u32 v9, s64, v41, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[48:49], null, s97, 30, v[97:98]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s12, s60
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v17, 30, v66
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v10, s64, v42, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s13, s60
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off offset:52
	scratch_store_b32 off, v17, off offset:56
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s96, v16
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s82, v15
	v_cmp_gt_i32_e32 vcc_lo, s82, v28
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v11, s64, v43, 1
	scratch_store_b64 off, v[14:15], off offset:140 ; 8-byte Folded Spill
	v_mov_b32_e32 v15, v47
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s14, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v12, s64, v44, 1
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s45, s97, 54
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s96, v17
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s15, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v13, s64, v45, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s19, s82, v16
	v_cmp_gt_i32_e64 s4, s82, v31
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s16, s60
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[15:16], off offset:148 ; 8-byte Folded Spill
	v_add_lshl_u32 v31, v33, s45, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s60
	v_mov_b32_e32 v16, v48
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v14, s64, v46, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s17, s60
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s82, v17
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v15, s64, v47, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s18, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s63, s97, 5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s21, s82, v18
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	scratch_store_b64 off, v[16:17], off offset:156 ; 8-byte Folded Spill
	v_add_lshl_u32 v16, s64, v48, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s19, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s61, s97, 34
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s22, s82, v19
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v17, v33, s63, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s20, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s58, s97, 36
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v18, v33, s61, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s21, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s57, s97, 38
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s82, v20
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v19, v33, s58, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s22, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s56, s97, 40
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s25, s82, v21
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v20, v33, s57, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s23, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s54, s97, 42
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s26, s82, v22
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v21, v33, s56, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s24, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s53, s97, 44
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s27, s82, v23
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v22, v33, s54, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s25, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s52, s97, 46
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s28, s82, v24
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v23, v33, s53, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s26, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s51, s97, 48
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s29, s82, v25
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v24, v33, s52, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s27, s60
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s50, s97, 56
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s33, s82, v29
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v25, v33, s51, 1
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s47, s97, 50
	s_mul_i32 s48, s97, 52
	s_mul_i32 s49, s97, 58
	s_mul_i32 s46, s97, 60
	s_mul_i32 s62, s97, 62
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s28, s60
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s30, s82, v26
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_add_lshl_u32 v26, v33, s50, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s31, s82, v27
	v_cmp_gt_i32_e64 s34, s82, v30
	v_cmp_gt_i32_e64 s2, s82, v32
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s29, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v27, v33, s47, 1
	v_add_lshl_u32 v28, v33, s48, 1
	v_add_lshl_u32 v29, v33, s49, 1
	v_add_lshl_u32 v30, v33, s46, 1
	v_add_lshl_u32 v32, v33, s62, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v33, v65, 6, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s33, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v34, 1, v1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s30, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v33, 0x90, v33
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s34, s60
	s_and_b32 s4, s4, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s5, s31, s60
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v33, v33, v34
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s2, s60
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s41, s41, 0xffff
	v_dual_cndmask_b32 v32, 0x80000000, v32 :: v_dual_add_nc_u32 v163, 0, v33
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
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s59, s55
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s6, s83, 31
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s4, s2, s55
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v34, 0x120, v33
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s2, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v35, 0x240, v33
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s5, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v33, 0x360, v33
	v_add_nc_u32_e32 v164, 0, v34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v36, s5
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s5, s6, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v165, 0, v35
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s5, s5, 27
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v166, 0, v33
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s5, s6, s5
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v163, v0
	s_waitcnt vmcnt(27)
	ds_store_b16 v163, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v163, v9 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v163, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v163, v17 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v163, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v163, v25 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v163, v26 offset:7168
	ds_store_b16 v164, v2
	ds_store_b16 v164, v6 offset:1024
	ds_store_b16 v164, v10 offset:2048
	ds_store_b16 v164, v14 offset:3072
	ds_store_b16 v164, v18 offset:4096
	ds_store_b16 v164, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v164, v27 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v164, v29 offset:7168
	ds_store_b16 v165, v3
	ds_store_b16 v165, v7 offset:1024
	ds_store_b16 v165, v11 offset:2048
	ds_store_b16 v165, v15 offset:3072
	ds_store_b16 v165, v19 offset:4096
	ds_store_b16 v165, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v165, v28 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v165, v30 offset:7168
	ds_store_b16 v166, v4
	ds_store_b16 v166, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v166, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v166, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v166, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v166, v24 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v166, v31 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v166, v32 offset:7168
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s100, s5, 0xffffffe0
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s5, s36, 0x10008
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s5, v36
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s96, s38
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s96, s37
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s6, s39
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s39
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s6, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s83, s6
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s7, s8, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s6, s6, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s99, s7, 0x7fffffe0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s100, s100, s6
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v0, 0, 1, s44
	s_and_not1_b32 vcc_lo, exec_lo, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s6, 1, v0
	v_writelane_b32 v255, s6, 1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s6, s96, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 64
	s_min_i32 s6, s83, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 31
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s7, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 27
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s6, s6, 31
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s100, s100, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s79, s[0:1], 0x64
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_and_b32_e32 v69, 16, v65
	v_and_b32_e32 v67, 15, v65
	v_and_b32_e32 v68, 0x60, v65
	v_and_b32_e32 v29, 64, v65
	v_lshlrev_b32_e32 v70, 2, v65
	v_cmp_eq_u32_e64 s40, 0, v69
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s99, s100
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v0, 4, v65
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v2, 7, v67
	v_lshlrev_b32_e32 v3, 6, v68
	v_lshrrev_b32_e32 v4, 4, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v0, 0x70, v0
	v_lshlrev_b32_e32 v5, 8, v67
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v6, 1, v29
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v4, 2, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v3, v2, v3, v0
	s_xor_b32 s6, s3, s80
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_ashr_i32 s6, s6, 31
	v_or3_b32 v4, v4, v5, v6
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v5, 0, v3
	v_or_b32_e32 v169, v0, v2
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v0, 1, v65
	v_xad_u32 v6, v3, 16, 0
	s_xor_b32 s7, s35, s6
	s_cvt_u32_f32 s5, s5
	v_xad_u32 v7, v3, 32, 0
	v_xad_u32 v8, v3, 48, 0
	s_sub_i32 s6, s7, s6
	s_sub_i32 s7, 0, s2
	v_xad_u32 v9, v3, 64, 0
	v_xad_u32 v10, 0x50, v3, 0
	v_xad_u32 v11, 0x60, v3, 0
	v_xad_u32 v3, 0x70, v3, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:164
	scratch_store_b32 off, v29, off offset:552
	scratch_store_b32 off, v65, off offset:544
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[29:32], v6
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[37:40], v8
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[49:52], v11
	ds_load_b128 v[53:56], v3
	v_lshrrev_b32_e32 v3, 2, v69
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v5, 3, v67
	s_mul_i32 s8, s6, s80
	s_mul_i32 s7, s7, s5
	s_sub_i32 s3, s3, s8
	s_mul_hi_u32 s7, s5, s7
	s_abs_i32 s8, s3
	s_add_i32 s5, s5, s7
	v_or3_b32 v167, v4, v3, v5
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v4, 5, v68
	s_mul_hi_u32 s5, s8, s5
	s_ashr_i32 s7, s3, 31
	s_ashr_i32 s4, s4, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s9, s5, s2
	v_or_b32_e32 v3, v4, v3
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v0, 60, v0
	s_xor_b32 s4, s7, s4
	s_sub_i32 s7, s8, s9
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s2
	s_cmp_ge_u32 s7, s2
	v_or3_b32 v168, v3, v5, v2
	v_lshl_or_b32 v0, v68, 4, v0
	v_lshrrev_b32_e32 v2, 3, v68
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s2
	v_xor_b32_e32 v0, v0, v2
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v2, 6, v65
	s_cselect_b32 s2, s8, s5
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_load_b32 s80, s[0:1], 0x7c
	s_xor_b32 s2, s2, s4
	v_writelane_b32 v255, s65, 2
	s_sub_i32 s2, s2, s4
	.loc	1 656 33                        ; attention.py:656:33
	s_mul_i32 s4, s6, s81
	v_and_or_b32 v171, v2, 64, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v0, s96, v4
	.loc	1 656 33                        ; attention.py:656:33
	s_add_i32 s2, s2, s4
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b64 s[84:85], s[0:1], 0x30
	.loc	1 656 32 is_stmt 0              ; attention.py:656:32
	s_mul_i32 s0, s2, s83
	v_mov_b32_e32 v57, 0
	.loc	1 664 27 is_stmt 1              ; attention.py:664:27
	v_writelane_b32 v255, s0, 3
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v0
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 4, v0
	v_or_b32_e32 v2, 48, v0
	v_or_b32_e32 v5, 16, v0
	v_or_b32_e32 v13, 8, v0
	v_writelane_b32 v255, s1, 4
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v9
	v_cmp_gt_i32_e64 s16, s82, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v74, s39, v5
	v_dual_mov_b32 v58, v57 :: v_dual_add_nc_u32 v99, s39, v2
	v_dual_mov_b32 v23, v57 :: v_dual_and_b32 v2, 31, v65
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, 12, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v13
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, 32, v0
	v_or_b32_e32 v6, 52, v0
	v_or_b32_e32 v7, 36, v0
	v_or_b32_e32 v8, 20, v0
	v_or_b32_e32 v10, 56, v0
	v_or_b32_e32 v11, 40, v0
	v_or_b32_e32 v12, 24, v0
	v_or_b32_e32 v14, 60, v0
	v_or_b32_e32 v15, 44, v0
	v_or_b32_e32 v16, 28, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:168
	scratch_store_b32 off, v69, off offset:560
	scratch_store_b32 off, v67, off offset:548
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v69, s39, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s23, v4
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v17
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v71, s39, v9
	v_dual_mov_b32 v9, v57 :: v_dual_add_nc_u32 v80, s39, v11
	v_mov_b32_e32 v63, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 7
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v5
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[109:110], null, s80, v2, v[0:1]
	v_lshlrev_b32_e32 v0, 2, v2
	v_lshrrev_b32_e32 v2, 2, v68
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 8
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v8
	v_dual_mov_b32 v61, v57 :: v_dual_add_nc_u32 v78, s39, v3
	v_lshl_or_b32 v0, v68, 3, v0
	v_xor_b32_e32 v190, v70, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 9
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v12
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v79, s39, v7
	v_xor_b32_e32 v189, v0, v2
	v_mov_b32_e32 v0, 0x5410
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 10
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v16
	v_mov_b32_e32 v2, 0x7632
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[232:233], null, s23, 12, v[109:110]
	v_cndmask_b32_e64 v0, 0x1054, v0, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 11
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v3
	v_cndmask_b32_e64 v2, 0x3276, v2, s40
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[233:234], null, s23, 20, v[109:110]
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 12
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v7
	v_lshl_or_b32 v2, v2, 8, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v57 :: v_dual_and_b32 v0, 0x540054, v0
	v_mov_b32_e32 v149, 0xff800000
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 13
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v11
	v_mov_b32_e32 v11, v57
	v_lshl_or_b32 v0, v0, 4, v0
	v_and_b32_e32 v2, 0x760076, v2
	v_mov_b32_e32 v151, 0xff800000
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[234:235], null, s23, 24, v[109:110]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v62, v57 :: v_dual_and_b32 v191, 0x5040504, v0
	v_xor_b32_e32 v0, 16, v169
	v_mad_u64_u32 v[3:4], null, s79, v66, v[1:2]
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s79, v1
	v_lshl_or_b32 v1, v2, 4, v2
	v_dual_mov_b32 v64, v57 :: v_dual_add_nc_u32 v193, 0, v0
	v_xor_b32_e32 v0, 32, v169
	v_mov_b32_e32 v153, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v192, 0x7060706, v1
	v_lshl_or_b32 v1, v67, 9, v70
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v72, s39, v13
	v_add_nc_u32_e32 v194, 0, v0
	v_xor_b32_e32 v0, 48, v169
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v73, s39, v17
	v_mov_b32_e32 v161, 0xff800000
	v_mov_b32_e32 v157, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v18, v57 :: v_dual_add_nc_u32 v195, 0, v0
	v_xor_b32_e32 v0, 64, v169
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v75, s39, v8
	v_dual_mov_b32 v59, v57 :: v_dual_add_nc_u32 v76, s39, v12
	v_add_nc_u32_e32 v196, 0, v0
	v_xor_b32_e32 v0, 0x50, v169
	v_mov_b32_e32 v139, 0xff800000
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v77, s39, v16
	v_dual_mov_b32 v17, v57 :: v_dual_add_nc_u32 v98, s39, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v20, v57 :: v_dual_add_nc_u32 v197, 0, v0
	v_xor_b32_e32 v0, 0x60, v169
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v100, s39, v6
	v_mov_b32_e32 v19, v57
	v_dual_mov_b32 v60, v57 :: v_dual_add_nc_u32 v101, s39, v10
	v_dual_mov_b32 v5, v57 :: v_dual_add_nc_u32 v198, 0, v0
	v_xor_b32_e32 v0, 0x70, v169
	v_dual_mov_b32 v21, v57 :: v_dual_add_nc_u32 v102, s39, v14
	v_mov_b32_e32 v141, 0xff800000
	v_writelane_b32 v255, s1, 14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v22, v57 :: v_dual_add_nc_u32 v199, 0, v0
	v_xor_b32_e32 v0, 0x420, v189
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s82, v15
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[118:119], null, s23, 48, v[109:110]
	v_mad_u64_u32 v[105:106], null, s23, 28, v[109:110]
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:172
	scratch_store_b32 off, v68, off offset:556
	v_mov_b32_e32 v185, 0xff800000
	v_mad_u64_u32 v[119:120], null, s23, 52, v[109:110]
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v189
	v_mad_u64_u32 v[106:107], null, s23, 36, v[109:110]
	v_mov_b32_e32 v183, 0xff800000
	v_mad_u64_u32 v[120:121], null, s23, 56, v[109:110]
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v0
	v_mad_u64_u32 v[107:108], null, s23, 40, v[109:110]
	v_mad_u64_u32 v[121:122], null, s23, 60, v[109:110]
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc60, v189
	v_mov_b32_e32 v181, 0xff800000
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v255, s1, 15
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s1, s23, s96
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s2, s6, s21
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s17, s82, v6
	v_cmp_gt_i32_e64 s18, s82, v10
	v_cmp_gt_i32_e64 s19, s82, v14
	v_mov_b32_e32 v13, v57
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v167
	v_mov_b32_e32 v179, 0xff800000
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v2, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v3, v57 :: v_dual_add_nc_u32 v0, 0, v0
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v8, v57
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v144, s23, 2, v109
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v167
	v_mov_b32_e32 v177, 0xff800000
	v_lshl_add_u32 v145, s23, 3, v109
	v_lshl_add_u32 v146, s23, 4, v109
	v_lshl_add_u32 v147, s23, 5, v109
	v_add_nc_u32_e32 v0, 0, v0
	v_lshl_add_u32 v148, v67, 1, 0
	v_mov_b32_e32 v236, 0xff800000
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_mov_b32 v175, 0xff800000
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v167
	v_mov_b32_e32 v152, 0xff800000
	v_mov_b32_e32 v162, 0xff800000
	v_mov_b32_e32 v170, 0xff800000
	v_mov_b32_e32 v188, 0xff800000
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v160, 0xff800000
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_mov_b32 v173, 0xff800000
	v_mov_b32_e32 v140, 0xff800000
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v167
	v_mov_b32_e32 v142, 0xff800000
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v184, 0xff800000
	v_mov_b32_e32 v182, 0xff800000
	v_add_nc_u32_e32 v0, 0, v0
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_mov_b32 v143, 0xff800000
	v_mov_b32_e32 v178, 0xff800000
	v_mov_b32_e32 v176, 0xff800000
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v167
	v_mov_b32_e32 v174, 0xff800000
	v_mov_b32_e32 v172, 0xff800000
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s101, s20, 0x3fb8aa3b
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s3, s22
	v_dual_mov_b32 v235, v66 :: v_dual_add_nc_u32 v0, 0, v0
	s_add_i32 s102, s2, s1
	s_mov_b32 s68, 0
	s_and_b32 s89, s25, 0xffff
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v167
	s_mov_b32 s88, s24
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	s_add_i32 s102, s102, s3
	v_add_nc_u32_e32 v0, 0, v0
	s_and_b32 s85, s85, 0xffff
	s_lshl_b32 s103, s79, 1
	s_lshl_b32 s104, s79, 2
	s_lshl_b32 vcc_hi, s79, 3
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v167
	s_lshl_b32 s78, s79, 4
	s_and_b32 s93, s27, 0xffff
	s_mov_b32 s92, s26
	s_mov_b32 s69, s68
	v_add_nc_u32_e32 v0, 0, v0
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v167
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s98, 0x76543210
	v_mov_b32_e32 v24, v57
	v_add_nc_u32_e32 v0, 0, v0
	v_mov_b32_e32 v10, v57
	v_mov_b32_e32 v12, v57
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v16, v57
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v167
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v167
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v167
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x78, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x220, v190
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x440, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x660, v190
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v168
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x78, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:320
	scratch_store_b32 off, v70, off offset:564
	v_xor_b32_e32 v0, 4, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 12, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 20, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 28, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v104, 0, v0
	v_xor_b32_e32 v0, 36, v1
	v_add_nc_u32_e32 v245, 0, v0
	v_xor_b32_e32 v0, 40, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v246, 0, v0
	v_xor_b32_e32 v0, 44, v1
	v_add_nc_u32_e32 v247, 0, v0
	v_xor_b32_e32 v0, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v248, 0, v0
	v_xor_b32_e32 v0, 52, v1
	v_add_nc_u32_e32 v249, 0, v0
	v_xor_b32_e32 v0, 56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v250, 0, v0
	v_xor_b32_e32 v0, 60, v1
	v_mov_b32_e32 v1, v57
	v_add_nc_u32_e32 v251, 0, v0
	v_xor_b32_e32 v0, 0x810, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v252, 0, v0
	v_xor_b32_e32 v0, 0x1020, v171
	v_add_nc_u32_e32 v253, 0, v0
	v_xor_b32_e32 v0, 0x1830, v171
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v254, 0, v0
	v_subrev_nc_u32_e32 v0, s37, v69
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v71
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v72
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v73
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v74
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v75
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v76
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v77
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v78
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v79
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v80
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v98
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v99
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v100
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v101
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v102
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:476
	scratch_store_b32 off, v69, off offset:352
	v_add_nc_u32_e32 v0, s38, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:480
	scratch_store_b32 off, v71, off offset:356
	v_add_nc_u32_e32 v0, s38, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:484
	scratch_store_b32 off, v72, off offset:360
	v_add_nc_u32_e32 v0, s38, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:488
	scratch_store_b32 off, v73, off offset:364
	v_add_nc_u32_e32 v0, s38, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:492
	scratch_store_b32 off, v74, off offset:368
	v_add_nc_u32_e32 v0, s38, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:496
	scratch_store_b32 off, v75, off offset:372
	v_add_nc_u32_e32 v0, s38, v75
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:500
	scratch_store_b32 off, v76, off offset:376
	v_add_nc_u32_e32 v0, s38, v76
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:504
	scratch_store_b32 off, v77, off offset:380
	v_add_nc_u32_e32 v0, s38, v77
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:508
	scratch_store_b32 off, v78, off offset:384
	v_add_nc_u32_e32 v0, s38, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:512
	scratch_store_b32 off, v79, off offset:388
	v_add_nc_u32_e32 v0, s38, v79
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:516
	scratch_store_b32 off, v80, off offset:392
	v_add_nc_u32_e32 v0, s38, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:520
	scratch_store_b32 off, v98, off offset:396
	v_add_nc_u32_e32 v0, s38, v98
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:524
	scratch_store_b32 off, v99, off offset:400
	v_add_nc_u32_e32 v0, s38, v99
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:528
	scratch_store_b32 off, v100, off offset:404
	v_add_nc_u32_e32 v0, s38, v100
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:532
	scratch_store_b32 off, v101, off offset:408
	v_add_nc_u32_e32 v0, s38, v101
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:536
	scratch_store_b32 off, v102, off offset:412
	v_add_nc_u32_e32 v0, s38, v102
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[102:103], null, s23, 44, v[109:110]
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s99, s80
	.loc	1 683 36                        ; attention.py:683:36
	s_mov_b32 s86, s90
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s3, s102, s3
	.loc	1 683 36                        ; attention.py:683:36
	s_mov_b32 s87, s91
	v_add_lshl_u32 v0, s3, v118, 1
	v_add_lshl_u32 v98, s3, v147, 1
	v_add_lshl_u32 v112, s3, v233, 1
	v_add_lshl_u32 v113, s3, v144, 1
	v_add_lshl_u32 v99, s3, v119, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s15
	v_cndmask_b32_e64 v98, 0x80000000, v98, s14
	v_cndmask_b32_e64 v112, 0x80000000, v112, s8
	v_cndmask_b32_e64 v113, 0x80000000, v113, s6
	v_add_lshl_u32 v100, s3, v106, 1
	s_clause 0x1
	buffer_load_u16 v0, v0, s[84:87], 0 offen
	buffer_load_u16 v98, v98, s[84:87], 0 offen
	v_add_lshl_u32 v114, s3, v234, 1
	v_add_lshl_u32 v101, s3, v120, 1
	v_add_lshl_u32 v115, s3, v145, 1
	v_add_lshl_u32 v103, s3, v107, 1
	v_add_lshl_u32 v116, s3, v105, 1
	v_add_lshl_u32 v108, s3, v121, 1
	v_add_lshl_u32 v110, s3, v102, 1
	v_add_lshl_u32 v117, s3, v232, 1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s12
	v_cndmask_b32_e64 v100, 0x80000000, v100, s11
	v_cndmask_b32_e64 v114, 0x80000000, v114, s5
	v_cndmask_b32_e64 v101, 0x80000000, v101, s9
	v_cndmask_b32_e64 v115, 0x80000000, v115, s81
	v_cndmask_b32_e64 v103, 0x80000000, v103, s7
	v_cndmask_b32_e64 v116, 0x80000000, v116, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v117, 0x80000000, v117, s95
	s_clause 0x9
	buffer_load_u16 v99, v99, s[84:87], 0 offen
	buffer_load_u16 v100, v100, s[84:87], 0 offen
	buffer_load_u16 v101, v101, s[84:87], 0 offen
	buffer_load_u16 v103, v103, s[84:87], 0 offen
	buffer_load_u16 v108, v108, s[84:87], 0 offen
	buffer_load_u16 v110, v110, s[84:87], 0 offen
	buffer_load_u16 v114, v114, s[84:87], 0 offen
	buffer_load_u16 v115, v115, s[84:87], 0 offen
	buffer_load_u16 v116, v116, s[84:87], 0 offen
	buffer_load_u16 v117, v117, s[84:87], 0 offen
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s99, s99, 32
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(11)
	v_cndmask_b16 v111.h, 0xff80, v0.l, s15
	v_add_lshl_u32 v0, s3, v146, 1
	s_waitcnt vmcnt(10)
	v_cndmask_b16 v111.l, 0xff80, v98.l, s14
	v_add_lshl_u32 v98, s3, v109, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s13
	v_cndmask_b32_e64 v98, 0x80000000, v98, s10
	s_clause 0x3
	buffer_load_u16 v0, v0, s[84:87], 0 offen
	buffer_load_u16 v98, v98, s[84:87], 0 offen
	buffer_load_u16 v112, v112, s[84:87], 0 offen
	buffer_load_u16 v113, v113, s[84:87], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(13)
	v_cndmask_b16 v132.h, 0xff80, v99.l, s12
	s_waitcnt vmcnt(12)
	v_cndmask_b16 v132.l, 0xff80, v100.l, s11
	s_waitcnt vmcnt(10)
	v_cndmask_b16 v103.h, 0xff80, v101.l, s9
	v_cndmask_b16 v103.l, 0xff80, v103.l, s7
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v113.h, 0xff80, v114.l, s5
	v_cndmask_b16 v108.h, 0xff80, v108.l, s1
	v_cndmask_b16 v108.l, 0xff80, v110.l, s2
	v_cndmask_b16 v110.h, 0xff80, v116.l, s4
	v_cndmask_b16 v110.l, 0xff80, v117.l, s95
	v_cndmask_b16 v131.h, 0xff80, v0.l, s13
	v_cndmask_b16 v131.l, 0xff80, v98.l, s10
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v0, 0, v189
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v112.h, 0xff80, v112.l, s8
	v_cndmask_b16 v112.l, 0xff80, v113.l, s6
	v_cndmask_b16 v113.l, 0xff80, v115.l, s81
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b32 v0, v131, v111 offset1:32
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v0, v112, v132 offset1:32
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v0, v113, v103 offset1:32
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v0, v110, v108 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v98, off, off offset:192
	scratch_load_b32 v99, off, off offset:196
	scratch_load_b32 v100, off, off offset:200
	scratch_load_b32 v101, off, off offset:204
	scratch_load_b32 v114, off, off offset:208
	scratch_load_b32 v115, off, off offset:212
	scratch_load_b32 v116, off, off offset:216
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v0, 0, v167
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_u16 v0, v0
	s_waitcnt vmcnt(6)
	ds_load_u16 v98, v98
	s_waitcnt vmcnt(5)
	ds_load_u16 v99, v99
	s_waitcnt vmcnt(4)
	ds_load_u16 v100, v100
	s_waitcnt vmcnt(3)
	ds_load_u16 v101, v101
	s_waitcnt vmcnt(2)
	ds_load_u16 v114, v114
	s_waitcnt vmcnt(1)
	ds_load_u16 v115, v115
	s_waitcnt vmcnt(0)
	ds_load_u16 v116, v116
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v101, 16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v124, 0x3fb8aa3b, v101 :: v_dual_mul_f32 v101, 0x3fb8aa3b, v115
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v117, 16, v99
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v99, 0x3fb8aa3b, v0
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v101, s101, v79 :: v_dual_lshlrev_b32 v122, 16, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v100, 0x3fb8aa3b, v98
	v_mul_f32_e32 v98, 0x3fb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v99, s101, v73
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v123, 0x3fb8aa3b, v122
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v100, s101, v74
	v_fmac_f32_e32 v98, s101, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v124, s101, v77 :: v_dual_fmac_f32 v123, s101, v76
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v125, 0x3fb8aa3b, v114
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:220
	scratch_load_b32 v73, off, off offset:224
	scratch_load_b32 v74, off, off offset:228
	scratch_load_b32 v75, off, off offset:232
	scratch_load_b32 v76, off, off offset:236
	scratch_load_b32 v77, off, off offset:240
	scratch_load_b32 v79, off, off offset:248
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v125, s101, v78
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b32 v78, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v122, 0x3fb8aa3b, v116
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	ds_load_u16 v0, v0
	s_waitcnt vmcnt(6)
	ds_load_u16 v73, v73
	s_waitcnt vmcnt(5)
	ds_load_u16 v74, v74
	s_waitcnt vmcnt(4)
	ds_load_u16 v75, v75
	s_waitcnt vmcnt(3)
	ds_load_u16 v76, v76
	s_waitcnt vmcnt(2)
	ds_load_u16 v77, v77
	s_waitcnt vmcnt(1)
	ds_load_u16 v79, v79
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v122, s101, v80
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v78, v78
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v73, 16, v73
	v_lshlrev_b32_e32 v75, 16, v75
	v_lshlrev_b32_e32 v77, 16, v77
	v_lshlrev_b32_e32 v115, 16, v79
	v_lshlrev_b32_e32 v114, 16, v78
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v75
	v_mul_f32_e32 v128, 0x3fb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v130, 0x3fb8aa3b, v115 :: v_dual_mul_f32 v129, 0x3fb8aa3b, v114
	v_dual_mul_f32 v127, 0x3fb8aa3b, v76 :: v_dual_lshlrev_b32 v74, 16, v74
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v73 :: v_dual_fmac_f32 v129, s101, v71
	v_mul_f32_e32 v79, 0x3fb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v127, s101, v69 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v0.l, 0
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v0.h, v131.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v78, s101, v66 :: v_dual_fmac_f32 v79, s101, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v80, s101, v65
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v65.h, v111.l
	v_mov_b16_e32 v111.l, v0.l
	v_mov_b16_e32 v65.l, v0.l
	v_mov_b16_e64 v131.l, v0.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v126, s101, v68
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v71.h, v0.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v111
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	v_cmp_neq_f32_e64 s20, 0xff800000, v131
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v130, s101, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v72.h, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 vcc_lo, s15, vcc_lo
	s_and_b32 s24, s14, s3
	v_cndmask_b32_e64 v65, 0, 1, vcc_lo
	v_cndmask_b32_e64 v66, 0, 1, s24
	s_and_b32 s30, s13, s20
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s34, s10, s3
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s30
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v65.h, v132.l
	v_mov_b16_e64 v132.l, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v0.h, 8, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v65.l, v0.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_or_b16 v67.l, v66.l, v0.h
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v65
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v0.h, v112.l
	v_mov_b16_e32 v112.l, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s20, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0, 1, s20
	s_and_b32 s26, s11, s21
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v112
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s26
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v0
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s29, s8, s22
	s_and_b32 s31, s6, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s29
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v65.h, v103.l
	v_mov_b16_e32 v103.l, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s31
	v_lshlrev_b16 v0.h, 8, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v65.l, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v103
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_or_b16 v68.l, v66.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v65
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v0.h, v113.l
	v_mov_b16_e32 v113.l, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s21, s9, s3
	v_cndmask_b32_e64 v65, 0, 1, s21
	s_and_b32 s25, s7, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v113
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s25
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v0
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s27, s5, s23
	s_and_b32 s33, s81, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v69.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s27
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v65.h, v108.l
	v_mov_b16_e32 v108.l, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s33
	v_lshlrev_b16 v0.h, 8, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v65.l, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v108
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_or_b16 v69.l, v66.l, v0.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v65
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v0.h, v110.l
	v_mov_b16_e32 v110.l, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s22, s1, s3
	s_mul_i32 s1, s79, 6
	v_cndmask_b32_e64 v65, 0, 1, s22
	s_and_b32 s23, s2, s23
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v110
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s23
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v0
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s28, s4, s28
	s_and_b32 s35, s95, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s28
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_mov_b32 s95, s91
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v65.l
	v_or_b16 v65.l, v66.l, v0.h
	v_add_nc_u32_e32 v66, 0, v190
	ds_store_b32 v66, v67
	scratch_load_b32 v66, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v68
	scratch_load_b32 v66, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v69
	scratch_load_b32 v66, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v65, off, off offset:264
	scratch_load_b32 v66, off, off offset:272
	scratch_load_b32 v68, off, off offset:288
	scratch_load_b32 v67, off, off offset:280
	scratch_load_b32 v69, off, off offset:320
	s_waitcnt vmcnt(4)
	ds_load_u8_d16_hi v0, v65
	scratch_load_b32 v65, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s65, 1, v0.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v76, 0xff800000, v100, s65
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v65, v65
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v66
	scratch_load_b32 v66, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s63, 1, v0.h
	v_and_b16 v0.h, 1, v65.h
	scratch_load_b32 v65, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v77, 0xff800000, v98, s63
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s64, 1, v0.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v73, 0xff800000, v123, s64
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v66, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v67
	scratch_load_b32 v67, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s61, 1, v0.h
	v_and_b16 v0.h, 1, v66.h
	scratch_load_b32 v66, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v74, 0xff800000, v124, s61
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s62, 1, v0.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v75, 0xff800000, v125, s62
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v128, s101, v70
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.h, v0.l
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v67, v67
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v68
	scratch_load_b32 v68, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v0.h
	ds_load_u8_d16_hi v0, v65
	scratch_load_b32 v65, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v0.h
	v_cmp_eq_u16_e64 s58, 1, v0.h
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v65, v65
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v66
	scratch_load_b32 v66, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s56, 1, v0.h
	v_and_b16 v0.h, 1, v65.h
	v_add_nc_u32_e32 v65, 0, v168
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v156, 0xff800000, v79, s56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s57, 1, v0.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v79, 0xff800000, v122, s3
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v66, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v68
	scratch_load_b32 v68, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v66.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s54, 1, v0.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v155, 0xff800000, v127, s54
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v67, v68
	scratch_load_b32 v68, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v67.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s55, 1, v0.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v98, 0xff800000, v128, s55
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v68, v68
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v69
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v73, v74, v75
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v68.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s52, 1, v0.h
	v_and_b16 v0.h, 1, v68.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v138, 0xff800000, v129, s52
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s53, 1, v0.h
	ds_load_u8_d16_hi v0, v65
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[110:111], off, off offset:172
	scratch_load_b32 v127, off, off offset:324
	v_cndmask_b32_e64 v154, 0xff800000, v130, s53
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v0.h, 1, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s67, 1, v0.h
	v_and_b16 v0.h, 1, v66.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v99, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s59, 1, v0.h
	v_and_b16 v0.h, 1, v67.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v99, 0xff800000, v126, s57
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v65, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v100, 0xff800000, v78, s59
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s66, 1, v0.h
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v0.h, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v68, v68, v77, v69
	v_max3_f32 v66, v100, v156, v99
	v_max3_f32 v69, v155, v98, v138
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v78, 0xff800000, v101, s66
	v_cndmask_b32_e64 v101, 0xff800000, v80, s58
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.h, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v66, v69, v154
.Ltmp8:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v69.h, v0.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v67, v78, v79, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v66, v68, v67, v66
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.h, v0.l
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v67, v66, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp12:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v187, v236, v66, v67
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v66, 0, v157
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.h, v0.l
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b32 v66, v65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v76, v187
	v_sub_f32_e32 v65, v65, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s65
	v_cndmask_b32_e64 v65, 0, v65, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v67.l, v66.h
	v_cmp_o_f32_e64 s65, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s67, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v66, v67, 0x7fff
	v_mov_b16_e32 v67.h, v0.l
	v_mov_b16_e32 v67.l, v65.h
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v65, v65, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s67
	v_permlanex16_b32 v67, v66, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v67, v66, v191
	v_perm_b32 v66, v67, v66, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v73, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v68.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s64, v67, v67
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v77, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s63
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v69.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s63, v68, v68
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v67.h, s64
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v69, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v69, v191
	v_perm_b32 v68, v68, v69, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v75, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v70.l, v69.h
	v_cmp_o_f32_e64 s62, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v74, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s61, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v69.h, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s61
	v_permlanex16_b32 v70, v71, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v70, v71, v191
	v_perm_b32 v70, v70, v71, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v79, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s3
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v72.l, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v72, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v78, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[110:111], null, s94, s79, v[110:111]
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v127, v76
	scratch_load_b32 v76, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s94, s90
	v_add_lshl_u32 v103, v110, s103, 1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s66
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v108, v110, s104, 1
	v_add_lshl_u32 v111, v110, s1, 1
	v_add_lshl_u32 v112, v110, vcc_hi, 1
	s_mul_i32 s1, s79, 10
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v72.h
	v_cmp_o_f32_e64 s61, v72, v72
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v113, v110, s1, 1
	s_mul_i32 s1, s79, 12
	v_add_lshl_u32 v116, v110, s78, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v80, 1, v80
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v114, v110, s1, 1
	s_mul_i32 s1, s79, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v115, v110, s1, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v72, v72, v80, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v71.h, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s36
	s_mul_i32 s1, s79, 18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v80.l, 0x7fff, v72.h, s61
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v117, v110, s1, 1
	s_mul_i32 s1, s79, 20
	v_add_lshl_u32 v122, v110, s1, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v80, s98, 0xfedcba98 op_sel:[1,0]
	s_mul_i32 s1, s79, 22
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v123, v110, s1, 1
	s_mul_i32 s1, s79, 24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v72, v80, v191
	v_perm_b32 v72, v72, v80, v192
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v80, 1, v110
	v_add_lshl_u32 v124, v110, s1, 1
	s_mul_i32 s1, s79, 26
	v_add_lshl_u32 v125, v110, s1, 1
	s_mul_i32 s1, s79, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v126, v110, s1, 1
	s_mul_i32 s1, s79, 30
	v_add_lshl_u32 v110, v110, s1, 1
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v76, v77
	scratch_load_b32 v76, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v76, v73
	scratch_load_b32 v73, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v73, v74
	scratch_load_b32 v73, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v73, v75
	scratch_load_b32 v73, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v73, v78
	scratch_load_b32 v73, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v73, v79
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v73, 0x80000000, v80, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s37
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b32 v104, v101
	ds_store_b32 v245, v100
	ds_store_b32 v246, v156
	ds_store_b32 v247, v99
	ds_store_b32 v248, v155
	ds_store_b32 v249, v98
	ds_store_b32 v250, v138
	ds_store_b32 v251, v154
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v74, 0x80000000, v103, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s38
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v75, 0x80000000, v108, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s39
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v76, 0x80000000, v111, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v77, 0x80000000, v112, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s41
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v78, 0x80000000, v113, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v79, 0x80000000, v114, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s43
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v80, 0x80000000, v115, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v103, 0x80000000, v116, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s45
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v116, 0, v171
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v108, 0x80000000, v117, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s46
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v111, 0x80000000, v122, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v112, 0x80000000, v123, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s48
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v113, 0x80000000, v124, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v114, 0x80000000, v125, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s50
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v115, 0x80000000, v126, s3
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s3, s0, s51
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b32 v[134:135], v116 offset1:32
	ds_load_2addr_b32 v[126:127], v116 offset0:64 offset1:96
	ds_load_2addr_b32 v[136:137], v252 offset1:32
	ds_load_2addr_b32 v[132:133], v253 offset1:32
	ds_load_2addr_b32 v[130:131], v254 offset1:32
	ds_load_2addr_b32 v[128:129], v252 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v253 offset0:64 offset1:96
	ds_load_2addr_b32 v[122:123], v254 offset0:64 offset1:96
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v110, 0x80000000, v110, s3
	s_clause 0xf
	buffer_load_u16 v73, v73, s[92:95], 0 offen
	buffer_load_u16 v74, v74, s[92:95], 0 offen
	buffer_load_u16 v75, v75, s[92:95], 0 offen
	buffer_load_u16 v76, v76, s[92:95], 0 offen
	buffer_load_u16 v77, v77, s[92:95], 0 offen
	buffer_load_u16 v78, v78, s[92:95], 0 offen
	buffer_load_u16 v79, v79, s[92:95], 0 offen
	buffer_load_u16 v80, v80, s[92:95], 0 offen
	buffer_load_u16 v103, v103, s[92:95], 0 offen
	buffer_load_u16 v108, v108, s[92:95], 0 offen
	buffer_load_u16 v111, v111, s[92:95], 0 offen
	buffer_load_u16 v112, v112, s[92:95], 0 offen
	buffer_load_u16 v113, v113, s[92:95], 0 offen
	buffer_load_u16 v114, v114, s[92:95], 0 offen
	buffer_load_u16 v115, v115, s[92:95], 0 offen
	buffer_load_u16 v110, v110, s[92:95], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v116, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v236
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s99, s100
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v116, 0, v116
	ds_store_b16 v116, v73
	ds_store_b16 v116, v74 offset:256
	ds_store_b16 v116, v75 offset:512
	ds_store_b16 v116, v76 offset:768
	ds_store_b16 v116, v77 offset:1024
	ds_store_b16 v116, v78 offset:1280
	ds_store_b16 v116, v79 offset:1536
	ds_store_b16 v116, v80 offset:1792
	ds_store_b16 v116, v103 offset:2048
	ds_store_b16 v116, v108 offset:2304
	ds_store_b16 v116, v111 offset:2560
	ds_store_b16 v116, v112 offset:2816
	ds_store_b16 v116, v113 offset:3072
	ds_store_b16 v116, v114 offset:3328
	ds_store_b16 v116, v115 offset:3584
	ds_store_b16 v116, v110 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v75, v148 offset:608
	ds_load_u16_d16 v74, v148 offset:352
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v236, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v236, 0, v73, s3
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v202, v148 offset:512
	ds_load_u16_d16 v200, v148
	ds_load_u16_d16 v203, v148 offset:768
	ds_load_u16_d16 v201, v148 offset:256
	ds_load_u16_d16 v210, v148 offset:576
	ds_load_u16_d16 v211, v148 offset:832
	ds_load_u16_d16 v204, v148 offset:1024
	ds_load_u16_d16 v212, v148 offset:1088
	ds_load_u16_d16 v205, v148 offset:1280
	ds_load_u16_d16 v213, v148 offset:1344
	ds_load_u16_d16 v206, v148 offset:1536
	ds_load_u16_d16 v214, v148 offset:1600
	ds_load_u16_d16 v207, v148 offset:1792
	ds_load_u16_d16 v215, v148 offset:1856
	ds_load_u16_d16 v208, v148 offset:64
	ds_load_u16_d16 v209, v148 offset:320
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v74, v148 offset:480
	ds_load_u16_d16 v73, v148 offset:96
	ds_load_u16_d16 v216, v148 offset:32
	ds_load_u16_d16 v217, v148 offset:288
	ds_load_u16_d16 v76, v148 offset:864
	ds_load_u16_d16 v77, v148 offset:1120
	ds_load_u16_d16 v78, v148 offset:1376
	ds_load_u16_d16 v79, v148 offset:1632
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v215, v148 offset:1984
	ds_load_u16_d16 v224, v148 offset:2048
	ds_load_u16_d16 v237, v148 offset:2112
	ds_load_u16_d16 v80, v148 offset:1888
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v216, v148 offset:160
	ds_load_u16_d16_hi v208, v148 offset:192
	ds_load_u16_d16_hi v73, v148 offset:224
	ds_load_u16_d16 v218, v148 offset:544
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v217, v148 offset:416
	ds_load_u16_d16_hi v209, v148 offset:448
	ds_load_u16_d16 v219, v148 offset:800
	ds_load_u16_d16 v220, v148 offset:1056
	ds_load_u16_d16 v221, v148 offset:1312
	ds_load_u16_d16 v222, v148 offset:1568
	ds_load_u16_d16 v223, v148 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v218, v148 offset:672
	ds_load_u16_d16_hi v75, v148 offset:736
	ds_load_u16_d16_hi v200, v148 offset:128
	ds_load_u16_d16_hi v202, v148 offset:640
	ds_load_u16_d16_hi v201, v148 offset:384
	ds_load_u16_d16_hi v210, v148 offset:704
	ds_load_u16_d16_hi v203, v148 offset:896
	ds_load_u16_d16_hi v211, v148 offset:960
	ds_load_u16_d16_hi v204, v148 offset:1152
	ds_load_u16_d16_hi v212, v148 offset:1216
	ds_load_u16_d16_hi v205, v148 offset:1408
	ds_load_u16_d16_hi v213, v148 offset:1472
	ds_load_u16_d16_hi v206, v148 offset:1664
	ds_load_u16_d16_hi v214, v148 offset:1728
	ds_load_u16_d16_hi v207, v148 offset:1920
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v57, v57, v236
	v_mul_f32_e32 v58, v58, v236
	v_mul_f32_e32 v59, v59, v236
	v_mul_f32_e32 v60, v60, v236
	v_mul_f32_e32 v61, v61, v236
	v_mul_f32_e32 v62, v62, v236
	v_mul_f32_e32 v63, v63, v236
	v_mul_f32_e32 v64, v64, v236
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v219, v148 offset:928
	ds_load_u16_d16_hi v76, v148 offset:992
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v220, v148 offset:1184
	ds_load_u16_d16_hi v77, v148 offset:1248
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v221, v148 offset:1440
	ds_load_u16_d16_hi v78, v148 offset:1504
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v222, v148 offset:1696
	ds_load_u16_d16_hi v79, v148 offset:1760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v223, v148 offset:1952
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v236
	v_mul_f32_e32 v18, v18, v236
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[200:207], v[65:72], v[57:64]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v238, v148 offset:2368
	ds_load_u16_d16_hi v80, v148 offset:2016
	ds_load_u16_d16_hi v237, v148 offset:2240
	ds_load_u16_d16 v200, v148 offset:2080
	ds_load_u16_d16 v110, v148 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v236
	v_mul_f32_e32 v20, v20, v236
	v_mul_f32_e32 v21, v21, v236
	v_mul_f32_e32 v22, v22, v236
	v_mul_f32_e32 v23, v23, v236
	v_mul_f32_e32 v24, v24, v236
	v_mul_f32_e32 v9, v9, v236
	v_mul_f32_e32 v10, v10, v236
	v_mul_f32_e32 v11, v11, v236
	v_mul_f32_e32 v12, v12, v236
	v_mul_f32_e32 v13, v13, v236
	v_mul_f32_e32 v14, v14, v236
	v_mul_f32_e32 v15, v15, v236
	v_mul_f32_e32 v16, v16, v236
	v_mul_f32_e32 v1, v1, v236
	v_mul_f32_e32 v2, v2, v236
	v_mul_f32_e32 v3, v3, v236
	v_mul_f32_e32 v4, v4, v236
	v_mul_f32_e32 v5, v5, v236
	v_mul_f32_e32 v6, v6, v236
	v_mul_f32_e32 v7, v7, v236
	v_mul_f32_e32 v8, v8, v236
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[216:223], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[208:215], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v225, v148 offset:2304
	ds_load_u16_d16 v226, v148 offset:2560
	ds_load_u16_d16 v239, v148 offset:2624
	ds_load_u16_d16 v227, v148 offset:2816
	ds_load_u16_d16 v240, v148 offset:2880
	ds_load_u16_d16 v228, v148 offset:3072
	ds_load_u16_d16 v241, v148 offset:3136
	ds_load_u16_d16 v229, v148 offset:3328
	ds_load_u16_d16 v242, v148 offset:3392
	ds_load_u16_d16 v230, v148 offset:3584
	ds_load_u16_d16 v243, v148 offset:3648
	ds_load_u16_d16 v231, v148 offset:3840
	ds_load_u16_d16 v244, v148 offset:3904
	ds_load_u16_d16_hi v224, v148 offset:2176
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v225, v148 offset:2432
	ds_load_u16_d16_hi v238, v148 offset:2496
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v226, v148 offset:2688
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v239, v148 offset:2752
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v227, v148 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v240, v148 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v228, v148 offset:3200
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v241, v148 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v229, v148 offset:3456
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v242, v148 offset:3520
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v230, v148 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v243, v148 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v231, v148 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v244, v148 offset:4032
	ds_load_u16_d16 v111, v148 offset:2400
	ds_load_u16_d16 v112, v148 offset:2656
	ds_load_u16_d16 v113, v148 offset:2912
	ds_load_u16_d16 v114, v148 offset:3168
	ds_load_u16_d16 v115, v148 offset:3424
	ds_load_u16_d16 v116, v148 offset:3680
	ds_load_u16_d16 v117, v148 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v100, v187
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v0.l
	v_mov_b16_e32 v67.h, v0.l
	v_mov_b16_e32 v68.h, v0.l
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v74, v128, v128
.Ltmp14:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v69.h, v0.l
	v_mov_b16_e32 v70.h, v0.l
	v_mov_b16_e32 v71.h, v0.l
	v_mov_b16_e32 v72.h, v0.l
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v201, v148 offset:2336
	ds_load_u16_d16 v202, v148 offset:2592
	ds_load_u16_d16 v203, v148 offset:2848
	ds_load_u16_d16 v204, v148 offset:3104
	ds_load_u16_d16 v205, v148 offset:3360
	ds_load_u16_d16 v206, v148 offset:3616
	ds_load_u16_d16 v207, v148 offset:3872
	ds_load_u16_d16_hi v200, v148 offset:2208
	ds_load_u16_d16_hi v110, v148 offset:2272
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v73, v126, v126 :: v_dual_mov_b32 v236, v187
	v_max_f32_e32 v75, v124, v124
.Ltmp16:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v101, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v67.l, v66.h
	v_cmp_o_f32_e64 s36, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s36
	v_permlanex16_b32 v66, v67, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v66, v67, v191
	v_perm_b32 v66, v66, v67, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v99, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s57
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v68.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v67, v67
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v156, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s56
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v69.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v68, v68
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v67.h, s3
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v69, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v69, v191
	v_perm_b32 v68, v68, v69, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v98, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v70.l, v69.h
	v_cmp_o_f32_e64 s3, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v155, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v70.h
	v_cmp_o_f32_e64 s36, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v70, v71, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v69.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s36
	v_permlanex16_b32 v70, v71, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v69, v70, v71, v191
	v_perm_b32 v70, v70, v71, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v154, v187
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v201, v148 offset:2464
	ds_load_u16_d16_hi v111, v148 offset:2528
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v202, v148 offset:2720
	ds_load_u16_d16_hi v112, v148 offset:2784
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v203, v148 offset:2976
	ds_load_u16_d16_hi v113, v148 offset:3040
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v204, v148 offset:3232
	ds_load_u16_d16_hi v114, v148 offset:3296
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v205, v148 offset:3488
	ds_load_u16_d16_hi v115, v148 offset:3552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v206, v148 offset:3744
	ds_load_u16_d16_hi v116, v148 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v207, v148 offset:4000
	ds_load_u16_d16_hi v117, v148 offset:4064
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s53
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v72.l, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v71, v71
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v72, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v138, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s52
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v0.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v72, v72
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v72, v0, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s3
	v_cndmask_b16 v72.l, 0x7fff, v0.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v0, v72, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v0, v72, v191
	v_perm_b32 v72, v0, v72, v192
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v0, v134 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp18:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[224:231], v[65:72], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[237:244], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[200:207], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[110:117], v[65:72], v[1:8]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v65, v134, v134
	v_max_f32_e32 v66, v136, v136
	v_dual_max_f32 v67, v132, v132 :: v_dual_max_f32 v70, v137, v137
	v_max_f32_e32 v68, v130, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v0, v65, v0
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v136 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v135, v135
	v_dual_max_f32 v71, v133, v133 :: v_dual_max_f32 v72, v131, v131
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v67, v66
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v68, v67
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v135 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v69, v68
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v137 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v70, v69
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v71, v70
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v71, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v72, v71
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v73, v72
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v73, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, v74, v73
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v74, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v75, v74
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v75
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v75
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v75
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v75
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v75
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v75
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v75
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v75
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v75
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, v73, v75
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v75
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v75
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v75
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v75
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v75
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v75
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v75
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v75
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v75
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v75
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, v73, v75
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v74, v75
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v75
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v75
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v75
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v75
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v75
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v75
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v75
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v75
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v75
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v0, -1, -1 op_sel:[1,0]
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v0, v0, v75
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v65, -1, -1 op_sel:[1,0]
	v_readlane_b32 s11, v0, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v0, v70, -1, -1 op_sel:[1,0]
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v75
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s7, v65, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v0, v70, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v75
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v67, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s8, v0, 31
	v_readlane_b32 s5, v66, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v65, v73, v65
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v75
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v68, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v0, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s3, v67, 31
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v67, v72, -1, -1 op_sel:[1,0]
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v66, v71, v66
.Ltmp126:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v71, s8, s8
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v0, v65, v0
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s6, v66, 31
	v_mov_b32_dpp v66, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s2, v68, 31
	v_mov_b32_dpp v68, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v72, v67
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s10, v0, 31
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v0, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s4, v67, 31
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v122, v122
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v69, -1, -1 op_sel:[1,0]
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v68, v74, v68
.Ltmp138:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v73, s4, s4
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v67, v66
	v_max_f32_e32 v67, v127, v127
	v_max_f32_e32 v75, v75, v75
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v65, v68, -1, -1 op_sel:[1,0]
.Ltmp141:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v72, s6, s6
	v_max_f32_e64 v74, s10, s10
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v0, v67, v0 :: v_dual_max_f32 v67, v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v69, v69, v75
	v_max_f32_e32 v65, v68, v65
	v_max_f32_e32 v68, v125, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s1, v69, 31
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v123, v123
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s9, v65, 31
	v_mov_b32_dpp v65, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp146:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v70, s1, s1
	v_max_f32_e64 v75, s9, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v65, v67, v65
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v66, v66, v67
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v67, v67, v69
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v65, v65, v69
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s12, v66, 31
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp182:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v66, s7, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e64 v76, s12, s12
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v69
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v0, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v0, v0, v69
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s13, v0, 31
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp190:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v0, v149, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e64 v77, s13, s13
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v69
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s14, v65, 31
.Ltmp193:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v65, s11, s11
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp195:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v78, s14, s14
	v_dual_max_f32 v149, v0, v65 :: v_dual_max_f32 v0, v186, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v69
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp198:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v0, v0, v65 :: v_dual_max_f32 v65, v150, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp200:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s15, v67, 31
.Ltmp201:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v67, s5, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v150, v65, v66
	v_max_f32_e32 v65, v185, v185
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v69
.Ltmp203:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v69, s2, s2
	v_max_f32_e64 v79, s15, s15
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v99, v136, v150
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v65, v65, v66 :: v_dual_max_f32 v66, v151, v151
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s36, v68, 31
.Ltmp205:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e64 v68, s3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v151, v66, v67 :: v_dual_max_f32 v66, v184, v184
	v_max_f32_e64 v80, s36, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v66, v66, v67 :: v_dual_max_f32 v67, v152, v152
	v_max_f32_e32 v152, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v67, v183, v183 :: v_dual_sub_f32 v108, v130, v152
	v_dual_max_f32 v67, v67, v68 :: v_dual_max_f32 v68, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v162, v68, v69
	v_max_f32_e32 v68, v182, v182
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v98, v135, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v68, v68, v69
	v_max_f32_e32 v69, v153, v153
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v153, v69, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v98, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v98, v98, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v98, v98, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v69, v181, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v70
	v_max_f32_e32 v70, v170, v170
	v_max_f32_e32 v170, v70, v71
	v_max_f32_e32 v70, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v70, v70, v71 :: v_dual_max_f32 v71, v188, v188
	v_max_f32_e32 v188, v71, v72
	v_max_f32_e32 v71, v179, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v110, v131, v188
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v71, v71, v72 :: v_dual_max_f32 v72, v161, v161
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v103, v133, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v161, v72, v73 :: v_dual_max_f32 v72, v178, v178
	v_dual_max_f32 v72, v72, v73 :: v_dual_max_f32 v73, v139, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v139, v73, v74
	v_max_f32_e32 v73, v177, v177
	v_dual_max_f32 v73, v73, v74 :: v_dual_max_f32 v74, v159, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v159, v74, v75 :: v_dual_max_f32 v74, v176, v176
	v_dual_max_f32 v74, v74, v75 :: v_dual_max_f32 v75, v160, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v160, v75, v76
	v_max_f32_e32 v75, v175, v175
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v117, v122, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v75, v75, v76 :: v_dual_max_f32 v76, v158, v158
	v_max_f32_e32 v158, v76, v77
	v_max_f32_e32 v76, v174, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v112, v127, v158
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v76, v76, v77
	v_max_f32_e32 v77, v140, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v140, v77, v78
	v_max_f32_e32 v77, v173, v173
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v114, v129, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v77, v77, v78
	v_dual_max_f32 v78, v141, v141 :: v_dual_sub_f32 v101, v132, v151
	v_dual_max_f32 v141, v78, v79 :: v_dual_max_f32 v78, v172, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v116, v125, v141
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v78, v78, v79
	v_max_f32_e32 v79, v142, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v142, v79, v80
	v_max_f32_e32 v79, v143, v143
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v122, v123, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v79, v79, v80 :: v_dual_sub_f32 v80, v134, v149
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s34
.Ltmp208:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v80, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v115, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v80, v115
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v80, 31
.Ltmp212:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s31
.Ltmp213:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v80, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v99, v80, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v80, v99
.Ltmp216:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v101
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v100, v137, v153
.Ltmp217:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s7, v80, 31
.Ltmp218:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v100, v100
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp219:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp220:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v100, 0, v100, s29
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v80, v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v100, v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v99, v99, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v100, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v100, v100, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v101, v99, -1, -1 op_sel:[1,0]
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v100, v100, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v99, v99, v101
.Ltmp224:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s5, v99, 31
.Ltmp226:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v101, v101, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v108, v101, -1, -1 op_sel:[1,0]
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v101, v108
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v108, v98, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v101, 31
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v98, v98, v108
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v108, v100, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s3, v98, 31
	v_permlanex16_b32 v98, v80, -1, -1 op_sel:[1,0]
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v100, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v80, v80, v98
.Ltmp234:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v110
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s2, v100, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_readlane_b32 s12, v80, 31
.Ltmp236:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v117
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp237:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp238:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v98, v98, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v98, v98, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v80, v80, v80 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v99, v98, -1, -1 op_sel:[1,0]
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v80, v80, v80 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v98, v98, v99
.Ltmp242:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s10, v98, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v98, v80, -1, -1 op_sel:[1,0]
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v80, v98
.Ltmp244:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s13, v80, 31
.Ltmp246:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v186, v0
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 1              ; attention.py:690:33
	v_cndmask_b32_e32 v98, 0, v98, vcc_lo
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v186
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp248:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v185
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp250:
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v93, v93, v80, s1
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v185, v65
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v185, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp252:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v80, v80
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp254:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v184
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v94, v94, v80, s7
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v184, v66
	v_mov_b32_e32 v184, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v95, v95, v80, s5
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v183, v67
	v_mov_b32_e32 v183, v67
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v182
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v96, v96, v80, s4
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v182, v68
	v_mov_b32_e32 v182, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v89, v89, v80, s3
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v181, v69
	v_mov_b32_e32 v181, v69
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v180
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v90, v90, v80, s2
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v180, v70
	v_mov_b32_e32 v186, v0
	v_mov_b32_e32 v180, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v179
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v111, v126, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v91, v91, v80, s12
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s24
.Ltmp255:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v99, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v99, v99, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v100, v99, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v99, v100
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s9, v99, 31
	v_permlanex16_b32 v99, v98, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v98, v98, v99
.Ltmp260:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v113, v128, v139
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v99, v114
.Ltmp261:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s14, v98, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp262:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v113
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v100, 0, v100, s26
.Ltmp263:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v100, v100, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp264:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v101, v100, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v100, v101
.Ltmp266:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v179, v71
	v_mov_b32_e32 v179, v71
.Ltmp267:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s8, v100, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v80, v80
.Ltmp269:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v100, v99, -1, -1 op_sel:[1,0]
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v99, v100
.Ltmp271:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v116
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v178
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s15, v99, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp273:
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v92, v92, v80, s10
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v178, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v100, s21
	v_mov_b32_e32 v178, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v115, v124, v159
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v100, v100, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v100, v100, v100 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp275:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v115
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v100, v100, v100 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp277:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v85, v85, v80, s9
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v100, v100, v100 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp279:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s25
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v101, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v101, v101, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v103, v101, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v101, v103
.Ltmp283:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s6, v101, 31
	v_permlanex16_b32 v101, v100, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp284:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v100, v101
.Ltmp285:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v177, v73
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v122
	v_mov_b32_e32 v177, v73
.Ltmp286:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s20, v100, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp287:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp289:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v86, v86, v80, s8
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v176, v74
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v176, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp291:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v80, v80
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v101, v101, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp293:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v103, v101, -1, -1 op_sel:[1,0]
.Ltmp295:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v175
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v87, v87, v80, s6
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v175, v75
	v_mov_b32_e32 v175, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
.Ltmp296:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v101, v101, v103 :: v_dual_cndmask_b32 v80, 0, v80
.Ltmp297:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s11, v101, 31
.Ltmp299:
	.loc	1 701 23                        ; attention.py:701:23
	v_fma_f32 v88, v88, v80, s13
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v174, v76
	v_mov_b32_e32 v174, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v81, v81, v80, s14
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v173, v77
	v_mov_b32_e32 v173, v77
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v172
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v82, v82, v80, s15
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v172, v78
	v_mov_b32_e32 v172, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v83, v83, v80, s20
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v143, v79
	v_mov_b32_e32 v143, v79
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fma_f32 v84, v84, v80, s11
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s99, v235
	.loc	1 657 32                        ; attention.py:657:32
	v_readlane_b32 s1, v255, 3
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v65, off, off offset:60
	scratch_load_b32 v66, off, off offset:64
	scratch_load_b64 v[67:68], off, off offset:68
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s36, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s94, s99, s1
	.loc	1 658 32                        ; attention.py:658:32
	scratch_load_b32 v68, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s1, s94, s97
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s36
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0xa                            ; 84-byte Folded Reload
	scratch_load_b64 v[69:70], off, off offset:80
	scratch_load_b64 v[70:71], off, off offset:88
	scratch_load_b64 v[71:72], off, off offset:96
	scratch_load_b32 v72, off, off offset:104
	scratch_load_b64 v[73:74], off, off offset:108
	scratch_load_b64 v[74:75], off, off offset:116
	scratch_load_b64 v[75:76], off, off offset:132
	scratch_load_b64 v[76:77], off, off offset:124
	scratch_load_b64 v[77:78], off, off offset:140
	scratch_load_b64 v[78:79], off, off offset:148
	scratch_load_b64 v[79:80], off, off offset:156
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v137, s75 :: v_dual_mov_b32 v136, s74
	v_dual_mov_b32 v135, s73 :: v_dual_mov_b32 v134, s72
	v_dual_mov_b32 v133, s71 :: v_dual_mov_b32 v132, s70
	v_dual_mov_b32 v131, s69 :: v_dual_mov_b32 v130, s68
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v65, s1, v65, 1
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v66, s1, v66, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v67, s1, v67, 1
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v0, s99, v0
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v68, s1, v68, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s37, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v69, s1, v69, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v70, s1, v70, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v71, s1, v71, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v72, s1, v72, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v73, s1, v73, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v74, s1, v74, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v75, s1, v75, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v76, s1, v76, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v77, s1, v77, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v78, s1, v78, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v79, s1, v79, 1
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s39, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s40, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s41, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s42, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s43, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s44, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s45, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s46, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s47, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s48, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s49, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s50, s83, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s51, s83, v0
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v0, s1, v97, 1
	.loc	1 665 25                        ; attention.py:665:25
	v_readlane_b32 s1, v255, 4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s37
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s38
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s39
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s40
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s41
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s42
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s43
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s44
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v0, v0, s[88:91], 0 offen
	buffer_load_u16 v65, v65, s[88:91], 0 offen
	buffer_load_u16 v66, v66, s[88:91], 0 offen
	buffer_load_u16 v68, v68, s[88:91], 0 offen
	buffer_load_u16 v69, v69, s[88:91], 0 offen
	buffer_load_u16 v70, v70, s[88:91], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s45
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s46
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s48
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s47
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s49
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s50
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_u16 v72, v72, s[88:91], 0 offen
	buffer_load_u16 v75, v75, s[88:91], 0 offen
	buffer_load_u16 v73, v73, s[88:91], 0 offen
	buffer_load_u16 v77, v77, s[88:91], 0 offen
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s60, s51
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
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
	ds_store_b16 v163, v0
	s_waitcnt vmcnt(12)
	ds_store_b16 v163, v68 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v163, v72 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v163, v75 offset:3072
	ds_store_b16 v164, v65
	ds_store_b16 v164, v69 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v164, v73 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v164, v77 offset:3072
	ds_store_b16 v165, v66
	ds_store_b16 v165, v70 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v165, v74 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v165, v78 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v166, v67
	ds_store_b16 v166, v71 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v166, v76 offset:2048
	ds_store_b16 v166, v79 offset:3072
	v_add_nc_u32_e32 v0, 0, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v193
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[122:125], v0 offset:2048
	ds_load_b128 v[126:129], v193 offset:2048
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[25:32], v[130:137]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[122:129], v[25:32], v[130:137]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[126:129], v195
	ds_load_b128 v[122:125], v194
	ds_load_b128 v[130:133], v194 offset:2048
	ds_load_b128 v[134:137], v195 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[122:129], v[33:40], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[130:137], v[33:40], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[126:129], v197
	ds_load_b128 v[122:125], v196
	ds_load_b128 v[130:133], v196 offset:2048
	ds_load_b128 v[134:137], v197 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[122:129], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[130:137], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[126:129], v199
	ds_load_b128 v[122:125], v198
	ds_load_b128 v[130:133], v198 offset:2048
	ds_load_b128 v[134:137], v199 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[122:129], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[130:137], v[49:56], v[65:72]
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s99, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s83, v0
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s10, s1, s3
	v_readlane_b32 s1, v255, 5
	s_and_b32 s15, s16, s3
	s_and_b32 s12, s17, s3
	s_and_b32 s9, s18, s3
	s_and_b32 s6, s1, s3
	v_readlane_b32 s1, v255, 6
	s_and_b32 s81, s1, s3
	v_readlane_b32 s1, v255, 7
	s_and_b32 s95, s1, s3
	v_readlane_b32 s1, v255, 8
	s_and_b32 s13, s1, s3
	v_readlane_b32 s1, v255, 9
	s_and_b32 s8, s1, s3
	v_readlane_b32 s1, v255, 10
	s_and_b32 s5, s1, s3
	v_readlane_b32 s1, v255, 11
	s_and_b32 s4, s1, s3
	v_readlane_b32 s1, v255, 12
	s_and_b32 s14, s1, s3
	v_readlane_b32 s1, v255, 13
	s_and_b32 s11, s1, s3
	v_readlane_b32 s1, v255, 14
	s_and_b32 s7, s1, s3
	v_readlane_b32 s1, v255, 15
	s_and_b32 s2, s1, s3
	.loc	1 667 17                        ; attention.py:667:17
	v_readlane_b32 s1, v255, 1
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s1, s19, s3
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	scratch_load_b32 v98, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v98
	scratch_load_b32 v98, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s35, vcc_lo, s10
	s_and_not1_b32 s10, s10, exec_lo
	s_and_b32 s35, s35, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s10, s10, s35
	s_and_not1_b32 s35, s95, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v98
	scratch_load_b32 v98, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s3, s3, s6
	s_and_not1_b32 s6, s6, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s6, s6, s3
	s_and_not1_b32 s3, s81, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v0, v98
	scratch_load_b32 v98, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s20, s20, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s81, s3, s20
	s_and_not1_b32 s3, s13, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v0, v98
	scratch_load_b32 v98, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s21, s21, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s95, s35, s21
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v0, v98
	scratch_load_b32 v98, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s22, s22, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s22, exec_lo
	s_or_b32 s13, s3, s13
	s_and_not1_b32 s3, s5, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v0, v98
	scratch_load_b32 v98, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s23, s23, s8
	s_and_not1_b32 s8, s8, exec_lo
	s_and_b32 s20, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s8, s8, s20
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v0, v98
	scratch_load_b32 v98, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s24, s24, s5
	s_and_b32 s5, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s5, s3, s5
	s_and_not1_b32 s3, s14, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v0, v98
	scratch_load_b32 v98, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s25, s25, s4
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s20, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s4, s4, s20
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v0, v98
	scratch_load_b32 v98, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s26, s26, s14
	s_and_b32 s14, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s14, s3, s14
	s_and_not1_b32 s3, s7, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v0, v98
	scratch_load_b32 v98, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s27, s27, s11
	s_and_not1_b32 s11, s11, exec_lo
	s_and_b32 s20, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s11, s11, s20
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v0, v98
	scratch_load_b32 v98, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s28, s28, s7
	s_and_b32 s7, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s7, s3, s7
	s_and_not1_b32 s3, s15, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v0, v98
	scratch_load_b32 v98, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s29, s29, s2
	s_and_not1_b32 s2, s2, exec_lo
	s_and_b32 s20, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s2, s2, s20
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v0, v98
	scratch_load_b32 v98, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s30, s30, s15
	s_and_b32 s15, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s15, s3, s15
	s_and_not1_b32 s3, s9, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v0, v98
	scratch_load_b32 v98, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s31, s31, s12
	s_and_not1_b32 s12, s12, exec_lo
	s_and_b32 s20, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s12, s12, s20
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v0, v98
	scratch_load_b32 v98, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s33, s33, s9
	s_and_b32 s9, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s9, s3, s9
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v0, v98
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s34, s34, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s20, s34, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s1, s1, s20
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s3, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	scratch_load_b32 v98, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v0, v98
	scratch_load_b32 v98, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v0, v98
	scratch_load_b32 v98, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v0, v98
	scratch_load_b32 v98, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v0, v98
	scratch_load_b32 v98, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v0, v98
	scratch_load_b32 v98, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v0, v98
	scratch_load_b32 v98, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v0, v98
	scratch_load_b32 v98, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v0, v98
	scratch_load_b32 v98, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v0, v98
	scratch_load_b32 v98, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v0, v98
	scratch_load_b32 v98, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v0, v98
	scratch_load_b32 v98, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v0, v98
	scratch_load_b32 v98, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v0, v98
	scratch_load_b32 v98, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v0, v98
	scratch_load_b32 v98, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v0, v98
	scratch_load_b32 v98, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v0, v98
	.loc	1 671 30                        ; attention.py:671:30
	scratch_load_b32 v98, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v0, v98
	scratch_load_b32 v98, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s35, vcc_lo, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, s10
	s_and_not1_b32 s10, s10, exec_lo
	s_and_b32 s35, s35, exec_lo
	s_or_b32 s10, s10, s35
	s_and_not1_b32 s35, s95, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v0, v98
	scratch_load_b32 v98, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s3, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s6
	s_and_not1_b32 s6, s6, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s6, s6, s3
	s_and_not1_b32 s3, s81, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v0, v98
	scratch_load_b32 v98, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s20, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s81
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s81, s3, s20
	s_and_not1_b32 s3, s13, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v0, v98
	scratch_load_b32 v98, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s21, s21, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s95
	s_and_b32 s21, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s95, s35, s21
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v0, v98
	scratch_load_b32 v98, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s22, s55
	s_and_b32 s22, s22, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s22, exec_lo
	s_or_b32 s13, s3, s13
	s_and_not1_b32 s3, s5, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v0, v98
	scratch_load_b32 v98, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, s23, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s8
	s_and_not1_b32 s8, s8, exec_lo
	s_and_b32 s20, s23, exec_lo
	s_or_b32 s8, s8, s20
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v0, v98
	scratch_load_b32 v98, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s24, s24, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s5
	s_and_b32 s5, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s5, s3, s5
	s_and_not1_b32 s3, s14, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v0, v98
	scratch_load_b32 v98, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s25, s25, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s4
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s20, s25, exec_lo
	s_or_b32 s4, s4, s20
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v0, v98
	scratch_load_b32 v98, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s26, s26, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s14
	s_and_b32 s14, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s14, s3, s14
	s_and_not1_b32 s3, s7, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v0, v98
	scratch_load_b32 v98, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s27, s27, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s11
	s_and_not1_b32 s11, s11, exec_lo
	s_and_b32 s20, s27, exec_lo
	s_or_b32 s11, s11, s20
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v0, v98
	scratch_load_b32 v98, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s28, s28, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s7
	s_and_b32 s7, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s7, s3, s7
	s_and_not1_b32 s3, s15, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v0, v98
	scratch_load_b32 v98, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s30, s30, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s15
	s_and_b32 s15, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s15, s3, s15
	s_and_not1_b32 s3, s9, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v0, v98
	scratch_load_b32 v98, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s29, s29, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s2
	s_and_not1_b32 s2, s2, exec_lo
	s_and_b32 s20, s29, exec_lo
	s_or_b32 s2, s2, s20
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v0, v98
	scratch_load_b32 v98, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, s31, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s12
	s_and_not1_b32 s12, s12, exec_lo
	s_and_b32 s20, s31, exec_lo
	s_or_b32 s12, s12, s20
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v0, v98
	scratch_load_b32 v98, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s33, s33, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s33, s9
	s_and_b32 s9, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s9, s3, s9
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v0, v98
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s34, s34, s67
	s_and_b32 s34, s34, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s20, s34, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s1, s1, s20
	s_branch .LBB0_6
.LBB0_11:
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
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v69, off, off offset:560
	scratch_load_b32 v65, off, off offset:544
	scratch_load_b32 v67, off, off offset:548
	scratch_load_b32 v29, off, off offset:552
	scratch_load_b32 v68, off, off offset:556
	scratch_load_b32 v70, off, off offset:564
	v_readlane_b32 s65, v255, 2
	s_waitcnt vmcnt(5)
	v_cmp_eq_u32_e64 s40, 0, v69
.LBB0_13:                               ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 5, v65
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v26, 0x80, v70
	v_and_b32_e32 v28, 12, v65
	v_lshrrev_b32_e32 v29, 2, v29
	v_add_nc_u32_e32 v27, 0, v68
	v_and_b32_e32 v0, 0x60, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v27, v[93:96]
	ds_store_b128 v27, v[85:88] offset:16
	v_add3_u32 v0, 0, v0, v26
	ds_store_b128 v27, v[89:92] offset:128
	ds_store_b128 v27, v[81:84] offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v25, 1, v68
	.loc	1 629 13                        ; attention.py:629:13
	v_add3_u32 v0, v0, v29, v28
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v47, 1, v69
	s_mov_b32 s2, 0x76543210
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v56, v25, v67
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v65, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v54, 2, v47
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s33, s79, v47
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 55, v47
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v76, s96, v56
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v25, 54, v47
	v_or_b32_e32 v26, 53, v47
	v_or_b32_e32 v27, 52, v47
	v_or_b32_e32 v28, 51, v47
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s82, v76
	.loc	1 598 79                        ; attention.py:598:79
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
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v66, null, v65, v65, v57
	v_div_scale_f32 v68, null, v65, v65, v58
	v_div_scale_f32 v70, null, v65, v65, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v67, v66
	v_rcp_f32_e32 v69, v68
	v_div_scale_f32 v71, vcc_lo, v57, v65, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v72, v70
	v_div_scale_f32 v74, null, v65, v65, v60
	v_div_scale_f32 v75, s1, v58, v65, v58
	v_div_scale_f32 v80, null, v65, v65, v62
	v_fma_f32 v53, -v66, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v68, v69, 1.0
	v_rcp_f32_e32 v77, v74
	v_fma_f32 v78, -v70, v72, 1.0
	v_div_scale_f32 v82, null, v65, v65, v18
	v_fmac_f32_e32 v67, v53, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v69, v55, v69 :: v_dual_fmac_f32 v72, v78, v72
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v39, 32, v47
	v_or_b32_e32 v40, 23, v47
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v73, v71, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v75, v69
	v_fma_f32 v78, -v74, v77, 1.0
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v41, 22, v47
	v_or_b32_e32 v42, 21, v47
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v55, -v66, v73, v71
	v_fma_f32 v76, -v68, v79, v75
	v_fmac_f32_e32 v77, v78, v77
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v43, 20, v47
	v_or_b32_e32 v44, 19, v47
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v73, v55, v67
	v_fmac_f32_e32 v79, v76, v69
	v_div_scale_f32 v76, s4, v60, v65, v60
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v55, 1, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v66, -v66, v73, v71
	v_div_scale_f32 v71, s3, v59, v65, v59
	v_mul_f32_e32 v78, v76, v77
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v45, 18, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v66, v66, v67, v73
	v_div_scale_f32 v73, null, v65, v65, v61
	s_mov_b32 vcc_lo, s1
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v65
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v57, v66, v65, v57
	v_fma_f32 v66, -v68, v79, v75
	v_rcp_f32_e32 v75, v73
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v46, 17, v47
	v_or_b32_e32 v48, 16, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v57, 0, v57, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fmas_f32 v66, v66, v69, v79
	v_fma_f32 v69, -v74, v78, v76
	v_mul_f32_e32 v67, v71, v72
	s_mov_b32 vcc_lo, s3
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s34, v57, v57
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v58, v66, v65, v58
	v_fma_f32 v79, -v73, v75, 1.0
	v_fmac_f32_e32 v78, v69, v77
	v_fma_f32 v68, -v70, v67, v71
	v_div_scale_f32 v69, s5, v61, v65, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v67, v68, v72
	v_rcp_f32_e32 v68, v80
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v49, 7, v47
	v_or_b32_e32 v50, 6, v47
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s35, v58, v58
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v66, -v70, v67, v71
	v_div_scale_f32 v71, null, v65, v65, v63
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v51, 5, v47
	v_or_b32_e32 v52, 4, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v66, v66, v72, v67
	v_fma_f32 v70, -v80, v68, 1.0
	v_fma_f32 v67, -v74, v78, v76
	v_div_scale_f32 v76, null, v65, v65, v64
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v68, v70, v68
	v_rcp_f32_e32 v70, v71
	v_mul_f32_e32 v72, v69, v75
	v_rcp_f32_e32 v81, v76
	v_div_scale_f32 v74, s3, v62, v65, v62
	v_div_fixup_f32 v59, v66, v65, v59
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v53, 3, v47
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s31, s79, v55
	v_cmp_gt_i32_e64 s30, s79, v54
	v_cmp_gt_i32_e64 s28, s79, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v79, -v71, v70, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v59, 0, v59, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s79, v53
	v_cmp_gt_i32_e64 s27, s79, v51
	v_cmp_gt_i32_e64 s26, s79, v50
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v70, v79, v70
	v_div_fmas_f32 v67, v67, v77, v78
	v_fma_f32 v77, -v73, v72, v69
	v_fma_f32 v79, -v76, v81, 1.0
	v_mul_f32_e32 v78, v74, v68
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v60, v67, v65, v60
	v_fmac_f32_e32 v72, v77, v75
	v_div_scale_f32 v77, null, v65, v65, v17
	v_fmac_f32_e32 v81, v79, v81
	v_fma_f32 v66, -v80, v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v73, v72, v69
	v_rcp_f32_e32 v73, v77
	v_div_scale_f32 v67, s4, v63, v65, v63
	v_div_scale_f32 v79, s6, v64, v65, v64
	v_fmac_f32_e32 v78, v66, v68
	v_div_fmas_f32 v69, v69, v75, v72
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v75, v79, v81
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v60, 0, v60, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v72, -v80, v78, v74
	v_fma_f32 v80, -v77, v73, 1.0
	v_mul_f32_e32 v66, v67, v70
	v_div_fixup_f32 v61, v69, v65, v61
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s36, v59, v59
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v68, v72, v68, v78
	v_rcp_f32_e32 v72, v82
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v74, -v71, v66, v67
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v78, s3, v17, v65, v17
	v_div_fixup_f32 v62, v68, v65, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v66, v74, v70
	v_fma_f32 v74, -v76, v75, v79
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v61, 0, v61, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v69, -v82, v72, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v67, -v71, v66, v67
	v_fmac_f32_e32 v75, v74, v81
	v_div_scale_f32 v74, s4, v18, v65, v18
	v_fmac_f32_e32 v72, v69, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v66, v67, v70, v66
	v_fma_f32 v67, -v76, v75, v79
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v71, null, v65, v65, v19
	v_div_scale_f32 v76, null, v65, v65, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v81, v75
	v_mul_f32_e32 v75, v74, v72
	v_rcp_f32_e32 v69, v71
	v_div_fixup_f32 v63, v66, v65, v63
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v64, v67, v65, v64
	v_fma_f32 v67, -v82, v75, v74
	v_mul_f32_e32 v68, v78, v73
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s79, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v64, 0, v64, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v75, v67, v72
	v_fma_f32 v70, -v77, v68, v78
	v_fma_f32 v79, -v71, v69, 1.0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s79, v48
	v_cmp_gt_i32_e64 s23, s79, v46
	v_cmp_gt_i32_e64 s22, s79, v45
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v68, v70, v73
	v_rcp_f32_e32 v70, v76
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v77, v68, v78
	v_div_scale_f32 v77, s5, v19, v65, v19
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s79, v44
	v_cmp_gt_i32_e64 s20, s79, v43
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v66, v66, v73, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v76, v70, 1.0
	v_mul_f32_e32 v67, v77, v69
	v_rcp_f32_e32 v68, v79
	v_div_scale_f32 v73, s3, v20, v65, v20
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, null, v65, v65, v22
	v_div_fixup_f32 v17, v66, v65, v17
	v_fma_f32 v66, -v82, v75, v74
	v_fma_f32 v74, -v71, v67, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v78
	v_mul_f32_e32 v80, v73, v70
	v_fma_f32 v82, -v79, v68, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v66, v66, v72, v75
	v_fma_f32 v72, -v76, v80, v73
	v_fmac_f32_e32 v67, v74, v69
	v_div_scale_f32 v74, s4, v21, v65, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v78, v81, 1.0
	v_fmac_f32_e32 v68, v82, v68
	v_div_fixup_f32 v18, v66, v65, v18
	v_fmac_f32_e32 v80, v72, v70
	v_fma_f32 v66, -v71, v67, v77
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v72, s6, v22, v65, v22
	v_mul_f32_e32 v71, v74, v68
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v77, null, v65, v65, v24
	v_div_fmas_f32 v66, v66, v69, v67
	v_fma_f32 v67, -v76, v80, v73
	v_mul_f32_e32 v76, v72, v81
	v_fma_f32 v69, -v79, v71, v74
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v66, v65, v19
	v_div_fmas_f32 v67, v67, v70, v80
	v_fma_f32 v70, -v78, v76, v72
	v_fmac_f32_e32 v71, v69, v68
	v_rcp_f32_e32 v69, v77
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v75, null, v65, v65, v23
	v_fmac_f32_e32 v76, v70, v81
	v_fma_f32 v66, -v79, v71, v74
	v_div_scale_f32 v79, null, v65, v65, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v75
	v_div_fixup_f32 v20, v67, v65, v20
	v_div_fmas_f32 v66, v66, v68, v71
	v_fma_f32 v68, -v78, v76, v72
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v70, -v77, v69, 1.0
	v_div_scale_f32 v72, s4, v24, v65, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v68, v68, v81, v76
	v_div_fixup_f32 v21, v66, v65, v21
	v_fma_f32 v80, -v75, v73, 1.0
	v_div_scale_f32 v67, s3, v23, v65, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v22, v68, v65, v22
	v_rcp_f32_e32 v68, v79
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, null, v65, v65, v9
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, null, v65, v65, v12
	v_mul_f32_e32 v78, v72, v69
	v_rcp_f32_e32 v74, v70
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v83, v81
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v66, -v77, v78, v72
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s79, v42
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s5, v9, v65, v9
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v80, -v79, v68, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s18, s79, v41
	v_cmp_gt_i32_e64 s17, s79, v40
	v_cmp_gt_i32_e64 s16, s79, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v71, v67, v73 :: v_dual_fmac_f32 v68, v80, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s79, v38
	v_cmp_gt_i32_e64 s14, s79, v37
	v_cmp_gt_i32_e64 s13, s79, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v76, -v75, v71, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s79, v35
	v_cmp_gt_i32_e64 s11, s79, v34
	v_cmp_gt_i32_e64 s10, s79, v33
	v_cmp_gt_i32_e64 s9, s79, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v71, v76, v73
	v_fma_f32 v76, -v70, v74, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s79, v25
	v_cmp_gt_i32_e64 s7, s79, v0
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v11
	v_fmac_f32_e32 v74, v76, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v67, v73, v71
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v71, -v77, v78, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v72, v66, v74
	v_div_scale_f32 v73, s3, v10, v65, v10
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v67, v65, v23
	v_fma_f32 v80, -v70, v72, v66
	v_mul_f32_e32 v82, v73, v68
	v_div_fmas_f32 v69, v71, v69, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v72, v80, v74
	v_fma_f32 v71, -v79, v82, v73
	v_div_fixup_f32 v24, v69, v65, v24
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, s6, v11, v65, v11
	v_fma_f32 v66, -v70, v72, v66
	v_div_scale_f32 v70, null, v65, v65, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v77, v76
	v_fmac_f32_e32 v82, v71, v68
	v_fma_f32 v69, -v81, v83, 1.0
	v_div_fmas_f32 v66, v66, v74, v72
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v67, -v75, v78, v77
	v_fma_f32 v71, -v79, v82, v73
	v_fmac_f32_e32 v83, v69, v83
	v_div_scale_f32 v69, s4, v12, v65, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	v_div_fmas_f32 v68, v71, v68, v82
	v_mul_f32_e32 v72, v69, v83
	v_div_scale_f32 v73, null, v65, v65, v14
	v_fma_f32 v71, -v75, v78, v77
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v66, v65, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v73
	v_div_fixup_f32 v10, v68, v65, v10
	v_fma_f32 v74, -v70, v67, 1.0
	v_div_fmas_f32 v71, v71, v76, v78
	v_fma_f32 v76, -v81, v72, v69
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s3, v13, v65, v13
	v_fmac_f32_e32 v72, v76, v83
	v_fma_f32 v68, -v73, v75, 1.0
	v_div_fixup_f32 v11, v71, v65, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v74, v67
	v_div_scale_f32 v71, null, v65, v65, v15
	v_fma_f32 v69, -v81, v72, v69
	v_fmac_f32_e32 v75, v68, v75
	v_fma_f32 v76, -v70, v66, v74
	v_div_scale_f32 v68, s5, v14, v65, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v69, v83, v72
	v_rcp_f32_e32 v77, v71
	v_fmac_f32_e32 v66, v76, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v72, v68, v75
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v69, v65, v12
	v_div_scale_f32 v76, null, v65, v65, v16
	v_fma_f32 v69, -v70, v66, v74
	v_fma_f32 v70, -v73, v72, v68
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v74, -v71, v77, 1.0
	v_rcp_f32_e32 v78, v76
	v_div_fmas_f32 v66, v69, v67, v66
	v_div_scale_f32 v67, null, v65, v65, v1
	v_fmac_f32_e32 v72, v70, v75
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, null, v65, v65, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v70, v67
	v_div_scale_f32 v69, s3, v15, v65, v15
	v_div_fixup_f32 v13, v66, v65, v13
	v_fma_f32 v66, -v76, v78, 1.0
	v_rcp_f32_e32 v80, v74
	v_fma_f32 v68, -v73, v72, v68
	v_mul_f32_e32 v73, v69, v77
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v78, v66, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v67, v70, 1.0
	v_div_scale_f32 v66, s4, v16, v65, v16
	v_div_fmas_f32 v68, v68, v75, v72
	v_fma_f32 v72, -v71, v73, v69
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, null, v65, v65, v3
	v_mul_f32_e32 v75, v66, v78
	v_div_scale_f32 v81, s5, v1, v65, v1
	v_fma_f32 v82, -v74, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v79
	v_fmac_f32_e32 v73, v72, v77
	v_fma_f32 v72, -v76, v75, v66
	v_mul_f32_e32 v84, v81, v70
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, s6, v2, v65, v2
	v_div_fixup_f32 v14, v68, v65, v14
	v_fma_f32 v68, -v71, v73, v69
	v_fmac_f32_e32 v75, v72, v78
	v_fma_f32 v69, -v67, v84, v81
	v_mul_f32_e32 v71, v82, v80
	v_fma_f32 v72, -v79, v83, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v66, -v76, v75, v66
	v_fmac_f32_e32 v84, v69, v70
	v_fma_f32 v69, -v74, v71, v82
	v_fmac_f32_e32 v83, v72, v83
	v_div_scale_f32 v72, s3, v3, v65, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v84, v81
	v_fmac_f32_e32 v71, v69, v80
	v_div_fmas_f32 v68, v68, v77, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v69, v72, v83
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v73, null, v65, v65, v4
	v_div_fmas_f32 v66, v66, v78, v75
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v68, v65, v15
	v_div_fmas_f32 v67, v67, v70, v84
	v_fma_f32 v70, -v74, v71, v82
	v_fma_f32 v74, -v79, v69, v72
	v_rcp_f32_e32 v75, v73
	v_div_fixup_f32 v16, v66, v65, v16
	v_div_fixup_f32 v1, v67, v65, v1
	v_div_scale_f32 v67, null, v65, v65, v5
	v_fmac_f32_e32 v69, v74, v83
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v77, null, v65, v65, v8
	v_div_fmas_f32 v70, v70, v80, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v66, -v79, v69, v72
	v_fma_f32 v68, -v73, v75, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v79, v77
	v_div_fixup_f32 v2, v70, v65, v2
	v_div_fmas_f32 v66, v66, v83, v69
	v_rcp_f32_e32 v69, v67
	v_fmac_f32_e32 v75, v68, v75
	v_div_scale_f32 v68, null, v65, v65, v6
	v_div_scale_f32 v70, null, v65, v65, v7
	v_div_scale_f32 v71, vcc_lo, v4, v65, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v72, v68
	v_rcp_f32_e32 v74, v70
	v_div_fixup_f32 v3, v66, v65, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	v_fma_f32 v83, -v77, v79, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s3, v5, v65, v5
	v_fma_f32 v78, -v68, v72, 1.0
	v_fma_f32 v81, -v70, v74, 1.0
	v_fma_f32 v80, -v73, v76, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v82, v66, v69 :: v_dual_fmac_f32 v79, v83, v79
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, s4, v6, v65, v6
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s5, v7, v65, v7
	v_fmac_f32_e32 v76, v80, v75
	v_fma_f32 v80, -v67, v82, v66
	v_div_scale_f32 v83, s6, v8, v65, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v84, v78, v72 :: v_dual_mul_f32 v85, v81, v74
	v_fmac_f32_e32 v82, v80, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v83, v79
	v_fma_f32 v71, -v73, v76, v71
	v_fma_f32 v73, -v68, v84, v78
	v_fma_f32 v80, -v70, v85, v81
	v_fma_f32 v66, -v67, v82, v66
	v_fma_f32 v67, -v77, v86, v83
	v_div_fmas_f32 v71, v71, v75, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v73, v72 :: v_dual_fmac_f32 v85, v80, v74
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v86, v67, v79
	v_div_fmas_f32 v66, v66, v69, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v68, -v68, v84, v78
	v_fma_f32 v67, -v70, v85, v81
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v69, -v77, v86, v83
	v_div_fixup_f32 v4, v71, v65, v4
	v_div_fmas_f32 v68, v68, v72, v84
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v66, v65, v5
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v68, v65, v6
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v66, v58, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v67, v65, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v67, v59, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v8, v69, v65, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v65, 0, v1, s1
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_nc_u32_e32 v1, s65, v56
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v56, v57, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 846 36                        ; attention.py:846:36
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 846 36                        ; attention.py:846:36
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s34, v14, v14
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s35, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s36, v16, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s34
	v_bfe_u32 v13, v65, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s35
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s36
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
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
	v_cndmask_b32_e64 v7, v17, v58, s40
	v_cndmask_b32_e64 v8, v58, v17, s40
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b16 v3.l, 0x7fff, v14.h, s35
	v_cndmask_b32_e64 v14, v20, v60, s40
	v_cndmask_b32_e64 v15, v60, v20, s40
	v_cndmask_b32_e64 v16, v19, v18, s40
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e64 v18, v18, v19, s40
	v_cndmask_b32_e64 v19, v12, v9, s40
	v_cndmask_b32_e64 v9, v9, v12, s40
	v_cndmask_b32_e64 v12, 0x1054, v17, s40
	v_cndmask_b32_e64 v17, 0x3276, v20, s40
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s36
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s37
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s38
	v_cndmask_b32_e64 v6, v56, v57, s40
	v_lshl_or_b32 v17, v17, 8, v17
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v1, v1, s79
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v12, 0x540054, v12
	v_cndmask_b32_e64 v20, v11, v10, s40
	v_cndmask_b32_e64 v10, v10, v11, s40
	v_cndmask_b32_e64 v11, v3, v13, s40
	v_cndmask_b32_e64 v3, v13, v3, s40
	v_cndmask_b32_e64 v13, v4, v2, s40
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v2, v2, v4, s40
	v_permlanex16_b32 v4, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_cndmask_b32_e64 v5, v57, v56, s40
	v_lshl_or_b32 v12, v17, 4, v17
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v47, v1, v47, 1
	v_add_lshl_u32 v55, v1, v55, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v8, 0x5040504, v8
	v_mov_b16_e32 v68.h, 0
	v_permlanex16_b32 v15, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x7060706, v12
	v_permlanex16_b32 v10, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v4, v5, v8
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s33
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v54, v1, v54, 1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s31
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s79, v32
	.loc	1 846 17 is_stmt 1              ; attention.py:846:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s30
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s79, v31
	v_cmp_gt_i32_e64 s4, s79, v30
	v_cmp_gt_i32_e64 s3, s79, v29
	v_cmp_gt_i32_e64 s1, s79, v28
	v_cmp_gt_i32_e32 vcc_lo, s79, v27
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
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
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	buffer_store_b16 v18, v47, s[76:79], 0 offen
	v_add_lshl_u32 v18, v1, v53, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.l, v4.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v11, v55, s[76:79], 0 offen
	buffer_store_b16 v4, v54, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v52, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s29
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v47, v1, v50, 1
	v_cndmask_b32_e64 v11, 0x80000000, v18, s2
	v_add_lshl_u32 v18, v1, v51, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s28
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v2, v13, v8
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s27
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v2, v13, v12
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s26
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	s_clause 0x1
	buffer_store_b16 v68, v11, s[76:79], 0 offen
	buffer_store_b16 v5, v4, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v49, 1
	v_add_lshl_u32 v5, v1, v48, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s25
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v12.l, v6.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v13, v18, s[76:79], 0 offen
	buffer_store_b16 v6, v47, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v46, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s24
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v12.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v11, v1, v45, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s23
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v22.l, v7.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s22
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v22.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_store_b16 v12, v4, s[76:79], 0 offen
	buffer_store_b16 v7, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	v_add_lshl_u32 v5, v1, v43, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s21
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v22, v6, s[76:79], 0 offen
	buffer_store_b16 v14, v11, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v42, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s20
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v21.l, v14.h
	v_mov_b16_e32 v21.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v41, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s19
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v24.l, v15.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s18
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v24.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v21, v4, s[76:79], 0 offen
	buffer_store_b16 v15, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	v_add_lshl_u32 v5, v1, v39, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s17
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v24, v6, s[76:79], 0 offen
	buffer_store_b16 v16, v7, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v38, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s16
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v37, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s15
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v57.l, v17.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s14
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v57.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v23, v4, s[76:79], 0 offen
	buffer_store_b16 v17, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v36, 1
	v_add_lshl_u32 v5, v1, v35, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s13
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v57, v6, s[76:79], 0 offen
	buffer_store_b16 v9, v7, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v34, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s12
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v56.l, v9.h
	v_mov_b16_e32 v56.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v33, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s11
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v59.l, v19.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s10
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v59.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_store_b16 v56, v4, s[76:79], 0 offen
	buffer_store_b16 v19, v5, s[76:79], 0 offen
	v_add_lshl_u32 v4, v1, v32, 1
	v_add_lshl_u32 v5, v1, v31, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s6
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v59, v6, s[76:79], 0 offen
	buffer_store_b16 v10, v7, s[76:79], 0 offen
	v_add_lshl_u32 v6, v1, v30, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s5
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v7, v1, v29, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s4
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v58.l, v10.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s2, s0, s3
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v58.h, v68.h
	v_mov_b16_e32 v61.l, v20.h
	v_mov_b16_e32 v61.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v60.l, v3.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x3
	buffer_store_b16 v58, v4, s[76:79], 0 offen
	buffer_store_b16 v20, v5, s[76:79], 0 offen
	buffer_store_b16 v61, v6, s[76:79], 0 offen
	buffer_store_b16 v3, v7, s[76:79], 0 offen
	v_add_lshl_u32 v3, v1, v27, 1
	v_add_lshl_u32 v4, v1, v28, 1
	v_add_lshl_u32 v5, v1, v26, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v6, v1, v25, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s0, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s9
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v60.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v63.l, v8.h
	v_mov_b16_e32 v63.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v62.l, v2.h
	v_mov_b16_e32 v62.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v60, v4, s[76:79], 0 offen
	buffer_store_b16 v8, v3, s[76:79], 0 offen
	buffer_store_b16 v63, v1, s[76:79], 0 offen
	buffer_store_b16 v2, v5, s[76:79], 0 offen
	buffer_store_b16 v62, v0, s[76:79], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_endpgm
.Ltmp300:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 572
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
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 572
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27672
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 572
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
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
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
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
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
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
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
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
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
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
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
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
    .private_segment_fixed_size: 572
    .sgpr_count:     107
    .sgpr_spill_count: 16
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 142
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
