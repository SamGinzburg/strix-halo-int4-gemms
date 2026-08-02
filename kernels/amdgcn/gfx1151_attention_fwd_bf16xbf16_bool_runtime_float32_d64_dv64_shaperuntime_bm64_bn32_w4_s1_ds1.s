	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
	s_load_b32 s91, s[0:1], 0x5c
	v_mov_b32_e32 v66, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s94, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 6, v66
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v1, 63, v66
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
	s_cselect_b32 s92, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v12, 20, v2
	s_cselect_b32 s44, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s64
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s90, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
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
	v_mad_u64_u32 v[105:106], null, s91, v2, v[1:2]
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
	v_readfirstlane_b32 s5, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, s90, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s90, v3
	v_or_b32_e32 v3, s90, v4
	v_or_b32_e32 v4, s90, v5
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s90, v6
	v_or_b32_e32 v6, s90, v7
	v_or_b32_e32 v7, s90, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s90, v9
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
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s90, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s5, s6
	s_abs_i32 s6, s3
	s_add_i32 s5, s5, s2
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s88, s3, s66
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[36:37], null, s91, 6, v[105:106]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[38:39], null, s91, 10, v[105:106]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s5, s6, s5
	s_add_i32 s6, s2, 1
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[39:40], null, s91, 12, v[105:106]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v34, s91, 1, v105
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s45, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[42:43], null, s91, 18, v[105:106]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[43:44], null, s91, 20, v[105:106]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s66, v4
	v_mov_b32_e32 v4, v36
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v35, s91, 2, v105
	v_mad_u64_u32 v[44:45], null, s91, 22, v[105:106]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s66, v6
	v_mov_b32_e32 v6, v38
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, 32, v0
	v_or_b32_e32 v19, 34, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 36, v0
	v_or_b32_e32 v20, 38, v0
	v_or_b32_e32 v21, 40, v0
	v_or_b32_e32 v22, 42, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, 44, v0
	v_or_b32_e32 v24, 46, v0
	v_or_b32_e32 v25, 48, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, 50, v0
	v_or_b32_e32 v27, 52, v0
	v_or_b32_e32 v28, 54, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v29, 56, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, 58, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s64, s65
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s46, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v31, 60, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v32, 62, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s91, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s47, s6, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s88, s88, s90
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s68, s88, s91
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s66, v2
	.loc	1 787 26                        ; attention.py:787:26
	v_add_nc_u32_e32 v33, s68, v105
	v_mad_u64_u32 v[40:41], null, s91, 14, v[105:106]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s66, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s68, v34, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v0, 1, v33
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v37, s91, 3, v105
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s6, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v41, s91, 4, v105
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s66, v7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s68, v35, 1
	scratch_store_b64 off, v[6:7], off offset:84 ; 8-byte Folded Spill
	v_mov_b32_e32 v7, v39
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s7, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s66, v5
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v34, off offset:64
	scratch_store_b32 off, v35, off offset:68
	scratch_store_b64 off, v[4:5], off offset:72
	scratch_store_b32 off, v37, off offset:80
	v_add_lshl_u32 v4, s68, v36, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s8, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v5, s68, v37, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s66, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s9, s2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[7:8], off offset:92 ; 8-byte Folded Spill
	v_dual_mov_b32 v8, v40 :: v_dual_and_b32 v67, 15, v66
	v_add_lshl_u32 v6, s68, v38, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s10, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s68, v39, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s11, s2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[8:9], off offset:100 ; 8-byte Folded Spill
	v_add_lshl_u32 v8, s68, v40, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s90, v11
	v_or_b32_e32 v12, s90, v12
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s12, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s41, s41, 0xffff
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s13, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s66, v11
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s66, v12
	v_cmp_gt_i32_e64 s24, s66, v10
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x7
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	buffer_load_u16 v10, v2, s[40:43], 0 offen
	buffer_load_u16 v11, v3, s[40:43], 0 offen
	buffer_load_u16 v12, v4, s[40:43], 0 offen
	buffer_load_u16 v5, v5, s[40:43], 0 offen
	buffer_load_u16 v6, v6, s[40:43], 0 offen
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s66, v9
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v9, s68, v41, 1
	v_mov_b32_e32 v2, v42
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s90, v13
	v_mov_b32_e32 v4, v43
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s14, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[157:158], null, s91, 24, v[105:106]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s90, v14
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v41, off offset:108
	scratch_store_b64 off, v[2:3], off offset:112
	v_cndmask_b32_e64 v3, 0x80000000, v9, s6
	v_mov_b32_e32 v9, v44
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[114:115], null, s91, 26, v[105:106]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s68, v42, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s90, v15
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[115:116], null, s91, 28, v[105:106]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s66, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s90, v16
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s15, s2
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s66, v14
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s16, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[116:117], null, s91, 30, v[105:106]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s66, v15
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, s68, v157, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s90, v17
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s20, s66, v16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, s68, v114, 1
	v_add_lshl_u32 v15, s68, v115, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s63, s91, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s21, s66, v17
	v_cmp_gt_i32_e64 s22, s66, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, s68, v116, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s61, s91, 34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s66, v19
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s60, s91, 36
	s_mul_i32 s59, s91, 38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s66, v20
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s58, s91, 40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s66, v21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, v33, s59, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s57, s91, 42
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s66, v22
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v33, s58, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s56, s91, 44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s66, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v22, v33, s57, 1
	v_add_lshl_u32 v23, v33, s56, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s55, s91, 46
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s66, v24
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s54, s91, 48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s66, v25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, v33, s55, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s53, s91, 56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s66, v26
	v_cmp_gt_i32_e64 s34, s66, v29
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s50, s91, 50
	s_mul_i32 s52, s91, 58
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s33, s66, v27
	v_cmp_gt_i32_e64 s35, s66, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v27, v33, s50, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s51, s91, 52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v29, v33, s52, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v28
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v28, v33, s51, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v31
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s49, s91, 60
	s_mul_i32 s48, s91, 54
	s_mul_i32 s62, s91, 62
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s66, v32
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 s5, s5, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v68, 0x60, v66
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v36, 1, v1
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s67, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v38, 6, v68
	s_waitcnt vmcnt(6)
	scratch_store_b64 off, v[9:10], off offset:128 ; 8-byte Folded Spill
	v_add_lshl_u32 v9, s68, v44, 1
	s_waitcnt vmcnt(3)
	scratch_store_b64 off, v[4:5], off offset:120 ; 8-byte Folded Spill
	v_add_lshl_u32 v4, s68, v43, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s17, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s18, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s19, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s20, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	s_clause 0x5
	buffer_load_u16 v17, v3, s[40:43], 0 offen
	buffer_load_u16 v18, v2, s[40:43], 0 offen
	buffer_load_u16 v19, v4, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	v_add_lshl_u32 v2, v33, s63, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s21, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, v33, s61, 1
	v_cndmask_b32_e64 v3, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s22, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v33, s60, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s23, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s24, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s25, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s26, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s27, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s28, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	s_clause 0x5
	buffer_load_u16 v25, v2, s[40:43], 0 offen
	buffer_load_u16 v26, v4, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	v_add_lshl_u32 v2, v33, s54, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s29, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, v33, s53, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s30, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s34, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s31, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v30, v2, s[40:43], 0 offen
	buffer_load_u16 v31, v4, s[40:43], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v27, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s35, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v29, s6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s6, s33, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v29, v2, s[40:43], 0 offen
	buffer_load_u16 v32, v4, s[40:43], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v28, s6
	v_add_lshl_u32 v28, v33, s49, 1
	v_add_lshl_u32 v2, v33, s48, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v4, 0x80000000, v28, s5
	v_add_lshl_u32 v28, v33, s62, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v33, v4, s[40:43], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s47, s46
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v4, 0x80000000, v28, vcc_lo
	s_clause 0x5
	buffer_load_u16 v28, v3, s[40:43], 0 offen
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v34, v4, s[40:43], 0 offen
	buffer_load_u16 v35, v2, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v2, v66, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v3, 7, v66
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s4, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v37, 0x90, v2
	v_lshlrev_b32_e32 v2, 7, v67
	v_lshlrev_b32_e32 v4, 4, v3
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s6, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v36, v37, v36
	v_or3_b32 v37, v2, v38, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v164, 0, v36
	v_xor_b32_e32 v38, 0x120, v36
	v_xor_b32_e32 v39, 0x240, v36
	v_xor_b32_e32 v36, 0x360, v36
	v_add_nc_u32_e32 v40, 0, v37
	v_xad_u32 v41, v37, 16, 0
	v_xad_u32 v42, v37, 32, 0
	v_xad_u32 v43, v37, 48, 0
	v_xad_u32 v44, v37, 64, 0
	v_xad_u32 v45, 0x50, v37, 0
	v_xad_u32 v46, 0x60, v37, 0
	v_xad_u32 v37, 0x70, v37, 0
	v_add_nc_u32_e32 v165, 0, v38
	v_add_nc_u32_e32 v166, 0, v39
	v_add_nc_u32_e32 v167, 0, v36
	ds_store_b16 v164, v0
	ds_store_b16 v164, v5 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v164, v17 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v164, v13 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v164, v25 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v164, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v164, v30 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v164, v31 offset:7168
	ds_store_b16 v165, v10
	ds_store_b16 v165, v6 offset:1024
	ds_store_b16 v165, v18 offset:2048
	ds_store_b16 v165, v14 offset:3072
	ds_store_b16 v165, v26 offset:4096
	ds_store_b16 v165, v22 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v165, v29 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v165, v32 offset:7168
	ds_store_b16 v166, v11
	ds_store_b16 v166, v7 offset:1024
	ds_store_b16 v166, v19 offset:2048
	ds_store_b16 v166, v15 offset:3072
	ds_store_b16 v166, v16 offset:4096
	ds_store_b16 v166, v23 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v166, v27 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v166, v33 offset:7168
	ds_store_b16 v167, v12
	ds_store_b16 v167, v8 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v167, v9 offset:2048
	ds_store_b16 v167, v28 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v167, v20 offset:4096
	ds_store_b16 v167, v24 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v167, v35 offset:6144
	ds_store_b16 v167, v34 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v40
	ds_load_b128 v[13:16], v41
	ds_load_b128 v[17:20], v42
	ds_load_b128 v[21:24], v43
	ds_load_b128 v[25:28], v44
	ds_load_b128 v[29:32], v45
	ds_load_b128 v[33:36], v46
	ds_load_b128 v[37:40], v37
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s6, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s6, 27
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s93, s7, 0xffffffe0
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s7, s36, 0x10008
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v0
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v169, 0, 1, s44
	s_and_not1_b32 vcc_lo, exec_lo, s44
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	v_lshlrev_b32_e32 v71, 2, v66
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s94, s93
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v65, 2, v66
	s_mov_b32 s7, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s90, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s90, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s7, s67, s7
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
	s_and_b32 s94, s8, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s93, s93, s7
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v169, 0, 1, s44
	s_and_not1_b32 vcc_lo, exec_lo, s44
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s7, s90, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 64
	s_min_i32 s7, s67, s7
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
	s_min_i32 s93, s93, s7
	v_lshlrev_b32_e32 v71, 2, v66
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s94, s93
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr65
.LBB0_7:                                ; %Flow192
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s89, s[0:1], 0x64
	v_and_b32_e32 v69, 64, v66
	v_and_b32_e32 v70, 16, v66
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_46
; %bb.8:                                ; %.lr.ph
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 5, v68
	v_lshlrev_b32_e32 v53, 1, v66
	v_lshlrev_b32_e32 v54, 3, v66
	v_lshrrev_b32_e32 v56, 2, v70
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v0, v5, v2
	v_lshlrev_b32_e32 v55, 3, v67
	v_xor_b32_e32 v59, v54, v53
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x6c
	s_load_b32 s95, s[0:1], 0x7c
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v54, 48, v54
	v_or3_b32 v170, v56, v55, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v0, 6, v1
	v_lshrrev_b32_e32 v55, 3, v69
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v56, 48, v59
	v_lshl_or_b32 v3, v3, 6, v54
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v6, 4, v5
	v_mov_b32_e32 v91, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v171, v0, v55, v56
	v_bfe_i32 v0, v66, 3, 1
	v_or_b32_e32 v7, 8, v5
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v58, s90, v6
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v56, 6, v66
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v0, 0x210, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v59, s90, v7
	scratch_store_b32 off, v66, off offset:456 ; 4-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v8, 12, v5
	v_or_b32_e32 v41, 16, v5
	v_xor_b32_e32 v174, v3, v0
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v0, 31, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v42, 20, v5
	v_or_b32_e32 v43, 24, v5
	v_or_b32_e32 v44, 28, v5
	v_or_b32_e32 v45, 32, v5
	v_mov_b32_e32 v191, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s95, v0
	v_or_b32_e32 v46, 36, v5
	v_or_b32_e32 v47, 40, v5
	v_or_b32_e32 v48, 44, v5
	v_or_b32_e32 v49, 48, v5
	v_or_b32_e32 v50, 52, v5
	v_or_b32_e32 v51, 56, v5
	s_xor_b32 s7, s3, s64
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[65:66], null, s27, v6, v[0:1]
	v_mad_u64_u32 v[6:7], null, s27, v7, v[0:1]
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v52, 60, v5
	s_xor_b32 s8, s45, s7
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[65:66], off offset:136
	scratch_store_b32 off, v68, off offset:464
	scratch_store_b64 off, v[6:7], off offset:144
	v_mad_u64_u32 v[6:7], null, s27, v8, v[0:1]
	s_cvt_u32_f32 s6, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v57, s90, v5
	s_sub_i32 s18, s8, s7
	s_sub_i32 s7, 0, s4
	s_mul_i32 s8, s18, s64
	s_mul_i32 s7, s7, s6
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:152
	scratch_store_b32 off, v69, off offset:468
	v_mad_u64_u32 v[6:7], null, s27, v41, v[0:1]
	s_sub_i32 s19, s3, s8
	s_mul_hi_u32 s3, s6, s7
	s_abs_i32 s7, s19
	s_add_i32 s6, s6, s3
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s3, s7, s6
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:160
	scratch_store_b32 off, v70, off offset:472
	v_mad_u64_u32 v[6:7], null, s27, v42, v[0:1]
	s_ashr_i32 s6, s19, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s8, s3, s4
	s_xor_b32 s5, s6, s5
	s_sub_i32 s6, s7, s8
	s_add_i32 s7, s3, 1
	s_sub_i32 s8, s6, s4
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:168 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v43, v[0:1]
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s6, s4
	v_or_b32_e32 v172, v4, v2
	s_cselect_b32 s3, s7, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s90, v42
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s3, 1
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:176 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v44, v[0:1]
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s6, s4
	v_lshrrev_b32_e32 v60, 3, v68
	s_cselect_b32 s3, s7, s3
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s66, v2
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v75, s39, v2
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:184 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v45, v[0:1]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v54, s90, v41
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x8
	s_load_b64 s[78:79], s[0:1], 0x30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s66, v57
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v65, s39, v57
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v74, s39, v54
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:192 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v46, v[0:1]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v55, s90, v8
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v193, 4, v69
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s3, s3, s5
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s89, v1
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s3, s3, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s66, v55
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v47, v[0:1]
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v73, s39, v55
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v66, s39, v58
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:460
	scratch_store_b32 off, v71, off offset:476
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v72, s39, v59
	scratch_store_b64 off, v[6:7], off offset:208 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v48, v[0:1]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s90, v43
	v_or_b32_e32 v3, s90, v44
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s4, s18, s65
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v61, s90, v48
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s96, s3, s4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v76, s39, v4
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:216 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v49, v[0:1]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s66, v59
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v77, s39, v3
	v_mov_b32_e32 v59, v57
	v_cmp_gt_i32_e64 s13, s66, v61
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v97, s39, v61
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:224 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v50, v[0:1]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v63, s90, v50
	v_or_b32_e32 v62, s90, v49
	v_or_b32_e32 v64, s90, v51
	v_dual_mov_b32 v49, v57 :: v_dual_mov_b32 v2, 0x7632
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s66, v63
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:232 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s27, v51, v[0:1]
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v99, s39, v63
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v98, s39, v62
	v_dual_mov_b32 v51, v57 :: v_dual_add_nc_u32 v100, s39, v64
	v_mov_b32_e32 v94, 0
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[6:7], off offset:240 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s27, v5, v[0:1]
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s97, s24, 0x3fb8aa3b
	v_mov_b32_e32 v63, v57
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s24, s27, s90
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s18, s18, s25
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s3, s66, v58
	v_cmp_gt_i32_e64 s6, s66, v54
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[5:6], off offset:248 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s27, v52, v[0:1]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v0, s90, v52
	v_dual_mov_b32 v61, v57 :: v_dual_mov_b32 v92, 0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s66, v4
	v_cmp_gt_i32_e64 s9, s66, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s17, s66, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v101, s39, v0
	v_lshrrev_b32_e32 v0, 2, v68
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s66, v62
	v_cmp_gt_i32_e64 s16, s66, v64
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v43, v57
	v_xor_b32_e32 v192, v71, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v53, 60, v53
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s19, s19, s26
	s_add_i32 s98, s18, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v55, v57 :: v_dual_cndmask_b32 v0, 0x1054, v0
	v_lshl_or_b32 v53, v68, 4, v53
	s_mov_b32 s68, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s96, s96, s67
	v_mov_b32_e32 v58, v57
	v_lshl_or_b32 v0, v0, 8, v0
	v_xor_b32_e32 v53, v53, v60
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v60, s90, v47
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s21, 0xffff
	v_dual_mov_b32 v47, v57 :: v_dual_and_b32 v0, 0x540054, v0
	v_and_or_b32 v173, v56, 64, v53
	v_or_b32_e32 v53, s90, v45
	v_or_b32_e32 v56, s90, v46
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v80, s39, v60
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s66, v60
	v_mov_b32_e32 v60, v57
	v_cmp_gt_i32_e64 s10, s66, v53
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v78, s39, v53
	v_mov_b32_e32 v53, v57
	v_lshl_or_b32 v0, v0, 4, v0
	v_add_nc_u32_e32 v79, s39, v56
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s66, v56
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v62, v57
	v_and_b32_e32 v194, 0x5040504, v0
	v_xor_b32_e32 v0, 16, v172
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v3, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v57 :: v_dual_add_nc_u32 v196, 0, v0
	v_xor_b32_e32 v0, 32, v172
	v_cndmask_b32_e32 v2, 0x3276, v2, vcc_lo
	v_mov_b32_e32 v64, v57
	v_dual_mov_b32 v54, v57 :: v_dual_mov_b32 v121, 0xff800000
	v_add_nc_u32_e32 v197, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 8, v2
	v_xor_b32_e32 v0, 48, v172
	v_mov_b32_e32 v123, 0xff800000
	s_mov_b32 s80, s20
	s_mov_b32 s83, 0x31027000
	v_and_b32_e32 v2, 0x760076, v2
	v_add_nc_u32_e32 v198, 0, v0
	v_xor_b32_e32 v0, 64, v172
	v_mov_b32_e32 v56, v57
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[186:187], null, s89, v193, v[1:2]
	v_lshl_or_b32 v1, v2, 4, v2
	v_lshl_or_b32 v2, v67, 9, v71
	v_subrev_nc_u32_e32 v67, s37, v65
	.loc	1 759 21                        ; attention.py:759:21
	scratch_store_b64 off, v[5:6], off offset:256 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v199, 0, v0
	v_dual_mov_b32 v156, v2 :: v_dual_and_b32 v195, 0x7060706, v1
	v_xor_b32_e32 v1, 16, v170
	scratch_store_b32 off, v67, off offset:328 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v66
	v_xor_b32_e32 v0, 0x50, v172
	v_mov_b32_e32 v42, v57
	v_add_nc_u32_e32 v188, 0, v1
	v_xor_b32_e32 v1, 24, v170
	scratch_store_b32 off, v67, off offset:332 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v72
	v_add_nc_u32_e32 v200, 0, v0
	v_xor_b32_e32 v0, 0x60, v172
	v_add_nc_u32_e32 v189, 0, v1
	v_xor_b32_e32 v1, 32, v170
	scratch_store_b32 off, v67, off offset:336 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v73
	v_add_nc_u32_e32 v201, 0, v0
	v_xor_b32_e32 v0, 0x70, v172
	v_add_nc_u32_e32 v159, 0, v1
	v_xor_b32_e32 v1, 40, v170
	scratch_store_b32 off, v67, off offset:340 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v74
	v_add_nc_u32_e32 v202, 0, v0
	v_xor_b32_e32 v0, 0x220, v192
	v_add_nc_u32_e32 v190, 0, v1
	v_xor_b32_e32 v1, 48, v170
	scratch_store_b32 off, v67, off offset:344 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v75
	v_dual_mov_b32 v252, 0xff800000 :: v_dual_add_nc_u32 v187, 0, v0
	v_add_nc_u32_e32 v211, 0, v1
	v_xor_b32_e32 v1, 56, v170
	scratch_store_b32 off, v67, off offset:348 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v76
	v_mov_b32_e32 v148, 0xff800000
	v_xor_b32_e32 v0, 0x440, v192
	v_add_nc_u32_e32 v212, 0, v1
	v_xor_b32_e32 v1, 64, v170
	scratch_store_b32 off, v67, off offset:352 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v77
	v_mov_b32_e32 v146, 0xff800000
	v_add_nc_u32_e32 v158, 0, v0
	v_add_nc_u32_e32 v213, 0, v1
	v_xor_b32_e32 v1, 0x48, v170
	scratch_store_b32 off, v67, off offset:356 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v78
	v_mov_b32_e32 v144, 0xff800000
	v_xor_b32_e32 v0, 0x660, v192
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_add_nc_u32 v214, 0, v1
	v_xor_b32_e32 v1, 0x50, v170
	scratch_store_b32 off, v67, off offset:360 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v79
	v_mov_b32_e32 v142, 0xff800000
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v215, 0, v1
	v_xor_b32_e32 v1, 0x58, v170
	scratch_store_b32 off, v67, off offset:364 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v80
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_add_nc_u32 v221, 0, v0
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_add_nc_u32 v216, 0, v1
	v_xor_b32_e32 v1, 0x60, v170
	scratch_store_b32 off, v67, off offset:368 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v97
	v_mov_b32_e32 v168, 0xff800000
	v_xor_b32_e32 v0, 8, v170
	v_dual_mov_b32 v44, v57 :: v_dual_add_nc_u32 v217, 0, v1
	v_xor_b32_e32 v1, 0x68, v170
	scratch_store_b32 off, v67, off offset:372 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v98
	v_mov_b32_e32 v254, 0xff800000
	v_dual_mov_b32 v5, v57 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_add_nc_u32 v218, 0, v1
	v_xor_b32_e32 v1, 0x70, v170
	scratch_store_b32 off, v67, off offset:376 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v99
	v_mov_b32_e32 v46, v57
	v_dual_mov_b32 v48, v57 :: v_dual_add_nc_u32 v219, 0, v1
	v_xor_b32_e32 v1, 0x78, v170
	scratch_store_b32 off, v67, off offset:380 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v100
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v6, v57
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_add_nc_u32 v220, 0, v1
	v_xor_b32_e32 v1, 4, v2
	scratch_store_b32 off, v67, off offset:384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s37, v101
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:388
	scratch_store_b32 off, v65, off offset:264
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_add_nc_u32 v222, 0, v1
	v_xor_b32_e32 v1, 8, v2
	v_add_nc_u32_e32 v65, s38, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:392
	scratch_store_b32 off, v66, off offset:268
	v_add_nc_u32_e32 v223, 0, v1
	v_xor_b32_e32 v1, 12, v2
	v_add_nc_u32_e32 v65, s38, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:396
	scratch_store_b32 off, v72, off offset:272
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_add_nc_u32 v224, 0, v1
	v_xor_b32_e32 v1, 16, v2
	v_add_nc_u32_e32 v65, s38, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:400
	scratch_store_b32 off, v73, off offset:276
	v_add_nc_u32_e32 v225, 0, v1
	v_xor_b32_e32 v1, 20, v2
	v_add_nc_u32_e32 v65, s38, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:404
	scratch_store_b32 off, v74, off offset:280
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v226, 0, v1
	v_xor_b32_e32 v1, 24, v2
	v_add_nc_u32_e32 v65, s38, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:408
	scratch_store_b32 off, v75, off offset:284
	v_add_nc_u32_e32 v227, 0, v1
	v_xor_b32_e32 v1, 28, v2
	v_add_nc_u32_e32 v65, s38, v75
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:412
	scratch_store_b32 off, v76, off offset:288
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_add_nc_u32 v228, 0, v1
	v_xor_b32_e32 v1, 32, v2
	v_add_nc_u32_e32 v65, s38, v76
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:416
	scratch_store_b32 off, v77, off offset:292
	v_add_nc_u32_e32 v229, 0, v1
	v_xor_b32_e32 v1, 36, v2
	v_add_nc_u32_e32 v65, s38, v77
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:420
	scratch_store_b32 off, v78, off offset:296
	v_dual_mov_b32 v143, 0xff800000 :: v_dual_add_nc_u32 v230, 0, v1
	v_xor_b32_e32 v1, 40, v2
	v_add_nc_u32_e32 v65, s38, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:424
	scratch_store_b32 off, v79, off offset:300
	v_dual_mov_b32 v8, v57 :: v_dual_add_nc_u32 v231, 0, v1
	v_xor_b32_e32 v1, 44, v2
	v_add_nc_u32_e32 v65, s38, v79
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:428
	scratch_store_b32 off, v80, off offset:304
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v232, 0, v1
	v_xor_b32_e32 v1, 48, v2
	v_add_nc_u32_e32 v65, s38, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:432
	scratch_store_b32 off, v97, off offset:308
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_add_nc_u32 v233, 0, v1
	v_xor_b32_e32 v1, 52, v2
	v_add_nc_u32_e32 v65, s38, v97
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:436
	scratch_store_b32 off, v98, off offset:312
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_add_nc_u32 v234, 0, v1
	v_xor_b32_e32 v1, 56, v2
	v_add_nc_u32_e32 v65, s38, v98
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:440
	scratch_store_b32 off, v99, off offset:316
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_add_nc_u32 v235, 0, v1
	v_xor_b32_e32 v1, 60, v2
	v_add_nc_u32_e32 v65, s38, v99
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:444
	scratch_store_b32 off, v100, off offset:320
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_add_nc_u32 v236, 0, v1
	v_xor_b32_e32 v1, 0x810, v173
	v_dual_mov_b32 v2, v57 :: v_dual_add_nc_u32 v65, s38, v100
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:448
	scratch_store_b32 off, v101, off offset:324
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v237, 0, v1
	v_xor_b32_e32 v1, 0x1020, v173
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_add_nc_u32 v65, s38, v101
	v_mov_b32_e32 v126, 0xff800000
	v_mov_b32_e32 v130, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v255, 0xff800000 :: v_dual_add_nc_u32 v238, 0, v1
	v_xor_b32_e32 v1, 0x1830, v173
	v_mov_b32_e32 v132, 0xff800000
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_mov_b32 v253, 0xff800000
	s_add_i32 s98, s98, s19
	v_add_nc_u32_e32 v239, 0, v1
	v_xor_b32_e32 v1, 16, v171
	s_lshl_b32 s99, s89, 1
	s_lshl_b32 s100, s89, 3
	s_lshl_b32 s101, s89, 4
	s_mul_i32 s102, s89, 25
	v_add_nc_u32_e32 v240, 0, v1
	v_xor_b32_e32 v1, 32, v171
	s_mul_i32 s103, s89, 26
	s_mul_i32 s104, s89, 27
	s_and_b32 s85, s23, 0xffff
	s_mov_b32 s84, s22
	v_add_nc_u32_e32 v241, 0, v1
	v_xor_b32_e32 v1, 48, v171
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	v_add_nc_u32_e32 v242, 0, v1
	v_xor_b32_e32 v1, 16, v174
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 vcc_hi, 0x76543210
	v_add_nc_u32_e32 v243, 0, v1
	v_xor_b32_e32 v1, 32, v174
	scratch_store_b32 off, v65, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v244, 0, v1
	v_xor_b32_e32 v1, 48, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v245, 0, v1
	v_xor_b32_e32 v1, 0x420, v174
	v_add_nc_u32_e32 v246, 0, v1
	v_xor_b32_e32 v1, 0x430, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v247, 0, v1
	v_xor_b32_e32 v1, 0x410, v174
	v_add_nc_u32_e32 v248, 0, v1
	v_mov_b32_e32 v1, v57
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v135, s97, v77 :: v_dual_mul_f32 v134, s97, v78
	v_mul_f32_e32 v77, s97, v65
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, 0xff, v103.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v137, s97, v75 :: v_dual_mul_f32 v136, s97, v76
	v_mul_f32_e32 v75, s97, v67
	v_dual_mul_f32 v117, s97, v73 :: v_dual_mul_f32 v138, s97, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s18, 0, v65.l
	v_and_b16 v65.l, 0xff, v104.h
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v73, s97, v69
	v_dual_mul_f32 v69, s97, v70 :: v_dual_mul_f32 v74, s97, v68
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s29, s62, s18
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v104.l
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_mul_f32_e32 v68, s97, v71
	v_mul_f32_e32 v76, s97, v66
	v_mul_f32_e32 v66, s97, v72
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s25, s63, s19
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v65.l
	v_and_b16 v65.l, 0xff, v102.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v79, s97, v79 :: v_dual_mul_f32 v78, s97, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v65.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 vcc_lo, s65, vcc_lo
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s87, s83
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, vcc_lo
	s_and_b32 s21, s64, s20
	v_cndmask_b32_e64 v67, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v70.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s25
	v_cndmask_b32_e64 v67, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v70.l, v67.l, v65.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v98.h
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v100.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s30, s57, s19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v65.l
	v_and_b16 v65.l, 0xff, v103.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s26, s59, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s18, 0, v65.l
	v_and_b16 v65.l, 0xff, v101.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s18, s61, s18
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s18
	s_and_b32 s22, s60, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s22
	v_or_b16 v71.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s26
	v_cndmask_b32_e64 v67, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v71.l, v67.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v97.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s20, 0, v65.l
	v_and_b16 v65.l, 0xff, v99.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s31, s54, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v65.l
	v_and_b16 v65.l, 0xff, v102.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s27, s55, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v65.l
	v_and_b16 v65.l, 0xff, v100.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s19, s58, s19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s19
	s_and_b32 s23, s56, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s23
	v_or_b16 v72.h, v67.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s27
	v_cndmask_b32_e64 v67, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v72.l, v67.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s33, 0, v65.l
	v_and_b16 v65.l, 0xff, v98.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s33, s50, s33
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v65.l
	v_and_b16 v65.l, 0xff, v101.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s28, s51, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v65.l
	v_and_b16 v65.l, 0xff, v99.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s20, s53, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s20
	s_and_b32 s24, s52, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s24
	v_or_b16 v65.h, v67.l, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v65.l, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s33
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v65.l, v67.l, v65.l
	v_add_nc_u32_e32 v67, 0, v192
	ds_store_b32 v67, v70
	ds_store_b32 v187, v71
	ds_store_b32 v158, v72
	ds_store_b32 v221, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v65, v188
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v189
	ds_load_u8_d16 v67, v159
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v190
	ds_load_u8_d16 v70, v211
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v70, v212
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s47, 1, v65.l
	v_and_b16 v65.l, 1, v65.h
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v176, 0xff800000, v137, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s46, 1, v65.l
	v_and_b16 v65.l, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v136, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s45, 1, v65.l
	v_and_b16 v65.l, 1, v67.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v135, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s44, 1, v65.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v65.l, 1, v70.l
	v_cmp_eq_u16_e64 s42, 1, v65.l
	v_and_b16 v65.l, 1, v70.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s43, 1, v65.l
	ds_load_u8_d16 v65, v213
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v214
	ds_load_u8_d16 v67, v215
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v216
	ds_load_u8_d16 v70, v217
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v70, v218
	ds_load_u8_d16 v71, v219
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v71, v220
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v78, s43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s40, 1, v65.l
	v_and_b16 v65.l, 1, v65.h
	v_cmp_eq_u16_e64 s41, 1, v65.l
	v_and_b16 v65.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v76, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s38, 1, v65.l
	v_and_b16 v65.l, 1, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v75, s38
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s39, 1, v65.l
	v_and_b16 v65.l, 1, v70.l
	v_mad_u64_u32 v[75:76], null, s86, s89, v[186:187]
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s86, s82
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v74, s39
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s36, 1, v65.l
	v_and_b16 v65.l, 1, v70.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v98, v75, s103, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v73, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s37, 1, v65.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v65.l, 1, v71.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v73, v75, s102, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v69, s37
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s34, 1, v65.l
	v_and_b16 v65.l, 1, v71.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v79, s42
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v79, v75, s101, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v68, s34
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s35, 1, v65.l
	v_add_nc_u32_e32 v65, 0, v170
	ds_load_u8_d16_hi v65, v65
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v65, v0
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v152, 0xff800000, v66, s35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, v75, s99, 1
	v_add_lshl_u32 v68, v75, s100, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v65.h, 1, v65.h
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s48, 1, v65.h
	v_cmp_eq_u16_e64 s50, 1, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v117, s48
	v_cndmask_b32_e64 v177, 0xff800000, v138, s50
	v_add_nc_u32_e32 v70, 0, v156
	v_cndmask_b32_e64 v117, 0xff800000, v77, s40
	ds_store_b32 v70, v67
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 1, v193
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s49
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 2, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s63, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 3, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s58, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 8, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s64, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 9, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 10, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s65, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 11, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 16, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s59, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 17, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 18, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s60, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 19, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 24, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s61, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 25, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 26, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s62, s67, v70
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v70, 27, v193
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v70, s94, v70
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s67, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v134, s44
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v75
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v222, v177
	ds_store_b32 v223, v176
	ds_store_b32 v224, v120
	ds_store_b32 v225, v119
	ds_store_b32 v226, v70
	ds_store_b32 v227, v71
	ds_store_b32 v228, v72
	ds_store_b32 v229, v117
	ds_store_b32 v230, v118
	ds_store_b32 v231, v155
	ds_store_b32 v232, v175
	ds_store_b32 v233, v153
	ds_store_b32 v234, v154
	ds_store_b32 v235, v151
	ds_store_b32 v236, v152
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s63
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s64
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v65, v65, s[84:87], 0 offen
	buffer_load_u16 v66, v66, s[84:87], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v68, s49
	s_mul_i32 s49, s89, 10
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v69, v75, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s65
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s49
	s_mul_i32 s49, s89, 3
	s_clause 0x1
	buffer_load_u16 v134, v68, s[84:87], 0 offen
	buffer_load_u16 v135, v69, s[84:87], 0 offen
	v_add_lshl_u32 v78, v75, s49, 1
	s_mul_i32 s49, s89, 9
	v_add_lshl_u32 v69, v75, s89, 1
	v_add_lshl_u32 v76, v75, s49, 1
	s_mul_i32 s49, s89, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v77, v75, s49, 1
	s_mul_i32 s49, s89, 17
	v_add_lshl_u32 v68, v75, s49, 1
	s_mul_i32 s49, s89, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v80, v75, s49, 1
	s_mul_i32 s49, s89, 19
	v_add_lshl_u32 v74, v75, s49, 1
	s_mul_i32 s49, s89, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v97, v75, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s59
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v75, v75, s104, 1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s60
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v80, 0x80000000, v80, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s61
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v136, v79, s[84:87], 0 offen
	buffer_load_u16 v137, v80, s[84:87], 0 offen
	v_cndmask_b32_e64 v79, 0x80000000, v97, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s62
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v80, 0x80000000, v98, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s58
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v138, v79, s[84:87], 0 offen
	buffer_load_u16 v139, v80, s[84:87], 0 offen
	v_cndmask_b32_e64 v78, 0x80000000, v78, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v77, 0x80000000, v77, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s56
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v76, 0x80000000, v76, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s53
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s49
	s_clause 0x3
	buffer_load_u16 v106, v77, s[84:87], 0 offen
	buffer_load_u16 v107, v76, s[84:87], 0 offen
	buffer_load_u16 v76, v78, s[84:87], 0 offen
	buffer_load_u16 v69, v69, s[84:87], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s52
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v135.h, v106.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v134.h, v107.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v66.h, v76.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v65.h, v69.l
	v_cndmask_b32_e64 v69, 0x80000000, v74, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v75, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v73, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s0, s51
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s94, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s49
	s_clause 0x3
	buffer_load_u16 v108, v74, s[84:87], 0 offen
	buffer_load_u16 v109, v73, s[84:87], 0 offen
	buffer_load_u16 v110, v69, s[84:87], 0 offen
	buffer_load_u16 v111, v68, s[84:87], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v68, 0, v173
	ds_load_2addr_b32 v[101:102], v68 offset1:32
	ds_load_2addr_b32 v[77:78], v68 offset0:64 offset1:96
	ds_load_2addr_b32 v[103:104], v237 offset1:32
	ds_load_2addr_b32 v[99:100], v238 offset1:32
	ds_load_2addr_b32 v[97:98], v239 offset1:32
	ds_load_2addr_b32 v[79:80], v237 offset0:64 offset1:96
	ds_load_2addr_b32 v[75:76], v238 offset0:64 offset1:96
	ds_load_2addr_b32 v[73:74], v239 offset0:64 offset1:96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v68, 0, v171
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v68, v[65:66]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v67, v177
	v_max3_f32 v66, v120, v119, v70
	v_max3_f32 v68, v153, v154, v151
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v240, v[134:135]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v176, v66
	v_max3_f32 v66, v118, v155, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v68, v152
	v_max3_f32 v68, v71, v72, v117
	v_max3_f32 v65, v65, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v149, v150, v65, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v177, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.h, 0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v149
	v_sub_f32_e32 v70, v70, v149
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v106, v150, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v68.h, v177.h
	v_mov_b16_e64 v112.h, v177.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s50
	v_cndmask_b32_e64 v70, 0, v70, s44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v72, 0, v72, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v65.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s49, v65, v65
	v_cmp_o_f32_e64 s44, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s43, v72, v72
	v_and_b32_e32 v66, 1, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v67, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v177.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s48, v66, v66
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v65.h, s49
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v67, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v67, v194
	v_perm_b32 v66, v66, v67, v195
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v176, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s47, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v120, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v68.h
	v_cmp_o_f32_e64 s46, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v69, 1, v177
	v_mov_b16_e64 v177.l, v70.h
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s46
	v_permlanex16_b32 v69, v68, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v69, v68, v194
	v_perm_b32 v68, v69, v68, v195
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v119, v149
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v119, 0, v174
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v106, v106
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v112.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v69, v69
	v_and_b32_e32 v112, 1, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v112, 0x7fff
	v_and_b32_e32 v112, 1, v177
	v_mov_b16_e64 v177.l, v72.h
	v_add3_u32 v70, v70, v112, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s45
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v112, v70, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v112, v70, v194
	v_perm_b32 v70, v112, v70, v195
	v_and_b32_e32 v112, 1, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v112, v72, v112, 0x7fff
	v_mov_b16_e64 v72.h, v177.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.h, 0x7fff, v112.h, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_o_f32_e64 s42, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v112.l, 0x7fff, v72.h, s42
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s42, 0xff800000, v150
	v_mov_b32_e32 v150, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v112, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v120, 0, v106, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v72, v112, v194
	v_perm_b32 v72, v72, v112, v195
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v57, v57, v120
	v_mul_f32_e32 v58, v58, v120
	v_mul_f32_e32 v59, v59, v120
	v_mul_f32_e32 v60, v60, v120
	v_mul_f32_e32 v61, v61, v120
	v_mul_f32_e32 v62, v62, v120
	v_mul_f32_e32 v63, v63, v120
	v_mul_f32_e32 v64, v64, v120
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v139.h, v108.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v138.h, v109.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v137.h, v110.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v136.h, v111.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v49, v49, v120
	v_mul_f32_e32 v50, v50, v120
	v_mul_f32_e32 v51, v51, v120
	v_mul_f32_e32 v52, v52, v120
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v241, v[136:137]
	ds_store_b64 v242, v[138:139]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[178:181], v119
	ds_load_b128 v[182:185], v243
	ds_load_b128 v[203:206], v246 offset:2048
	ds_load_b128 v[207:210], v247 offset:2048
	ds_load_b128 v[106:109], v119 offset:2048
	ds_load_b128 v[110:113], v243 offset:2048
	ds_load_b128 v[133:136], v119 offset:1024
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v53, v53, v120
	v_mul_f32_e32 v54, v54, v120
	v_mul_f32_e32 v55, v55, v120
	v_mul_f32_e32 v56, v56, v120
	v_mul_f32_e32 v42, v42, v120
	v_mul_f32_e32 v43, v43, v120
	v_mul_f32_e32 v44, v44, v120
	v_mul_f32_e32 v45, v45, v120
	v_mul_f32_e32 v46, v46, v120
	v_mul_f32_e32 v47, v47, v120
	v_mul_f32_e32 v48, v48, v120
	v_mul_f32_e32 v1, v1, v120
	v_mul_f32_e32 v2, v2, v120
	v_mul_f32_e32 v3, v3, v120
	v_mul_f32_e32 v4, v4, v120
	v_mul_f32_e32 v5, v5, v120
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[178:185], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[178:181], v246
	ds_load_b128 v[182:185], v247
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v120
	v_mul_f32_e32 v7, v7, v120
	v_mul_f32_e32 v8, v8, v120
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[203:210], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[178:185], v[65:72], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[178:181], v119 offset:3072
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v41, v41, v120
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[137:140], v248
	ds_load_b128 v[182:185], v248 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[41:48], v[106:113], v[65:72], v[41:48]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v118, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v177.h
	v_mov_b16_e64 v69.h, v177.h
	v_mov_b16_e64 v71.h, v177.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v65.h
	v_cmp_o_f32_e64 s41, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v177
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v117, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v66, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v66, v194
	v_perm_b32 v66, v67, v66, v195
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v175, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v67.h
	v_cmp_o_f32_e64 s39, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v177
	v_add3_u32 v68, v67, v68, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v155, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v69.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v67, v67
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v67, v69, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v68, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v69, v68, v194
	v_perm_b32 v68, v69, v68, v195
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v154, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v69.h
	v_cmp_o_f32_e64 s37, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v177
	v_add3_u32 v70, v69, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v153, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s37
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v69, v69
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v69, v71, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v70, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v194
	v_perm_b32 v70, v71, v70, v195
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v152, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v71.h
	v_cmp_o_f32_e64 s35, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v177
	v_add3_u32 v72, v71, v72, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v151, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v177.l, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v71, v71
	v_and_b32_e32 v106, 1, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v106, v71, v106, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v106.h, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v106, v72, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v106, v72, v194
	v_perm_b32 v72, v106, v72, v195
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[110:113], v245
	ds_load_b128 v[106:109], v244
	ds_load_b128 v[203:206], v244 offset:2048
	ds_load_b128 v[207:210], v245 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[65:72], v[49:56]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[106:113], v[65:72], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[203:210], v[65:72], v[41:48]
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v101, v101
	v_max_f32_e32 v68, v99, v99
	v_max_f32_e32 v67, v103, v103
	v_max_f32_e32 v69, v102, v102
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v70, v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v65, v65, v66
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s34, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v65, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v67, v66
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v67, v68, v67 :: v_dual_max_f32 v68, v97, v97
	v_max_f32_e32 v65, v68, v65
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v66, v66, v68
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v69, v70, v69
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v67, v67, v70
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v65, v65, v70
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v66, v66, v70
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v67, v67, v70
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v65, v65, v70
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v66, v66, v70
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v67, v67, v70
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v65, v65, v70
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v66, v66, v70
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s37, v66, 31
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v70
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v67, v67, v70
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
	v_readlane_b32 s36, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v70
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s35, v65, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v68, -1, -1 op_sel:[1,0]
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v70, v75, v75
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v68, v65
	v_max_f32_e32 v68, v100, v100
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s38, v65, 31
	v_mov_b32_dpp v65, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v68, v67 :: v_dual_max_f32 v68, v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v66, v69, v66 :: v_dual_max_f32 v69, v79, v79
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v66, 31
	v_mov_b32_dpp v66, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v68, v65
	v_max_f32_e32 v68, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v71, s39, s39
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v68, v66
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v69, v68
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v70, v69
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v70
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v70
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v70
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v70
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v70
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v70
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v70
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v70
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v70
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v70
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v70
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v70
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v67, v67, v70
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s42, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v72, s42, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v70
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v65, v65, v70
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	v_readlane_b32 s41, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v68, -1, -1 op_sel:[1,0]
.Ltmp118:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v106, s41, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v70
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s40, v66, 31
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v70, v70, v70 :: v_dual_max_f32 v65, v68, v65
	v_max_f32_e32 v68, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v107, s40, s40
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s44, v65, 31
	v_mov_b32_dpp v65, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v68, v67 :: v_dual_max_f32 v68, v78, v78
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v70, v74, v74 :: v_dual_max_f32 v65, v65, v65
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v65, v68, v65
	v_max_f32_e32 v68, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v66, v69, v66 :: v_dual_max_f32 v69, v76, v76
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s43, v66, 31
	v_mov_b32_dpp v66, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v68, v66
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v69, v70, v69
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v65, v65, v70
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v66, v66, v70
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v67, v67, v70
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v65, v65, v70
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v66, v66, v70
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v67, v67, v70
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v68, v68, v70
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v65, v65, v70
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v66, v66, v70
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v67, v67, v70
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v67, 31
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp166:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v67, s37, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v70
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v70
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v65, v65, v70
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	v_readlane_b32 s46, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v70, v70, v70 :: v_dual_max_f32 v65, v121, v121
	v_max_f32_e32 v66, v66, v70
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s47, v66, 31
.Ltmp175:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v66, s34, s34
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp177:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v121, v65, v66
	v_max_f32_e32 v65, v148, v148
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v70
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp180:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v65, v66
	v_max_f32_e32 v66, v122, v122
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s48, v68, 31
.Ltmp183:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v68, s36, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v122, v66, v67
	v_dual_max_f32 v66, v147, v147 :: v_dual_max_f32 v69, v69, v70
	v_max_f32_e64 v70, s38, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v103, v103, v122 :: v_dual_max_f32 v66, v66, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v123, v123
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s49, v69, 31
.Ltmp185:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v69, s35, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v123, v67, v68
	v_max_f32_e32 v67, v146, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v99, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v67, v68
	v_max_f32_e32 v68, v124, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v124, v68, v69
	v_max_f32_e32 v68, v145, v145
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v97, v97, v124 :: v_dual_max_f32 v68, v68, v69
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v128, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s31
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v128, v69, v70 :: v_dual_max_f32 v69, v144, v144
.Ltmp186:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp187:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v69, v70
	v_max_f32_e32 v70, v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v97, s33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v99, v99, v99 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp189:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v125, v70, v71
	v_max_f32_e32 v70, v143, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v97, v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v99, v99, v99 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp191:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v70, v70, v71
	v_max_f32_e32 v71, v126, v126
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v97, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v99, v99, v99 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp193:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v125
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v126, v71, v72 :: v_dual_max_f32 v71, v142, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v97, v97, v97 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp195:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v71, v71, v72
	v_max_f32_e32 v72, v127, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v97, v97, v97 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp197:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v127, v72, v106 :: v_dual_max_f32 v72, v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v106
	v_max_f32_e32 v106, v129, v129
	v_dual_max_f32 v129, v106, v107 :: v_dual_max_f32 v106, v160, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v129
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v117, v106, v107 :: v_dual_max_f32 v106, v249, v249
	v_max_f32_e64 v107, s44, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v249, v106, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v106, v162, v162 :: v_dual_sub_f32 v79, v79, v249
	v_max_f32_e32 v118, v106, v107
	v_max_f32_e32 v106, v130, v130
	v_max_f32_e64 v107, s43, s43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s21
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v130, v106, v107
	v_max_f32_e32 v106, v161, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp199:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v119, v106, v107
	v_max_f32_e32 v106, v131, v131
	v_max_f32_e64 v107, s45, s45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s22
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
.Ltmp200:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp201:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v131, v106, v107
	v_max_f32_e32 v106, v163, v163
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp203:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v131
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v120, v106, v107
	v_max_f32_e32 v106, v132, v132
	v_max_f32_e64 v107, s46, s46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s23
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v73, v73
.Ltmp204:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp205:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v132, v106, v107 :: v_dual_sub_f32 v101, v101, v121
	v_max_f32_e32 v106, v168, v168
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp207:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v132
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v134, v106, v107
	v_max_f32_e32 v106, v250, v250
	v_max_f32_e64 v107, s47, s47
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp209:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s24
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp211:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v250, v106, v107
	v_max_f32_e32 v106, v255, v255
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s29
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v127
.Ltmp212:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp213:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v135, v106, v107
	v_max_f32_e32 v106, v251, v251
	v_max_f32_e64 v107, s48, s48
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp215:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp217:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v251, v106, v107
	v_max_f32_e32 v106, v254, v254
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp219:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v250
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp221:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v251
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v136, v106, v107
	v_max_f32_e32 v106, v252, v252
	v_max_f32_e64 v107, s49, s49
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp223:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v126
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v98, s28
.Ltmp224:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp225:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v101, v101, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp227:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v252, v106, v107
	v_max_f32_e32 v106, v253, v253
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp229:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v137, v106, v107
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v106, v101, -1, -1 op_sel:[1,0]
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp232:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s19
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v101, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v98, v98, v98 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp234:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v252
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s29, v101, 31
.Ltmp237:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v103
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v98, v98, v98 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp239:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v76, v76, v76 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp241:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s30
	v_cndmask_b32_e64 v74, 0, v74, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v76, v76, v76 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v74, v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v74, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v101, v101, v101 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp243:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v103, v101, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v101, v103
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v103, v99, -1, -1 op_sel:[1,0]
	v_readlane_b32 s33, v101, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v103
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v103, v97, -1, -1 op_sel:[1,0]
	v_readlane_b32 s31, v99, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v97, v97, v103
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s30, v97, 31
.Ltmp250:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v97, s27
.Ltmp251:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v97, v97, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v97, v97, v97 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v97, v97, v97 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v97, v97, v97 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v99, v97, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v97, v97, v99
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v99, v98, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v97, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v98, v98, v99
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v99, v77, -1, -1 op_sel:[1,0]
	v_readlane_b32 s27, v98, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v99
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v99, v79, -1, -1 op_sel:[1,0]
	v_readlane_b32 s23, v77, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v99
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v99, v75, -1, -1 op_sel:[1,0]
	v_readlane_b32 s22, v79, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v99
