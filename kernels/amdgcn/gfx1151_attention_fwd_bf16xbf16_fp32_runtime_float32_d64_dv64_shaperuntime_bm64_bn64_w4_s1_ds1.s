	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b128 s[12:15], s[0:1], 0x4c
	; meta instruction
	s_load_b32 s20, s[0:1], 0x5c
	s_load_b64 s[4:5], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v52, 6, v0
	v_and_b32_e32 v66, 63, v0
	s_mov_b32 s7, 0x31027000
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	s_mov_b32 s104, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v2, 8, v52
	v_or_b32_e32 v4, 24, v52
	v_or_b32_e32 v6, 2, v52
	v_or_b32_e32 v8, 6, v52
	v_or_b32_e32 v9, 10, v52
	v_or_b32_e32 v10, 12, v52
	v_or_b32_e32 v11, 14, v52
	v_or_b32_e32 v12, 18, v52
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off offset:152
	scratch_store_b32 off, v4, off offset:160
	scratch_store_b32 off, v6, off offset:168
	scratch_store_b32 off, v8, off offset:176
	scratch_store_b32 off, v9, off offset:180
	scratch_store_b32 off, v10, off offset:184
	scratch_store_b32 off, v11, off offset:188
	scratch_store_b32 off, v52, off offset:140
	s_waitcnt lgkmcnt(0)
	s_and_b32 s6, 1, s40
	s_bitcmp1_b32 s40, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[63:64], null, s20, v52, v[66:67]
	s_cselect_b32 s8, -1, 0
	s_cmp_eq_u32 s6, 1
	v_writelane_b32 v255, s8, 0
	s_cselect_b32 s9, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s10, s12
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s16, s3
	s_cvt_f32_u32 s8, s10
	s_sub_i32 s11, 0, s10
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s24, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v13, 20, v52
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s24, v9
	v_or_b32_e32 v39, s24, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[9:10], null, s20, 6, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v14, 22, v52
	v_or_b32_e32 v15, 26, v52
	v_or_b32_e32 v16, 28, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v40, s24, v11
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[10:11], null, s20, 10, v[63:64]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s8, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, 30, v52
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v12, off offset:192
	scratch_store_b32 off, v13, off offset:196
	scratch_store_b32 off, v14, off offset:200
	scratch_store_b32 off, v15, off offset:204
	scratch_store_b32 off, v16, off offset:208
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v31, s24, v12
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[11:12], null, s20, 12, v[63:64]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s8, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 34, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v32, s24, v13
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[12:13], null, s20, 14, v[63:64]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s11, s11, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, 36, v52
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s11, s8, s11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v33, s24, v14
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s8, s8, s11
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s11, s3, s14
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s8, s16, s8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[13:14], null, s20, 18, v[63:64]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s17, s8, s10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v20, 38, v52
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s16, s17
	s_add_i32 s16, s8, 1
	s_sub_i32 s17, s2, s10
	s_cmp_ge_u32 s2, s10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v21, 40, v52
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s8, s16, s8
	s_cselect_b32 s2, s17, s2
	s_add_i32 s16, s8, 1
	s_cmp_ge_u32 s2, s10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v43, s24, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s8, s16, s8
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s24, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s16
	s_sub_i32 s17, 0, s16
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[14:15], null, s20, 20, v[63:64]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s2
	v_mov_b32_e32 v8, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s24, v16
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[15:16], null, s20, 22, v[63:64]
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v17, off offset:212
	scratch_store_b32 off, v18, off offset:216
	scratch_store_b32 off, v19, off offset:220
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s24, v17
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[16:17], null, s20, 26, v[63:64]
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, s24, v18
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[17:18], null, s20, 28, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s24, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[18:19], null, s20, 30, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v22, 42, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v20, off offset:224
	scratch_store_b32 off, v21, off offset:228
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, 46, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s17, s17, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[8:9], off offset:272
	scratch_store_b32 off, v22, off offset:232
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s2, s17
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v53, 54, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s2, s2, s17
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v54, 56, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s10, s2
	s_xor_b32 s2, s12, s13
	s_mul_i32 s18, s17, s16
	s_ashr_i32 s2, s2, 31
	s_sub_i32 s10, s10, s18
	s_add_i32 s18, s17, 1
	s_sub_i32 s19, s10, s16
	s_cmp_ge_u32 s10, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v55, 58, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s17, s18, s17
	s_cselect_b32 s10, s19, s10
	s_add_i32 s18, s17, 1
	s_cmp_ge_u32 s10, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v56, 60, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s10, s18, s17
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s16, s11, s24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v57, 62, v52
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s11, s16, s20
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v44, s24, v20
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s11, v9, 1
	v_mov_b32_e32 v9, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v45, s24, v21
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[20:21], null, s20, 34, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v46, s24, v22
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[9:10], off offset:280
	scratch_store_b32 off, v53, off offset:428
	v_add_lshl_u32 v9, s11, v10, 1
	v_mov_b32_e32 v10, v11
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[21:22], null, s20, 36, v[63:64]
	v_mad_u64_u32 v[22:23], null, s20, 38, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[10:11], off offset:288
	scratch_store_b32 off, v54, off offset:432
	v_add_lshl_u32 v10, s11, v11, 1
	v_mov_b32_e32 v11, v12
	scratch_store_b32 off, v19, off offset:356 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v48, s24, v19
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[49:50], null, s20, 44, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:296
	scratch_store_b32 off, v55, off offset:436
	v_add_lshl_u32 v11, s11, v12, 1
	v_mov_b32_e32 v12, v13
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[50:51], null, s20, 46, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v5, 32, v52
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[58:59], null, s20, 48, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[12:13], off offset:304
	scratch_store_b32 off, v56, off offset:440
	v_add_lshl_u32 v12, s11, v13, 1
	v_mov_b32_e32 v13, v14
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[59:60], null, s20, 50, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, s24, v5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[60:61], null, s20, 56, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[13:14], off offset:312
	scratch_store_b32 off, v57, off offset:444
	v_add_lshl_u32 v13, s11, v14, 1
	v_mov_b32_e32 v14, v15
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 16, v52
	v_or_b32_e32 v7, 4, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v29, s24, v52
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, 52, v52
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[14:15], off offset:320 ; 8-byte Folded Spill
	v_add_lshl_u32 v14, s11, v15, 1
	v_mov_b32_e32 v15, v16
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[61:62], null, s20, 58, v[63:64]
	v_mad_u64_u32 v[67:68], null, s20, 52, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[15:16], off offset:328 ; 8-byte Folded Spill
	v_add_lshl_u32 v15, s11, v16, 1
	v_mov_b32_e32 v16, v17
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s21, s20, v66
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s14, v29
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v1, s11, v63, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, s24, v2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[16:17], off offset:336 ; 8-byte Folded Spill
	v_add_lshl_u32 v16, s11, v17, 1
	v_mov_b32_e32 v17, v18
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s22, s21
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v27, s24, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v2, s20, 3, v63
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[17:18], off offset:344 ; 8-byte Folded Spill
	v_add_lshl_u32 v17, s11, v18, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 44, v52
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v28
	v_writelane_b32 v255, s22, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v41, s24, v6
	v_or_b32_e32 v26, s24, v4
	scratch_store_b32 off, v18, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v47, s24, v18
	v_mov_b32_e32 v18, v20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v27
	v_writelane_b32 v255, s23, 2
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s21
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v26
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[18:19], off offset:360 ; 8-byte Folded Spill
	v_mov_b32_e32 v19, v21
	v_add_lshl_u32 v18, s11, v20, 1
	v_writelane_b32 v255, s25, 3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v42, s24, v7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v25
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[19:20], off offset:368 ; 8-byte Folded Spill
	v_mov_b32_e32 v20, v22
	v_add_lshl_u32 v19, s11, v21, 1
	v_writelane_b32 v255, s19, 4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s14, v42
	v_cmp_gt_i32_e64 s22, s14, v38
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[20:21], off offset:376 ; 8-byte Folded Spill
	v_add_lshl_u32 v20, s11, v22, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[22:23], null, s20, 40, v[63:64]
	v_mad_u64_u32 v[23:24], null, s20, 42, v[63:64]
	v_writelane_b32 v255, s17, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v39
	v_cmp_gt_i32_e64 s26, s14, v31
	v_cmp_gt_i32_e64 s27, s14, v32
	v_mov_b32_e32 v21, v22
	v_cmp_gt_i32_e64 s28, s14, v33
	v_cmp_gt_i32_e64 s29, s14, v34
	v_cmp_gt_i32_e64 s30, s14, v35
	v_cmp_gt_i32_e64 s31, s14, v36
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[21:22], off offset:384 ; 8-byte Folded Spill
	v_add_lshl_u32 v21, s11, v22, 1
	v_mov_b32_e32 v22, v23
	s_mov_b32 s6, 0x7ffffffe
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:164
	scratch_store_b32 off, v7, off offset:172
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[5:6], null, s20, 24, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[22:23], off offset:392 ; 8-byte Folded Spill
	v_add_lshl_u32 v22, s11, v23, 1
	v_mov_b32_e32 v23, v49
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v6, s20, 5, v63
	v_lshl_add_u32 v7, s20, 2, v63
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v51, off offset:424
	scratch_store_b64 off, v[23:24], off offset:400
	v_mov_b32_e32 v24, v50
	v_add_lshl_u32 v23, s11, v49, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v49, 48, v52
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v6, off offset:260
	scratch_store_b32 off, v7, off offset:268
	scratch_store_b64 off, v[24:25], off offset:408
	v_add_lshl_u32 v24, s11, v50, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 50, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v52, s24, v53
	v_or_b32_e32 v53, s24, v54
	v_or_b32_e32 v54, s24, v55
	v_or_b32_e32 v55, s24, v56
	v_or_b32_e32 v56, s24, v57
	v_mov_b32_e32 v57, v58
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v7, s11, v7, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v51, s24, v51
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[57:58], off offset:448 ; 8-byte Folded Spill
	v_add_lshl_u32 v57, s11, v58, 1
	v_mov_b32_e32 v58, v59
	scratch_store_b64 off, v[58:59], off offset:456 ; 8-byte Folded Spill
	v_add_lshl_u32 v58, s11, v59, 1
	v_mov_b32_e32 v59, v60
	scratch_store_b64 off, v[59:60], off offset:464 ; 8-byte Folded Spill
	v_add_lshl_u32 v59, s11, v60, 1
	v_mov_b32_e32 v60, v61
	scratch_store_b64 off, v[60:61], off offset:472 ; 8-byte Folded Spill
	v_add_lshl_u32 v60, s11, v61, 1
	v_mov_b32_e32 v61, v67
	scratch_store_b64 off, v[61:62], off offset:480 ; 8-byte Folded Spill
	v_add_lshl_u32 v61, s11, v67, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[67:68], null, s20, 60, v[63:64]
	v_mad_u64_u32 v[68:69], null, s20, 54, v[63:64]
	v_mov_b32_e32 v62, v63
	scratch_store_b32 off, v49, off offset:416 ; 4-byte Folded Spill
	v_mad_u64_u32 v[69:70], null, s20, 62, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v49, s24, v49
	.loc	1 787 26                        ; attention.py:787:26
	scratch_store_b64 off, v[62:63], off offset:236 ; 8-byte Folded Spill
	v_mov_b32_e32 v62, v67
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[62:63], off offset:488 ; 8-byte Folded Spill
	v_add_lshl_u32 v62, s11, v67, 1
	v_mov_b32_e32 v67, v66
	scratch_store_b32 off, v3, off offset:156 ; 4-byte Folded Spill
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v3, s20, 4, v63
	scratch_store_b32 off, v2, off offset:244 ; 4-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s11, v2, 1
	v_lshlrev_b32_e32 v66, 1, v66
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[67:68], off offset:144
	scratch_store_b32 off, v3, off offset:248
	v_add_lshl_u32 v3, s11, v3, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s21
	v_mov_b32_e32 v4, v5
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v40
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v43
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[4:5], off offset:252 ; 8-byte Folded Spill
	v_add_lshl_u32 v4, s11, v5, 1
	v_add_lshl_u32 v5, s11, v6, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v6, s20, 1, v63
	v_mov_b32_e32 v63, v68
	scratch_store_b32 off, v50, off offset:420 ; 4-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v41
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:264
	scratch_store_b64 off, v[63:64], off offset:496
	v_add_lshl_u32 v6, s11, v6, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_writelane_b32 v255, s17, 6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v30
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s21
	v_writelane_b32 v255, s18, 7
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s14, v37
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_writelane_b32 v255, s19, 8
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s22, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v44
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s21
	v_writelane_b32 v255, s22, 9
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s22, s14, v45
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_writelane_b32 v255, s23, 10
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v46
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s21
	v_writelane_b32 v255, s25, 11
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v47
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	v_writelane_b32 v255, s26, 12
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s21
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v50, s24, v50
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s30, s21
	v_writelane_b32 v255, s27, 13
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s31, s21
	v_dual_mov_b32 v64, v69 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_writelane_b32 v255, s28, 14
	s_and_b32 vcc_lo, s17, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s14, v48
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s21
	v_writelane_b32 v255, s29, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s21
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[64:65], off offset:504 ; 8-byte Folded Spill
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	v_writelane_b32 v255, s30, 16
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s22, s21
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v65, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s21
	v_writelane_b32 v255, s31, 17
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s21
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v65, 0x90, v65
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	v_writelane_b32 v255, s17, 18
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v49
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s21
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_xor_b32_e32 v65, v65, v66
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_writelane_b32 v255, s18, 19
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s14, v50
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s21
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v63, s11, v68, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_writelane_b32 v255, s19, 20
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s21
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v51
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s14, v56
	v_writelane_b32 v255, s22, 21
	v_cmp_gt_i32_e64 s22, s14, v52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v64, s11, v69, 1
	v_xor_b32_e32 v67, 0x240, v65
	s_clause 0x7
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	v_writelane_b32 v255, s23, 22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v53
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0xb
	buffer_load_u16 v3, v3, s[4:7], 0 offen
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	v_add_nc_u32_e32 v215, 0, v65
	v_writelane_b32 v255, s25, 23
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v54
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s21
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_nc_u32_e32 v217, 0, v67
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	v_writelane_b32 v255, s26, 24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s14, v55
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s21
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s21
	v_writelane_b32 v255, s17, 25
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s21
	v_writelane_b32 v254, s22, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s22, s21
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s21
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	s_clause 0x5
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	v_writelane_b32 v255, s18, 26
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s10, s2
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s15, 63
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s2, s4, s2
	v_writelane_b32 v254, s21, 1
	v_writelane_b32 v255, s23, 27
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v66, 0x120, v65
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s5, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v65, 0x360, v65
	v_writelane_b32 v255, s25, 28
	v_writelane_b32 v254, s27, 2
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v68, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s6, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v216, 0, v66
	v_writelane_b32 v255, s20, 29
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v218, 0, v65
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s5, s6, s5
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v215, v1
	s_waitcnt vmcnt(30)
	ds_store_b16 v215, v2 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v215, v3 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v215, v4 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v215, v5 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v215, v21 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v215, v57 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v215, v59 offset:7168
	ds_store_b16 v216, v6
	ds_store_b16 v216, v9 offset:1024
	ds_store_b16 v216, v12 offset:2048
	ds_store_b16 v216, v15 offset:3072
	ds_store_b16 v216, v18 offset:4096
	ds_store_b16 v216, v22 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v216, v58 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v216, v60 offset:7168
	ds_store_b16 v217, v7
	ds_store_b16 v217, v10 offset:1024
	ds_store_b16 v217, v13 offset:2048
	ds_store_b16 v217, v16 offset:3072
	ds_store_b16 v217, v19 offset:4096
	ds_store_b16 v217, v23 offset:5120
	ds_store_b16 v217, v61 offset:6144
	ds_store_b16 v217, v62 offset:7168
	ds_store_b16 v218, v8
	ds_store_b16 v218, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v218, v14 offset:2048
	ds_store_b16 v218, v17 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v218, v20 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v218, v24 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v218, v63 offset:6144
	ds_store_b16 v218, v64 offset:7168
	v_writelane_b32 v255, s19, 30
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s11, s5, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s5, s40, 0x10008
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s5, v68
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s26, 31
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s24, s42
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s24, s41
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, s43
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s43
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s15, s6
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s7, s10, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s104, s7, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s11, s11, s6
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s9
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s6, 1, v1
	v_writelane_b32 v254, s6, 3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s6, s24, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 64
	s_min_i32 s6, s15, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s7, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s11, s11, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_lshlrev_b32_e32 v104, 1, v0
	v_lshlrev_b32_e32 v97, 6, v0
	v_lshlrev_b32_e32 v105, 2, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s104, s11
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v98, 1, v0
	v_and_b32_e32 v106, 64, v97
	v_lshlrev_b32_e32 v99, 2, v0
	s_mov_b32 s6, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr99