.Ltmp262:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v75, 31
	v_permlanex16_b32 v75, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v75
.Ltmp264:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v78
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s19, v73, 31
.Ltmp266:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v148, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v75, 0, v75, vcc_lo
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v148
	v_mov_b32_e32 v148, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp268:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v147
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp270:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v93, v93, v73, s29
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v147, v66
	v_mov_b32_e32 v147, v66
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v77, v75, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v77
.Ltmp275:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v80
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v75, 31
.Ltmp277:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v94, v94, v73, s33
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v146, v67 :: v_dual_mov_b32 v146, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s18
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp279:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v145
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp281:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v95, v95, v73, s31
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v145, v68
	v_mov_b32_e32 v145, v68
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v77, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v102, v102, v128 :: v_dual_add_f32 v77, v77, v78
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v102, v102
.Ltmp286:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v76, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp287:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s24, v77, 31
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp290:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v96, v96, v73, s30
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v144, v69
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v74, -1, -1 op_sel:[1,0]
.Ltmp292:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s25
	v_mov_b32_e32 v144, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v102, v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s18, v74, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp296:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v102, v102, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v103, v102, -1, -1 op_sel:[1,0]
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v102, v103
.Ltmp300:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s26
.Ltmp301:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v102, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v103, v103, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp303:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v89, v89, v73, s26
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v143, v70
	v_mov_b32_e32 v143, v70