.LBB0_7:                                ; %Flow396
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b32 s7, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v101, 0x60, v0
	v_and_b32_e32 v100, 15, v0
	v_and_b32_e32 v103, 64, v0
	v_and_b32_e32 v102, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s6
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
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s7, 4
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
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v91, v8
	v_mov_b32_e32 v90, v8
	v_mov_b32_e32 v89, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v75, v8
	v_mov_b32_e32 v74, v8
	v_mov_b32_e32 v73, v8
	v_mov_b32_e32 v96, v8
	v_mov_b32_e32 v95, v8
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v93, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v79, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v77, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v87, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v85, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v83, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v81, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v71, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v69, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v66, v8
	v_mov_b32_e32 v65, v8
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	v_and_b32_e32 v1, 7, v0
	v_lshlrev_b32_e32 v2, 7, v100
	v_lshrrev_b32_e32 v3, 5, v101
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v4, 6, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v5, 4, v1
	v_lshlrev_b32_e32 v6, 3, v100
	v_lshrrev_b32_e32 v7, 2, v102
	v_lshl_or_b32 v3, v100, 8, v3
	v_dual_mov_b32 v59, v57 :: v_dual_and_b32 v8, 0x70, v104
	v_or3_b32 v4, v2, v4, v5
	v_dual_mov_b32 v58, v57 :: v_dual_and_b32 v65, 63, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or3_b32 v12, v3, v7, v6
	v_dual_mov_b32 v61, v57 :: v_dual_add_nc_u32 v6, 0, v4
	v_xad_u32 v7, v4, 16, 0
	v_xor_b32_e32 v3, v5, v8
	v_xad_u32 v8, v4, 32, 0
	ds_load_b128 v[13:16], v6
	ds_load_b128 v[17:20], v7
	v_xad_u32 v11, v4, 48, 0
	v_dual_mov_b32 v60, v57 :: v_dual_lshlrev_b32 v9, 7, v65
	v_lshrrev_b32_e32 v10, 3, v103
	v_xad_u32 v6, 0x50, v4, 0
	v_mul_u32_u24_e32 v1, 0x90, v1
	s_xor_b32 s6, s3, s12
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_or3_b32 v9, v9, v10, v3
	v_xad_u32 v3, v4, 64, 0
	s_ashr_i32 s6, s6, 31
	s_cvt_u32_f32 s5, s5
	s_xor_b32 s7, s8, s6
	s_ashr_i32 s2, s2, 31
	s_sub_i32 s8, s7, s6
	s_sub_i32 s6, 0, s4
	s_mul_i32 s7, s8, s12
	s_mul_i32 s6, s6, s5
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[13:16], off offset:520 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[17:20], off offset:536 ; 16-byte Folded Spill
	ds_load_b128 v[13:16], v8
	ds_load_b128 v[17:20], v11
	s_sub_i32 s3, s3, s7
	s_mul_hi_u32 s6, s5, s6
	s_abs_i32 s7, s3
	s_add_i32 s5, s5, s6
	s_ashr_i32 s6, s3, 31
	s_mul_hi_u32 s5, s7, s5
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s2, s6, s2
	s_mul_i32 s9, s5, s4
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_sub_i32 s6, s7, s9
	s_add_i32 s7, s5, 1
	s_sub_i32 s9, s6, s4
	s_cmp_ge_u32 s6, s4
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	s_cselect_b32 s5, s7, s5
	s_cselect_b32 s6, s9, s6
	s_add_i32 s7, s5, 1
	s_cmp_ge_u32 s6, s4
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[13:16], off offset:552
	scratch_store_b128 off, v[17:20], off offset:568
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[17:20], v6
	v_xad_u32 v6, 0x60, v4, 0
	v_xad_u32 v4, 0x70, v4, 0
	v_dual_mov_b32 v64, v57 :: v_dual_lshlrev_b32 v3, 4, v0
	v_bfe_i32 v0, v0, 3, 1
	s_cselect_b32 s4, s7, s5
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s9, s8, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s4, s4, s2
	v_dual_mov_b32 v62, v57 :: v_dual_and_b32 v7, 60, v104
	v_and_b32_e32 v0, 0x410, v0
	s_sub_i32 s2, s4, s2
	v_cndmask_b32_e64 v8, 0x404, 0, vcc_lo
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s2, s2, s9
	s_load_b32 s9, s[0:1], 0x7c
	v_and_b32_e32 v3, 0x200, v3
	v_mov_b32_e32 v63, v57
	v_xor_b32_e32 v7, v8, v7
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[13:16], off offset:584
	scratch_store_b128 off, v[17:20], off offset:600
	ds_load_b128 v[13:16], v6
	ds_load_b128 v[17:20], v4
	v_and_b32_e32 v8, 64, v97
	v_dual_mov_b32 v21, v57 :: v_dual_lshlrev_b32 v4, 1, v103
	v_dual_mov_b32 v22, v57 :: v_dual_add_nc_u32 v29, s43, v29
	scratch_store_b32 off, v8, off offset:1664 ; 4-byte Folded Spill
	v_dual_mov_b32 v24, v57 :: v_dual_add_nc_u32 v41, s43, v41
	v_dual_mov_b32 v23, v57 :: v_dual_add_nc_u32 v42, s43, v42
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v43, s43, v43
	v_add_nc_u32_e32 v28, s43, v28
	v_dual_mov_b32 v11, v57 :: v_dual_add_nc_u32 v38, s43, v38
	v_add_nc_u32_e32 v39, s43, v39
	v_add_nc_u32_e32 v40, s43, v40
	v_add_nc_u32_e32 v27, s43, v27
	v_add_nc_u32_e32 v31, s43, v31
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[13:16], off offset:616 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[17:20], off offset:632 ; 16-byte Folded Spill
	v_mov_b32_e32 v19, v57
	v_xor_b32_e32 v10, v1, v0
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	v_mov_b32_e32 v18, v57
	v_or3_b32 v7, v3, v7, v8
	v_cndmask_b32_e64 v3, 0x108, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v102
	v_mov_b32_e32 v13, v57
	v_mov_b32_e32 v14, v57
	v_dual_mov_b32 v15, v57 :: v_dual_add_nc_u32 v32, s43, v32
	v_dual_mov_b32 v16, v57 :: v_dual_add_nc_u32 v33, s43, v33
	v_add_nc_u32_e32 v26, s43, v26
	v_add_nc_u32_e32 v34, s43, v34
	v_add_nc_u32_e32 v35, s43, v35
	v_add_nc_u32_e32 v36, s43, v36
	v_add_nc_u32_e32 v25, s43, v25
	v_add_nc_u32_e32 v30, s43, v30
	v_add_nc_u32_e32 v37, s43, v37
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v44, s43, v44
	v_add_nc_u32_e32 v45, s43, v45
	v_dual_mov_b32 v253, 0xff800000 :: v_dual_add_nc_u32 v46, s43, v46
	v_add_nc_u32_e32 v47, s43, v47
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_add_nc_u32 v48, s43, v48
	v_add_nc_u32_e32 v49, s43, v49
	v_dual_mov_b32 v213, 0xff800000 :: v_dual_add_nc_u32 v50, s43, v50
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_add_nc_u32 v51, s43, v51
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_add_nc_u32 v52, s43, v52
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_add_nc_u32 v53, s43, v53
	v_dual_mov_b32 v211, 0xff800000 :: v_dual_add_nc_u32 v54, s43, v54
	v_dual_mov_b32 v220, 0xff800000 :: v_dual_add_nc_u32 v55, s43, v55
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_add_nc_u32 v56, s43, v56
	v_writelane_b32 v254, s36, 5
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s22
	s_mov_b32 s44, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v128, 4, v103
	s_mov_b32 s45, s44
	v_writelane_b32 v254, s37, 6
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	v_writelane_b32 v254, s38, 7
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_mov_b32_e32 v212, 0xff800000
	v_mov_b32_e32 v214, 0xff800000
	v_writelane_b32 v254, s39, 8
	v_mov_b32_e32 v196, 0xff800000
	v_mov_b32_e32 v198, 0xff800000
	v_mov_b32_e32 v200, 0xff800000
	v_mov_b32_e32 v202, 0xff800000
	v_writelane_b32 v254, s16, 9
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[16:17], s[0:1], 0x30
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s0, s2, s15
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s8, s21
	v_mov_b32_e32 v204, 0xff800000
	.loc	1 860 31                        ; attention.py:860:31
	v_writelane_b32 v254, s0, 10
	s_mul_f32 s0, s20, 0x3fb8aa3b
	v_mov_b32_e32 v116, 0xff800000
	v_mov_b32_e32 v118, 0xff800000
	v_mov_b32_e32 v194, 0xff800000
	v_writelane_b32 v254, s0, 11
	v_mov_b32_e32 v192, 0xff800000
	v_mov_b32_e32 v226, 0xff800000
	v_mov_b32_e32 v224, 0xff800000
	v_mov_b32_e32 v158, 0xff800000
	v_readlane_b32 s2, v254, 4
	v_mov_b32_e32 v156, 0xff800000
	v_mov_b32_e32 v154, 0xff800000
	v_mov_b32_e32 v232, 0xff800000
	v_mov_b32_e32 v210, 0xff800000
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s2, v65
	v_mov_b32_e32 v222, 0xff800000
	v_mov_b32_e32 v230, 0xff800000
	v_mov_b32_e32 v208, 0xff800000
	v_mov_b32_e32 v206, 0xff800000
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 12
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s0, s23, s24
	v_mov_b32_e32 v126, 0xff800000
	s_add_i32 s0, s1, s0
	v_mov_b32_e32 v124, 0xff800000
	v_writelane_b32 v254, s24, 13
	s_add_i32 s0, s0, s3
	v_mov_b32_e32 v122, 0xff800000
	v_mov_b32_e32 v120, 0xff800000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s5, 0xffff
	v_writelane_b32 v254, s0, 14
	s_lshl_b32 s0, s2, 1
	s_mov_b32 s24, s4
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_writelane_b32 v254, s9, 15
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	v_mov_b32_e32 v17, v57
	v_mov_b32_e32 v20, v57
	v_writelane_b32 v254, s0, 16
	s_lshl_b32 s0, s2, 3
	v_mov_b32_e32 v123, 0xff800000
	v_mov_b32_e32 v97, v57
	v_mov_b32_e32 v98, v57
	v_writelane_b32 v254, s0, 17
	s_lshl_b32 s0, s2, 4
	v_mov_b32_e32 v197, 0xff800000
	v_mov_b32_e32 v125, 0xff800000
	scratch_store_b32 off, v103, off offset:1652 ; 4-byte Folded Spill
	v_writelane_b32 v254, s0, 18
	s_lshl_b32 s0, s2, 5
	v_mov_b32_e32 v199, 0xff800000
	v_mov_b32_e32 v127, 0xff800000
	v_mov_b32_e32 v157, 0xff800000
	v_writelane_b32 v254, s0, 19
	v_mov_b32_e32 v159, 0xff800000
	v_mov_b32_e32 v225, 0xff800000
	v_mov_b32_e32 v115, 0xff800000
	v_mov_b32_e32 v117, 0xff800000
	v_writelane_b32 v254, s44, 20
	v_mov_b32_e32 v229, 0xff800000
	v_mov_b32_e32 v209, 0xff800000
	v_mov_b32_e32 v207, 0xff800000
	v_mov_b32_e32 v205, 0xff800000
	v_writelane_b32 v254, s45, 21
	v_mov_b32_e32 v203, 0xff800000
	v_mov_b32_e32 v201, 0xff800000
	v_mov_b32_e32 v227, 0xff800000
	v_mov_b32_e32 v223, 0xff800000
	v_writelane_b32 v254, s46, 22
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	v_mov_b32_e32 v195, 0xff800000
	v_mov_b32_e32 v193, 0xff800000
	v_writelane_b32 v254, s47, 23
	v_mov_b32_e32 v155, 0xff800000
	v_mov_b32_e32 v153, 0xff800000
	v_writelane_b32 v254, s48, 24
	v_writelane_b32 v254, s49, 25
	v_writelane_b32 v254, s50, 26
	v_writelane_b32 v254, s51, 27
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v254, s11, 28
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v0, s23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[66:67], null, s9, v65, v[0:1]
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v1, 0x7632
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_or_b32_e32 v6, v5, v2
	v_lshlrev_b32_e32 v2, 2, v65
	v_add_nc_u32_e32 v5, 0, v8
	v_cndmask_b32_e32 v1, 0x3276, v1, vcc_lo
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v8, v3, v2
	v_xor_b32_e32 v2, 16, v6
	v_lshl_or_b32 v1, v1, 8, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v0, 0x540054, v0
	v_xor_b32_e32 v3, 32, v6
	v_add_nc_u32_e32 v228, v5, v4
	v_xor_b32_e32 v4, 0x70, v6
	v_and_b32_e32 v1, 0x760076, v1
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v5, v100, 10, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v1, 4, v1
	v_and_b32_e32 v175, 0x5040504, v0
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x50, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v176, 0x7060706, v1
	v_xor_b32_e32 v1, 64, v6
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v104, off offset:1656 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 0x60, v6
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x1010, v7
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x1818, v7
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0x3838, v7
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 4, v5
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x808, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x2828, v7
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:708
	scratch_store_b32 off, v100, off offset:1640
	scratch_store_b32 off, v105, off offset:1660
	v_xor_b32_e32 v0, 0x2020, v7
	v_xor_b32_e32 v2, 0x3030, v7
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 12, v5
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 16, v5
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 20, v5
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 24, v5
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v5
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 36, v5
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 40, v5
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 44, v5
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 28, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 52, v5
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 56, v5
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 60, v5
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0x210, v8
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_mov_b32_e32 v1, v57
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mov_b32_e32 v2, v57
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_mov_b32_e32 v3, v57
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_mov_b32_e32 v4, v57
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x420, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x630, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa50, v8
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc60, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:812
	scratch_store_b32 off, v8, off offset:656
	v_xor_b32_e32 v0, 0xe70, v8
	v_mov_b32_e32 v8, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v12
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:868 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:872
	scratch_store_b32 off, v12, off offset:512
	v_xor_b32_e32 v0, 0x78, v12
	v_mov_b32_e32 v12, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:876
	scratch_store_b32 off, v101, off offset:1644
	v_lshlrev_b32_e32 v0, 1, v101
	v_add_nc_u32_e32 v252, 0, v0
	v_xor_b32_e32 v0, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v9
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:884 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v9
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:892 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:896 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v9
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:900
	scratch_store_b32 off, v9, off offset:516
	v_xor_b32_e32 v0, 0x70, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v9, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:904 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:908 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:916 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:920 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:924 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:928 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:932 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x820, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x830, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:940 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x810, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:944 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x860, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:948 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x870, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:952 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:956 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x850, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:960 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1040, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:964 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1050, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:968 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1060, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:972 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1070, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:976 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:980 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1020, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:984 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1030, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:988 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1860, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:992 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1870, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:996 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1840, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1000 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1850, v10
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1004 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1820, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1008 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1830, v10
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1012
	scratch_store_b32 off, v10, off offset:660
	v_xor_b32_e32 v0, 0x1810, v10
	v_mov_b32_e32 v10, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1016 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v29
	scratch_store_b32 off, v0, off offset:1384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v41
	scratch_store_b32 off, v0, off offset:1388 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v42
	scratch_store_b32 off, v0, off offset:1392 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v43
	scratch_store_b32 off, v0, off offset:1396 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v28
	scratch_store_b32 off, v0, off offset:1400 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v38
	scratch_store_b32 off, v0, off offset:1404 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v39
	scratch_store_b32 off, v0, off offset:1408 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v40
	scratch_store_b32 off, v0, off offset:1412 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v27
	scratch_store_b32 off, v0, off offset:1416 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v31
	scratch_store_b32 off, v0, off offset:1420 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v32
	scratch_store_b32 off, v0, off offset:1424 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v33
	scratch_store_b32 off, v0, off offset:1428 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v26
	scratch_store_b32 off, v0, off offset:1432 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v34
	scratch_store_b32 off, v0, off offset:1436 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v35
	scratch_store_b32 off, v0, off offset:1440 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v36
	scratch_store_b32 off, v0, off offset:1444 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v25
	scratch_store_b32 off, v0, off offset:1448 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v30
	scratch_store_b32 off, v0, off offset:1452 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v37
	scratch_store_b32 off, v0, off offset:1456 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v44
	scratch_store_b32 off, v0, off offset:1460 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v45
	scratch_store_b32 off, v0, off offset:1464 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v46
	scratch_store_b32 off, v0, off offset:1468 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v47
	scratch_store_b32 off, v0, off offset:1472 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v48
	scratch_store_b32 off, v0, off offset:1476 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v49
	scratch_store_b32 off, v0, off offset:1480 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v50
	scratch_store_b32 off, v0, off offset:1484 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v51
	scratch_store_b32 off, v0, off offset:1488 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v52
	scratch_store_b32 off, v0, off offset:1492 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v53
	scratch_store_b32 off, v0, off offset:1496 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v54
	scratch_store_b32 off, v0, off offset:1500 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v55
	scratch_store_b32 off, v0, off offset:1504 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1508
	scratch_store_b32 off, v29, off offset:1256
	v_add_nc_u32_e32 v0, s42, v29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1512
	scratch_store_b32 off, v41, off offset:1260
	v_add_nc_u32_e32 v0, s42, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1516
	scratch_store_b32 off, v42, off offset:1264
	v_add_nc_u32_e32 v0, s42, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1520
	scratch_store_b32 off, v43, off offset:1268
	v_add_nc_u32_e32 v0, s42, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1524
	scratch_store_b32 off, v28, off offset:1272
	v_add_nc_u32_e32 v0, s42, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1528
	scratch_store_b32 off, v38, off offset:1276
	v_add_nc_u32_e32 v0, s42, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1532
	scratch_store_b32 off, v39, off offset:1280
	v_add_nc_u32_e32 v0, s42, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1536
	scratch_store_b32 off, v40, off offset:1284
	v_add_nc_u32_e32 v0, s42, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1540
	scratch_store_b32 off, v27, off offset:1288
	v_add_nc_u32_e32 v0, s42, v27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1544
	scratch_store_b32 off, v31, off offset:1292
	v_add_nc_u32_e32 v0, s42, v31
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1548
	scratch_store_b32 off, v32, off offset:1296
	v_add_nc_u32_e32 v0, s42, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1552
	scratch_store_b32 off, v33, off offset:1300
	v_add_nc_u32_e32 v0, s42, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1556
	scratch_store_b32 off, v26, off offset:1304
	v_add_nc_u32_e32 v0, s42, v26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1560
	scratch_store_b32 off, v34, off offset:1308
	v_add_nc_u32_e32 v0, s42, v34
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1564
	scratch_store_b32 off, v35, off offset:1312
	v_add_nc_u32_e32 v0, s42, v35
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1568
	scratch_store_b32 off, v36, off offset:1316
	v_add_nc_u32_e32 v0, s42, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1572
	scratch_store_b32 off, v25, off offset:1320
	v_add_nc_u32_e32 v0, s42, v25
	v_mad_u64_u32 v[25:26], null, s23, 62, v[66:67]
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v42, v57
	scratch_store_b32 off, v0, off offset:1576 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s23, 5, v66
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v40, v57
	scratch_store_b64 off, v[25:26], off offset:1040 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 60, v[66:67]
	scratch_store_b32 off, v0, off offset:1020 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s23, 4, v66
	scratch_store_b32 off, v5, off offset:712 ; 4-byte Folded Spill
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v38, v57
	scratch_store_b32 off, v0, off offset:1024 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s23, 3, v66
	scratch_store_b64 off, v[25:26], off offset:1048 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 58, v[66:67]
	v_mov_b32_e32 v36, v57
	scratch_store_b32 off, v0, off offset:1028 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s23, 2, v66
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v34, v57
	v_mov_b32_e32 v33, v57
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[25:26], off offset:1056
	scratch_store_b32 off, v0, off offset:1032
	v_lshl_add_u32 v0, s23, 1, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1036
	scratch_store_b32 off, v30, off offset:1324
	v_add_nc_u32_e32 v0, s42, v30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1580
	scratch_store_b32 off, v56, off offset:1380
	v_add_nc_u32_e32 v0, s42, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1584
	scratch_store_b32 off, v55, off offset:1376
	v_add_nc_u32_e32 v0, s42, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1588
	scratch_store_b32 off, v54, off offset:1372
	v_add_nc_u32_e32 v0, s42, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1592
	scratch_store_b32 off, v53, off offset:1368
	v_add_nc_u32_e32 v0, s42, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1596
	scratch_store_b32 off, v52, off offset:1364
	v_add_nc_u32_e32 v0, s42, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1600
	scratch_store_b32 off, v51, off offset:1360
	v_add_nc_u32_e32 v0, s42, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1604
	scratch_store_b32 off, v50, off offset:1356
	v_add_nc_u32_e32 v0, s42, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1608
	scratch_store_b32 off, v49, off offset:1352
	v_add_nc_u32_e32 v0, s42, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1612
	scratch_store_b32 off, v48, off offset:1348
	v_add_nc_u32_e32 v0, s42, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1616
	scratch_store_b32 off, v47, off offset:1344
	v_add_nc_u32_e32 v0, s42, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1620
	scratch_store_b32 off, v46, off offset:1340
	v_add_nc_u32_e32 v0, s42, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1624
	scratch_store_b32 off, v45, off offset:1336
	v_add_nc_u32_e32 v0, s42, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1628
	scratch_store_b32 off, v44, off offset:1332
	v_add_nc_u32_e32 v0, s42, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1632
	scratch_store_b32 off, v37, off offset:1328
	v_add_nc_u32_e32 v0, s42, v37
	v_mad_u64_u32 v[25:26], null, s23, 56, v[66:67]
	v_mov_b32_e32 v56, v57
	v_mov_b32_e32 v55, v57
	scratch_store_b32 off, v0, off offset:1636 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v6, off offset:648 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v57
	scratch_store_b64 off, v[25:26], off offset:1064 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 54, v[66:67]
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v7, off offset:652 ; 4-byte Folded Spill
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v54, v57
	v_mov_b32_e32 v53, v57
	scratch_store_b64 off, v[25:26], off offset:1072 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 52, v[66:67]
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v49, v57
	scratch_store_b64 off, v[25:26], off offset:1080 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 50, v[66:67]
	v_mov_b32_e32 v48, v57
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v46, v57
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v44, v57
	v_mov_b32_e32 v37, v57
	scratch_store_b64 off, v[25:26], off offset:1088 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 48, v[66:67]
	v_mov_b32_e32 v32, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v29, v57
	v_mov_b32_e32 v28, v57
	v_mov_b32_e32 v27, v57
	scratch_store_b64 off, v[25:26], off offset:1096 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 46, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1104 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 44, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1112 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 42, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1120 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 40, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1128 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 38, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1136 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 36, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1144 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 34, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1152 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 30, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1160 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 28, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1168 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 26, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1176 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 24, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1184 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 22, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1192 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 20, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 18, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1208 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 14, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1216 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 12, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1224 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 10, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1232 ; 8-byte Folded Spill
	v_mov_b32_e32 v25, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v102, off offset:1648
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b64 off, v[25:26], off offset:664 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s23, 6, v[66:67]
	scratch_store_b64 off, v[25:26], off offset:1240 ; 8-byte Folded Spill
	v_mad_u64_u32 v[25:26], null, s2, v128, v[65:66]
	scratch_store_b64 off, v[25:26], off offset:1248 ; 8-byte Folded Spill
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x14                           ; 160-byte Folded Reload
	scratch_load_b64 v[34:35], off, off offset:1208
	scratch_load_b64 v[35:36], off, off offset:1200
	scratch_load_b64 v[42:43], off, off offset:1152
	scratch_load_b64 v[36:37], off, off offset:1192
	scratch_load_b64 v[43:44], off, off offset:1144
	scratch_load_b64 v[28:29], off, off offset:1240
	scratch_load_b64 v[37:38], off, off offset:1184
	scratch_load_b64 v[44:45], off, off offset:1136
	scratch_load_b64 v[30:31], off, off offset:1232
	scratch_load_b64 v[38:39], off, off offset:1176
	scratch_load_b64 v[45:46], off, off offset:1128
	scratch_load_b64 v[31:32], off, off offset:1224
	scratch_load_b64 v[39:40], off, off offset:1168
	scratch_load_b64 v[46:47], off, off offset:1120
	scratch_load_b64 v[32:33], off, off offset:1216
	scratch_load_b64 v[40:41], off, off offset:1160
	scratch_load_b64 v[47:48], off, off offset:1112
	scratch_load_b32 v27, off, off offset:1032
	scratch_load_b64 v[48:49], off, off offset:1104
	scratch_load_b64 v[50:51], off, off offset:1096
	scratch_load_b32 v33, off, off offset:1024
	.loc	1 870 25                        ; attention.py:870:25
	v_readlane_b32 s1, v254, 15
	v_readlane_b32 s3, v254, 14
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[25:26], off, off offset:664
	scratch_load_b32 v29, off, off offset:1028
	scratch_load_b64 v[97:98], off, off offset:1040
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s104, s1
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s3, s1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(23)
	v_add_lshl_u32 v34, s1, v34, 2
	s_waitcnt vmcnt(22)
	v_add_lshl_u32 v35, s1, v35, 2
	s_waitcnt vmcnt(21)
	v_add_lshl_u32 v42, s1, v42, 2
	s_waitcnt vmcnt(20)
	v_add_lshl_u32 v36, s1, v36, 2
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v43, s1, v43, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s95
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v37, s1, v37, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s9
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v38, s1, v38, 2
	v_add_lshl_u32 v44, s1, v44, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s12
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v39, s1, v39, 2
	v_add_lshl_u32 v45, s1, v45, 2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s30
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v40, s1, v40, 2
	v_add_lshl_u32 v46, s1, v46, 2
	v_cndmask_b32_e64 v39, 0x80000000, v39, vcc_hi
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v47, s1, v47, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v48, s1, v48, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v33, s1, v33, 2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s35
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	v_cndmask_b32_e64 v43, 0x80000000, v43, s34
	v_cndmask_b32_e64 v44, 0x80000000, v44, s101
	v_cndmask_b32_e64 v33, 0x80000000, v33, s97
	s_clause 0x7
	buffer_load_b32 v33, v33, s[16:19], 0 offen
	buffer_load_b32 v34, v34, s[16:19], 0 offen
	buffer_load_b32 v41, v35, s[16:19], 0 offen
	buffer_load_b32 v36, v36, s[16:19], 0 offen
	buffer_load_b32 v37, v37, s[16:19], 0 offen
	buffer_load_b32 v38, v38, s[16:19], 0 offen
	buffer_load_b32 v39, v39, s[16:19], 0 offen
	buffer_load_b32 v40, v40, s[16:19], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1020
	scratch_load_b32 v26, off, off offset:1036
	v_cndmask_b32_e64 v45, 0x80000000, v45, s99
	v_cndmask_b32_e64 v46, 0x80000000, v46, s8
	v_cndmask_b32_e64 v47, 0x80000000, v47, s4
	v_cndmask_b32_e64 v48, 0x80000000, v48, s33
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v25, s1, v25, 2
	v_add_lshl_u32 v27, s1, v27, 2
	v_add_lshl_u32 v28, s1, v28, 2
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v29, s1, v29, 2
	v_add_lshl_u32 v30, s1, v30, 2
	v_add_lshl_u32 v31, s1, v31, 2
	v_add_lshl_u32 v32, s1, v32, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s96
	v_cndmask_b32_e64 v27, 0x80000000, v27, s6
	v_cndmask_b32_e64 v28, 0x80000000, v28, s98
	v_cndmask_b32_e64 v29, 0x80000000, v29, s31
	v_cndmask_b32_e64 v30, 0x80000000, v30, s29
	v_cndmask_b32_e64 v31, 0x80000000, v31, s13
	v_cndmask_b32_e64 v32, 0x80000000, v32, s23
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v113, 0xff800000, v33, s97
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v114, 0xff800000, v34, s95
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v119, 0xff800000, v41, s9
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v121, 0xff800000, v36, s5
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v129, 0xff800000, v37, s12
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v130, 0xff800000, v38, s30
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v131, 0xff800000, v39, vcc_hi
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v36, 0xff800000, v40, s35
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v35, s1, v35, 2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s22
	s_clause 0x7
	buffer_load_b32 v49, v35, s[16:19], 0 offen
	buffer_load_b32 v42, v42, s[16:19], 0 offen
	buffer_load_b32 v43, v43, s[16:19], 0 offen
	buffer_load_b32 v44, v44, s[16:19], 0 offen
	buffer_load_b32 v45, v45, s[16:19], 0 offen
	buffer_load_b32 v46, v46, s[16:19], 0 offen
	buffer_load_b32 v47, v47, s[16:19], 0 offen
	buffer_load_b32 v48, v48, s[16:19], 0 offen
	v_add_lshl_u32 v35, s1, v50, 2
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[50:51], off, off offset:1088
	scratch_load_b64 v[51:52], off, off offset:1080
	scratch_load_b64 v[52:53], off, off offset:1072
	scratch_load_b64 v[53:54], off, off offset:1064
	scratch_load_b64 v[54:55], off, off offset:1056
	scratch_load_b64 v[55:56], off, off offset:1048
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v26, s1, v26, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v56, s1, v97, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s28
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s91, s97, s37
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v114
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v26, 0x80000000, v26, s10
	s_clause 0x7
	buffer_load_b32 v25, v25, s[16:19], 0 offen
	buffer_load_b32 v26, v26, s[16:19], 0 offen
	buffer_load_b32 v27, v27, s[16:19], 0 offen
	buffer_load_b32 v28, v28, s[16:19], 0 offen
	buffer_load_b32 v29, v29, s[16:19], 0 offen
	buffer_load_b32 v30, v30, s[16:19], 0 offen
	buffer_load_b32 v31, v31, s[16:19], 0 offen
	buffer_load_b32 v32, v32, s[16:19], 0 offen
	v_cndmask_b32_e64 v56, 0x80000000, v56, s103
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s92, s95, s37
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v119
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s93, s9, s37
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v121
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s95, s5, s37
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v129
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s75, s12, s37
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v130
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s76, s30, s37
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v131
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s77, vcc_hi, s37
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v40, 0xff800000, v49, s22
	v_cndmask_b32_e64 v132, 0xff800000, v42, s0
	v_cndmask_b32_e64 v133, 0xff800000, v43, s34
	v_cndmask_b32_e64 v134, 0xff800000, v44, s101
	v_cndmask_b32_e64 v135, 0xff800000, v45, s99
	v_cndmask_b32_e64 v136, 0xff800000, v46, s8
	v_cndmask_b32_e64 v137, 0xff800000, v47, s4
	v_cndmask_b32_e64 v37, 0xff800000, v48, s33
	v_add_lshl_u32 v50, s1, v50, 2
	v_add_lshl_u32 v51, s1, v51, 2
	v_add_lshl_u32 v52, s1, v52, 2
	v_add_lshl_u32 v53, s1, v53, 2
	v_add_lshl_u32 v54, s1, v54, 2
	v_add_lshl_u32 v55, s1, v55, 2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s36
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	v_cndmask_b32_e64 v52, 0x80000000, v52, s102
	v_cndmask_b32_e64 v53, 0x80000000, v53, s100
	v_cndmask_b32_e64 v54, 0x80000000, v54, s11
	v_cndmask_b32_e64 v55, 0x80000000, v55, s7
	s_clause 0x7
	buffer_load_b32 v97, v35, s[16:19], 0 offen
	buffer_load_b32 v50, v50, s[16:19], 0 offen
	buffer_load_b32 v51, v51, s[16:19], 0 offen
	buffer_load_b32 v52, v52, s[16:19], 0 offen
	buffer_load_b32 v53, v53, s[16:19], 0 offen
	buffer_load_b32 v54, v54, s[16:19], 0 offen
	buffer_load_b32 v55, v55, s[16:19], 0 offen
	buffer_load_b32 v56, v56, s[16:19], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v106, 0xff800000, v25, s96
	.loc	1 880 35                        ; attention.py:880:35
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v25, off, off offset:652
	scratch_load_b32 v146, off, off offset:700
	scratch_load_b32 v147, off, off offset:704
	scratch_load_b32 v148, off, off offset:708
	scratch_load_b32 v149, off, off offset:716
	scratch_load_b32 v150, off, off offset:720
	scratch_load_b32 v151, off, off offset:724
	scratch_load_b32 v152, off, off offset:728
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(22)
	v_cndmask_b32_e64 v107, 0xff800000, v26, s10
	s_waitcnt vmcnt(21)
	v_cndmask_b32_e64 v108, 0xff800000, v27, s6
	s_waitcnt vmcnt(20)
	v_cndmask_b32_e64 v109, 0xff800000, v28, s98
	s_waitcnt vmcnt(19)
	v_cndmask_b32_e64 v110, 0xff800000, v29, s31
	s_waitcnt vmcnt(18)
	v_cndmask_b32_e64 v111, 0xff800000, v30, s29
	s_waitcnt vmcnt(17)
	v_cndmask_b32_e64 v112, 0xff800000, v31, s13
	s_waitcnt vmcnt(16)
	v_cndmask_b32_e64 v35, 0xff800000, v32, s23
	v_readlane_b32 s1, v254, 11
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v106
	v_cmp_neq_f32_e64 s37, 0xff800000, v37
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s94, s96, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v107
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s74, s33, s37
	s_and_b32 s96, s10, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v108
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s97, s6, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v109
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s98, s98, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v110
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s79, s31, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v111
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s80, s29, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s81, s13, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v36
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s78, s35, s3
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v138, 0xff800000, v97, s28
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v139, 0xff800000, v50, s36
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v140, 0xff800000, v51, s2
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v141, 0xff800000, v52, s102
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v142, 0xff800000, v53, s100
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v143, 0xff800000, v54, s11
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v144, 0xff800000, v55, s7
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v145, 0xff800000, v56, s103
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(6)
	ds_store_2addr_b32 v146, v107, v114 offset1:32
	ds_store_2addr_b32 v146, v132, v139 offset0:64 offset1:96
	v_add_nc_u32_e32 v41, 0, v25
	ds_store_2addr_b32 v41, v106, v113 offset1:32
	ds_store_2addr_b32 v41, v40, v138 offset0:64 offset1:96
	s_waitcnt vmcnt(5)
	ds_store_2addr_b32 v147, v108, v119 offset1:32
	ds_store_2addr_b32 v147, v133, v140 offset0:64 offset1:96
	s_waitcnt vmcnt(4)
	ds_store_2addr_b32 v148, v109, v121 offset1:32
	ds_store_2addr_b32 v148, v134, v141 offset0:64 offset1:96
	s_waitcnt vmcnt(3)
	ds_store_2addr_b32 v149, v110, v129 offset1:32
	ds_store_2addr_b32 v149, v135, v142 offset0:64 offset1:96
	s_waitcnt vmcnt(2)
	ds_store_2addr_b32 v150, v111, v130 offset1:32
	ds_store_2addr_b32 v150, v136, v143 offset0:64 offset1:96
	s_waitcnt vmcnt(1)
	ds_store_2addr_b32 v151, v112, v131 offset1:32
	ds_store_2addr_b32 v151, v137, v144 offset0:64 offset1:96
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v152, v35, v36 offset1:32
	ds_store_2addr_b32 v152, v37, v145 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v25, off, off offset:712
	scratch_load_b32 v160, off, off offset:732
	scratch_load_b32 v161, off, off offset:736
	scratch_load_b32 v162, off, off offset:740
	scratch_load_b32 v163, off, off offset:744
	scratch_load_b32 v164, off, off offset:748
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v138
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s74
	s_and_b32 s82, s28, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v139
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s84, s36, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v140
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s85, s2, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v141
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s87, s102, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v142
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s67, s100, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v143
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s68, s11, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
	v_readlane_b32 s11, v254, 28
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s69, s7, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v145
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s70, s103, vcc_lo
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b32 v[38:39], v160 offset1:2
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b32 v[50:51], v161 offset1:2
	v_add_nc_u32_e32 v25, 0, v25
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b32 v[52:53], v162 offset1:2
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b32 v[54:55], v163 offset1:2
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v27, 0x3fb8aa3b, v38
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v28, 0x3fb8aa3b, v50
	ds_load_2addr_stride64_b32 v[32:33], v25 offset1:2
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v29, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v30, 0x3fb8aa3b, v54
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v27, s1, v90 :: v_dual_fmac_f32 v28, s1, v91
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v52, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v29, s1, v92 :: v_dual_fmac_f32 v30, s1, v93
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s82
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v53, s1, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v38.l, 8, v38.l
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v51, s1, v75 :: v_dual_mul_f32 v26, 0x3fb8aa3b, v32
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v26, s1, v89
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[89:90], v164 offset1:2
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v33, s1, v73 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v90
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v31, 0x3fb8aa3b, v89
	scratch_load_b32 v89, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[91:92], v89 offset1:2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v50, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v92
	v_mul_f32_e32 v32, 0x3fb8aa3b, v91
	scratch_load_b32 v91, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v31, s1, v94
	v_fmac_f32_e32 v50, s1, v74
	v_dual_fmac_f32 v52, s1, v76 :: v_dual_fmac_f32 v55, s1, v79
	v_fmac_f32_e32 v32, s1, v95
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[93:94], v91 offset1:2
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v34, 0x3fb8aa3b, v93
	scratch_load_b32 v93, off, off offset:760 ; 4-byte Folded Reload
	v_mul_f32_e32 v56, 0x3fb8aa3b, v94
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, s1, v96
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[95:96], v93 offset1:2
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v54, s1, v78 :: v_dual_mul_f32 v73, 0x3fb8aa3b, v96
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v42, 0x3fb8aa3b, v95
	scratch_load_b32 v95, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v73, s1, v65
	v_fmac_f32_e32 v42, s1, v81
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[97:98], v95 offset1:2
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v43, 0x3fb8aa3b, v97
	scratch_load_b32 v97, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v43, s1, v82
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[81:82], v97 offset1:2
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v56, s1, v80 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v82
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v81
	scratch_load_b32 v81, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v75, s1, v67
	v_fmac_f32_e32 v44, s1, v83
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[99:100], v81 offset1:2
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v45, 0x3fb8aa3b, v99
	scratch_load_b32 v99, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, s1, v84
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[83:84], v99 offset1:2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v74, 0x3fb8aa3b, v98 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v84
	v_mul_f32_e32 v46, 0x3fb8aa3b, v83
	scratch_load_b32 v83, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v74, s1, v66 :: v_dual_fmac_f32 v77, s1, v69
	v_fmac_f32_e32 v46, s1, v85
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[101:102], v83 offset1:2
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v47, 0x3fb8aa3b, v101
	scratch_load_b32 v101, off, off offset:784 ; 4-byte Folded Reload
	v_mul_f32_e32 v78, 0x3fb8aa3b, v102
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, s1, v86
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v78, s1, v70
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[85:86], v101 offset1:2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v76, 0x3fb8aa3b, v100 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v86
	v_mul_f32_e32 v48, 0x3fb8aa3b, v85
	scratch_load_b32 v85, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v76, s1, v68 :: v_dual_fmac_f32 v79, s1, v71
	v_fmac_f32_e32 v48, s1, v87
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[103:104], v85 offset1:2
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v103 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v49, s1, v88
	v_fmac_f32_e32 v80, s1, v72
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v40
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s86, s22, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v132
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v39, 0, 1, s86
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s22, s26
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s88, s0, s1
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v40.h, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s91
	v_cndmask_b32_e64 v39, 0, 1, s94
	s_and_b32 s89, s34, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v134
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v38.l, 8, v38.l
	s_and_b32 s90, s101, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v40.l, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s84
	v_cndmask_b32_e64 v39, 0, 1, s88
	s_and_b32 s71, s99, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v136
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v38.l, 8, v38.l
	s_and_b32 s72, s8, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v137
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v65.h, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s92
	v_cndmask_b32_e64 v39, 0, 1, s96
	s_and_b32 s73, s4, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s70
	v_lshlrev_b16 v38.l, 8, v38.l
	s_and_b32 s83, s23, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v35.l, 8, v35.l
	v_or_b16 v65.l, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s85
	v_cndmask_b32_e64 v39, 0, 1, s89
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s23, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v35.h, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s78
	v_lshlrev_b16 v38.l, 8, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v35.l, v36.l
	v_cndmask_b32_e64 v36, 0, 1, s83
	v_or_b16 v66.h, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s93
	v_cndmask_b32_e64 v39, 0, 1, s97
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v35.l, v36.l, v35.l
	scratch_load_b32 v36, off, off offset:656 ; 4-byte Folded Reload
	v_or_b16 v66.l, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s87
	v_cndmask_b32_e64 v39, 0, 1, s90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v67.h, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s95
	v_cndmask_b32_e64 v39, 0, 1, s98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v67.l, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s67
	v_cndmask_b32_e64 v39, 0, 1, s71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v68.h, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s75
	v_cndmask_b32_e64 v39, 0, 1, s79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v68.l, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s68
	v_cndmask_b32_e64 v39, 0, 1, s72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v69.h, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s76
	v_cndmask_b32_e64 v39, 0, 1, s80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v69.l, v39.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s69
	v_cndmask_b32_e64 v39, 0, 1, s73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v38.h, v39.l, v38.l
	v_cndmask_b32_e64 v39, 0, 1, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v39.l
	v_cndmask_b32_e64 v39, 0, 1, s81
	v_lshlrev_b16 v38.l, 8, v38.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v38.l, v39.l, v38.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, 0, v36
	ds_store_b32 v36, v40
	scratch_load_b32 v36, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v65
	scratch_load_b32 v36, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v66
	scratch_load_b32 v36, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v67
	scratch_load_b32 v36, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v68
	scratch_load_b32 v36, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v69
	scratch_load_b32 v36, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v38
	scratch_load_b32 v36, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v36, off, off offset:824
	scratch_load_b32 v37, off, off offset:828
	scratch_load_b32 v39, off, off offset:832
	scratch_load_b32 v66, off, off offset:844
	scratch_load_b32 v65, off, off offset:840
	scratch_load_b32 v40, off, off offset:836
	scratch_load_b32 v69, off, off offset:820
	scratch_load_b32 v68, off, off offset:860
	scratch_load_b32 v70, off, off offset:872
	scratch_load_b32 v67, off, off offset:856
	scratch_load_b32 v71, off, off offset:876
	s_waitcnt vmcnt(5)
	ds_load_u8_d16 v38, v40 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v38, v39 offset:128
	ds_load_u8_d16 v35, v36
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v37 offset:128
	ds_load_u8_d16 v36, v36 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s59, 1, v35.l
	ds_load_u8_d16 v35, v37
	ds_load_u8_d16_hi v37, v65 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v37, v66 offset:128
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s63, 1, v35.l
	ds_load_u8_d16 v35, v39
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v39, v68 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s61, 1, v35.l
	ds_load_u8_d16 v35, v40
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	v_cmp_eq_u16_e64 s62, 1, v35.l
	ds_load_u8_d16 v35, v65
	scratch_load_b32 v65, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s60, 1, v35.l
	ds_load_u8_d16 v35, v66
	scratch_load_b32 v66, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_u8_d16_hi v39, v67 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v40, v66 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v40, v65 offset:128
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s64, 1, v35.l
	ds_load_u8_d16 v35, v65
	ds_load_u8_d16_hi v65, v70 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s64
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s50, 1, v35.l
	ds_load_u8_d16 v35, v66
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	v_cmp_eq_u16_e64 s53, 1, v35.l
	ds_load_u8_d16 v35, v67
	scratch_load_b32 v67, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v35.l
	ds_load_u8_d16 v35, v68
	scratch_load_b32 v68, off, off offset:868 ; 4-byte Folded Reload
	ds_load_u8_d16 v65, v71 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v66, v68 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v67 offset:128
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s57, 1, v35.l
	ds_load_u8_d16 v35, v67
	scratch_load_b32 v67, off, off offset:512 ; 4-byte Folded Reload
	ds_load_u8_d16_hi v36, v69 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s52, 1, v35.l
	ds_load_u8_d16 v35, v68
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	v_cmp_eq_u16_e64 s55, 1, v35.l
	ds_load_u8_d16 v35, v70
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s48, 1, v35.l
	ds_load_u8_d16 v35, v71
	s_waitcnt lgkmcnt(0)
	v_and_b16 v35.l, 1, v35.l
	v_cmp_eq_u16_e64 s58, 1, v35.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, 0, v67
	ds_load_u8_d16 v35, v68 offset:128
	ds_load_u8_d16 v67, v69
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v68
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v35.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s54, 1, v35.l
	v_and_b16 v35.l, 1, v36.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v250, 0xff800000, v33, s54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s56, 1, v35.l
	v_and_b16 v35.l, 1, v36.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v31, s62
	v_cndmask_b32_e64 v33, 0xff800000, v32, s60
	v_cndmask_b32_e64 v31, 0xff800000, v42, s50
	v_cndmask_b32_e64 v174, 0xff800000, v50, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s49, 1, v35.l
	v_and_b16 v35.l, 1, v35.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v43, s53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v251, 0xff800000, v51, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s51, 1, v35.l
	v_and_b16 v35.l, 1, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v52, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s45, 1, v35.l
	v_and_b16 v35.l, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v29, s63
	v_cndmask_b32_e64 v29, 0xff800000, v44, s46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v248, 0xff800000, v53, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s47, 1, v35.l
	v_and_b16 v35.l, 1, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v249, 0xff800000, v54, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v35.l
	v_and_b16 v35.l, 1, v37.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v28, s59
	v_cndmask_b32_e64 v28, 0xff800000, v47, s55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v246, 0xff800000, v55, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v35.l
	v_and_b16 v35.l, 1, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v247, 0xff800000, v56, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v35.l
	v_and_b16 v35.l, 1, v40.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v244, 0xff800000, v73, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v35.l
	v_and_b16 v35.l, 1, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v245, 0xff800000, v74, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v35.l
	v_and_b16 v35.l, 1, v39.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v242, 0xff800000, v75, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v35.l
	v_and_b16 v35.l, 1, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v243, 0xff800000, v76, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v35.l
	v_and_b16 v35.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v240, 0xff800000, v77, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v35.l
	v_and_b16 v35.l, 1, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v241, 0xff800000, v78, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v35.l
	v_and_b16 v35.l, 1, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v238, 0xff800000, v79, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s1, 1, v35.l
	v_and_b16 v35.l, 1, v67.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v239, 0xff800000, v80, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s65, 1, v35.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v30, s61
	v_cndmask_b32_e64 v30, 0xff800000, v45, s57
	v_cndmask_b32_e64 v39, 0xff800000, v26, s65
	v_cndmask_b32_e64 v26, 0xff800000, v49, s58
	ds_store_2addr_stride64_b32 v25, v39, v250 offset1:2
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v25.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s66, 1, v25.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v25, 0xff800000, v48, s48
	v_cndmask_b32_e64 v40, 0xff800000, v27, s66
	v_cndmask_b32_e64 v27, 0xff800000, v46, s52
	ds_store_2addr_stride64_b32 v160, v40, v174 offset1:2
	ds_store_2addr_stride64_b32 v161, v37, v251 offset1:2
	ds_store_2addr_stride64_b32 v162, v38, v106 offset1:2
	ds_store_2addr_stride64_b32 v163, v35, v248 offset1:2
	ds_store_2addr_stride64_b32 v164, v36, v249 offset1:2
	ds_store_2addr_stride64_b32 v89, v33, v246 offset1:2
	ds_store_2addr_stride64_b32 v91, v34, v247 offset1:2
	ds_store_2addr_stride64_b32 v93, v31, v244 offset1:2
	ds_store_2addr_stride64_b32 v95, v32, v245 offset1:2
	ds_store_2addr_stride64_b32 v97, v29, v242 offset1:2
	ds_store_2addr_stride64_b32 v81, v30, v243 offset1:2
	ds_store_2addr_stride64_b32 v99, v27, v240 offset1:2
	ds_store_2addr_stride64_b32 v83, v28, v241 offset1:2
	ds_store_2addr_stride64_b32 v101, v25, v238 offset1:2
	ds_store_2addr_stride64_b32 v85, v26, v239 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[77:78], v41 offset1:32
	ds_load_2addr_b32 v[79:80], v146 offset1:32
	ds_load_2addr_b32 v[81:82], v147 offset1:32
	ds_load_2addr_b32 v[83:84], v148 offset1:32
	ds_load_2addr_b32 v[170:171], v41 offset0:64 offset1:96
	ds_load_2addr_b32 v[168:169], v146 offset0:64 offset1:96
	ds_load_2addr_b32 v[166:167], v147 offset0:64 offset1:96
	ds_load_2addr_b32 v[164:165], v148 offset0:64 offset1:96
	ds_load_2addr_b32 v[162:163], v149 offset1:32
	ds_load_2addr_b32 v[103:104], v149 offset0:64 offset1:96
	ds_load_2addr_b32 v[160:161], v150 offset1:32
	ds_load_2addr_b32 v[101:102], v150 offset0:64 offset1:96
	ds_load_2addr_b32 v[87:88], v151 offset1:32
	ds_load_2addr_b32 v[99:100], v151 offset0:64 offset1:96
	ds_load_2addr_b32 v[85:86], v152 offset1:32
	ds_load_2addr_b32 v[97:98], v152 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v41, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v77, v77 :: v_dual_max_f32 v44, v79, v79
	v_dual_max_f32 v45, v81, v81 :: v_dual_max_f32 v46, v83, v83
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v47, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v43, v42
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v42, v43
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v43, v44, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v44
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v44
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v43, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v44, v42, -1, -1 op_sel:[1,0]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v42, v44
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s0, v44, 31
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v78, v78
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v43, v42
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v45, v43
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v45, v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v45, 31
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v80, v80
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v46, v42
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v42, v42, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v42, v42, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v42, v42, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v43, -1, -1 op_sel:[1,0]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v46
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v43, 31
	v_mov_b32_dpp v43, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v43, v44, v43
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v44, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v45
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v45
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v45
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v45
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s5, v43, 31
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v43, s2 :: v_dual_max_f32 v44, v44, v45
	v_mov_b32_dpp v45, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v42, v42, v46
	v_max_f32_e32 v46, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v45, v46, v45
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v46, v47, v46
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	v_max_f32_e32 v45, v45, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s4, v42, 31
	v_dual_mov_b32 v42, s0 :: v_dual_max_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v47
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v47
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	v_max_f32_e32 v46, v46, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v47
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s6, v44, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v44, s3 :: v_dual_max_f32 v47, v47, v47
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v47
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v47, v45, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	v_max_f32_e32 v45, v45, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v47, v46, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v45, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v45, s4 :: v_dual_mov_b32 v48, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v46, v46, v47 :: v_dual_mov_b32 v47, s6
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v46, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v46, s5 :: v_dual_mov_b32 v49, s8
	ds_store_b128 v252, v[42:45]
	ds_store_b128 v252, v[46:49] offset:16
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v170, v170 :: v_dual_max_f32 v43, v168, v168
	v_dual_max_f32 v44, v166, v166 :: v_dual_max_f32 v45, v164, v164
	v_max_f32_e32 v46, v165, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v42, v41
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
	v_max_f32_e32 v41, v41, v42
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
	v_max_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v41, v41, v43
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v41, v41, v43
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v41, v41, v43
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v42, v43
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v43, v44, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v44, v42, -1, -1 op_sel:[1,0]
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v42, v42, v44
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v42, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v42, v171, v171
	v_max_f32_e32 v44, v45, v44
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v44, v44, v45
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s0, v41, 31
	v_mov_b32_dpp v41, v171 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v45, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v42, v41
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v45
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v43, 31
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v169, v169
	v_max_f32_e32 v42, v43, v42
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v41, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v41, s0 :: v_dual_max_f32 v42, v42, v43
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v43, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s6, v42, 31
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v43, v43, v43 :: v_dual_mov_b32 v42, s2
	v_dual_max_f32 v44, v44, v45 :: v_dual_max_f32 v45, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v44, 31
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v45, v43
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v44, s4 :: v_dual_max_f32 v45, v45, v45
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v46, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v43, -1, -1 op_sel:[1,0]
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, v43, v46
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v45, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s7, v43, 31
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v46, v46, v46 :: v_dual_mov_b32 v43, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, s7
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v45, v45, v46 :: v_dual_mov_b32 v46, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v45, 31
	v_dual_mov_b32 v45, s5 :: v_dual_mov_b32 v48, s8
	ds_store_b128 v252, v[41:44] offset:32
	ds_store_b128 v252, v[45:48] offset:48
	v_mov_b32_dpp v41, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v162, v162 :: v_dual_max_f32 v43, v160, v160
	v_max_f32_e32 v46, v86, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v44, v87, v87 :: v_dual_max_f32 v41, v41, v41
	v_max_f32_e32 v45, v85, v85
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v228
	ds_load_b128 v[73:76], v228 offset:16
	ds_load_b128 v[69:72], v228 offset:32
	ds_load_b128 v[65:68], v228 offset:48
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v42, v41
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v41, v41, v42
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v75, v75
	v_dual_max_f32 v53, v74, v74 :: v_dual_mov_b32 v54, v75
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v43, v42
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v41, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v44, v43
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v44, v42, -1, -1 op_sel:[1,0]
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v42, v42, v44
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v42, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v42, v163, v163
	v_max_f32_e32 v44, v45, v44
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v42, v41
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v45
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	v_readlane_b32 s3, v43, 31
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v42, v43, v42
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v45
	v_max_f32_e32 v45, v88, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v43, v43, v43
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v44, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v43
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v44, s4 :: v_dual_max_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v41, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v41, s0 :: v_dual_max_f32 v42, v42, v43
	v_mov_b32_dpp v43, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v42, 31
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v43, v43 :: v_dual_mov_b32 v42, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v45, v43
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v46, v45
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v46
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v46
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v46
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v45, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v43, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v46, v46, v46 :: v_dual_mov_b32 v43, s3
.Ltmp255:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v45, v45, v46 :: v_dual_mov_b32 v46, s6
.Ltmp257:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v45, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v45, s5 :: v_dual_mov_b32 v48, s8
	ds_store_b128 v252, v[41:44]
	ds_store_b128 v252, v[45:48] offset:16
	v_mov_b32_dpp v41, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v103, v103 :: v_dual_max_f32 v43, v101, v101
	v_dual_max_f32 v44, v99, v99 :: v_dual_max_f32 v45, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v46, v98, v98
	v_max_f32_e32 v41, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v41, v41, v42
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v43, v42
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v41, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v41, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v44, v43
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v44, v42, -1, -1 op_sel:[1,0]
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v42, v42, v44
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v42, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v42, v104, v104
	v_max_f32_e32 v44, v45, v44
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v42, v41
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v45
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v44, v44, v45
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	v_max_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	v_readlane_b32 s3, v43, 31
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v42, v43, v42
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v45
	v_max_f32_e32 v45, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v43, v43, v43
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v44, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v43
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v44, s4 :: v_dual_max_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v42, v43
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v41, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v41, s0 :: v_dual_max_f32 v42, v42, v43
	v_mov_b32_dpp v43, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v42, 31
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v43, v43 :: v_dual_mov_b32 v42, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v45, v43
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v46, v45
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v46
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v46
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v45, v45, v46
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v46, v46
	v_max_f32_e32 v43, v43, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp337:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v45, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v43, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp338:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v46, v46, v46 :: v_dual_mov_b32 v43, s3
.Ltmp339:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp340:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v45, v45, v46 :: v_dual_mov_b32 v46, s6
.Ltmp341:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v45, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v45, s5 :: v_dual_mov_b32 v48, s8
	ds_store_b128 v252, v[41:44] offset:32
	ds_store_b128 v252, v[45:48] offset:48
	v_mov_b32_e32 v47, v49
	v_mov_b32_e32 v45, v50
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v52, v52
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v49, v49
.Ltmp345:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v50, v50
	v_max_f32_e32 v44, v52, v52
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v42, v51
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v47, v47
	v_max_f32_e32 v45, v45, v45
	v_dual_max_f32 v43, v51, v51 :: v_dual_mov_b32 v50, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp349:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp350:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v48, v48, v47 :: v_dual_max_f32 v47, v46, v45
	v_max_f32_e32 v45, v41, v44
.Ltmp351:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v41, off, off          ; 4-byte Folded Reload
.Ltmp352:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp353:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v74
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp354:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v49, v76, v76 :: v_dual_max_f32 v46, v43, v42
.Ltmp355:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp356:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v56, v76, v76 :: v_dual_max_f32 v41, v41, v41
.Ltmp357:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v41, v48
	scratch_store_b32 off, v41, off         ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v77, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp358:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp359:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v42, v41, -1, -1 op_sel:[1,0]