.Ltmp304:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s34, v76, 31
.Ltmp305:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v103, v103, v103 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
.Ltmp307:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v103, v103, v103 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v103, v103, v103 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp308:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v103, -1, -1 op_sel:[1,0]
.Ltmp310:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v103, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s25, v103, 31
.Ltmp312:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v90, v90, v73, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v142, v71 :: v_dual_mov_b32 v142, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v91, v91, v73, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v141, v72
	v_mov_b32_e32 v141, v72
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v160
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v92, v92, v73, s27
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v160, v117 :: v_dual_mov_b32 v160, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v85, v85, v73, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v162, v118
	v_mov_b32_e32 v162, v118
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v161
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v86, v86, v73, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v161, v119
	v_mov_b32_e32 v161, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v87, v87, v73, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v163, v120
	v_mov_b32_e32 v163, v120
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v168
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v88, v88, v73, s19
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v168, v134 :: v_dual_mov_b32 v168, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v81, v81, v73, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v255, v135
	v_mov_b32_e32 v255, v135
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v254
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v82, v82, v73, s24
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v254, v136 :: v_dual_mov_b32 v254, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v83, v83, v73, s34
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v253, v137
	v_mov_b32_e32 v253, v137
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v84, v84, v73, s18
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_47
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off
	scratch_load_b32 v66, off, off offset:64
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s86, s94, s96
	.loc	1 854 32                        ; attention.py:854:32
	scratch_load_b32 v67, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s34, s86, s91
	.loc	1 854 32                        ; attention.py:854:32
	scratch_load_b64 v[68:69], off, off offset:72 ; 8-byte Folded Reload
	v_add_lshl_u32 v79, s34, v115, 1
	v_add_lshl_u32 v80, s34, v116, 1
	s_clause 0x6                            ; 48-byte Folded Reload
	scratch_load_b32 v69, off, off offset:80
	scratch_load_b64 v[70:71], off, off offset:84
	scratch_load_b64 v[71:72], off, off offset:92
	scratch_load_b64 v[72:73], off, off offset:100
	scratch_load_b32 v73, off, off offset:108
	scratch_load_b64 v[74:75], off, off offset:112
	scratch_load_b64 v[75:76], off, off offset:120
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v76, s34, v157, 1
	scratch_load_b64 v[77:78], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v78, s34, v114, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v182, s75 :: v_dual_mov_b32 v181, s74
	v_dual_mov_b32 v180, s73 :: v_dual_mov_b32 v179, s72
	v_dual_mov_b32 v178, s71 :: v_dual_mov_b32 v177, s70
	v_dual_mov_b32 v176, s69 :: v_dual_mov_b32 v175, s68
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s94, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s34, v66, 1
	v_add_lshl_u32 v67, s34, v67, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v68, s34, v68, 1
	v_add_lshl_u32 v69, s34, v69, 1
	v_add_lshl_u32 v70, s34, v70, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s18
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v71, s34, v71, 1
	v_add_lshl_u32 v72, s34, v72, 1
	v_add_lshl_u32 v73, s34, v73, 1
	v_add_lshl_u32 v74, s34, v74, 1
	v_add_lshl_u32 v75, s34, v75, 1
	v_add_lshl_u32 v77, s34, v77, 1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s67, v65
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v65, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v65, s94, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s34, v105, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s19
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	v_cndmask_b32_e64 v66, 0x80000000, v66, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s20
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v169
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v67, 0x80000000, v67, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v68, 0x80000000, v68, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s22
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v69, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s23
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s24
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v71, 0x80000000, v71, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s25
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v65, v65, s[80:83], 0 offen
	buffer_load_u16 v66, v66, s[80:83], 0 offen
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	buffer_load_u16 v69, v69, s[80:83], 0 offen
	buffer_load_u16 v70, v70, s[80:83], 0 offen
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	v_cndmask_b32_e64 v72, 0x80000000, v72, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v73, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s27
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v74, 0x80000000, v74, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v75, 0x80000000, v75, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s30
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v76, 0x80000000, v76, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v77, 0x80000000, v77, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s31
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v78, 0x80000000, v78, s18
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s2, s33
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_u16 v73, v73, s[80:83], 0 offen
	buffer_load_u16 v76, v76, s[80:83], 0 offen
	buffer_load_u16 v74, v74, s[80:83], 0 offen
	buffer_load_u16 v78, v78, s[80:83], 0 offen
	v_cndmask_b32_e64 v79, 0x80000000, v79, s18
	s_clause 0x5
	buffer_load_u16 v75, v75, s[80:83], 0 offen
	buffer_load_u16 v79, v79, s[80:83], 0 offen
	buffer_load_u16 v72, v72, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	buffer_load_u16 v80, v80, s[80:83], 0 offen
	buffer_load_u16 v77, v77, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v164, v65
	s_waitcnt vmcnt(12)
	ds_store_b16 v164, v69 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v164, v73 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v164, v76 offset:3072
	ds_store_b16 v165, v66
	ds_store_b16 v165, v70 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v165, v74 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v165, v78 offset:3072
	ds_store_b16 v166, v67
	ds_store_b16 v166, v71 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v166, v75 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v166, v79 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v167, v68
	ds_store_b16 v167, v72 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v167, v77 offset:2048
	ds_store_b16 v167, v80 offset:3072
	v_add_nc_u32_e32 v73, 0, v172
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v196
	ds_load_b128 v[65:68], v73
	ds_load_b128 v[97:100], v73 offset:2048
	ds_load_b128 v[101:104], v196 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[9:16], v[175:182]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[9:16], v[175:182]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v198
	ds_load_b128 v[97:100], v197
	ds_load_b128 v[175:178], v197 offset:2048
	ds_load_b128 v[179:182], v198 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[17:24], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[175:182], v[17:24], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v200
	ds_load_b128 v[97:100], v199
	ds_load_b128 v[175:178], v199 offset:2048
	ds_load_b128 v[179:182], v200 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[25:32], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[175:182], v[25:32], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v202
	ds_load_b128 v[97:100], v201
	ds_load_b128 v[175:178], v201 offset:2048
	ds_load_b128 v[179:182], v202 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[33:40], v[73:80]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v97, s94, v191
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[175:182], v[33:40], v[65:72]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v97
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s62, s1, s18
	s_and_b32 s57, s3, s18
	s_and_b32 s54, s4, s18
	s_and_b32 s50, s5, s18
	s_and_b32 s63, s6, s18
	s_and_b32 s59, s7, s18
	s_and_b32 s55, s8, s18
	s_and_b32 s51, s9, s18
	s_and_b32 s64, s10, s18
	s_and_b32 s60, s11, s18
	s_and_b32 s56, s12, s18
	s_and_b32 s52, s13, s18
	s_and_b32 s65, s14, s18
	s_and_b32 s61, s15, s18
	s_and_b32 s58, s16, s18
	s_and_b32 s53, s17, s18
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v98, off, off offset:264 ; 4-byte Folded Reload
	s_and_not1_b32 s35, s62, exec_lo
	s_and_not1_b32 s36, s57, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v97, v98
	scratch_load_b32 v98, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s34, vcc_lo, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, exec_lo
	s_or_b32 s62, s35, s34
	s_and_not1_b32 s34, s50, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v97, v98
	scratch_load_b32 v98, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s18, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, exec_lo
	s_or_b32 s57, s36, s18
	s_and_not1_b32 s18, s54, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v97, v98
	scratch_load_b32 v98, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, exec_lo
	s_or_b32 s54, s18, s19
	s_and_not1_b32 s18, s63, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v97, v98
	scratch_load_b32 v98, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s50, s34, s20
	s_and_not1_b32 s20, s59, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v97, v98
	scratch_load_b32 v98, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s21, exec_lo
	s_or_b32 s63, s18, s19
	s_and_not1_b32 s18, s55, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v97, v98
	scratch_load_b32 v98, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s22, exec_lo
	s_or_b32 s59, s20, s21
	s_and_not1_b32 s20, s51, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v97, v98
	scratch_load_b32 v98, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s23, exec_lo
	s_or_b32 s55, s18, s19
	s_and_not1_b32 s18, s64, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v97, v98
	scratch_load_b32 v98, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s24, exec_lo
	s_or_b32 s51, s20, s21
	s_and_not1_b32 s20, s60, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v97, v98
	scratch_load_b32 v98, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s25, exec_lo
	s_or_b32 s64, s18, s19
	s_and_not1_b32 s18, s56, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v97, v98
	scratch_load_b32 v98, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s26, exec_lo
	s_or_b32 s60, s20, s21
	s_and_not1_b32 s20, s52, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v97, v98
	scratch_load_b32 v98, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s27, exec_lo
	s_or_b32 s56, s18, s19
	s_and_not1_b32 s18, s65, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v97, v98
	scratch_load_b32 v98, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s28, exec_lo
	s_or_b32 s52, s20, s21
	s_and_not1_b32 s20, s61, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v97, v98
	scratch_load_b32 v98, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s29, exec_lo
	s_or_b32 s65, s18, s19
	s_and_not1_b32 s18, s58, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v97, v98
	scratch_load_b32 v98, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s30, exec_lo
	s_or_b32 s61, s20, s21
	s_and_not1_b32 s20, s53, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v97, v98
	scratch_load_b32 v98, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s31, exec_lo
	s_or_b32 s58, s18, s19
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v97, v98
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s53, s20, s21
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s92
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v98, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v97, v98
	scratch_load_b32 v98, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v97, v98
	scratch_load_b32 v98, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v97, v98
	scratch_load_b32 v98, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v97, v98
	scratch_load_b32 v98, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v97, v98
	scratch_load_b32 v98, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v97, v98
	scratch_load_b32 v98, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v97, v98
	scratch_load_b32 v98, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v97, v98
	scratch_load_b32 v98, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v97, v98
	scratch_load_b32 v98, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v97, v98
	scratch_load_b32 v98, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v97, v98
	scratch_load_b32 v98, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v97, v98
	scratch_load_b32 v98, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v97, v98
	scratch_load_b32 v98, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v97, v98
	scratch_load_b32 v98, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v97, v98
	scratch_load_b32 v98, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v97, v98
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v98, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v97, v98
	scratch_load_b32 v98, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s34, vcc_lo, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, s62
	s_and_b32 s34, s34, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v97, v98
	scratch_load_b32 v98, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s18, s35
	s_and_not1_b32 s35, s62, exec_lo
	s_and_b32 s18, s18, s57
	s_or_b32 s62, s35, s34
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s34, s50, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v97, v98
	scratch_load_b32 v98, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s19, s36
	s_and_not1_b32 s36, s57, exec_lo
	s_and_b32 s19, s19, s54
	s_or_b32 s57, s36, s18
	s_and_not1_b32 s18, s54, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s18, s19
	s_and_not1_b32 s18, s63, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v97, v98
	scratch_load_b32 v98, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s50
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s50, s34, s20
	s_and_not1_b32 s20, s59, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v97, v98
	scratch_load_b32 v98, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s63
	s_and_b32 s19, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s63, s18, s19
	s_and_not1_b32 s18, s55, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v97, v98
	scratch_load_b32 v98, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s59
	s_and_b32 s21, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s20, s21
	s_and_not1_b32 s20, s51, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v97, v98
	scratch_load_b32 v98, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s55
	s_and_b32 s19, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s55, s18, s19
	s_and_not1_b32 s18, s64, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v97, v98
	scratch_load_b32 v98, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s51
	s_and_b32 s21, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s51, s20, s21
	s_and_not1_b32 s20, s60, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v97, v98
	scratch_load_b32 v98, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s64
	s_and_b32 s19, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s64, s18, s19
	s_and_not1_b32 s18, s56, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v97, v98
	scratch_load_b32 v98, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s60
	s_and_b32 s21, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s60, s20, s21
	s_and_not1_b32 s20, s52, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v97, v98
	scratch_load_b32 v98, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s56
	s_and_b32 s19, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s56, s18, s19
	s_and_not1_b32 s18, s65, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v97, v98
	scratch_load_b32 v98, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s52
	s_and_b32 s21, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s52, s20, s21
	s_and_not1_b32 s20, s61, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v97, v98
	scratch_load_b32 v98, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s65
	s_and_b32 s19, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s65, s18, s19
	s_and_not1_b32 s18, s58, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v97, v98
	scratch_load_b32 v98, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s61
	s_and_b32 s21, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s61, s20, s21
	s_and_not1_b32 s20, s53, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v97, v98
	scratch_load_b32 v98, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s58
	s_and_b32 s19, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s58, s18, s19
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v97, v98
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_and_b32 s33, s33, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s53, s20, s21
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v98.h, 0
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	s_mul_i32 s18, s94, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s18, s98, s18
	v_mov_b16_e32 v103.h, v98.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s62
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:248 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s18, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v97
	v_add_co_u32 v99, vcc_lo, s78, v97
	v_add_co_ci_u32_e64 v100, null, s79, v100, vcc_lo
	global_load_d16_hi_u8 v103, v[99:100], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s57
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[97:98], off, off offset:136 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s18, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v98, 31, v97
	v_add_co_u32 v97, vcc_lo, s78, v97
	v_add_co_ci_u32_e64 v98, null, s79, v98, vcc_lo
	global_load_d16_hi_u8 v98, v[97:98], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	v_mov_b16_e32 v97.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v97.h, v97.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s54
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:144 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s18, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, vcc_lo, s78, v99
	v_add_co_ci_u32_e64 v100, null, s79, v100, vcc_lo
	global_load_d16_hi_u8 v97, v[99:100], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s50
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:152 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s18, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, vcc_lo, s78, v99
	v_add_co_ci_u32_e64 v100, null, s79, v100, vcc_lo
	global_load_d16_u8 v97, v[99:100], off