.Ltmp360:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp361:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v42, off, off offset:4 ; 4-byte Folded Reload
.Ltmp362:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v41, 31
.Ltmp363:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v50, v50 :: v_dual_max_f32 v50, v213, v213
.Ltmp364:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v42, v47
	scratch_store_b32 off, v42, off offset:4 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v79, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s96
.Ltmp365:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp366:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v43, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp367:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp368:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v43, off, off offset:8 ; 4-byte Folded Reload
.Ltmp369:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v42, 31
.Ltmp370:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v43, v43, v46
	scratch_store_b32 off, v43, off offset:8 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v81, v43
.Ltmp371:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v81, v66
.Ltmp372:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp373:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp374:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp375:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp376:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp377:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v44, v43, -1, -1 op_sel:[1,0]
.Ltmp378:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v43, v43, v44 :: v_dual_max_f32 v44, v234, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp379:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v43, 31
.Ltmp380:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v234, v44, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v83, v234
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s98
.Ltmp381:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp382:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v73, v44, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp383:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v44, v73
.Ltmp384:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v44, v51, v41 :: v_dual_max_f32 v41, v52, v52
.Ltmp385:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v51, v221, v221 :: v_dual_max_f32 v52, v212, v212
.Ltmp386:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v73, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp387:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v53, v41
	v_max_f32_e32 v41, v54, v54
.Ltmp388:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v213, v50, v43 :: v_dual_max_f32 v42, v55, v41
.Ltmp389:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v49, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp390:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v49, v219, v219 :: v_dual_sub_f32 v50, v80, v213
	v_dual_max_f32 v212, v52, v41 :: v_dual_max_f32 v219, v49, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v52, v84, v212 :: v_dual_sub_f32 v49, v78, v219
.Ltmp391:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	ds_load_b128 v[73:76], v228
	ds_load_b128 v[77:80], v228 offset:16
	ds_load_b128 v[93:96], v228 offset:32
	ds_load_b128 v[89:92], v228 offset:48
.Ltmp392:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v221, v51, v42
.Ltmp393:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp394:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v49, v49
.Ltmp395:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
.Ltmp396:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v82, v221
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s92
.Ltmp397:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v82, v67
.Ltmp398:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp399:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
.Ltmp400:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp401:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s95
	v_cndmask_b32_e64 v49, 0, v49, s91
.Ltmp402:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp403:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp404:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp405:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp406:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp407:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v49, v49, v53
.Ltmp408:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s5, v49, 31
.Ltmp409:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v53
.Ltmp410:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v51, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v49, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s6, v50, 31
.Ltmp411:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v53
.Ltmp412:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v50, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v54, s6
	v_readlane_b32 s7, v51, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp413:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_mov_b32 v51, s3
.Ltmp414:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v53, s5
	v_mov_b32_e32 v55, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s8, v52, 31
	v_mov_b32_e32 v52, s4
	v_mov_b32_e32 v56, s8
	ds_store_b128 v252, v[49:52]
	ds_store_b128 v252, v[53:56] offset:16
.Ltmp415:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v69
	v_dual_mov_b32 v52, v70 :: v_dual_max_f32 v49, v72, v72
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp416:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp417:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp418:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v53, v70, v70 :: v_dual_max_f32 v70, v72, v72
.Ltmp419:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v54, v71
.Ltmp420:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v69, v71, v71
.Ltmp421:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v72, v65
.Ltmp422:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp423:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp424:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v51, v50
	v_max_f32_e32 v50, v52, v52
.Ltmp425:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp426:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v68, v68
.Ltmp427:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp428:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v53, v50
	v_max_f32_e32 v53, v49, v70
.Ltmp429:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v49, v197, v197 :: v_dual_max_f32 v50, v54, v54
.Ltmp430:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp431:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v197, v49, v56
.Ltmp432:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v54, v69, v50 :: v_dual_sub_f32 v49, v170, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp433:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp434:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp435:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v50, v49, -1, -1 op_sel:[1,0]
.Ltmp436:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v50
.Ltmp437:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v50, v125, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp438:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v49, 31
.Ltmp439:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v125, v50, v55
.Ltmp440:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp441:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v168, v125
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s88
.Ltmp442:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp443:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp444:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v51
.Ltmp445:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v51, v198, v198
.Ltmp446:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v50, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp447:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v198, v51, v54
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v166, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp448:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp449:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
.Ltmp450:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp451:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v199, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp452:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v51, 31
.Ltmp453:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v199, v52, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v164, v199
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s90
.Ltmp454:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp455:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v52, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp456:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v52, v69
.Ltmp457:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v65, v49
	v_max_f32_e32 v49, v81, v81
.Ltmp458:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v202, v202
.Ltmp459:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v69, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp460:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v66, v49
	v_dual_max_f32 v49, v82, v82 :: v_dual_max_f32 v202, v65, v52
.Ltmp461:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v204, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp462:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v67, v49
.Ltmp463:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v65, v171, v202 :: v_dual_max_f32 v204, v66, v51
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v105, v105
.Ltmp464:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v49, v71, v68 :: v_dual_max_f32 v68, v225, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp465:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v66, v169, v204 :: v_dual_max_f32 v105, v67, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v225, v68, v49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v167, v105
	v_sub_f32_e32 v68, v165, v225
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s82
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v68, v68
.Ltmp466:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp467:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s84
.Ltmp468:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp469:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v68, 0, v68, s87
.Ltmp470:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp471:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp472:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v65, v65, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp473:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
.Ltmp474:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp475:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v65, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp476:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp477:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v65, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v69, s5
	v_readlane_b32 s6, v66, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp478:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp479:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v66, s2
	v_readlane_b32 s7, v67, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp480:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v68, v68, v70 :: v_dual_mov_b32 v67, s3
.Ltmp481:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v70, s6 :: v_dual_mov_b32 v71, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s8, v68, 31
	v_mov_b32_e32 v68, s4
	v_mov_b32_e32 v72, s8
	ds_store_b128 v252, v[65:68] offset:32
	ds_store_b128 v252, v[69:72] offset:48
.Ltmp482:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v73 :: v_dual_max_f32 v65, v76, v76
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp483:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v73, v73 :: v_dual_mov_b32 v68, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp484:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v70, v75
.Ltmp485:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v72, v76, v76 :: v_dual_max_f32 v69, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp486:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp487:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp488:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp489:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v181, v65, v72
.Ltmp490:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v235, v235
.Ltmp491:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v75, v75
	v_max_f32_e32 v184, v67, v66
	v_max_f32_e32 v66, v68, v68
.Ltmp492:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v74, v77
	v_dual_mov_b32 v76, v78 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp493:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v235, v65, v184
.Ltmp494:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v183, v69, v66
	v_max_f32_e32 v66, v70, v70
.Ltmp495:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp496:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v77, v78, v78
.Ltmp497:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v65, v162, v235 :: v_dual_mov_b32 v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp498:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v182, v71, v66
.Ltmp499:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp500:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v79, v79, v79
.Ltmp501:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
.Ltmp502:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp503:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v73, v80, v80
.Ltmp504:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp505:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp506:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v80, v80, v80
.Ltmp507:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp508:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v177, v73, v80
.Ltmp509:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp510:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp511:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v66 :: v_dual_max_f32 v66, v236, v236
.Ltmp512:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp513:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v236, v66, v183
.Ltmp514:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v74, v74 :: v_dual_sub_f32 v66, v160, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v180, v75, v65 :: v_dual_max_f32 v65, v76, v76
.Ltmp515:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp516:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v179, v77, v65
	v_max_f32_e32 v65, v78, v78
	v_max_f32_e32 v178, v79, v65
.Ltmp517:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v211, v211
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s80
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v211, v65, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp518:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp519:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v163, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp520:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp521:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp522:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp523:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s75
.Ltmp524:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp525:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v253, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp526:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v66, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp527:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v253, v67, v182
	v_max_f32_e32 v66, v214, v214
.Ltmp528:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp529:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v67, v87, v253 :: v_dual_max_f32 v214, v66, v179
.Ltmp530:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp531:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v161, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp532:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
.Ltmp533:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp534:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v70
.Ltmp535:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp536:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v65, 31
.Ltmp537:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp538:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s76
.Ltmp539:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp540:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp541:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v67, v67, v68
.Ltmp542:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v220, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp543:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	v_readlane_b32 s3, v67, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp544:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v220, v68, v181 :: v_dual_max_f32 v67, v187, v187
.Ltmp545:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp546:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v85, v220 :: v_dual_max_f32 v187, v67, v178
.Ltmp547:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v66, 31
	v_mov_b32_e32 v66, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp548:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v88, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp549:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp550:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp551:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp552:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp553:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v68, v68, v69
.Ltmp554:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v196, v196
.Ltmp555:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v68, 31
.Ltmp556:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v196, v69, v177 :: v_dual_add_f32 v67, v67, v70
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp557:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v68, s4 :: v_dual_sub_f32 v69, v86, v196
	ds_load_b128 v[85:88], v228
	ds_load_b128 v[81:84], v228 offset:16
	ds_load_b128 v[77:80], v228 offset:32
	ds_load_b128 v[73:76], v228 offset:48
	v_readlane_b32 s7, v67, 31
	v_mov_b32_e32 v65, s0
	v_mov_b32_e32 v67, s3
.Ltmp558:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
.Ltmp559:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v71, s7
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp560:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s78
.Ltmp561:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp562:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp563:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, s6
.Ltmp564:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v69, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v69, s5 :: v_dual_mov_b32 v72, s8
	ds_store_b128 v252, v[65:68]
	ds_store_b128 v252, v[69:72] offset:16
.Ltmp565:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v93 :: v_dual_max_f32 v65, v96, v96
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp566:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v93, v93 :: v_dual_mov_b32 v68, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp567:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v70, v95
.Ltmp568:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v72, v96, v96 :: v_dual_max_f32 v69, v94, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp569:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp570:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp571:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp572:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v190, v65, v72
.Ltmp573:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v200, v200
.Ltmp574:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v95, v95
	v_dual_max_f32 v121, v67, v66 :: v_dual_max_f32 v66, v68, v68