.LBB0_22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	v_mov_b16_e32 v100.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v104.h, v100.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s63
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[101:102], off, off offset:160 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s18, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v102, 31, v99
	v_add_co_u32 v101, vcc_lo, s78, v99
	v_add_co_ci_u32_e64 v102, null, s79, v102, vcc_lo
	global_load_d16_hi_u8 v104, v[101:102], off
.LBB0_24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s59
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[99:100], off, off offset:168 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s18, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, vcc_lo, s78, v99
	v_add_co_ci_u32_e64 v100, null, s79, v100, vcc_lo
	global_load_d16_u8 v100, v[99:100], off
.LBB0_26:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v98.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.l, v98.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s55
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[101:102], off, off offset:176 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s18, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v102, 31, v99
	v_add_co_u32 v101, vcc_lo, s78, v99
	v_add_co_ci_u32_e64 v102, null, s79, v102, vcc_lo
	global_load_d16_u8 v99, v[101:102], off
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s51
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[101:102], off, off offset:184 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s18, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v102, 31, v101
	v_add_co_u32 v101, vcc_lo, s78, v101
	v_add_co_ci_u32_e64 v102, null, s79, v102, vcc_lo
	global_load_d16_u8 v98, v[101:102], off
.LBB0_30:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	v_mov_b16_e32 v101.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v102.l, v101.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s64
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:192 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v102
	v_add_co_u32 v106, vcc_lo, s78, v102
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_u8 v102, v[106:107], off
.LBB0_32:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s60
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:200 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v101
	v_add_co_u32 v106, vcc_lo, s78, v101
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_u8 v101, v[106:107], off
.LBB0_34:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v100.h, v99.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s56
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:208 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v106
	v_add_co_u32 v106, vcc_lo, s78, v106
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_hi_u8 v100, v[106:107], off
.LBB0_36:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s52
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:216 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v106
	v_add_co_u32 v106, vcc_lo, s78, v106
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_hi_u8 v99, v[106:107], off
.LBB0_38:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	v_mov_b16_e32 v103.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v104.l, v103.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s65
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:224 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v106
	v_add_co_u32 v106, vcc_lo, s78, v106
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_u8 v104, v[106:107], off
.LBB0_40:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s61
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:232 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v106
	v_add_co_u32 v106, vcc_lo, s78, v106
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_u8 v103, v[106:107], off
.LBB0_42:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	v_mov_b16_e32 v101.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v102.h, v101.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s58
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:240 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v106
	v_add_co_u32 v106, vcc_lo, s78, v106
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_hi_u8 v102, v[106:107], off
.LBB0_44:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s19
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s19, s53
	s_cbranch_execz .LBB0_9