.Ltmp575:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v94, v89 :: v_dual_mov_b32 v95, v90
.Ltmp576:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v89, v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp577:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v200, v65, v121
.Ltmp578:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v119, v69, v66
	v_max_f32_e32 v66, v70, v70
.Ltmp579:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v96, v91
.Ltmp580:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v103, v200
.Ltmp581:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp582:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v191, v71, v66
	v_max_f32_e32 v90, v90, v90
.Ltmp583:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp584:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
.Ltmp585:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v93, v92, v92
.Ltmp586:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp587:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v92, v92, v92
.Ltmp588:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp589:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v185, v93, v92
.Ltmp590:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp591:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp592:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v66 :: v_dual_max_f32 v66, v127, v127
.Ltmp593:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp594:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v127, v66, v119
.Ltmp595:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v94, v94 :: v_dual_sub_f32 v66, v101, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v189, v89, v65
	v_max_f32_e32 v65, v95, v95
.Ltmp596:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp597:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v188, v90, v65 :: v_dual_max_f32 v65, v96, v96
	v_max_f32_e32 v186, v91, v65
.Ltmp598:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v115, v115
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s72
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v115, v65, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp599:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp600:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v104, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp601:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp602:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp603:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp604:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s67
.Ltmp605:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp606:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v157, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp607:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v66, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp608:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v157, v67, v191 :: v_dual_max_f32 v66, v116, v116
.Ltmp609:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp610:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v67, v99, v157 :: v_dual_max_f32 v116, v66, v188
.Ltmp611:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp612:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v102, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp613:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
.Ltmp614:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp615:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v70
.Ltmp616:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp617:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v65, 31
	v_mov_b32_e32 v65, s0
.Ltmp618:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp619:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s68
	v_readlane_b32 s0, v254, 29
.Ltmp620:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp621:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp622:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v67, v67, v68
.Ltmp623:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v159, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp624:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	v_readlane_b32 s3, v67, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp625:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v159, v68, v190
	v_dual_max_f32 v67, v117, v117 :: v_dual_add_f32 v66, v66, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v97, v159 :: v_dual_max_f32 v117, v67, v186
.Ltmp626:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v66, 31
	v_mov_b32_e32 v66, s2
	v_readlane_b32 s2, v254, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp627:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v100, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s74
.Ltmp628:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp629:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s69
.Ltmp630:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp631:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp632:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v68, v68, v69 :: v_dual_max_f32 v69, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp633:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v68, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp634:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v118, v69, v185 :: v_dual_add_f32 v67, v67, v70
.Ltmp635:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v68, s4 :: v_dual_sub_f32 v69, v98, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_readlane_b32 s7, v67, 31
	v_mov_b32_e32 v67, s3
	v_readlane_b32 s4, v254, 12
.Ltmp636:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp637:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v71, s7
.Ltmp638:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp639:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp640:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
.Ltmp641:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp642:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v69, 31
	v_dual_mov_b32 v69, s5 :: v_dual_mov_b32 v72, s8
	ds_store_b128 v252, v[65:68] offset:32
	ds_store_b128 v252, v[69:72] offset:48
.Ltmp643:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v128
.Ltmp644:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp645:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s87, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 1, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s87
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s67, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 2, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s67, s4, s67
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s88, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 3, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s81, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 8, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s81, s4, s81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s89, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 9, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s70, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 10, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s70, s4, s70
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s90, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 11, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s75, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 16, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s75, s4, s75
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s91, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 17, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 18, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s92, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 19, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s68, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 24, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s93, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 25, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s69, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 26, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s94, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 27, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s74, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 32, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s95, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 33, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s71, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 34, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s96, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 35, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s72, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 40, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s97, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 41, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s73, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 42, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s85, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 43, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s85, s4, s85
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s76, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 48, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s86, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 49, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s77, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 50, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s83, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 51, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s83, s4, s83
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s78, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 56, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s84, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 57, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s79, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 58, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s82, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 59, v128
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s82, s4, s82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s104, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s104, s104, 64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s80, s15, v65
	scratch_load_b64 v[65:66], off, off offset:1248 ; 8-byte Folded Reload
.Ltmp646:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[67:68], null, s0, s2, v[65:66]
.Ltmp647:
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v254, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v66, v67, s0, 1
	v_readlane_b32 s0, v254, 17
	v_lshlrev_b32_e32 v65, 1, v67
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s89
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v254, 18
	v_cndmask_b32_e64 v68, 0x80000000, v68, s87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s90
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s87
	s_clause 0x1
	buffer_load_u16 v160, v68, s[20:23], 0 offen
	buffer_load_u16 v161, v69, s[20:23], 0 offen
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	s_mul_i32 s0, s2, 24
	v_cndmask_b32_e64 v68, 0x80000000, v68, s87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s92
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s87
	s_clause 0x1
	buffer_load_u16 v162, v68, s[20:23], 0 offen
	buffer_load_u16 v163, v69, s[20:23], 0 offen
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 26
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	v_readlane_b32 s0, v254, 19
	v_cndmask_b32_e64 v68, 0x80000000, v68, s87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s94
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s87
	s_clause 0x1
	buffer_load_u16 v164, v68, s[20:23], 0 offen
	buffer_load_u16 v165, v69, s[20:23], 0 offen
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 34
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	s_mul_i32 s0, s2, 40
	v_cndmask_b32_e64 v68, 0x80000000, v68, s87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s96
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s87
	s_clause 0x1
	buffer_load_u16 v166, v68, s[20:23], 0 offen
	buffer_load_u16 v167, v69, s[20:23], 0 offen
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s4, s97
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	s_mul_i32 s0, s2, 48
	v_cndmask_b32_e64 v68, 0x80000000, v68, s87
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s85
	s_clause 0x1
	buffer_load_u16 v168, v68, s[20:23], 0 offen
	buffer_load_u16 v169, v69, s[20:23], 0 offen
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s85, s4, s86
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	s_mul_i32 s0, s2, 56
	v_cndmask_b32_e64 v68, 0x80000000, v68, s85
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s83
	s_clause 0x1
	buffer_load_u16 v170, v68, s[20:23], 0 offen
	buffer_load_u16 v171, v69, s[20:23], 0 offen
	v_add_lshl_u32 v68, v67, s0, 1
	s_mul_i32 s0, s2, 58
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s83, s4, s84
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s0, 1
	s_mul_i32 s0, s2, 3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s83
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s82
	s_clause 0x1
	buffer_load_u16 v172, v68, s[20:23], 0 offen
	buffer_load_u16 v173, v69, s[20:23], 0 offen
	v_add_lshl_u32 v69, v67, s0, 1
	s_mul_i32 s0, s2, 9
	v_add_lshl_u32 v68, v67, s2, 1
	v_add_lshl_u32 v70, v67, s0, 1
	s_mul_i32 s0, s2, 11
	v_cndmask_b32_e64 v69, 0x80000000, v69, s81
	v_add_lshl_u32 v71, v67, s0, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s67
	v_cndmask_b32_e64 v70, 0x80000000, v70, s70
	s_mul_i32 s0, s2, 17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s67, s4, s68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s75
	s_clause 0x3
	buffer_load_u16 v107, v71, s[20:23], 0 offen
	buffer_load_u16 v108, v70, s[20:23], 0 offen
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	v_add_lshl_u32 v72, v67, s0, 1
	s_mul_i32 s0, s2, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v89, v67, s0, 1
	s_mul_i32 s0, s2, 25
	v_cndmask_b32_e64 v71, 0x80000000, v72, s3
	v_add_lshl_u32 v90, v67, s0, 1
	s_mul_i32 s0, s2, 27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s71
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v91, v67, s0, 1
	s_mul_i32 s0, s2, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v92, v67, s0, 1
	s_mul_i32 s0, s2, 35
	v_add_lshl_u32 v93, v67, s0, 1
	s_mul_i32 s0, s2, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v94, v67, s0, 1
	s_mul_i32 s0, s2, 43
	v_add_lshl_u32 v95, v67, s0, 1
	s_mul_i32 s0, s2, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v96, v67, s0, 1
	s_mul_i32 s0, s2, 51
	v_add_lshl_u32 v97, v67, s0, 1
	s_mul_i32 s0, s2, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v98, v67, s0, 1
	s_mul_i32 s0, s2, 59
	v_add_lshl_u32 v67, v67, s0, 1
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v161.h, v107.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v160.h, v108.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v66.h, v69.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v65.h, v68.l
	v_cndmask_b32_e64 v68, 0x80000000, v89, s67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s67, s4, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v91, s67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s67, s4, s69
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v90, s67
	s_clause 0x3
	buffer_load_u16 v109, v69, s[20:23], 0 offen
	buffer_load_u16 v110, v70, s[20:23], 0 offen
	buffer_load_u16 v111, v68, s[20:23], 0 offen
	buffer_load_u16 v112, v71, s[20:23], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v92, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v93, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s73
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v94, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v95, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s77
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v96, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v89, 0x80000000, v97, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s79
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v90, 0x80000000, v98, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s4, s80
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s104, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	s_clause 0x7
	buffer_load_u16 v113, v71, s[20:23], 0 offen
	buffer_load_u16 v114, v70, s[20:23], 0 offen
	buffer_load_u16 v129, v69, s[20:23], 0 offen
	buffer_load_u16 v130, v68, s[20:23], 0 offen
	buffer_load_u16 v131, v67, s[20:23], 0 offen
	buffer_load_u16 v132, v90, s[20:23], 0 offen
	buffer_load_u16 v133, v89, s[20:23], 0 offen
	buffer_load_u16 v134, v72, s[20:23], 0 offen
.Ltmp648:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[101:104], v228
	ds_load_b128 v[97:100], v228 offset:16
	ds_load_b128 v[93:96], v228 offset:32
	ds_load_b128 v[89:92], v228 offset:48
.Ltmp649:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v67, off, off offset:516 ; 4-byte Folded Reload
.Ltmp650:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v68, v244, v245, v242
.Ltmp651:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v165.h, v109.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v164.h, v110.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v163.h, v111.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v162.h, v112.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v169.h, v113.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v168.h, v114.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v167.h, v129.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v166.h, v130.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v173.h, v131.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v172.h, v132.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v171.h, v133.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v170.h, v134.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, 0, v67
	ds_store_b64 v67, v[65:66]
.Ltmp652:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v32, v29, v30
	v_max3_f32 v66, v27, v28, v25
	v_max3_f32 v67, v26, v250, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v65, v66, v67
	v_max3_f32 v66, v251, v106, v248
	v_max3_f32 v67, v249, v246, v247
	v_max3_f32 v66, v66, v67, v68
	v_max_f32_e32 v67, v39, v40
	v_max3_f32 v68, v38, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v67, v67, v37, v68
	v_max3_f32 v68, v33, v34, v31
	v_max3_f32 v65, v67, v68, v65
	v_dual_max_f32 v67, v243, v240 :: v_dual_max_f32 v68, v238, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v67, v67, v241, v68
	v_max3_f32 v65, v65, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp653:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp654:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v237, v123, v65, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v237
	v_sub_f32_e32 v39, v39, v237
	v_sub_f32_e32 v38, v38, v237
	v_sub_f32_e32 v37, v37, v237
	v_sub_f32_e32 v36, v36, v237
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v237
	v_sub_f32_e32 v34, v34, v237
	v_sub_f32_e32 v33, v33, v237
	v_sub_f32_e32 v32, v32, v237
	v_sub_f32_e32 v31, v31, v237
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v40, s66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.h, 0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s65
	v_cndmask_b32_e64 v38, 0, v38, s63
	v_cndmask_b32_e64 v37, 0, v37, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	v_cmp_o_f32_e64 s65, v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s59, v37, v37
	v_and_b32_e32 v66, 1, v40
	v_mov_b16_e32 v40.l, v38.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_mov_b16_e32 v65.l, v39.h
	v_mov_b16_e32 v65.h, v40.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v31, v31
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v30, v30, v237
	v_sub_f32_e32 v29, v29, v237
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s61
	v_cndmask_b32_e64 v34, 0, v34, s64
	v_cndmask_b32_e64 v33, 0, v33, s60
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v65, v39, v65, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s53
	v_cndmask_b32_e64 v31, 0, v31, s50
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.l, 0x7fff, v65.h, s65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v237
	v_sub_f32_e32 v27, v27, v237
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s50, v31, v31
	v_permlanex16_b32 v66, v39, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v27, v27
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v237
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v65, v66, v39, v175
	v_perm_b32 v66, v66, v39, v176
	v_and_b32_e32 v39, 1, v40
	v_mov_b16_e32 v40.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s46
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v25, v237
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v39, v38, v39, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v40.h
	v_cmp_o_f32_e64 s46, v29, v29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v28, s55
	v_cndmask_b32_e64 v27, 0, v27, s52
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v38, 1, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s59
	v_cmp_o_f32_e64 s59, v35, v35
	v_permlanex16_b32 v38, v37, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v38, v37, v175
	v_perm_b32 v68, v38, v37, v176
	v_and_b32_e32 v37, 1, v40
	v_mov_b16_e32 v40.l, v34.h
	v_add3_u32 v37, v36, v37, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s59
	v_cmp_o_f32_e64 s59, v33, v33
	v_permlanex16_b32 v36, v35, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v69, v36, v35, v175
	v_perm_b32 v70, v36, v35, v176
	v_and_b32_e32 v35, 1, v40
	v_mov_b16_e32 v40.l, v32.h
	v_add3_u32 v35, v34, v35, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e32 v34.h, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s59
	v_permlanex16_b32 v34, v33, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v34, v33, v175
	v_perm_b32 v72, v34, v33, v176
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v33, off, off offset:880 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[160:161]
	scratch_load_b32 v33, off, off offset:884 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[162:163]
	scratch_load_b32 v33, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[164:165]
	scratch_load_b32 v33, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[166:167]
	scratch_load_b32 v33, off, off offset:896 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[168:169]
	scratch_load_b32 v33, off, off offset:900 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[170:171]
	scratch_load_b32 v33, off, off offset:904 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v33, v[172:173]
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v123, v237
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:908
	scratch_load_b32 v37, off, off offset:960
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v34, v33
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v33, off, off offset:660 ; 4-byte Folded Reload
	v_mov_b32_e32 v123, v237
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v32, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v57, v57, v34
	v_mul_f32_e32 v58, v58, v34
	v_mul_f32_e32 v59, v59, v34
	v_mul_f32_e32 v60, v60, v34
	v_mul_f32_e32 v61, v61, v34
	v_mul_f32_e32 v62, v62, v34
	v_mul_f32_e32 v63, v63, v34
	v_mul_f32_e32 v64, v64, v34
	v_mul_f32_e32 v17, v17, v34
	v_mul_f32_e32 v18, v18, v34
	v_mul_f32_e32 v19, v19, v34
	v_mul_f32_e32 v20, v20, v34
	v_mul_f32_e32 v21, v21, v34
	v_mul_f32_e32 v22, v22, v34
	v_mul_f32_e32 v23, v23, v34
	v_mul_f32_e32 v24, v24, v34
	v_mul_f32_e32 v9, v9, v34
	v_mul_f32_e32 v10, v10, v34
	v_mul_f32_e32 v11, v11, v34
	v_mul_f32_e32 v12, v12, v34
	v_mul_f32_e32 v13, v13, v34
	v_mul_f32_e32 v14, v14, v34
	v_mul_f32_e32 v15, v15, v34
	v_mul_f32_e32 v16, v16, v34
	v_mul_f32_e32 v1, v1, v34
	v_mul_f32_e32 v2, v2, v34
	v_mul_f32_e32 v3, v3, v34
	v_mul_f32_e32 v4, v4, v34
	v_mul_f32_e32 v5, v5, v34
	v_mul_f32_e32 v6, v6, v34
	v_mul_f32_e32 v7, v7, v34
	v_mul_f32_e32 v8, v8, v34
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v34, off, off offset:992 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_b128 v[164:167], v35
	scratch_load_b32 v35, off, off offset:912 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, 0, v33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[107:110], v35
	ds_load_b128 v[129:132], v33 offset:2048
	ds_load_b128 v[160:163], v33
	scratch_load_b32 v35, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[160:167], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[160:163], v35
	scratch_load_b32 v35, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[164:167], v35
	scratch_load_b32 v35, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[160:167], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[133:136], v35
	scratch_load_b32 v35, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[168:171], v35
	scratch_load_b32 v35, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[160:163], v35
	scratch_load_b32 v35, off, off offset:968 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[164:167], v35
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[160:167], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[160:163], v34
	scratch_load_b32 v34, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[164:167], v34
	scratch_load_b32 v34, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[160:167], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[137:140], v34
	scratch_load_b32 v34, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[149:152], v34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v34, 1, v40
	v_mov_b16_e32 v40.l, v30.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v32, v34, 0x7fff
	v_mov_b16_e32 v32.l, v31.h
	v_mov_b16_e32 v32.h, v40.h
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v32, v31, v32, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v34, off, off offset:928 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s50
	v_permlanex16_b32 v32, v31, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v65, v32, v31, v175
	v_perm_b32 v66, v32, v31, v176
	v_and_b32_e32 v31, 1, v40
	v_mov_b16_e32 v40.l, v28.h
	v_add3_u32 v31, v30, v31, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e32 v30.h, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v29, v30, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s3
	v_cmp_o_f32_e64 s3, v28, v28
	v_mov_b16_e32 v31.h, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s46
	v_cmp_o_f32_e64 s46, v27, v27
	v_permlanex16_b32 v30, v29, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v30, v29, v175
	v_perm_b32 v68, v30, v29, v176
	v_and_b32_e32 v29, 1, v40
	v_mov_b16_e32 v40.l, v26.h
	v_add3_u32 v29, v28, v29, 0x7fff
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v28.h, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s3
	v_cmp_o_f32_e64 s3, v26, v26
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v29, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s46
	v_cmp_o_f32_e64 s46, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v28, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v28, v27, v175
	v_perm_b32 v70, v28, v27, v176
	v_and_b32_e32 v27, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v26, v27, 0x7fff
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v26.h, v40.h
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v25, v26, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v26, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v26, v25, v175
	v_perm_b32 v72, v26, v25, v176
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v25, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[129:136], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	ds_load_b128 v[164:167], v34
	scratch_load_b32 v34, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[145:148], v34
	ds_load_b128 v[129:132], v33 offset:6144
	ds_load_b128 v[111:114], v25
	scratch_load_b32 v25, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[107:114], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[107:110], v29
	scratch_load_b32 v29, off, off offset:976 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[111:114], v29
	scratch_load_b32 v29, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[107:114], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[141:144], v29
	scratch_load_b32 v29, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[137:144], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[107:110], v29
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v174, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v29.h
	v_cmp_o_f32_e64 s3, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v40
	v_add3_u32 v30, v29, v30, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v250, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v31.l, v29.h
	v_cmp_o_f32_e64 s46, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v29, v31, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s46
	v_mov_b16_e32 v31.h, v40.h
	v_permlanex16_b32 v30, v29, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v30, v29, v175
	v_perm_b32 v66, v30, v29, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v106, v237
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v29, v29
	v_and_b32_e32 v30, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v29, v30, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v251, v237
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s49
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v31.l, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s46, v29, v29
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v29, v31, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s46
	v_mov_b16_e32 v31.h, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v30, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v30, v29, v175
	v_perm_b32 v68, v30, v29, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v249, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v29.h
	v_cmp_o_f32_e64 s3, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v40
	v_add3_u32 v30, v29, v30, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v248, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v31.l, v29.h
	v_cmp_o_f32_e64 s45, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v29, v31, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s45
	v_mov_b16_e32 v31.h, v40.h
	v_permlanex16_b32 v30, v29, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v30, v29, v175
	v_perm_b32 v70, v30, v29, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v247, v237
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v29, v29
	v_and_b32_e32 v30, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v29, v30, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v246, v237
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v31.l, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s43, v29, v29
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v29, v31, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v30, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v30, v29, v175
	v_perm_b32 v72, v30, v29, v176
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v29, off, off offset:924 ; 4-byte Folded Reload
	ds_load_b128 v[25:28], v25
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v29
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[25:32], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:948
	scratch_load_b32 v29, off, off offset:952
	s_waitcnt vmcnt(1)
	ds_load_b128 v[25:28], v25
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v29
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[25:32], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v29, off, off offset:980 ; 4-byte Folded Reload
	ds_load_b128 v[25:28], v33 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v29
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[25:32], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v25, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v27.h, v40.h
	v_mov_b16_e32 v29.h, v40.h
	v_mov_b16_e32 v31.h, v40.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[111:114], v25
	scratch_load_b32 v25, off, off offset:1016 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[107:114], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[133:136], v25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v245, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v40
	v_add3_u32 v26, v25, v26, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v244, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v27.l, v25.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v25, v25
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v25, v27, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v27, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v27, v26, v175
	v_perm_b32 v26, v27, v26, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v243, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v40
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v242, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v29.l, v27.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v27, v27
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v27, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v29, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v27, v29, v28, v175
	v_perm_b32 v28, v29, v28, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v241, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v29.h
	v_cmp_o_f32_e64 s3, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v40
	v_add3_u32 v30, v29, v30, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v240, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v31.l, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v29, v29
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v31, v29, v31, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v31, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v31, v30, v175
	v_perm_b32 v30, v31, v30, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v239, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v31.h
	v_cmp_o_f32_e64 s1, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v40
	v_add3_u32 v32, v31, v32, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v238, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v31, 0, v31, vcc_lo
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v31.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_and_b32_e32 v33, 1, v40
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[37:40], v37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v31, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v32.l, 0x7fff, v33.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v229
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v33, v32, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v31, v33, v32, v175
	v_perm_b32 v32, v33, v32, v176
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v33, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[164:171], v[25:32], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[145:152], v[25:32], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[129:136], v[25:32], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v33
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[25:32], v[17:24]
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v27, off, off offset:136
	scratch_load_b32 v28, off, off offset:132
	scratch_load_b32 v29, off, off offset:128
	scratch_load_b32 v30, off, off offset:124
	scratch_load_b32 v31, off, off offset:120
.Ltmp655:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v85
.Ltmp656:
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v32, off, off offset:116
	scratch_load_b32 v33, off, off offset:112
	scratch_load_b32 v34, off, off offset:108
	scratch_load_b32 v35, off, off offset:104
	scratch_load_b32 v36, off, off offset:100
	scratch_load_b32 v37, off, off offset:96
	scratch_load_b32 v38, off, off offset:92
	scratch_load_b32 v39, off, off offset:88
.Ltmp657:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v26, v86
.Ltmp658:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v40, off, off offset:84 ; 4-byte Folded Reload
.Ltmp659:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v85, v25
.Ltmp660:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v87
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp661:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v86, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp662:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v26, v102 :: v_dual_add_f32 v67, v87, v25
	v_mov_b32_e32 v25, v88
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp663:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v102, v26
.Ltmp664:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp665:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v68, v88, v25 :: v_dual_mov_b32 v25, v101
.Ltmp666:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp667:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v82, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp668:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v26, v98 :: v_dual_add_f32 v69, v101, v25
	v_mov_b32_e32 v25, v103
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp669:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v86, v98, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp670:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v26, v78 :: v_dual_add_f32 v71, v103, v25
	v_mov_b32_e32 v25, v104
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp671:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v26
.Ltmp672:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp673:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v72, v104, v25 :: v_dual_mov_b32 v25, v81
.Ltmp674:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp675:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v94, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp676:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v26, v74 :: v_dual_add_f32 v81, v81, v25
	v_mov_b32_e32 v25, v83
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp677:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp678:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v26, v90 :: v_dual_add_f32 v83, v83, v25
	v_mov_b32_e32 v25, v84
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp679:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v84, v84, v25 :: v_dual_mov_b32 v25, v97
.Ltmp680:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp681:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v97, v25
.Ltmp682:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v99
.Ltmp683:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v97, off, off offset:12 ; 4-byte Folded Reload
.Ltmp684:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp685:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v99, v25
.Ltmp686:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp687:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v88, v100, v25 :: v_dual_mov_b32 v25, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp688:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp689:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v25
.Ltmp690:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp691:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v25
.Ltmp692:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp693:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v80, v80, v25 :: v_dual_mov_b32 v25, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp694:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp695:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v93, v25
.Ltmp696:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp697:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v95, v95, v25
.Ltmp698:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp699:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v96, v96, v25 :: v_dual_mov_b32 v25, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp700:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp701:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v25
.Ltmp702:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp703:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v25
.Ltmp704:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp705:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v76, v76, v25 :: v_dual_mov_b32 v25, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp706:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp707:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v25
.Ltmp708:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp709:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v91, v25
.Ltmp710:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp711:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v25
.Ltmp712:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v25, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v25, v25, v48
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v48, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v26, v229, v25
	v_mov_b32_e32 v229, v25
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v26, 0, v26, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v209
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v65, v27, v26 :: v_dual_max_f32 v26, v209, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v98, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v26, v26, v47
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v47, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v27, v209, v26
	v_mov_b32_e32 v209, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v27, v27
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v27, 0, v27, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v207
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v28, v27
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v27, v207, v207
	v_max_f32_e32 v27, v27, v46
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v46, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v207, v27
	v_mov_b32_e32 v207, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v205
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v29, v28
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v28, v205, v205
	v_max_f32_e32 v28, v28, v45
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v45, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v29, v205, v28
	v_mov_b32_e32 v205, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v29, v29
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v29, 0, v29, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v203
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v68, v30, v29 :: v_dual_max_f32 v29, v203, v203
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v29, v29, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v30, v203, v29 :: v_dual_mov_b32 v203, v29
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v30, 0, v30, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v201
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v69, v31, v30 :: v_dual_max_f32 v30, v201, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v30, v30, v183
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v31, v201, v30
	v_mov_b32_e32 v201, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v31, v31
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v31, 0, v31, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v194
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v70, v32, v31 :: v_dual_max_f32 v31, v194, v194
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v31, v31, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v32, v194, v31
	v_mov_b32_e32 v194, v31
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v32, 0, v32, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v71, v33, v32
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v32, v192, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v32, v32, v181
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v192, v32
	v_mov_b32_e32 v192, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v227
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v72, v34, v33 :: v_dual_max_f32 v33, v227, v227
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v33, v44
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v44, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v34, v227, v33 :: v_dual_mov_b32 v227, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v226
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v35, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v226, v226
	v_max_f32_e32 v34, v34, v43
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v43, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v226, v34
	v_mov_b32_e32 v226, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v35, 0, v35, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v224
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v36, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v224, v224
	v_max_f32_e32 v35, v35, v42
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v42, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v224, v35
	v_mov_b32_e32 v224, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v223
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v83, v37, v36 :: v_dual_max_f32 v36, v223, v223
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v36, v41
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v41, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v223, v36
	v_mov_b32_e32 v223, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v158
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v38, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v158, v158
	v_max_f32_e32 v37, v37, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v38, v158, v37
	v_mov_b32_e32 v158, v37
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v38, 0, v38, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v156
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v85, v39, v38 :: v_dual_max_f32 v38, v156, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v38, v179
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v39, v156, v38 :: v_dual_mov_b32 v156, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v39, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v39, 0, v39, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v154
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v86, v40, v39 :: v_dual_max_f32 v39, v154, v154
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v39, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v40, v154, v39
	v_mov_b32_e32 v154, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v40, 0, v40, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v233
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v87, v41, v40
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v233, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v40, v40, v177
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v233, v40
	v_mov_b32_e32 v233, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v88, v42, v41 :: v_dual_max_f32 v41, v232, v232
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v41, v56
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v56, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v232, v41
	v_mov_b32_e32 v232, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v42, 0, v42, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v77, v43, v42
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v231, v231
	v_max_f32_e32 v42, v42, v55
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v55, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v43, v231, v42
	v_dual_mov_b32 v231, v42 :: v_dual_mov_b32 v42, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v43, v43
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v43, 0, v43, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v78, v44, v43 :: v_dual_max_f32 v43, v210, v210
	v_mov_b32_e32 v41, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v43, v54
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v54, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v44, v210, v43
	v_dual_mov_b32 v210, v43 :: v_dual_mov_b32 v43, v88
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v195
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v79, v45, v44 :: v_dual_max_f32 v44, v195, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v40, v79
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v44, v53
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v53, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v45, v195, v44
	v_dual_mov_b32 v195, v44 :: v_dual_mov_b32 v44, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v45, v45
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v45, 0, v45, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v80, v46, v45
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v193, v193
	v_mov_b32_e32 v39, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v45, v45, v121
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v46, v193, v45
	v_mov_b32_e32 v193, v45
	v_mov_b32_e32 v45, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v46, v46
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v46, 0, v46, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v93, v47, v46 :: v_dual_max_f32 v46, v0, v0
	v_mov_b32_e32 v38, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v46, v46, v119
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v47, v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v47, v47
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v47, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v47, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v222
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v94, v47, v0
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v222, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v37, v94
	v_max_f32_e32 v47, v0, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v222, v47
	v_dual_mov_b32 v222, v47 :: v_dual_mov_b32 v47, v84
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v155
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v95, v48, v0 :: v_dual_max_f32 v0, v155, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v36, v95
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v0, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v0, v155, v48 :: v_dual_mov_b32 v155, v48
	v_mov_b32_e32 v48, v83
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v96, v53, v0
	scratch_load_b32 v53, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v0, v153, v153 :: v_dual_mov_b32 v35, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v0, v52
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v0, v153, v52 :: v_dual_mov_b32 v153, v52
	v_mov_b32_e32 v52, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v230
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v53, v0
	scratch_load_b32 v53, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v230, v230
	v_dual_mov_b32 v34, v73 :: v_dual_max_f32 v51, v0, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v230, v51
	v_dual_mov_b32 v230, v51 :: v_dual_mov_b32 v51, v72
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v208
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v74, v53, v0
	scratch_load_b32 v53, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v0, v208, v208 :: v_dual_mov_b32 v33, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v0, v50
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v208, v50
	v_mov_b32_e32 v208, v50
	v_mov_b32_e32 v50, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v206
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v53, v0
	scratch_load_b32 v53, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v206, v206
	v_dual_mov_b32 v32, v75 :: v_dual_max_f32 v49, v0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v206, v49
	v_dual_mov_b32 v206, v49 :: v_dual_mov_b32 v49, v82
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v126
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v76, v53, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v0, v126, v126 :: v_dual_mov_b32 v31, v76
	v_max_f32_e32 v53, v0, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v126, v53
	v_dual_mov_b32 v126, v53 :: v_dual_mov_b32 v53, v70
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v124
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v89, v54, v0
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v124, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v30, v89
	v_max_f32_e32 v54, v0, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v124, v54
	v_mov_b32_e32 v124, v54
	v_mov_b32_e32 v54, v69
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v122
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v90, v55, v0
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v29, v90
	v_max_f32_e32 v55, v0, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v122, v55
	v_dual_mov_b32 v122, v55 :: v_dual_mov_b32 v55, v68
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v120
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v91, v56, v0
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v120, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v28, v91
	v_max_f32_e32 v56, v0, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v120, v56
	v_mov_b32_e32 v120, v56
	v_mov_b32_e32 v56, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v92, v97, v0
	v_mov_b32_e32 v0, v46
	v_dual_mov_b32 v97, v66 :: v_dual_mov_b32 v46, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v27, v92
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:140
	scratch_load_b64 v[65:66], off, off offset:504
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v98, off offset:136
	scratch_store_b32 off, v97, off offset:132
	scratch_store_b32 off, v56, off offset:128
	scratch_store_b32 off, v55, off offset:124
	scratch_store_b32 off, v54, off offset:120
	scratch_store_b32 off, v53, off offset:116
	scratch_store_b32 off, v52, off offset:112
	scratch_store_b32 off, v51, off offset:108
	scratch_store_b32 off, v50, off offset:104
	scratch_store_b32 off, v49, off offset:100
	scratch_store_b32 off, v48, off offset:96
	scratch_store_b32 off, v47, off offset:92
	scratch_store_b32 off, v46, off offset:88
	scratch_store_b32 off, v45, off offset:84
	scratch_store_b32 off, v44, off offset:80
	scratch_store_b32 off, v43, off offset:76
	scratch_store_b32 off, v42, off offset:72
	scratch_store_b32 off, v41, off offset:68
	scratch_store_b32 off, v40, off offset:64
	scratch_store_b32 off, v39, off offset:60
	scratch_store_b32 off, v38, off offset:56
	scratch_store_b32 off, v37, off offset:52
	scratch_store_b32 off, v36, off offset:48
	scratch_store_b32 off, v35, off offset:44
	scratch_store_b32 off, v34, off offset:40
	scratch_store_b32 off, v33, off offset:36
	scratch_store_b32 off, v32, off offset:32
	scratch_store_b32 off, v31, off offset:28
	scratch_store_b32 off, v30, off offset:24
	scratch_store_b32 off, v29, off offset:20
	scratch_store_b32 off, v28, off offset:16
	scratch_store_b32 off, v27, off offset:12
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[28:29], off, off offset:272
	scratch_load_b32 v29, off, off offset:244
	.loc	1 853 32                        ; attention.py:853:32
	v_readlane_b32 s0, v254, 10
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[30:31], off, off offset:280
	scratch_load_b64 v[31:32], off, off offset:288
	scratch_load_b64 v[32:33], off, off offset:296
	scratch_load_b32 v33, off, off offset:248
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s2, s104, s0
	v_readlane_b32 s0, v255, 29
	v_writelane_b32 v254, s2, 29
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[34:35], off, off offset:304
	scratch_load_b64 v[35:36], off, off offset:312
	scratch_load_b64 v[36:37], off, off offset:320
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s0, s2, s0
	v_readlane_b32 s2, v254, 1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x13                           ; 152-byte Folded Reload
	scratch_load_b64 v[37:38], off, off offset:252
	scratch_load_b64 v[38:39], off, off offset:328
	scratch_load_b64 v[39:40], off, off offset:336
	scratch_load_b64 v[40:41], off, off offset:344
	scratch_load_b32 v41, off, off offset:260
	scratch_load_b64 v[42:43], off, off offset:360
	scratch_load_b64 v[43:44], off, off offset:368
	scratch_load_b64 v[44:45], off, off offset:376
	scratch_load_b32 v27, off, off offset:268
	scratch_load_b64 v[45:46], off, off offset:384
	scratch_load_b64 v[46:47], off, off offset:392
	scratch_load_b64 v[47:48], off, off offset:400
	scratch_load_b64 v[48:49], off, off offset:448
	scratch_load_b64 v[49:50], off, off offset:464
	scratch_load_b64 v[50:51], off, off offset:408
	scratch_load_b64 v[51:52], off, off offset:456
	scratch_load_b64 v[52:53], off, off offset:472
	scratch_load_b64 v[53:54], off, off offset:480
	scratch_load_b64 v[54:55], off, off offset:488
	scratch_load_b64 v[55:56], off, off offset:496
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(30)
	v_or_b32_e32 v25, s104, v25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v56, s0, v65, 1
	v_add_lshl_u32 v28, s0, v28, 1
	v_add_lshl_u32 v29, s0, v29, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s59, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v30, s0, v30, 1
	v_add_lshl_u32 v31, s0, v31, 1
	v_add_lshl_u32 v33, s0, v33, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s59
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v32, s0, v32, 1
	v_add_lshl_u32 v34, s0, v34, 1
	v_add_lshl_u32 v35, s0, v35, 1
	v_add_lshl_u32 v36, s0, v36, 1
	v_add_lshl_u32 v37, s0, v37, 1
	v_add_lshl_u32 v38, s0, v38, 1
	v_add_lshl_u32 v39, s0, v39, 1
	v_add_lshl_u32 v40, s0, v40, 1
	v_add_lshl_u32 v41, s0, v41, 1
	v_add_lshl_u32 v42, s0, v42, 1
	v_add_lshl_u32 v43, s0, v43, 1
	v_add_lshl_u32 v44, s0, v44, 1
	v_add_lshl_u32 v27, s0, v27, 1
	v_add_lshl_u32 v45, s0, v45, 1
	v_add_lshl_u32 v46, s0, v46, 1
	v_add_lshl_u32 v47, s0, v47, 1
	v_add_lshl_u32 v48, s0, v48, 1
	v_add_lshl_u32 v49, s0, v49, 1
	v_add_lshl_u32 v50, s0, v50, 1
	v_add_lshl_u32 v51, s0, v51, 1
	v_add_lshl_u32 v52, s0, v52, 1
	v_add_lshl_u32 v53, s0, v53, 1
	v_add_lshl_u32 v54, s0, v54, 1
	v_add_lshl_u32 v55, s0, v55, 1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s60, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s61, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s62, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s63, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s64, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s65, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s58, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s2, s58
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s58
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s57, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s57, s2, s57
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s57
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s56, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s56, s2, s56
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s56
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s55, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s55, s2, s55
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v35, 0x80000000, v35, s55
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s54, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s54, s2, s54
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v36, 0x80000000, v36, s54
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s53, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s53, s2, s53
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v37, 0x80000000, v37, s53
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s52, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s52, s2, s52
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v38, 0x80000000, v38, s52
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s51, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s51, s2, s51
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v39, 0x80000000, v39, s51
	s_clause 0x5
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s50, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s50, s2, s50
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v40, 0x80000000, v40, s50
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s49, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s49, s2, s49
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v41, 0x80000000, v41, s49
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s48, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s48, s2, s48
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s48
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s47, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s47, s2, s47
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s47
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s46, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s46, s2, s46
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v44, 0x80000000, v44, s46
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s45, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s45, s2, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v45, 0x80000000, v45, s45
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s44, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s44, s2, s44
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v46, 0x80000000, v46, s44
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s43, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s43, s2, s43
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v47, 0x80000000, v47, s43
	s_clause 0x5
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s39, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s39, s2, s39
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v50, 0x80000000, v50, s39
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s41, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s41, s2, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v48, 0x80000000, v48, s41
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s38, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s2, s38
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v51, 0x80000000, v51, s38
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s37, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s37, s2, s37
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v53, 0x80000000, v53, s37
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, s2, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s42, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s41, s2, s42
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v49, 0x80000000, v49, s41
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s40, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s2, s40
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v52, 0x80000000, v52, s38
	s_clause 0x3
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v49, v49, s[24:27], 0 offen
	buffer_load_u16 v51, v51, s[24:27], 0 offen
	buffer_load_u16 v52, v52, s[24:27], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s15, v25
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v25, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s2, s3
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v54, 0x80000000, v54, s3
	s_clause 0x1
	buffer_load_u16 v53, v53, s[24:27], 0 offen
	buffer_load_u16 v54, v54, s[24:27], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s15, v25
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[25:26], off, off offset:236
	scratch_load_b32 v26, off, off offset:264
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	s_clause 0x5
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	buffer_load_u16 v50, v50, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v56, v56, s[24:27], 0 offen
	buffer_load_u16 v55, v55, s[24:27], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v25, s0, v25, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v26, s0, v26, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s59
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s60
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v26, 0x80000000, v26, s59
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v27, 0x80000000, v27, s59
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s62
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v28, 0x80000000, v28, s59
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v29, 0x80000000, v29, s59
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s64
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v30, 0x80000000, v30, s59
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s59, s2, s65
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s0, v254, 20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v31, 0x80000000, v31, s59
	s_clause 0x7
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	buffer_load_u16 v31, v31, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s7, v254, 27
	v_readlane_b32 s1, v254, 21
	v_readlane_b32 s2, v254, 22
	v_readlane_b32 s3, v254, 23
	v_readlane_b32 s4, v254, 24
	v_readlane_b32 s5, v254, 25
	v_readlane_b32 s6, v254, 26
	v_mov_b32_e32 v104, s7
	v_dual_mov_b32 v100, s3 :: v_dual_mov_b32 v99, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v102, s5 :: v_dual_mov_b32 v101, s4
	v_dual_mov_b32 v103, s6 :: v_dual_mov_b32 v98, s1
	v_mov_b32_e32 v97, s0
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s0, v255, 1
	v_readlane_b32 s2, v255, 19
	v_readlane_b32 s3, v254, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v215, v25
	s_waitcnt vmcnt(3)
	ds_store_b16 v215, v29 offset:1024
	ds_store_b16 v215, v33 offset:2048
	ds_store_b16 v215, v37 offset:3072
	ds_store_b16 v215, v41 offset:4096
	ds_store_b16 v215, v45 offset:5120
	ds_store_b16 v215, v48 offset:6144
	ds_store_b16 v215, v49 offset:7168
	ds_store_b16 v216, v26
	s_waitcnt vmcnt(2)
	ds_store_b16 v216, v30 offset:1024
	ds_store_b16 v216, v34 offset:2048
	ds_store_b16 v216, v38 offset:3072
	ds_store_b16 v216, v42 offset:4096
	ds_store_b16 v216, v46 offset:5120
	ds_store_b16 v216, v51 offset:6144
	ds_store_b16 v216, v52 offset:7168
	ds_store_b16 v217, v27
	s_waitcnt vmcnt(1)
	ds_store_b16 v217, v31 offset:1024
	ds_store_b16 v217, v35 offset:2048
	ds_store_b16 v217, v39 offset:3072
	ds_store_b16 v217, v43 offset:4096
	ds_store_b16 v217, v47 offset:5120
	ds_store_b16 v217, v53 offset:6144
	ds_store_b16 v217, v54 offset:7168
	ds_store_b16 v218, v28
	s_waitcnt vmcnt(0)
	ds_store_b16 v218, v32 offset:1024
	ds_store_b16 v218, v36 offset:2048
	ds_store_b16 v218, v40 offset:3072
	ds_store_b16 v218, v44 offset:4096
	ds_store_b16 v218, v50 offset:5120
	ds_store_b16 v218, v55 offset:6144
	ds_store_b16 v218, v56 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v25, off, off offset:648
	scratch_load_b32 v53, off, off offset:672
	scratch_load_b128 v[106:109], off, off offset:520
	scratch_load_b128 v[110:113], off, off offset:536
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v49, 0, v25
	s_waitcnt vmcnt(2)
	ds_load_b128 v[29:32], v53
	ds_load_b128 v[25:28], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v53 offset:2048
	ds_load_b128 v[45:48], v53 offset:4096
	ds_load_b128 v[41:44], v49 offset:4096
	ds_load_b128 v[49:52], v49 offset:6144
	ds_load_b128 v[53:56], v53 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[25:32], v[106:113], v[97:104]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[106:113], v[97:104]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[41:48], v[106:113], v[97:104]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[49:56], v[106:113], v[97:104]
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v50, off, off offset:680
	scratch_load_b32 v49, off, off offset:676
	scratch_load_b128 v[41:44], off, off offset:552
	scratch_load_b128 v[45:48], off, off offset:568
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[25:28], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v50 offset:2048
	ds_load_b128 v[29:32], v50
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[25:32], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[29:32], v50 offset:4096
	ds_load_b128 v[25:28], v49 offset:4096
	ds_load_b128 v[33:36], v49 offset:6144
	ds_load_b128 v[37:40], v50 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:688
	scratch_load_b32 v49, off, off offset:684
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[25:32], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[33:40], v[41:48], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:584
	scratch_load_b128 v[45:48], off, off offset:600
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[25:28], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v50 offset:2048
	ds_load_b128 v[29:32], v50
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[25:32], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[29:32], v50 offset:4096
	ds_load_b128 v[25:28], v49 offset:4096
	ds_load_b128 v[33:36], v49 offset:6144
	ds_load_b128 v[37:40], v50 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:696
	scratch_load_b32 v49, off, off offset:692
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[25:32], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[33:40], v[41:48], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:616
	scratch_load_b128 v[45:48], off, off offset:632
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[25:28], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v50 offset:2048
	ds_load_b128 v[29:32], v50
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[25:32], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[29:32], v50 offset:4096
	ds_load_b128 v[25:28], v49 offset:4096
	ds_load_b128 v[33:36], v49 offset:6144
	ds_load_b128 v[37:40], v50 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[25:32], v[41:48], v[73:80]
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b64 v[25:26], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[33:40], v[41:48], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v25, s104, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s15, v25
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s96, s0, s1
	v_readlane_b32 s0, v255, 6
	s_and_b32 s34, s2, s1
	v_readlane_b32 s2, v255, 20
	s_and_b32 s102, s3, s1
	v_readlane_b32 s3, v255, 27
	s_and_b32 s10, s0, s1
	v_readlane_b32 s0, v255, 7
	s_and_b32 s101, s2, s1
	v_readlane_b32 s2, v255, 21
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 28
	s_and_b32 s6, s0, s1
	v_readlane_b32 s0, v255, 8
	s_and_b32 s99, s2, s1
	v_readlane_b32 s2, v255, 22
	s_and_b32 s11, s3, s1
	v_readlane_b32 s3, v255, 31
	s_and_b32 s98, s0, s1
	v_readlane_b32 s0, v255, 2
	s_and_b32 s8, s2, s1
	v_readlane_b32 s2, v255, 23
	s_and_b32 s7, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v254, 3
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s31, s0, s1
	v_readlane_b32 s0, v255, 9
	s_and_b32 s4, s2, s1
	v_readlane_b32 s2, v255, 24
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 2
	s_and_b32 s29, s0, s1
	v_readlane_b32 s0, v255, 10
	s_and_b32 s33, s2, s1
	v_readlane_b32 s2, v255, 25
	s_and_b32 s103, s3, s1
	s_and_b32 s13, s0, s1
	v_readlane_b32 s0, v255, 11
	s_and_b32 s28, s2, s1
	v_readlane_b32 s2, v255, 26
	s_and_b32 s23, s0, s1
	v_readlane_b32 s0, v255, 3
	s_and_b32 s36, s2, s1
	v_readlane_b32 s2, v255, 30
	s_and_b32 s97, s0, s1
	v_readlane_b32 s0, v255, 12
	s_and_b32 s2, s2, s1
	s_and_b32 s95, s0, s1
	v_readlane_b32 s0, v255, 13
	s_and_b32 s9, s0, s1
	v_readlane_b32 s0, v255, 14
	s_and_b32 s5, s0, s1
	v_readlane_b32 s0, v255, 4
	s_and_b32 s12, s0, s1
	v_readlane_b32 s0, v255, 15
	s_and_b32 s30, s0, s1
	v_readlane_b32 s0, v255, 16
	s_and_b32 vcc_hi, s0, s1
	v_readlane_b32 s0, v255, 17
	s_and_b32 s35, s0, s1
	v_readlane_b32 s0, v255, 5
	s_and_b32 s22, s0, s1
	v_readlane_b32 s0, v255, 18
	s_and_b32 s0, s0, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v26, off, off offset:1256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v25, v26
	scratch_load_b32 v26, off, off offset:1260 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s18, vcc_lo, s96
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s18, s18, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v25, v26
	scratch_load_b32 v26, off, off offset:1264 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s10
	s_and_not1_b32 s10, s10, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s10, s10, s1
	s_and_not1_b32 s1, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v25, v26
	scratch_load_b32 v26, off, off offset:1268 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s6, s1, s3
	s_and_not1_b32 s1, s31, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v25, v26
	scratch_load_b32 v26, off, off offset:1272 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s37, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v25, v26
	scratch_load_b32 v26, off, off offset:1276 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s38, s31
	s_and_b32 s3, s37, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s31, s1, s3
	s_and_not1_b32 s1, s13, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v25, v26
	scratch_load_b32 v26, off, off offset:1280 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s39, s29
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v25, v26
	scratch_load_b32 v26, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s40, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s39, exec_lo
	s_or_b32 s13, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v25, v26
	scratch_load_b32 v26, off, off offset:1288 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s40, s41, s23
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v25, v26
	scratch_load_b32 v26, off, off offset:1292 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s42, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s41, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v25, v26
	scratch_load_b32 v26, off, off offset:1296 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s42, s43, s95
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v25, v26
	scratch_load_b32 v26, off, off offset:1300 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s43, s44, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s43, exec_lo
	s_or_b32 s9, s1, s3
	s_and_not1_b32 s1, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v25, v26
	scratch_load_b32 v26, off, off offset:1304 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s44, s45, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v25, v26
	scratch_load_b32 v26, off, off offset:1308 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s45, s46, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s45, exec_lo
	s_or_b32 s12, s1, s3
	s_and_not1_b32 s1, vcc_hi, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v25, v26
	scratch_load_b32 v26, off, off offset:1312 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s46, s47, s30
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v25, v26
	scratch_load_b32 v26, off, off offset:1316 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s47, s48, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s47, exec_lo
	s_or_b32 vcc_hi, s1, s3
	s_and_not1_b32 s1, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v25, v26
	scratch_load_b32 v26, off, off offset:1320 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s48, s49, s35
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v25, v26
	scratch_load_b32 v26, off, off offset:1324 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s49, s50, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s49, exec_lo
	s_or_b32 s22, s1, s3
	s_and_not1_b32 s1, s34, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v25, v26
	scratch_load_b32 v26, off, off offset:1328 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s50, s51, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v25, v26
	scratch_load_b32 v26, off, off offset:1332 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s51, s52, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s51, exec_lo
	s_or_b32 s34, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v25, v26
	scratch_load_b32 v26, off, off offset:1336 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s52, s53, s101
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v25, v26
	scratch_load_b32 v26, off, off offset:1340 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s53, s54, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s53, exec_lo
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s4, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v25, v26
	scratch_load_b32 v26, off, off offset:1344 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s54, s55, s8
	s_and_not1_b32 s8, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v25, v26
	scratch_load_b32 v26, off, off offset:1348 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s55, s56, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s55, exec_lo
	s_or_b32 s4, s1, s3
	s_and_not1_b32 s1, s28, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v25, v26
	scratch_load_b32 v26, off, off offset:1352 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s56, s57, s33
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v25, v26
	scratch_load_b32 v26, off, off offset:1356 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s57, s58, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s57, exec_lo
	s_or_b32 s28, s1, s3
	s_and_not1_b32 s1, s2, exec_lo
	s_and_not1_b32 s3, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v25, v26
	scratch_load_b32 v26, off, off offset:1360 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s58, s59, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v25, v26
	scratch_load_b32 v26, off, off offset:1364 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s59, s60, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s2, s59, exec_lo
	s_or_b32 s2, s1, s2
	s_and_not1_b32 s1, s100, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v25, v26
	scratch_load_b32 v26, off, off offset:1368 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s60, s61, s102
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v25, v26
	scratch_load_b32 v26, off, off offset:1372 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s61, s62, s100
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v25, v26
	scratch_load_b32 v26, off, off offset:1376 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s62, s63, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v25, v26
	scratch_load_b32 v26, off, off offset:1380 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s63, s64, s7
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v25, v26
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s64, s65, s103
	s_and_not1_b32 s65, s96, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_or_b32 s96, s65, s18
	s_and_not1_b32 s18, s98, exec_lo
	s_or_b32 s98, s18, s19
	s_and_not1_b32 s18, s29, exec_lo
	s_and_b32 s19, s38, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s29, s18, s19
	s_and_not1_b32 s18, s23, exec_lo
	s_and_b32 s19, s40, exec_lo
	s_or_b32 s23, s18, s19
	s_and_not1_b32 s18, s95, exec_lo
	s_and_b32 s19, s42, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s95, s18, s19
	s_and_b32 s18, s44, exec_lo
	s_and_b32 s19, s46, exec_lo
	s_or_b32 s5, s5, s18
	s_and_not1_b32 s18, s30, exec_lo
	s_or_b32 s30, s18, s19
	s_and_not1_b32 s18, s35, exec_lo
	s_and_b32 s19, s48, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s35, s18, s19
	s_and_b32 s18, s50, exec_lo
	s_and_b32 s19, s52, exec_lo
	s_or_b32 s0, s0, s18
	s_and_not1_b32 s18, s101, exec_lo
	s_or_b32 s101, s18, s19
	s_and_b32 s18, s54, exec_lo
	s_and_b32 s19, s56, exec_lo
	s_or_b32 s8, s8, s18
	s_and_not1_b32 s18, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s33, s18, s19
	s_and_not1_b32 s18, s36, exec_lo
	s_and_b32 s19, s58, exec_lo
	s_or_b32 s36, s18, s19
	s_and_b32 s18, s60, exec_lo
	s_and_b32 s19, s64, exec_lo
	s_or_b32 s102, s3, s18
	s_and_b32 s3, s61, exec_lo
	s_and_b32 s18, s62, exec_lo
	s_or_b32 s100, s1, s3
	s_or_b32 s11, s11, s18
	s_and_not1_b32 s1, s7, exec_lo
	s_and_b32 s3, s63, exec_lo
	s_and_not1_b32 s18, s103, exec_lo
	s_or_b32 s7, s1, s3
	s_or_b32 s103, s18, s19
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v26, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v25, v26
	scratch_load_b32 v26, off, off offset:1388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v25, v26
	scratch_load_b32 v26, off, off offset:1392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v25, v26
	scratch_load_b32 v26, off, off offset:1396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s37, v25, v26
	scratch_load_b32 v26, off, off offset:1400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s38, v25, v26
	scratch_load_b32 v26, off, off offset:1404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s39, v25, v26
	scratch_load_b32 v26, off, off offset:1408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s40, v25, v26
	scratch_load_b32 v26, off, off offset:1412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s41, v25, v26
	scratch_load_b32 v26, off, off offset:1416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s42, v25, v26
	scratch_load_b32 v26, off, off offset:1420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s43, v25, v26
	scratch_load_b32 v26, off, off offset:1424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s44, v25, v26
	scratch_load_b32 v26, off, off offset:1428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s45, v25, v26
	scratch_load_b32 v26, off, off offset:1432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s46, v25, v26
	scratch_load_b32 v26, off, off offset:1436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s47, v25, v26
	scratch_load_b32 v26, off, off offset:1440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s48, v25, v26
	scratch_load_b32 v26, off, off offset:1444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s49, v25, v26
	scratch_load_b32 v26, off, off offset:1448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s50, v25, v26
	scratch_load_b32 v26, off, off offset:1452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s51, v25, v26
	scratch_load_b32 v26, off, off offset:1456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s52, v25, v26
	scratch_load_b32 v26, off, off offset:1460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s53, v25, v26
	scratch_load_b32 v26, off, off offset:1464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s54, v25, v26
	scratch_load_b32 v26, off, off offset:1468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s55, v25, v26
	scratch_load_b32 v26, off, off offset:1472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s56, v25, v26
	scratch_load_b32 v26, off, off offset:1476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s57, v25, v26
	scratch_load_b32 v26, off, off offset:1480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s58, v25, v26
	scratch_load_b32 v26, off, off offset:1484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s59, v25, v26
	scratch_load_b32 v26, off, off offset:1488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s60, v25, v26
	scratch_load_b32 v26, off, off offset:1492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s61, v25, v26
	scratch_load_b32 v26, off, off offset:1496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s62, v25, v26
	scratch_load_b32 v26, off, off offset:1500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s63, v25, v26
	scratch_load_b32 v26, off, off offset:1504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s64, v25, v26
	scratch_load_b32 v26, off, off offset:1508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s65, v25, v26
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v26, off, off offset:1512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v25, v26
	scratch_load_b32 v26, off, off offset:1516 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, vcc_lo, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s96
	s_and_b32 s18, s18, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v25, v26
	scratch_load_b32 v26, off, off offset:1520 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s1, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s10
	s_and_not1_b32 s10, s10, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_or_b32 s10, s10, s19
	s_and_not1_b32 s19, s98, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v25, v26
	scratch_load_b32 v26, off, off offset:1524 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s66, s3, s68
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s66, s66, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v25, v26
	scratch_load_b32 v26, off, off offset:1528 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s37, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s37, s98
	s_and_b32 s37, s37, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s98, s19, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v25, v26
	scratch_load_b32 v26, off, off offset:1532 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s38, s70
	s_and_b32 s38, s38, s31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s38, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v25, v26
	scratch_load_b32 v26, off, off offset:1536 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s39, s71
	s_and_b32 s39, s39, s29
	s_and_not1_b32 s29, s29, exec_lo
	s_and_b32 s37, s39, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s29, s29, s37
	s_and_not1_b32 s37, s95, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v25, v26
	scratch_load_b32 v26, off, off offset:1540 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s40, s72
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s40, s40, s13
	s_and_not1_b32 s13, s13, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v25, v26
	scratch_load_b32 v26, off, off offset:1544 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s41, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s41, s41, s23
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v25, v26
	scratch_load_b32 v26, off, off offset:1548 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s42, s74
	s_and_b32 s42, s42, s97
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v25, v26
	scratch_load_b32 v26, off, off offset:1552 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s43, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s43, s43, s95
	s_and_b32 s38, s43, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s95, s37, s38
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v25, v26
	scratch_load_b32 v26, off, off offset:1556 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s44, s76
	s_and_b32 s44, s44, s9
	s_and_not1_b32 s9, s9, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v25, v26
	scratch_load_b32 v26, off, off offset:1560 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s45, s45, s77
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s45, s45, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v25, v26
	scratch_load_b32 v26, off, off offset:1564 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s46, s46, s78
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s46, s46, s12
	s_and_not1_b32 s12, s12, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v25, v26
	scratch_load_b32 v26, off, off offset:1568 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s47, s47, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s47, s47, s30
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v25, v26
	scratch_load_b32 v26, off, off offset:1572 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s48, s48, s80
	s_and_b32 s48, s48, vcc_hi
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v25, v26
	scratch_load_b32 v26, off, off offset:1576 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s49, s49, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s49, s49, s35
	s_and_not1_b32 s35, s35, exec_lo
	s_and_b32 s37, s49, exec_lo
	s_or_b32 s35, s35, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v25, v26
	scratch_load_b32 v26, off, off offset:1580 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s50, s50, s82
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s50, s50, s22
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v25, v26
	scratch_load_b32 v26, off, off offset:1636 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s51, s51, s83
	s_and_b32 s51, s51, s0
	s_and_not1_b32 s0, s0, exec_lo
	s_and_b32 s37, s51, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s0, s0, s37
	s_and_not1_b32 s37, s101, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v25, v26
	scratch_load_b32 v26, off, off offset:1632 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s52, s52, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s52, s52, s34
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v25, v26
	scratch_load_b32 v26, off, off offset:1628 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s53, s53, s85
	s_and_b32 s53, s53, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s53, exec_lo
	s_or_b32 s101, s37, s38
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v25, v26
	scratch_load_b32 v26, off, off offset:1624 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s54, s54, s86
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s54, s54, s99
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v25, v26
	scratch_load_b32 v26, off, off offset:1620 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s55, s55, s87
	s_and_b32 s55, s55, s8
	s_and_not1_b32 s8, s8, exec_lo
	s_and_b32 s37, s55, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s8, s8, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v25, v26
	scratch_load_b32 v26, off, off offset:1616 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s56, s56, s88
	s_and_b32 s56, s56, s4
	s_and_not1_b32 s4, s4, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v25, v26
	scratch_load_b32 v26, off, off offset:1612 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s57, s57, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s57, s57, s33
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v25, v26
	scratch_load_b32 v26, off, off offset:1608 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s58, s58, s90
	s_and_b32 s58, s58, s28
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v25, v26
	scratch_load_b32 v26, off, off offset:1604 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s59, s59, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s59, s59, s36
	s_and_not1_b32 s36, s36, exec_lo
	s_and_b32 s37, s59, exec_lo
	s_or_b32 s36, s36, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v25, v26
	scratch_load_b32 v26, off, off offset:1600 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s60, s60, s92
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s60, s60, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v25, v26
	scratch_load_b32 v26, off, off offset:1596 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s61, s61, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s61, s61, s102
	s_and_b32 s37, s61, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v25, v26
	scratch_load_b32 v26, off, off offset:1592 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s62, s62, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s62, s62, s100
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v25, v26
	scratch_load_b32 v26, off, off offset:1588 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s63, s63, vcc_lo
	s_and_b32 s63, s63, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v25, v26
	scratch_load_b32 v26, off, off offset:1584 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s64, s1
	s_and_not1_b32 s64, s96, exec_lo
	s_and_b32 s1, s1, s7
	s_or_b32 s96, s64, s18
	s_and_b32 s18, s66, exec_lo
	s_and_not1_b32 s7, s7, exec_lo
	s_or_b32 s6, s6, s18
	s_and_not1_b32 s18, s31, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s31, s18, s19
	s_and_b32 s18, s40, exec_lo
	s_and_not1_b32 s19, s23, exec_lo
	s_and_b32 s23, s41, exec_lo
	s_or_b32 s13, s13, s18
	s_or_b32 s23, s19, s23
	s_and_not1_b32 s18, s97, exec_lo
	s_and_b32 s19, s42, exec_lo
	s_or_b32 s7, s7, s1
	s_or_b32 s97, s18, s19
	s_and_b32 s18, s44, exec_lo
	s_and_b32 s19, s45, exec_lo
	s_or_b32 s9, s9, s18
	s_or_b32 s5, s5, s19
	s_and_b32 s18, s46, exec_lo
	s_and_not1_b32 s19, s30, exec_lo
	s_and_b32 s30, s47, exec_lo
	s_or_b32 s12, s12, s18
	s_or_b32 s30, s19, s30
	s_and_not1_b32 s18, vcc_hi, exec_lo
	s_and_b32 s19, s48, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 vcc_hi, s18, s19
	s_and_not1_b32 s18, s22, exec_lo
	s_and_b32 s19, s50, exec_lo
	s_or_b32 s22, s18, s19
	s_and_not1_b32 s18, s34, exec_lo
	s_and_b32 s19, s52, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s34, s18, s19
	s_and_not1_b32 s18, s99, exec_lo
	s_and_b32 s19, s54, exec_lo
	s_or_b32 s99, s18, s19
	s_and_b32 s18, s56, exec_lo
	s_and_not1_b32 s19, s33, exec_lo
	s_and_b32 s33, s57, exec_lo
	s_or_b32 s4, s4, s18
	s_or_b32 s33, s19, s33
	s_and_not1_b32 s18, s28, exec_lo
	s_and_b32 s19, s58, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s28, s18, s19
	s_and_b32 s18, s60, exec_lo
	s_and_not1_b32 s19, s102, exec_lo
	s_or_b32 s2, s2, s18
	s_or_b32 s102, s19, s37
	s_and_not1_b32 s18, s100, exec_lo
	s_and_b32 s19, s62, exec_lo
	s_and_b32 s37, s63, exec_lo
	s_or_b32 s100, s18, s19
	s_and_not1_b32 s18, s103, exec_lo
	s_or_b32 s11, s11, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v25, v26
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s65, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s103
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s103, s18, s3
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v100, off, off offset:1640
	scratch_load_b32 v101, off, off offset:1644
	scratch_load_b32 v102, off, off offset:1648
	scratch_load_b32 v103, off, off offset:1652
	scratch_load_b32 v106, off, off offset:1664
	scratch_load_b32 v98, off, off offset:1656
	scratch_load_b32 v99, off, off offset:1660
	v_readlane_b32 s36, v254, 5
	v_readlane_b32 s16, v254, 9
	v_readlane_b32 s37, v254, 6
	v_readlane_b32 s24, v254, 13
	v_readlane_b32 s38, v254, 7
	v_readlane_b32 s39, v254, 8