; %bb.45:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[106:107], off, off offset:256 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s18, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v106
	v_add_co_u32 v106, vcc_lo, s78, v106
	v_add_co_ci_u32_e64 v107, null, s79, v107, vcc_lo
	global_load_d16_hi_u8 v101, v[106:107], off
	s_branch .LBB0_9
.LBB0_46:
	.loc	1 0 34                          ; attention.py:0:34
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
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	s_branch .LBB0_48
.LBB0_47:                               ; %Flow
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v65, off, off offset:476
	scratch_load_b32 v66, off, off offset:456
	scratch_load_b32 v67, off, off offset:460
	scratch_load_b32 v68, off, off offset:464
	scratch_load_b32 v69, off, off offset:468
	scratch_load_b32 v70, off, off offset:472
.LBB0_48:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 5, v66
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v10, 0x80, v65
	v_and_b32_e32 v12, 12, v66
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v13, 2, v69
	v_add_nc_u32_e32 v11, 0, v68
	v_and_b32_e32 v0, 0x60, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[93:96]
	ds_store_b128 v11, v[85:88] offset:16
	v_add3_u32 v0, 0, v0, v10
	ds_store_b128 v11, v[89:92] offset:128
	ds_store_b128 v11, v[81:84] offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v9, 1, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v13, v12
	.loc	1 787 79                        ; attention.py:787:79
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v31, 4, v70
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s79, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v39, v9, v67
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v65, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v31
	v_or_b32_e32 v9, 60, v31
	v_or_b32_e32 v10, 58, v31
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v76, s90, v39
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v11, 56, v31
	v_or_b32_e32 v12, 54, v31
	v_or_b32_e32 v13, 52, v31
	v_or_b32_e32 v14, 50, v31
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s66, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v15, 48, v31
	v_or_b32_e32 v16, 46, v31
	v_or_b32_e32 v17, 44, v31
	v_or_b32_e32 v18, 42, v31
	v_or_b32_e32 v19, 40, v31
	v_or_b32_e32 v20, 38, v31
	v_or_b32_e32 v21, 36, v31
	v_or_b32_e32 v22, 34, v31
	v_or_b32_e32 v23, 32, v31
	v_or_b32_e32 v24, 30, v31
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_fma_f32 v37, -v66, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v68, v69, 1.0
	v_rcp_f32_e32 v77, v74
	v_fma_f32 v78, -v70, v72, 1.0
	v_div_scale_f32 v82, null, v65, v65, v50
	v_fmac_f32_e32 v67, v37, v67
	v_fmac_f32_e32 v69, v40, v69
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v25, 28, v31
	v_or_b32_e32 v26, 26, v31
	v_or_b32_e32 v27, 24, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v73, v71, v67
	v_mul_f32_e32 v79, v75, v69
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v28, 22, v31
	v_or_b32_e32 v29, 20, v31
	v_or_b32_e32 v30, 18, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v66, v73, v71
	v_fma_f32 v76, -v68, v79, v75
	v_fmac_f32_e32 v72, v78, v72
	v_fma_f32 v78, -v74, v77, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v32, 16, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v73, v40, v67
	v_fmac_f32_e32 v79, v76, v69
	v_div_scale_f32 v76, s3, v60, v65, v60
	v_fmac_f32_e32 v77, v78, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v66, v73, v71
	v_div_scale_f32 v71, s2, v59, v65, v59
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 14, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v78, v76, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v66, v66, v67, v73
	v_div_scale_f32 v73, null, v65, v65, v61
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 12, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v57, v66, v65, v57
	v_fma_f32 v66, -v68, v79, v75
	v_rcp_f32_e32 v75, v73
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 10, v31
	v_or_b32_e32 v36, 8, v31
	v_or_b32_e32 v37, 6, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v69, v79
	v_fma_f32 v69, -v74, v78, v76
	v_mul_f32_e32 v67, v71, v72
	s_mov_b32 vcc_lo, s2
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v38, 4, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v58, v66, v65, v58
	v_fma_f32 v79, -v73, v75, 1.0
	v_fmac_f32_e32 v78, v69, v77
	v_fma_f32 v68, -v70, v67, v71
	v_div_scale_f32 v69, s4, v61, v65, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v40, 2, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v68, v72
	v_rcp_f32_e32 v68, v80
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v65
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s89, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v70, v67, v71
	v_div_scale_f32 v71, null, v65, v65, v63
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v57, 0, v57, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s89, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v72, v67
	v_fma_f32 v70, -v80, v68, 1.0
	v_fma_f32 v67, -v74, v78, v76
	v_div_scale_f32 v76, null, v65, v65, v64
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v68, v70, v68
	v_rcp_f32_e32 v70, v71
	v_mul_f32_e32 v72, v69, v75
	v_rcp_f32_e32 v81, v76
	v_div_scale_f32 v74, s2, v62, v65, v62
	v_div_fixup_f32 v59, v66, v65, v59
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s89, v34
	v_cmp_gt_i32_e64 s9, s89, v33
	v_cmp_gt_i32_e64 s10, s89, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v71, v70, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v59, 0, v59, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s89, v30
	v_cmp_gt_i32_e64 s12, s89, v29
	v_cmp_gt_i32_e64 s13, s89, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v79, v70
	v_div_fmas_f32 v67, v67, v77, v78
	v_fma_f32 v77, -v73, v72, v69
	v_fma_f32 v79, -v76, v81, 1.0
	v_mul_f32_e32 v78, v74, v68
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v60, v67, v65, v60
	v_fmac_f32_e32 v72, v77, v75
	v_div_scale_f32 v77, null, v65, v65, v49
	v_fmac_f32_e32 v81, v79, v81
	v_fma_f32 v66, -v80, v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v73, v72, v69
	v_rcp_f32_e32 v73, v77
	v_div_scale_f32 v67, s3, v63, v65, v63
	v_div_scale_f32 v79, s5, v64, v65, v64
	v_fmac_f32_e32 v78, v66, v68
	v_div_fmas_f32 v69, v69, v75, v72
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v75, v79, v81
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v60, 0, v60, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v72, -v80, v78, v74
	v_fma_f32 v80, -v77, v73, 1.0
	v_mul_f32_e32 v66, v67, v70
	v_div_fixup_f32 v61, v69, v65, v61
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s89, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v72, v68, v78
	v_rcp_f32_e32 v72, v82
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v74, -v71, v66, v67
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v78, s2, v49, v65, v49
	v_div_fixup_f32 v62, v68, v65, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v66, v74, v70
	v_fma_f32 v74, -v76, v75, v79
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v61, 0, v61, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v82, v72, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s89, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v71, v66, v67
	v_fmac_f32_e32 v75, v74, v81
	v_div_scale_f32 v74, s3, v50, v65, v50
	v_fmac_f32_e32 v72, v69, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v66, v67, v70, v66
	v_fma_f32 v67, -v76, v75, v79
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v71, null, v65, v65, v51
	v_div_scale_f32 v76, null, v65, v65, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v81, v75
	v_mul_f32_e32 v75, v74, v72
	v_rcp_f32_e32 v69, v71
	v_div_fixup_f32 v63, v66, v65, v63
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v64, v67, v65, v64
	v_fma_f32 v67, -v82, v75, v74
	v_mul_f32_e32 v68, v78, v73
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s89, v25
	v_cmp_gt_i32_e64 s17, s89, v24
	v_cmp_gt_i32_e64 s18, s89, v23
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v67, v72
	v_fma_f32 v70, -v77, v68, v78
	v_fma_f32 v79, -v71, v69, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s89, v22
	v_cmp_gt_i32_e64 s20, s89, v21
	v_cmp_gt_i32_e64 s21, s89, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v68, v70, v73
	v_rcp_f32_e32 v70, v76
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v77, v68, v78
	v_div_scale_f32 v77, s4, v51, v65, v51
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s89, v19
	v_cmp_gt_i32_e64 s23, s89, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v73, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v76, v70, 1.0
	v_mul_f32_e32 v67, v77, v69
	v_rcp_f32_e32 v68, v79
	v_div_scale_f32 v73, s2, v52, v65, v52
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, null, v65, v65, v54
	v_div_fixup_f32 v49, v66, v65, v49
	v_fma_f32 v66, -v82, v75, v74
	v_fma_f32 v74, -v71, v67, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v78
	v_mul_f32_e32 v80, v73, v70
	v_fma_f32 v82, -v79, v68, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s89, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v72, v75
	v_fma_f32 v72, -v76, v80, v73
	v_fmac_f32_e32 v67, v74, v69
	v_div_scale_f32 v74, s3, v53, v65, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v78, v81, 1.0
	v_fmac_f32_e32 v68, v82, v68
	v_div_fixup_f32 v50, v66, v65, v50
	v_fmac_f32_e32 v80, v72, v70
	v_fma_f32 v66, -v71, v67, v77
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v72, s5, v54, v65, v54
	v_mul_f32_e32 v71, v74, v68
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v77, null, v65, v65, v56
	v_div_fmas_f32 v66, v66, v69, v67
	v_fma_f32 v67, -v76, v80, v73
	v_mul_f32_e32 v76, v72, v81
	v_fma_f32 v69, -v79, v71, v74
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v51, v66, v65, v51
	v_div_fmas_f32 v67, v67, v70, v80
	v_fma_f32 v70, -v78, v76, v72
	v_fmac_f32_e32 v71, v69, v68
	v_rcp_f32_e32 v69, v77
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v75, null, v65, v65, v55
	v_fmac_f32_e32 v76, v70, v81
	v_fma_f32 v66, -v79, v71, v74
	v_div_scale_f32 v79, null, v65, v65, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v75
	v_div_fixup_f32 v52, v67, v65, v52
	v_div_fmas_f32 v66, v66, v68, v71
	v_fma_f32 v68, -v78, v76, v72
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v70, -v77, v69, 1.0
	v_div_scale_f32 v72, s3, v56, v65, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v68, v68, v81, v76
	v_div_fixup_f32 v53, v66, v65, v53
	v_fma_f32 v80, -v75, v73, 1.0
	v_div_scale_f32 v67, s2, v55, v65, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v54, v68, v65, v54
	v_rcp_f32_e32 v68, v79
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, null, v65, v65, v41
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v81, null, v65, v65, v44
	v_mul_f32_e32 v78, v72, v69
	v_rcp_f32_e32 v74, v70
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s89, v16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v83, v81
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s89, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v77, v78, v72
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s89, v14
	v_cmp_gt_i32_e64 s28, s89, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	v_cndmask_b32_e64 v64, 0, v64, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s4, v41, v65, v41
	v_fmac_f32_e32 v73, v80, v73
	v_fma_f32 v80, -v79, v68, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v50, s1
	v_cndmask_b32_e64 v52, 0, v52, s1
	v_cndmask_b32_e64 v54, 0, v54, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v71, v67, v73 :: v_dual_fmac_f32 v68, v80, v68
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	v_cndmask_b32_e64 v49, 0, v49, s1
	v_cndmask_b32_e64 v51, 0, v51, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v76, -v75, v71, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v53, 0, v53, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s89, v12
	v_cmp_gt_i32_e64 s30, s89, v11
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v39, s88, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v76, v73
	v_fma_f32 v76, -v70, v74, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v39, v39, s89
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v76, v74
	v_div_fmas_f32 v67, v67, v73, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v71, -v77, v78, v72
	v_mul_f32_e32 v72, v66, v74
	v_div_scale_f32 v73, s2, v42, v65, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v55, v67, v65, v55
	v_fma_f32 v80, -v70, v72, v66
	v_mul_f32_e32 v82, v73, v68
	v_div_fmas_f32 v69, v71, v69, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v72, v80, v74
	v_fma_f32 v71, -v79, v82, v73
	v_div_fixup_f32 v56, v69, v65, v56
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, s5, v43, v65, v43
	v_fma_f32 v66, -v70, v72, v66
	v_div_scale_f32 v70, null, v65, v65, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v77, v76
	v_fmac_f32_e32 v82, v71, v68
	v_fma_f32 v69, -v81, v83, 1.0
	v_div_fmas_f32 v66, v66, v74, v72
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v67, -v75, v78, v77
	v_fma_f32 v71, -v79, v82, v73
	v_fmac_f32_e32 v83, v69, v83
	v_div_scale_f32 v69, s3, v44, v65, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	v_div_fmas_f32 v68, v71, v68, v82
	v_mul_f32_e32 v72, v69, v83
	v_div_scale_f32 v73, null, v65, v65, v46
	v_fma_f32 v71, -v75, v78, v77
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v41, v66, v65, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v73
	v_div_fixup_f32 v42, v68, v65, v42
	v_fma_f32 v74, -v70, v67, 1.0
	v_div_fmas_f32 v71, v71, v76, v78
	v_fma_f32 v76, -v81, v72, v69
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v56, 0, v56, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s2, v45, v65, v45
	v_fmac_f32_e32 v72, v76, v83
	v_fma_f32 v68, -v73, v75, 1.0
	v_div_fixup_f32 v43, v71, v65, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v74, v67
	v_div_scale_f32 v71, null, v65, v65, v47
	v_fma_f32 v69, -v81, v72, v69
	v_fmac_f32_e32 v75, v68, v75
	v_fma_f32 v76, -v70, v66, v74
	v_div_scale_f32 v68, s4, v46, v65, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v69, v83, v72
	v_rcp_f32_e32 v77, v71
	v_fmac_f32_e32 v66, v76, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v72, v68, v75
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v44, v69, v65, v44
	v_div_scale_f32 v76, null, v65, v65, v48
	v_fma_f32 v69, -v70, v66, v74
	v_fma_f32 v70, -v73, v72, v68
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v42, 0, v42, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v71, v77, 1.0
	v_rcp_f32_e32 v78, v76
	v_div_fmas_f32 v66, v69, v67, v66
	v_div_scale_f32 v67, null, v65, v65, v1
	v_fmac_f32_e32 v72, v70, v75
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, null, v65, v65, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v70, v67
	v_div_scale_f32 v69, s2, v47, v65, v47
	v_div_fixup_f32 v45, v66, v65, v45
	v_fma_f32 v66, -v76, v78, 1.0
	v_rcp_f32_e32 v80, v74
	v_fma_f32 v68, -v73, v72, v68
	v_mul_f32_e32 v73, v69, v77
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v78, v66, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v67, v70, 1.0
	v_div_scale_f32 v66, s3, v48, v65, v48
	v_div_fmas_f32 v68, v68, v75, v72
	v_fma_f32 v72, -v71, v73, v69
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, null, v65, v65, v3
	v_mul_f32_e32 v75, v66, v78
	v_div_scale_f32 v81, s4, v1, v65, v1
	v_fma_f32 v82, -v74, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v79
	v_fmac_f32_e32 v73, v72, v77
	v_fma_f32 v72, -v76, v75, v66
	v_mul_f32_e32 v84, v81, v70
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, s5, v2, v65, v2
	v_div_fixup_f32 v46, v68, v65, v46
	v_fma_f32 v68, -v71, v73, v69
	v_fmac_f32_e32 v75, v72, v78
	v_fma_f32 v69, -v67, v84, v81
	v_mul_f32_e32 v71, v82, v80
	v_fma_f32 v72, -v79, v83, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v66, -v76, v75, v66
	v_fmac_f32_e32 v84, v69, v70
	v_fma_f32 v69, -v74, v71, v82
	v_fmac_f32_e32 v83, v72, v83
	v_div_scale_f32 v72, s2, v3, v65, v3
	v_div_fmas_f32 v68, v68, v77, v73
	v_div_scale_f32 v73, null, v65, v65, v4
	v_fma_f32 v67, -v67, v84, v81
	v_fmac_f32_e32 v71, v69, v80
	v_mul_f32_e32 v69, v72, v83
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v47, v68, v65, v47
	v_div_fmas_f32 v66, v66, v78, v75
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v75, v73
	v_div_fmas_f32 v67, v67, v70, v84
	v_fma_f32 v70, -v74, v71, v82
	v_fma_f32 v74, -v79, v69, v72
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v48, v66, v65, v48
	v_div_fixup_f32 v1, v67, v65, v1
	v_div_fmas_f32 v70, v70, v80, v71
	v_fmac_f32_e32 v69, v74, v83
	v_div_scale_f32 v67, null, v65, v65, v5
	v_fma_f32 v68, -v73, v75, 1.0
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v66, -v79, v69, v72
	v_div_fixup_f32 v2, v70, v65, v2
	v_div_scale_f32 v70, null, v65, v65, v7
	v_fmac_f32_e32 v75, v68, v75
	v_div_scale_f32 v68, null, v65, v65, v6
	v_div_fmas_f32 v66, v66, v83, v69
	v_rcp_f32_e32 v69, v67
	v_rcp_f32_e32 v74, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v68
	v_div_scale_f32 v77, null, v65, v65, v8
	v_div_scale_f32 v71, vcc_lo, v4, v65, v4
	v_div_fixup_f32 v3, v66, v65, v3
	v_rcp_f32_e32 v79, v77
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v36, v39, v36, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v68, v72, 1.0
	v_fma_f32 v81, -v70, v74, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v39, v35, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s2, v5, v65, v5
	v_fma_f32 v80, -v73, v76, v71
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, s3, v6, v65, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v66, v69
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s4, v7, v65, v7
	v_fma_f32 v83, -v77, v79, 1.0
	v_fmac_f32_e32 v76, v80, v75
	v_mul_f32_e32 v84, v78, v72
	v_fma_f32 v80, -v67, v82, v66
	v_mul_f32_e32 v85, v81, v74
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s5, v8, v65, v8
	v_fma_f32 v71, -v73, v76, v71
	v_fma_f32 v73, -v68, v84, v78
	v_fmac_f32_e32 v82, v80, v69
	v_fma_f32 v80, -v70, v85, v81
	v_mul_f32_e32 v86, v83, v79
	v_div_fmas_f32 v71, v71, v75, v76
	v_fmac_f32_e32 v84, v73, v72
	v_fma_f32 v66, -v67, v82, v66
	v_fmac_f32_e32 v85, v80, v74
	v_fma_f32 v67, -v77, v86, v83
	s_mov_b32 vcc_lo, s2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s89, v31
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v31, v39, v31, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v68, v84, v78
	v_fmac_f32_e32 v86, v67, v79
	v_fma_f32 v67, -v70, v85, v81
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v69, v82
	s_mov_b32 vcc_lo, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v72, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s89, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s89, v37
	v_cmp_gt_i32_e64 s4, s89, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v40, v39, v40, 2
	buffer_store_b32 v57, v31, s[76:79], 0 offen
	v_add_lshl_u32 v31, v39, v37, 2
	v_add_lshl_u32 v38, v39, v38, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s3
	s_and_b32 s3, s0, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	v_add_lshl_u32 v34, v39, v34, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x3
	buffer_store_b32 v58, v40, s[76:79], 0 offen
	buffer_store_b32 v59, v38, s[76:79], 0 offen
	buffer_store_b32 v60, v31, s[76:79], 0 offen
	buffer_store_b32 v61, v36, s[76:79], 0 offen
	v_add_lshl_u32 v31, v39, v33, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v32, v39, v32, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v30, v39, v30, 2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v29, v39, v29, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v39, v28, 2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v39, v27, 2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v39, v26, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s14
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v39, v25, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s15
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v24, v39, v24, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s16
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v23, v39, v23, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v22, v39, v22, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v21, v39, v21, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s19
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v39, v20, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s20
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v39, v19, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v18, v39, v18, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v39, v17, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v77, v86, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s23
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v16, v39, v16, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s24
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v15, v39, v15, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v14, v39, v14, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v13, v39, v13, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v44, s1
	v_cndmask_b32_e64 v46, 0, v46, s1
	v_cndmask_b32_e64 v48, 0, v48, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v4, v71, v65, v4
	v_div_fixup_f32 v5, v66, v65, v5
	v_div_fixup_f32 v6, v68, v65, v6
	v_div_fixup_f32 v7, v67, v65, v7
	v_div_fixup_f32 v8, v69, v65, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v55, 0, v55, s1
	v_cndmask_b32_e64 v41, 0, v41, s1
	v_cndmask_b32_e64 v43, 0, v43, s1
	v_cndmask_b32_e64 v45, 0, v45, s1
	v_cndmask_b32_e64 v47, 0, v47, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	s_clause 0x13
	buffer_store_b32 v62, v35, s[76:79], 0 offen
	buffer_store_b32 v63, v34, s[76:79], 0 offen
	buffer_store_b32 v64, v31, s[76:79], 0 offen
	buffer_store_b32 v49, v32, s[76:79], 0 offen
	buffer_store_b32 v50, v30, s[76:79], 0 offen
	buffer_store_b32 v51, v29, s[76:79], 0 offen
	buffer_store_b32 v52, v28, s[76:79], 0 offen
	buffer_store_b32 v53, v27, s[76:79], 0 offen
	buffer_store_b32 v54, v26, s[76:79], 0 offen
	buffer_store_b32 v55, v25, s[76:79], 0 offen
	buffer_store_b32 v56, v24, s[76:79], 0 offen
	buffer_store_b32 v41, v23, s[76:79], 0 offen
	buffer_store_b32 v42, v22, s[76:79], 0 offen
	buffer_store_b32 v43, v21, s[76:79], 0 offen
	buffer_store_b32 v44, v20, s[76:79], 0 offen
	buffer_store_b32 v45, v19, s[76:79], 0 offen
	buffer_store_b32 v46, v18, s[76:79], 0 offen
	buffer_store_b32 v47, v17, s[76:79], 0 offen
	buffer_store_b32 v48, v16, s[76:79], 0 offen
	buffer_store_b32 v1, v15, s[76:79], 0 offen
	v_add_lshl_u32 v1, v39, v12, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s89, v10
	v_cmp_gt_i32_e32 vcc_lo, s89, v9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v14, s[76:79], 0 offen
	buffer_store_b32 v3, v13, s[76:79], 0 offen
	v_add_lshl_u32 v2, v39, v11, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s89, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s0, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v39, v10, 2
	v_add_lshl_u32 v9, v39, v9, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v39, v0, 2
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
.Ltmp313:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 484
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.private_seg_size, 484
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23956
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 484
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
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
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
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
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
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
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
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
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
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
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 484
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 120
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