.LBB0_15:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v25, 0x80, v99
	v_and_b32_e32 v26, 28, v98
	v_lshrrev_b32_e32 v27, 1, v103
	v_add_nc_u32_e32 v0, 0, v103
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v25, 0, v106, v25
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[69:72] offset:16
	ds_store_b128 v0, v[81:84] offset:128
	ds_store_b128 v0, v[85:88] offset:144
	ds_store_b128 v0, v[77:80] offset:32
	ds_store_b128 v0, v[93:96] offset:48
	v_add3_u32 v25, v25, v27, v26
	ds_store_b128 v0, v[73:76] offset:160
	ds_store_b128 v0, v[89:92] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v101
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v65, v25
	v_readlane_b32 s31, v254, 4
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v48, 4, v102
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s37, s37, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v54, v0, v100
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v48
	v_or_b32_e32 v25, 60, v48
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v52, s24, v54
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v26, 58, v48
	v_or_b32_e32 v27, 56, v48
	v_or_b32_e32 v28, 54, v48
	v_or_b32_e32 v29, 52, v48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s14, v52
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v30, 50, v48
	v_or_b32_e32 v31, 48, v48
	v_or_b32_e32 v32, 46, v48
	v_or_b32_e32 v33, 44, v48
	v_or_b32_e32 v34, 42, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v66, null, v65, v65, v57
	v_div_scale_f32 v68, null, v65, v65, v58
	v_div_scale_f32 v70, vcc_lo, v57, v65, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v67, v66
	v_rcp_f32_e32 v69, v68
	v_div_scale_f32 v72, null, v65, v65, v59
	v_div_scale_f32 v74, null, v65, v65, v60
	v_div_scale_f32 v75, s1, v58, v65, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v73, v72
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v49, -v66, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v68, v69, 1.0
	v_div_scale_f32 v80, null, v65, v65, v62
	v_div_scale_f32 v82, null, v65, v65, v18
	v_fmac_f32_e32 v67, v49, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v69, v53, v69
	v_fma_f32 v78, -v72, v73, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v74, v76, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 40, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v71, v70, v67
	v_mul_f32_e32 v77, v75, v69
	v_fmac_f32_e32 v73, v78, v73
	v_div_scale_f32 v78, s2, v59, v65, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v55, -v66, v71, v70
	v_fmac_f32_e32 v76, v79, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 38, v48
	v_or_b32_e32 v37, 36, v48
	v_or_b32_e32 v38, 34, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v55, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v39, 32, v48
	v_or_b32_e32 v40, 30, v48
	v_or_b32_e32 v41, 28, v48
	v_or_b32_e32 v42, 26, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v71, v70
	v_fma_f32 v70, -v68, v77, v75
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v43, 24, v48
	v_or_b32_e32 v44, 22, v48
	v_or_b32_e32 v45, 20, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v67, v71
	v_fmac_f32_e32 v77, v70, v69
	v_mul_f32_e32 v67, v78, v73
	v_div_scale_f32 v70, null, v65, v65, v61
	v_div_scale_f32 v71, s3, v60, v65, v60
	v_div_fixup_f32 v57, v66, v65, v57
	v_fma_f32 v66, -v68, v77, v75
	v_fma_f32 v68, -v72, v67, v78
	v_rcp_f32_e32 v75, v70
	v_mul_f32_e32 v79, v71, v76
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v46, 18, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v68, v73
	v_rcp_f32_e32 v68, v80
	v_div_fmas_f32 v66, v66, v69, v77
	v_fma_f32 v69, -v74, v79, v71
	s_mov_b32 vcc_lo, s2
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v47, 16, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v70, v75, 1.0
	v_div_fixup_f32 v58, v66, v65, v58
	v_fma_f32 v66, -v72, v67, v78
	v_fmac_f32_e32 v79, v69, v76
	v_div_scale_f32 v69, s4, v61, v65, v61
	v_fmac_f32_e32 v75, v77, v75
	v_fma_f32 v72, -v80, v68, 1.0
	v_div_scale_f32 v77, null, v65, v65, v63
	v_div_fmas_f32 v66, v66, v73, v67
	v_fma_f32 v67, -v74, v79, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v71, v69, v75 :: v_dual_fmac_f32 v68, v72, v68
	v_rcp_f32_e32 v72, v77
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v73, s2, v62, v65, v62
	v_div_fmas_f32 v67, v67, v76, v79
	v_fma_f32 v76, -v70, v71, v69
	v_div_fixup_f32 v59, v66, v65, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v73, v68
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v60, v67, v65, v60
	v_fma_f32 v79, -v77, v72, 1.0
	v_fmac_f32_e32 v71, v76, v75
	v_div_scale_f32 v76, null, v65, v65, v17
	v_fma_f32 v66, -v80, v78, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v79, v72
	v_div_scale_f32 v67, s3, v63, v65, v63
	v_fma_f32 v69, -v70, v71, v69
	v_rcp_f32_e32 v70, v76
	v_fmac_f32_e32 v78, v66, v68
	v_mul_f32_e32 v66, v67, v72
	v_div_scale_f32 v74, null, v65, v65, v64
	v_div_fmas_f32 v69, v69, v75, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v80, v78, v73
	v_fma_f32 v73, -v77, v66, v67
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v81, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v76, v70, 1.0
	v_div_fmas_f32 v68, v71, v68, v78
	v_fmac_f32_e32 v66, v73, v72
	v_div_scale_f32 v78, s2, v17, v65, v17
	v_fmac_f32_e32 v70, v80, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v68, v65, v62
	v_fma_f32 v67, -v77, v66, v67
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v74, v81, 1.0
	v_mul_f32_e32 v68, v78, v70
	v_div_scale_f32 v77, null, v65, v65, v20
	v_div_fmas_f32 v66, v67, v72, v66
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v76, v68, v78
	v_div_scale_f32 v79, s5, v64, v65, v64
	v_rcp_f32_e32 v71, v82
	v_div_fixup_f32 v63, v66, v65, v63
	v_fmac_f32_e32 v68, v72, v70
	v_rcp_f32_e32 v72, v77
	v_mul_f32_e32 v75, v79, v81
	v_div_fixup_f32 v61, v69, v65, v61
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v66, -v76, v68, v78
	v_div_scale_f32 v76, s4, v19, v65, v19
	v_fma_f32 v73, -v74, v75, v79
	v_fma_f32 v69, -v82, v71, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v49, 14, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v78, -v77, v72, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v50, 12, v48
	v_or_b32_e32 v51, 10, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v69, v71
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v52, 8, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v72, v78, v72 :: v_dual_fmac_f32 v75, v73, v81
	v_div_scale_f32 v73, null, v65, v65, v19
	v_div_scale_f32 v78, null, v65, v65, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v74, v75, v79
	v_rcp_f32_e32 v69, v73
	v_div_scale_f32 v74, s3, v18, v65, v18
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v53, 6, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v81, v75
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v75, v74, v71
	v_div_fmas_f32 v66, v66, v70, v68
	v_div_scale_f32 v70, s2, v20, v65, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v73, v69, 1.0
	v_div_fixup_f32 v64, v67, v65, v64
	v_fma_f32 v67, -v82, v75, v74
	v_rcp_f32_e32 v81, v78
	v_div_fixup_f32 v17, v66, v65, v17
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v21
	v_dual_fmac_f32 v75, v67, v71 :: v_dual_mul_f32 v80, v70, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v76, v69
	v_rcp_f32_e32 v68, v79
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v66, -v82, v75, v74
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v55, 4, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v73, v67, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v56, 2, v48
	.loc	1 1044 28                       ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v65
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v71, v75
	v_fma_f32 v71, -v77, v80, v70
	v_fmac_f32_e32 v67, v74, v69
	v_fma_f32 v82, -v79, v68, 1.0
	v_div_scale_f32 v74, s3, v21, v65, v21
	v_fma_f32 v75, -v78, v81, 1.0
	v_div_fixup_f32 v18, v66, v65, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v68, v82, v68
	v_fma_f32 v66, -v73, v67, v76
	v_fmac_f32_e32 v80, v71, v72
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v73, s5, v22, v65, v22
	v_mul_f32_e32 v71, v74, v68
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v75, null, v65, v65, v23
	v_div_fmas_f32 v66, v66, v69, v67
	v_fma_f32 v67, -v77, v80, v70
	v_fma_f32 v69, -v79, v71, v74
	v_mul_f32_e32 v76, v73, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v19, v66, v65, v19
	v_div_fmas_f32 v67, v67, v72, v80
	v_fmac_f32_e32 v71, v69, v68
	v_fma_f32 v72, -v78, v76, v73
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v75
	v_div_scale_f32 v77, null, v65, v65, v24
	v_fma_f32 v66, -v79, v71, v74
	v_fmac_f32_e32 v76, v72, v81
	v_div_scale_f32 v79, null, v65, v65, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v77
	v_div_fmas_f32 v66, v66, v68, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v68, -v78, v76, v73
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v80, -v75, v70, 1.0
	v_div_fixup_f32 v20, v67, v65, v20
	v_div_scale_f32 v67, s2, v23, v65, v23
	v_div_fmas_f32 v68, v68, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v80, v70
	v_fma_f32 v72, -v77, v69, 1.0
	v_div_scale_f32 v73, s3, v24, v65, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v68, v65, v22
	v_rcp_f32_e32 v68, v79
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, null, v65, v65, v9
	v_div_fixup_f32 v21, v66, v65, v21
	v_div_scale_f32 v81, null, v65, v65, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v72
	v_mul_f32_e32 v78, v73, v69
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v80, -v79, v68, 1.0
	v_rcp_f32_e32 v83, v81
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v57, 0, v57, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v77, v78, v73
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s31, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v68, v80, v68 :: v_dual_mul_f32 v71, v67, v70
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s31, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s4, v9, v65, v9
	v_fma_f32 v76, -v75, v71, v67
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	v_cndmask_b32_e64 v60, 0, v60, s1
	v_cndmask_b32_e64 v59, 0, v59, s1
	v_cndmask_b32_e64 v61, 0, v61, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v76, v70
	v_fma_f32 v76, -v72, v74, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s31, v50
	v_cmp_gt_i32_e64 s9, s31, v49
	v_cmp_gt_i32_e64 s10, s31, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v11
	v_fmac_f32_e32 v74, v76, v74
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s31, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v70, v71
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v70, -v77, v78, v73
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v73, s2, v10, v65, v10
	v_div_fixup_f32 v23, v67, v65, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v70, v69, v78
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v82, v73, v68
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s31, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v75, v76, 1.0
	v_div_fixup_f32 v24, v69, v65, v24
	v_fma_f32 v69, -v81, v83, 1.0
	v_fma_f32 v70, -v79, v82, v73
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, s5, v11, v65, v11
	v_fmac_f32_e32 v83, v69, v83
	v_mul_f32_e32 v71, v66, v74
	v_fmac_f32_e32 v82, v70, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v77, v76
	v_div_scale_f32 v70, null, v65, v65, v13
	v_fma_f32 v80, -v72, v71, v66
	v_div_scale_f32 v69, s3, v12, v65, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v75, v78, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v64, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v80, v74
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	v_fma_f32 v66, -v72, v71, v66
	v_mul_f32_e32 v72, v69, v83
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s31, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v74, v71
	v_fma_f32 v71, -v79, v82, v73
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v73, null, v65, v65, v14
	v_fma_f32 v74, -v70, v67, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v68, v71, v68, v82
	v_fma_f32 v71, -v75, v78, v77
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s2, v13, v65, v13
	v_div_fmas_f32 v71, v71, v76, v78
	v_fma_f32 v76, -v81, v72, v69
	v_div_fixup_f32 v9, v66, v65, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v66, v74, v67
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v71, v65, v11
	v_fmac_f32_e32 v72, v76, v83
	v_div_scale_f32 v71, null, v65, v65, v15
	v_fma_f32 v76, -v70, v66, v74
	v_div_fixup_f32 v10, v68, v65, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v81, v72, v69
	v_rcp_f32_e32 v77, v71
	v_fma_f32 v68, -v73, v75, 1.0
	v_fmac_f32_e32 v66, v76, v67
	v_div_scale_f32 v76, null, v65, v65, v16
	v_div_fmas_f32 v69, v69, v83, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v75, v68, v75
	v_div_scale_f32 v68, s4, v14, v65, v14
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v69, v65, v12
	v_fma_f32 v69, -v70, v66, v74
	v_fma_f32 v74, -v71, v77, 1.0
	v_rcp_f32_e32 v78, v76
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s31, v43
	v_cmp_gt_i32_e64 s15, s31, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v77, v74, v77
	v_div_fmas_f32 v66, v69, v67, v66
	v_div_scale_f32 v69, s2, v15, v65, v15
	v_mul_f32_e32 v72, v68, v75
	v_div_scale_f32 v67, null, v65, v65, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v66, v65, v13
	v_fma_f32 v66, -v76, v78, 1.0
	v_fma_f32 v70, -v73, v72, v68
	v_div_scale_f32 v74, null, v65, v65, v2
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v78, v66, v78
	v_fmac_f32_e32 v72, v70, v75
	v_rcp_f32_e32 v70, v67
	v_div_scale_f32 v66, s3, v16, v65, v16
	v_rcp_f32_e32 v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v68, -v73, v72, v68
	v_mul_f32_e32 v73, v69, v77
	v_div_scale_f32 v81, s4, v1, v65, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s31, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v67, v70, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v82, -v74, v80, 1.0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s31, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, null, v65, v65, v3
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, s5, v2, v65, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v84, v81, v70
	v_div_fmas_f32 v68, v68, v75, v72
	v_fma_f32 v72, -v71, v73, v69
	v_mul_f32_e32 v75, v66, v78
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v83, v79
	v_div_fixup_f32 v14, v68, v65, v14
	v_fmac_f32_e32 v73, v72, v77
	v_fma_f32 v72, -v76, v75, v66
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s31, v38
	v_cmp_gt_i32_e64 s20, s31, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v68, -v71, v73, v69
	v_fmac_f32_e32 v75, v72, v78
	v_fma_f32 v69, -v67, v84, v81
	v_mul_f32_e32 v71, v82, v80
	v_fma_f32 v72, -v79, v83, 1.0
	v_div_fmas_f32 v68, v68, v77, v73
	v_fma_f32 v66, -v76, v75, v66
	v_div_scale_f32 v73, null, v65, v65, v4
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v84, v69, v70
	v_div_fmas_f32 v66, v66, v78, v75
	v_rcp_f32_e32 v75, v73
	v_fma_f32 v69, -v74, v71, v82
	v_fmac_f32_e32 v83, v72, v83
	v_div_scale_f32 v72, s2, v3, v65, v3
	v_div_fixup_f32 v15, v68, v65, v15
	v_fma_f32 v67, -v67, v84, v81
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v66, v65, v16
	v_div_scale_f32 v77, null, v65, v65, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v73, v75, 1.0
	v_div_fmas_f32 v67, v67, v70, v84
	s_mov_b32 vcc_lo, s5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v54, s16, v54
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s31, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v68, v75
	v_fmac_f32_e32 v71, v69, v80
	v_mul_f32_e32 v69, v72, v83
	v_div_scale_f32 v68, null, v65, v65, v6
	v_div_fixup_f32 v1, v67, v65, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v71, v82
	v_fma_f32 v74, -v79, v69, v72
	v_div_scale_f32 v67, null, v65, v65, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v54, v54, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v70, v70, v80, v71
	v_fmac_f32_e32 v69, v74, v83
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v70, v65, v2
	v_fma_f32 v66, -v79, v69, v72
	v_rcp_f32_e32 v72, v68
	v_div_scale_f32 v70, null, v65, v65, v7
	v_rcp_f32_e32 v79, v77
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v52, v54, v52, 2
	v_add_lshl_u32 v51, v54, v51, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v74, v70
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v50, v54, v50, 2
	v_add_lshl_u32 v47, v54, v47, 2
	v_add_lshl_u32 v46, v54, v46, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v78, -v68, v72, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v45, v54, v45, 2
	v_add_lshl_u32 v41, v54, v41, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s31, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v72, v78, v72
	v_div_fmas_f32 v66, v66, v83, v69
	v_rcp_f32_e32 v69, v67
	v_div_scale_f32 v71, vcc_lo, v4, v65, v4
	v_div_scale_f32 v78, s3, v6, v65, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v66, v65, v3
	v_fma_f32 v81, -v70, v74, 1.0
	v_fma_f32 v83, -v77, v79, 1.0
	v_mul_f32_e32 v84, v78, v72
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s31, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s4, v7, v65, v7
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s2, v5, v65, v5
	v_fma_f32 v80, -v73, v76, v71
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s5, v8, v65, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v66, v69
	v_dual_fmac_f32 v76, v80, v75 :: v_dual_mul_f32 v85, v81, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v83, v79
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s31, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v80, -v67, v82, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v71, -v73, v76, v71
	v_fma_f32 v73, -v68, v84, v78
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s31, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v82, v80, v69
	v_fma_f32 v80, -v70, v85, v81
	v_fmac_f32_e32 v84, v73, v72
	v_div_fmas_f32 v71, v71, v75, v76
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v66, -v67, v82, v66
	v_fma_f32 v67, -v77, v86, v83
	v_fmac_f32_e32 v85, v80, v74
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s31, v48
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v48, v54, v48, 2
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
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v72, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s31, v56
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s31, v53
	v_cmp_gt_i32_e64 s4, s31, v55
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v56, v54, v56, 2
	buffer_store_b32 v57, v48, s[36:39], 0 offen
	v_add_lshl_u32 v48, v54, v53, 2
	v_add_lshl_u32 v55, v54, v55, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s3
	s_and_b32 s3, s0, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	v_cndmask_b32_e64 v52, 0x80000000, v52, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x3
	buffer_store_b32 v58, v56, s[36:39], 0 offen
	buffer_store_b32 v59, v55, s[36:39], 0 offen
	buffer_store_b32 v60, v48, s[36:39], 0 offen
	buffer_store_b32 v61, v52, s[36:39], 0 offen
	v_add_lshl_u32 v48, v54, v49, 2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v62, v51, s[36:39], 0 offen
	buffer_store_b32 v63, v50, s[36:39], 0 offen
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s10
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s31, v32
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v64, v48, s[36:39], 0 offen
	buffer_store_b32 v17, v47, s[36:39], 0 offen
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v54, v44, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	s_clause 0x1
	buffer_store_b32 v18, v46, s[36:39], 0 offen
	buffer_store_b32 v19, v45, s[36:39], 0 offen
	v_add_lshl_u32 v18, v54, v43, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v54, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v77, v86, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s15
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s16
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v54, v40, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_add_lshl_u32 v18, v54, v39, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v41, s[36:39], 0 offen
	v_add_lshl_u32 v19, v54, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v54, v37, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s19
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v24, v17, s[36:39], 0 offen
	buffer_store_b32 v9, v18, s[36:39], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s20
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v54, v36, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	s_clause 0x1
	buffer_store_b32 v10, v19, s[36:39], 0 offen
	buffer_store_b32 v11, v20, s[36:39], 0 offen
	v_add_lshl_u32 v10, v54, v35, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v54, v34, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v54, v33, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s31, v31
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_add_lshl_u32 v9, v54, v32, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s31, v30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v10, v54, v31, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s31, v29
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v17, s[36:39], 0 offen
	v_add_lshl_u32 v11, v54, v30, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v12, v54, v29, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v4, v71, v65, v4
	v_div_fixup_f32 v5, v66, v65, v5
	v_div_fixup_f32 v6, v68, v65, v6
	v_div_fixup_f32 v7, v67, v65, v7
	v_div_fixup_f32 v8, v69, v65, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s31, v28
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s31, v27
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_add_lshl_u32 v1, v54, v28, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s31, v26
	v_cmp_gt_i32_e32 vcc_lo, s31, v25
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v54, v27, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s31, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s0, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v54, v26, 2
	v_add_lshl_u32 v9, v54, v25, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v54, v0, 2
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
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	buffer_store_b32 v8, v0, s[36:39], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp713:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1672
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1672
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 44284
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1672
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
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp265-.Lfunc_begin0
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
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1672
    .sgpr_count:     107
    .sgpr_spill_count: 62
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 420
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
