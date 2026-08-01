	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[4:7], s[0:1], 0x80
	s_load_b128 s[20:23], s[0:1], 0x4c
	; meta instruction
	s_load_b32 s25, s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v52, 6, v0
	v_and_b32_e32 v66, 63, v0
	s_mov_b32 s11, 0x31027000
                                        ; implicit-def: $vgpr252 : SGPR spill to VGPR lane
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v8, 2, v52
	v_or_b32_e32 v9, 36, v52
	v_or_b32_e32 v10, 20, v52
	v_or_b32_e32 v11, 4, v52
	v_or_b32_e32 v12, 38, v52
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v8, off offset:136
	scratch_store_b32 off, v9, off offset:140
	scratch_store_b32 off, v10, off offset:144
	scratch_store_b32 off, v11, off offset:148
	v_or_b32_e32 v15, 26, v52
	v_or_b32_e32 v16, 10, v52
	s_waitcnt lgkmcnt(0)
	s_and_b32 s10, 1, s4
	s_bitcmp1_b32 s4, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[63:64], null, s25, v52, v[66:67]
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s10, 1
	v_writelane_b32 v253, s12, 0
	s_cselect_b32 s13, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s20
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s16, s3
	s_cvt_f32_u32 s12, s14
	s_sub_i32 s15, 0, s14
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s24, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, 28, v52
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s24, v9
	v_or_b32_e32 v39, s24, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[9:10], null, s25, 6, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v42, s24, v11
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[10:11], null, s25, 10, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v22, 12, v52
	v_or_b32_e32 v25, 30, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s12, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v28, 14, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v43, s24, v8
	v_mov_b32_e32 v8, v9
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v13, 22, v52
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_f32 s12, s12, 0x4f7ffffe
	scratch_store_b32 off, v12, off offset:152 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v33, s24, v12
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[11:12], null, s25, 12, v[63:64]
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s12, s12
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v27, 42, v52
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x7                            ; 36-byte Folded Spill
	scratch_store_b32 off, v15, off offset:172
	scratch_store_b32 off, v16, off offset:176
	scratch_store_b32 off, v19, off offset:180
	scratch_store_b32 off, v22, off offset:184
	scratch_store_b32 off, v25, off offset:188
	scratch_store_b32 off, v28, off offset:192
	scratch_store_b64 off, v[8:9], off offset:248
	scratch_store_b32 off, v27, off offset:168
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s15, s15, s12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v44, s24, v28
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s15, s12, s15
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[28:29], null, s25, 26, v[63:64]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s12, s12, s15
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s15, s3, s22
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s12, s16, s12
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[29:30], null, s25, 28, v[63:64]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s17, s12, s14
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v14, 6, v52
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s16, s17
	s_add_i32 s16, s12, 1
	s_sub_i32 s17, s2, s14
	s_cmp_ge_u32 s2, s14
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[30:31], null, s25, 14, v[63:64]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s12, s16, s12
	s_cselect_b32 s2, s17, s2
	s_add_i32 s16, s12, 1
	s_cmp_ge_u32 s2, s14
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v53, 52, v52
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s16, s12
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s21
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v26, 40, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s12, s16
	s_sub_i32 s17, 0, s16
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v13, off offset:156
	scratch_store_b32 off, v14, off offset:160
	scratch_store_b32 off, v26, off offset:164
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s24, v13
	v_or_b32_e32 v41, s24, v14
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[13:14], null, s25, 18, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v57, 58, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v21, s24, v15
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[14:15], null, s25, 20, v[63:64]
	v_mad_u64_u32 v[31:32], null, s25, 30, v[63:64]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s12, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, s24, v16
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[15:16], null, s25, 22, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s24, v19
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s12, s12, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s24, v25
	v_mov_b32_e32 v25, v31
	v_or_b32_e32 v46, s24, v26
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s12, s12
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, 8, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v45, s24, v27
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v27, 46, v52
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	s_mul_i32 s17, s17, s12
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v54, 56, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s12, s17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s24, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s12, s12, s17
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 60, v52
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s14, s12
	s_xor_b32 s12, s20, s21
	s_mul_i32 s18, s17, s16
	s_ashr_i32 s12, s12, 31
	s_sub_i32 s14, s14, s18
	s_add_i32 s18, s17, 1
	s_sub_i32 s19, s14, s16
	s_cmp_ge_u32 s14, s16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v47, s24, v27
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s17, s18, s17
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s17, 1
	s_cmp_ge_u32 s14, s16
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[49:50], null, s25, 44, v[63:64]
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s14, s18, s17
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s16, s15, s24
	v_mad_u64_u32 v[50:51], null, s25, 46, v[63:64]
	s_mul_i32 s15, s16, s25
	scratch_store_b32 off, v53, off offset:384 ; 4-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s15, v9, 1
	v_mov_b32_e32 v9, v10
	scratch_store_b64 off, v[25:26], off offset:304 ; 8-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v26, 44, v52
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, s15, v31, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v55, s24, v54
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[9:10], off offset:264 ; 8-byte Folded Spill
	v_add_lshl_u32 v9, s15, v10, 1
	v_mov_b32_e32 v10, v11
	scratch_store_b32 off, v26, off offset:312 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v48, s24, v26
	scratch_store_b32 off, v57, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v23, s24, v52
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[10:11], off offset:280 ; 8-byte Folded Spill
	v_add_lshl_u32 v10, s15, v11, 1
	v_mov_b32_e32 v11, v30
	scratch_store_b32 off, v54, off offset:392 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v54, s24, v57
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[67:68], null, s25, 52, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[11:12], off offset:296 ; 8-byte Folded Spill
	v_mov_b32_e32 v12, v13
	v_add_lshl_u32 v11, s15, v30, 1
	scratch_store_b32 off, v58, off offset:400 ; 4-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 16, v52
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s22, v23
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[12:13], off offset:228 ; 8-byte Folded Spill
	v_add_lshl_u32 v12, s15, v13, 1
	v_mov_b32_e32 v13, v14
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, 24, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v35, s24, v3
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s22, v17
	v_writelane_b32 v253, s27, 1
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[13:14], off offset:240 ; 8-byte Folded Spill
	v_add_lshl_u32 v13, s15, v14, 1
	v_mov_b32_e32 v14, v15
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v5, 32, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v18, s24, v4
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s22, v35
	v_writelane_b32 v253, s28, 2
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[14:15], off offset:256 ; 8-byte Folded Spill
	v_add_lshl_u32 v14, s15, v15, 1
	v_mov_b32_e32 v15, v28
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s26, s25, v66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s24, v5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s22, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s15, v63, 1
	scratch_store_b64 off, v[15:16], off offset:272 ; 8-byte Folded Spill
	v_mov_b32_e32 v16, v29
	v_add_lshl_u32 v15, s15, v28, 1
	v_writelane_b32 v253, s29, 3
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s22, v38
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[16:17], off offset:288 ; 8-byte Folded Spill
	v_add_lshl_u32 v16, s15, v29, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[28:29], null, s25, 34, v[63:64]
	v_mad_u64_u32 v[29:30], null, s25, 36, v[63:64]
	v_mad_u64_u32 v[30:31], null, s25, 38, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_writelane_b32 v253, s19, 4
	v_mov_b32_e32 v26, v28
	scratch_store_b32 off, v27, off offset:316 ; 4-byte Folded Spill
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s22, v43
	v_cmp_gt_i32_e64 s27, s22, v42
	v_writelane_b32 v253, s17, 5
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[26:27], off offset:320 ; 8-byte Folded Spill
	v_mov_b32_e32 v27, v29
	v_add_lshl_u32 v26, s15, v28, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v6, 34, v52
	v_writelane_b32 v253, s18, 6
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s26
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[27:28], off offset:328 ; 8-byte Folded Spill
	v_mov_b32_e32 v28, v30
	v_add_lshl_u32 v27, s15, v29, 1
	v_writelane_b32 v253, s27, 7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v7, 18, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v36, s24, v6
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[28:29], off offset:336 ; 8-byte Folded Spill
	v_add_lshl_u32 v28, s15, v30, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[30:31], null, s25, 40, v[63:64]
	v_mad_u64_u32 v[31:32], null, s25, 42, v[63:64]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, s24, v22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s22, v24
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v40, s24, v7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s36, s22, v44
	v_mov_b32_e32 v29, v30
	v_cmp_gt_i32_e64 s34, s22, v22
	v_cmp_gt_i32_e64 s28, s22, v37
	v_cmp_gt_i32_e64 s30, s22, v21
	v_cmp_gt_i32_e64 s33, s22, v20
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[29:30], off offset:344 ; 8-byte Folded Spill
	v_add_lshl_u32 v29, s15, v30, 1
	v_mov_b32_e32 v30, v31
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s35, s22, v19
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s9, s9, 0xffff
	s_clause 0x5                            ; 28-byte Folded Spill
	scratch_store_b32 off, v3, off offset:116
	scratch_store_b32 off, v4, off offset:120
	scratch_store_b32 off, v5, off offset:124
	scratch_store_b32 off, v6, off offset:128
	scratch_store_b32 off, v7, off offset:132
	scratch_store_b64 off, v[30:31], off offset:352
	v_add_lshl_u32 v30, s15, v31, 1
	v_mov_b32_e32 v31, v49
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v3, s25, 4, v63
	v_mad_u64_u32 v[5:6], null, s25, 24, v[63:64]
	v_lshl_add_u32 v7, s25, 2, v63
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[31:32], off offset:360 ; 8-byte Folded Spill
	v_add_lshl_u32 v31, s15, v49, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v49, 48, v52
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v6, s25, 5, v63
	scratch_store_b32 off, v49, off offset:376 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v51, s24, v49
	v_or_b32_e32 v49, s24, v53
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v53, 54, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:220
	scratch_store_b32 off, v53, off offset:388
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v56, s24, v53
	v_or_b32_e32 v53, s24, v58
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[58:59], null, s25, 48, v[63:64]
	v_mad_u64_u32 v[59:60], null, s25, 50, v[63:64]
	v_mad_u64_u32 v[60:61], null, s25, 56, v[63:64]
	v_mad_u64_u32 v[61:62], null, s25, 58, v[63:64]
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v57, v58
	v_mov_b32_e32 v32, v50
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[57:58], off offset:408 ; 8-byte Folded Spill
	v_add_lshl_u32 v57, s15, v58, 1
	v_mov_b32_e32 v58, v59
	scratch_store_b64 off, v[58:59], off offset:416 ; 8-byte Folded Spill
	v_add_lshl_u32 v58, s15, v59, 1
	v_mov_b32_e32 v59, v60
	scratch_store_b64 off, v[59:60], off offset:424 ; 8-byte Folded Spill
	v_add_lshl_u32 v59, s15, v60, 1
	v_mov_b32_e32 v60, v61
	scratch_store_b64 off, v[60:61], off offset:432 ; 8-byte Folded Spill
	v_add_lshl_u32 v60, s15, v61, 1
	v_mov_b32_e32 v61, v67
	scratch_store_b64 off, v[61:62], off offset:440 ; 8-byte Folded Spill
	v_add_lshl_u32 v61, s15, v67, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[67:68], null, s25, 60, v[63:64]
	v_mad_u64_u32 v[68:69], null, s25, 54, v[63:64]
	v_mov_b32_e32 v62, v63
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[32:33], off offset:368 ; 8-byte Folded Spill
	v_add_lshl_u32 v32, s15, v50, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 50, v52
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[69:70], null, s25, 62, v[63:64]
	scratch_store_b64 off, v[62:63], off offset:196 ; 8-byte Folded Spill
	v_mov_b32_e32 v62, v67
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[62:63], off offset:448 ; 8-byte Folded Spill
	v_add_lshl_u32 v62, s15, v67, 1
	v_mov_b32_e32 v67, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v52, off offset:100
	scratch_store_b32 off, v2, off offset:112
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v2, s25, 3, v63
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v52, 62, v52
	scratch_store_b32 off, v7, off offset:236 ; 4-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s15, v7, 1
	v_lshlrev_b32_e32 v66, 1, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:204
	scratch_store_b32 off, v52, off offset:404
	v_add_lshl_u32 v2, s15, v2, 1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v52, s24, v52
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[67:68], off offset:104 ; 8-byte Folded Spill
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s22, v41
	v_mov_b32_e32 v4, v5
	scratch_store_b32 off, v3, off offset:208 ; 4-byte Folded Spill
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v3, s15, v3, 1
	v_writelane_b32 v253, s29, 8
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	scratch_store_b64 off, v[4:5], off offset:212 ; 8-byte Folded Spill
	v_writelane_b32 v253, s31, 9
	v_add_lshl_u32 v4, s15, v5, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s22, v39
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v5, s15, v6, 1
	v_writelane_b32 v253, s34, 10
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s22, v40
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_lshl_add_u32 v6, s25, 1, v63
	v_writelane_b32 v253, s36, 11
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s22, v34
	scratch_store_b32 off, v6, off offset:224 ; 4-byte Folded Spill
	v_writelane_b32 v253, s17, 12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v6, s15, v6, 1
	v_mov_b32_e32 v63, v68
	scratch_store_b32 off, v50, off offset:380 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v50, s24, v50
	v_writelane_b32 v253, s19, 13
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s22, v46
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_writelane_b32 v253, s28, 14
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s22, v48
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s31, s26
	v_writelane_b32 v253, s30, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s34, s26
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[63:64], off offset:456 ; 8-byte Folded Spill
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_writelane_b32 v253, s33, 16
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s36, s26
	v_dual_mov_b32 v64, v69 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_and_b32 vcc_lo, s17, s26
	v_writelane_b32 v253, s35, 17
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s22, v36
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s22, v33
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	v_writelane_b32 v253, s17, 18
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s22, v45
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s30, s26
	v_writelane_b32 v253, s18, 19
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s33, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s22, v47
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s35, s26
	v_writelane_b32 v253, s19, 20
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s22, v51
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s26
	v_writelane_b32 v253, s27, 21
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s22, v50
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s26
	v_writelane_b32 v253, s28, 22
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s26
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[64:65], off offset:464 ; 8-byte Folded Spill
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s26
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v65, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s30, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s22, v55
	v_writelane_b32 v253, s29, 23
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s22, v54
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s26
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v65, 0x90, v65
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s22, v49
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s26
	v_writelane_b32 v253, s30, 24
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s22, v53
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s22, v56
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_xor_b32_e32 v65, v65, v66
	v_add_lshl_u32 v63, s15, v68, 1
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s26
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s22, v52
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s30, s26
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v64, s15, v69, 1
	v_add_nc_u32_e32 v214, 0, v65
	v_xor_b32_e32 v66, 0x120, v65
	v_xor_b32_e32 v67, 0x240, v65
	v_xor_b32_e32 v65, 0x360, v65
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s26
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x7
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s31, s26
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x5
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_add_nc_u32 v215, 0, v66
	s_clause 0xf
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	buffer_load_u16 v57, v57, s[8:11], 0 offen
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	buffer_load_u16 v58, v58, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	buffer_load_u16 v64, v64, s[8:11], 0 offen
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	v_add_nc_u32_e32 v217, 0, v65
	s_clause 0x1
	buffer_load_u16 v61, v61, s[8:11], 0 offen
	buffer_load_u16 v62, v62, s[8:11], 0 offen
	v_writelane_b32 v253, s17, 25
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s8, s14, s12
	v_writelane_b32 v252, s27, 0
	s_sub_i32 s8, s8, s12
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s10, s23, 63
	v_writelane_b32 v253, s18, 26
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s12, s8
	v_writelane_b32 v252, s26, 1
	s_cvt_f32_u32 s9, s12
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v216, 0, v67
	v_writelane_b32 v253, s28, 27
	s_mov_b32 s34, 0
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v68, s9
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s9, s10, 31
	v_writelane_b32 v252, s31, 2
	v_writelane_b32 v253, s29, 28
	s_lshr_b32 s9, s9, 26
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v214, v1
	s_waitcnt vmcnt(30)
	ds_store_b16 v214, v2 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v214, v3 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v214, v4 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v214, v5 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v214, v29 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v214, v57 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v214, v59 offset:7168
	ds_store_b16 v215, v6
	ds_store_b16 v215, v9 offset:1024
	ds_store_b16 v215, v12 offset:2048
	ds_store_b16 v215, v15 offset:3072
	ds_store_b16 v215, v26 offset:4096
	ds_store_b16 v215, v30 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v215, v58 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v215, v60 offset:7168
	ds_store_b16 v216, v7
	ds_store_b16 v216, v10 offset:1024
	ds_store_b16 v216, v13 offset:2048
	ds_store_b16 v216, v16 offset:3072
	ds_store_b16 v216, v27 offset:4096
	ds_store_b16 v216, v31 offset:5120
	s_waitcnt vmcnt(1)
	ds_store_b16 v216, v61 offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b16 v216, v62 offset:7168
	ds_store_b16 v217, v8
	ds_store_b16 v217, v11 offset:1024
	ds_store_b16 v217, v14 offset:2048
	ds_store_b16 v217, v25 offset:3072
	ds_store_b16 v217, v28 offset:4096
	ds_store_b16 v217, v32 offset:5120
	ds_store_b16 v217, v63 offset:6144
	ds_store_b16 v217, v64 offset:7168
	v_writelane_b32 v253, s25, 29
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s9, s10, s9
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s17, s9, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s4, s4, 0x10008
	v_writelane_b32 v253, s19, 30
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s4, v68
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	v_writelane_b32 v253, s30, 31
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s24, s6
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s11, s24, s5
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s9, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s11, s11, s7
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s9, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s23, s9
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s10, s9, 31
	s_lshr_b32 s10, s10, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s9, s9, s10
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s10, s11, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s9, s9, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s34, s10, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s17, s17, s9
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s13
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s9, 1, v1
	v_writelane_b32 v252, s9, 3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s9, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 64
	s_min_i32 s9, s23, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 26
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s9, s9, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s17, s17, s9
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_lshlrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v97, 6, v0
	v_lshlrev_b32_e32 v103, 2, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s34, s17
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v104, 64, v97
	v_lshlrev_b32_e32 v98, 2, v0
	s_mov_b32 s9, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr98
.LBB0_7:                                ; %Flow743
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b32 s10, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v99, 15, v0
	v_and_b32_e32 v100, 0x60, v0
	v_and_b32_e32 v102, 64, v0
	v_and_b32_e32 v101, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s9
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
	v_writelane_b32 v252, s10, 4
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
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
	v_lshlrev_b32_e32 v1, 4, v0
	v_lshlrev_b32_e32 v2, 7, v99
	v_and_b32_e32 v0, 32, v0
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v4, 9, v99
	v_lshlrev_b32_e32 v3, 6, v100
	v_and_b32_e32 v1, 0x70, v1
	v_lshlrev_b32_e32 v5, 1, v102
	v_lshrrev_b32_e32 v7, 4, v0
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v60, v57
	v_or3_b32 v3, v2, v3, v1
	scratch_load_b64 v[65:66], off, off offset:104 ; 8-byte Folded Reload
	v_or3_b32 v4, v7, v4, v5
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s7, v17
	v_dual_mov_b32 v62, v57 :: v_dual_add_nc_u32 v7, 0, v3
	v_xad_u32 v10, v3, 16, 0
	v_xad_u32 v11, v3, 32, 0
	v_writelane_b32 v252, s36, 5
	ds_load_b128 v[25:28], v7
	ds_load_b128 v[29:32], v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:96
	scratch_load_b32 v17, off, off offset:100
	v_xad_u32 v12, v3, 48, 0
	s_xor_b32 s9, s3, s20
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_ashr_i32 s9, s9, 31
	v_writelane_b32 v252, s37, 6
	s_xor_b32 s2, s2, s9
	s_cvt_u32_f32 s4, s4
	s_sub_i32 s2, s2, s9
	s_sub_i32 s9, 0, s12
	s_mul_i32 s10, s2, s20
	s_mul_i32 s9, s9, s4
	v_writelane_b32 v252, s38, 7
	s_sub_i32 s3, s3, s10
	s_mul_hi_u32 s9, s4, s9
	s_abs_i32 s10, s3
	s_add_i32 s4, s4, s9
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:476 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:492 ; 16-byte Folded Spill
	ds_load_b128 v[25:28], v11
	ds_load_b128 v[29:32], v12
	s_mul_hi_u32 s4, s10, s4
	v_writelane_b32 v252, s39, 8
	v_dual_mov_b32 v59, v57 :: v_dual_lshlrev_b32 v8, 3, v99
	v_lshrrev_b32_e32 v9, 2, v101
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s11, s4, s12
	s_ashr_i32 s9, s3, 31
	s_ashr_i32 s8, s8, 31
	s_sub_i32 s14, s10, s11
	v_writelane_b32 v252, s16, 9
	v_or3_b32 v13, v4, v9, v8
	v_xad_u32 v4, v3, 64, 0
	s_xor_b32 s13, s9, s8
	s_add_i32 s15, s4, 1
	s_sub_i32 s16, s14, s12
	v_xad_u32 v7, 0x50, v3, 0
	s_cmp_ge_u32 s14, s12
	v_lshrrev_b32_e32 v6, 5, v100
	s_cselect_b32 s4, s15, s4
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:512 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:528 ; 16-byte Folded Spill
	s_cselect_b32 s14, s16, s14
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[29:32], v7
	s_add_i32 s15, s4, 1
	s_load_b128 s[8:11], s[0:1], 0x6c
	s_cmp_ge_u32 s14, s12
	v_lshl_or_b32 v6, v99, 8, v6
	s_cselect_b32 s4, s15, s4
	v_cmp_eq_u32_e32 vcc_lo, 0, v102
	s_xor_b32 s4, s4, s13
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s16, s2, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s4, s4, s13
	v_or3_b32 v14, v6, v9, v8
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s4, s4, s16
	s_load_b32 s16, s[0:1], 0x7c
	v_dual_mov_b32 v61, v57 :: v_dual_and_b32 v6, 0x7c, v103
	v_cndmask_b32_e64 v7, 0x208, 0, vcc_lo
	v_xad_u32 v4, 0x60, v3, 0
	v_cndmask_b32_e64 v9, 0x108, 0, vcc_lo
	v_or_b32_e32 v12, v1, v2
	v_xad_u32 v3, 0x70, v3, 0
	v_xor_b32_e32 v1, v7, v6
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[25:28], off offset:544
	scratch_store_b128 off, v[29:32], off offset:560
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[29:32], v3
	v_dual_mov_b32 v64, v57 :: v_dual_lshlrev_b32 v3, 4, v0
	v_cndmask_b32_e64 v11, 0x404, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v101
	v_and_b32_e32 v6, 64, v97
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v23, s7, v23
	v_add_nc_u32_e32 v43, s7, v43
	v_add_nc_u32_e32 v42, s7, v42
	v_add_nc_u32_e32 v41, s7, v41
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_add_nc_u32 v24, s7, v24
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v22, s7, v22
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_add_nc_u32 v44, s7, v44
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[25:28], off offset:576 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[29:32], off offset:592 ; 16-byte Folded Spill
	v_dual_mov_b32 v27, v57 :: v_dual_add_nc_u32 v4, 0, v6
	v_mov_b32_e32 v29, v57
	scratch_store_b32 off, v6, off offset:1568 ; 4-byte Folded Spill
	v_mov_b32_e32 v26, v57
	v_dual_mov_b32 v32, v57 :: v_dual_add_nc_u32 v35, s7, v35
	v_mov_b32_e32 v28, v57
	v_add_nc_u32_e32 v40, s7, v40
	v_add_nc_u32_e32 v39, s7, v39
	v_dual_mov_b32 v16, v57 :: v_dual_add_nc_u32 v37, s7, v37
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_add_nc_u32 v18, s7, v18
	v_add_nc_u32_e32 v21, s7, v21
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_add_nc_u32 v20, s7, v20
	v_dual_mov_b32 v196, 0xff800000 :: v_dual_add_nc_u32 v19, s7, v19
	v_add_nc_u32_e32 v38, s7, v38
	v_add_nc_u32_e32 v36, s7, v36
	v_add_nc_u32_e32 v34, s7, v34
	v_add_nc_u32_e32 v33, s7, v33
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_add_nc_u32 v46, s7, v46
	v_add_nc_u32_e32 v45, s7, v45
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v48, s7, v48
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_add_nc_u32 v47, s7, v47
	v_dual_mov_b32 v30, v57 :: v_dual_add_nc_u32 v51, s7, v51
	v_dual_mov_b32 v15, v57 :: v_dual_add_nc_u32 v50, s7, v50
	v_add_nc_u32_e32 v49, s7, v49
	v_add_nc_u32_e32 v56, s7, v56
	v_add_nc_u32_e32 v55, s7, v55
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_add_nc_u32 v54, s7, v54
	v_dual_mov_b32 v250, 0xff800000 :: v_dual_add_nc_u32 v53, s7, v53
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v52, s7, v52
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x8
	s_load_b64 s[40:41], s[0:1], 0x30
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s0, s4, s23
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s2, s9
	.loc	1 860 31                        ; attention.py:860:31
	v_writelane_b32 v252, s0, 10
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s10
	s_mov_b32 s52, 0
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	v_lshl_add_u32 v121, v99, 1, 0
	s_mov_b32 s53, s52
	v_readlane_b32 s4, v252, 4
	s_mov_b32 s54, s52
	s_mov_b32 s55, s52
	s_mov_b32 s56, s52
	s_mov_b32 s57, s52
	s_mov_b32 s58, s52
	s_mov_b32 s59, s52
	v_mov_b32_e32 v184, 0xff800000
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v188, 0xff800000
	v_mov_b32_e32 v222, 0xff800000
	v_mov_b32_e32 v218, 0xff800000
	v_mov_b32_e32 v212, 0xff800000
	v_mov_b32_e32 v204, v57
	v_mov_b32_e32 v202, v57
	v_mov_b32_e32 v200, v57
	v_mov_b32_e32 v192, 0xff800000
	v_mov_b32_e32 v190, 0xff800000
	v_mov_b32_e32 v158, 0xff800000
	v_mov_b32_e32 v156, 0xff800000
	v_mov_b32_e32 v154, 0xff800000
	v_mov_b32_e32 v152, 0xff800000
	v_mov_b32_e32 v150, 0xff800000
	v_mov_b32_e32 v148, 0xff800000
	v_mov_b32_e32 v146, 0xff800000
	v_mov_b32_e32 v144, 0xff800000
	v_mov_b32_e32 v142, 0xff800000
	v_mov_b32_e32 v140, 0xff800000
	v_mov_b32_e32 v138, 0xff800000
	v_mov_b32_e32 v220, 0xff800000
	v_mov_b32_e32 v224, 0xff800000
	v_mov_b32_e32 v120, 0xff800000
	v_mov_b32_e32 v118, 0xff800000
	v_mov_b32_e32 v116, 0xff800000
	v_mov_b32_e32 v194, 0xff800000
	v_writelane_b32 v254, s17, 0
	v_mov_b16_e64 v236.l, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s29, s8, 0x3fb8aa3b
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s13, 0xffff
	s_mov_b32 s48, s12
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s15, 0xffff
	s_mov_b32 s44, s14
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v63, v57
	scratch_store_b32 off, v13, off offset:472 ; 4-byte Folded Spill
	v_mov_b32_e32 v25, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v193, v57
	v_dual_mov_b32 v208, v57 :: v_dual_mov_b32 v185, 0xff800000
	v_mov_b32_e32 v206, v57
	v_mov_b32_e32 v191, v57
	v_mov_b32_e32 v187, 0xff800000
	v_mov_b32_e32 v189, 0xff800000
	v_mov_b32_e32 v139, 0xff800000
	v_mov_b32_e32 v141, 0xff800000
	v_mov_b32_e32 v143, 0xff800000
	v_mov_b32_e32 v145, 0xff800000
	v_mov_b32_e32 v147, 0xff800000
	v_mov_b32_e32 v149, 0xff800000
	v_mov_b32_e32 v209, 0xff800000
	v_mov_b32_e32 v251, 0xff800000
	v_mov_b32_e32 v219, 0xff800000
	v_mov_b32_e32 v211, 0xff800000
	v_mov_b32_e32 v213, 0xff800000
	v_mov_b32_e32 v227, 0xff800000
	v_mov_b32_e32 v207, 0xff800000
	v_mov_b32_e32 v205, 0xff800000
	v_mov_b32_e32 v203, 0xff800000
	v_mov_b32_e32 v201, 0xff800000
	v_mov_b32_e32 v199, 0xff800000
	v_mov_b32_e32 v221, 0xff800000
	v_mov_b32_e32 v225, 0xff800000
	v_mov_b32_e32 v223, 0xff800000
	v_mov_b32_e32 v105, 0xff800000
	v_mov_b32_e32 v197, 0xff800000
	v_mov_b32_e32 v107, 0xff800000
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_mov_b32 v210, 0xff800000
	v_lshlrev_b32_e32 v8, 2, v65
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s4, v65
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v7, v9, v8
	v_lshl_or_b32 v8, v0, 3, v1
	v_mov_b32_e32 v9, v57
	scratch_store_b32 off, v12, off offset:608 ; 4-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v252, s0, 11
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v10, 60, v10
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v0, s11, v17
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s0, s11, s24
	v_writelane_b32 v252, s24, 12
	v_xor_b32_e32 v2, v11, v10
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v10, v57
	s_add_i32 s0, s1, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[67:68], null, s16, v65, v[0:1]
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v1, 0x7632
	v_or3_b32 v6, v2, v3, v6
	v_xor_b32_e32 v2, 16, v12
	v_xor_b32_e32 v3, 32, v12
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_cndmask_b32_e32 v1, 0x3276, v1, vcc_lo
	v_add_nc_u32_e32 v226, v4, v5
	v_xor_b32_e32 v4, 0x70, v12
	v_mov_b32_e32 v5, v57
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v1, v1, 8, v1
	s_add_i32 s0, s0, s3
	s_mov_b64 s[2:3], s[22:23]
	v_writelane_b32 v252, s0, 13
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v1, 0x760076, v1
	s_lshl_b32 s0, s4, 1
	v_writelane_b32 v252, s16, 14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v1, 4, v1
	v_writelane_b32 v252, s0, 15
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v174, 0x5040504, v0
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v101, off offset:1556 ; 4-byte Folded Spill
	v_and_b32_e32 v175, 0x7060706, v1
	v_xor_b32_e32 v1, 64, v12
	v_xor_b32_e32 v2, 0x50, v12
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v102, off offset:1560 ; 4-byte Folded Spill
	v_xor_b32_e32 v3, 0x60, v12
	s_lshl_b32 s0, s4, 2
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v12
	v_mov_b32_e32 v12, v57
	v_writelane_b32 v252, s0, 16
	s_lshl_b32 s0, s4, 3
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v0
	v_writelane_b32 v252, s0, 17
	s_lshl_b32 s0, s4, 4
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x820, v8
	v_writelane_b32 v252, s0, 18
	s_lshl_b32 s0, s4, 5
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0xc30, v8
	v_writelane_b32 v252, s0, 19
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0x1040, v8
	v_writelane_b32 v252, s52, 20
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 16, v13
	v_writelane_b32 v252, s53, 21
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x410, v8
	v_writelane_b32 v252, s54, 22
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	v_writelane_b32 v252, s55, 23
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x1860, v8
	v_writelane_b32 v252, s56, 24
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x1c70, v8
	v_writelane_b32 v252, s57, 25
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 8, v13
	v_writelane_b32 v252, s58, 26
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1450, v8
	v_writelane_b32 v252, s59, 27
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	v_writelane_b32 v252, s0, 28
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 32, v13
	v_writelane_b32 v252, s1, 29
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 40, v13
	v_writelane_b32 v252, s2, 30
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 48, v13
	v_writelane_b32 v252, s3, 31
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 56, v13
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x48, v13
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x50, v13
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0x58, v13
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0x60, v13
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x70, v13
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 0x78, v13
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v3, 0x210, v7
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v4, 0x420, v7
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v13, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_lshl_or_b32 v1, v99, 10, v103
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mov_b32_e32 v2, v57
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	v_mov_b32_e32 v3, v57
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_mov_b32_e32 v4, v57
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x630, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v7
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa50, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc60, v7
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:768
	scratch_store_b32 off, v7, off offset:612
	v_xor_b32_e32 v0, 0xe70, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v7, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v14
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:828
	scratch_store_b32 off, v14, off offset:508
	v_xor_b32_e32 v0, 0x78, v14
	v_mov_b32_e32 v14, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:832
	scratch_store_b32 off, v103, off offset:1564
	v_xor_b32_e32 v0, 4, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 12, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 20, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 28, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:868 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 36, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:872 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:876 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 44, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:884 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 52, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:892
	scratch_store_b32 off, v1, off offset:836
	v_xor_b32_e32 v0, 60, v1
	v_dual_mov_b32 v1, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:896 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x808, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:900 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v6
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:904 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1818, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:908 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2020, v6
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2828, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:916 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x3030, v6
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:920
	scratch_store_b32 off, v6, off offset:620
	v_xor_b32_e32 v0, 0x3838, v6
	v_mov_b32_e32 v6, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:924
	scratch_store_b32 off, v100, off offset:1552
	v_lshlrev_b32_e32 v0, 1, v100
	v_add_nc_u32_e32 v115, 0, v0
	v_subrev_nc_u32_e32 v0, s5, v23
	scratch_store_b32 off, v0, off offset:1292 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v43
	scratch_store_b32 off, v0, off offset:1296 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v42
	scratch_store_b32 off, v0, off offset:1300 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v41
	scratch_store_b32 off, v0, off offset:1304 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v66
	scratch_store_b32 off, v0, off offset:1308 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v24
	scratch_store_b32 off, v0, off offset:1312 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v22
	scratch_store_b32 off, v0, off offset:1316 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v44
	scratch_store_b32 off, v0, off offset:1320 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v35
	scratch_store_b32 off, v0, off offset:1324 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v40
	scratch_store_b32 off, v0, off offset:1328 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v39
	scratch_store_b32 off, v0, off offset:1332 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v37
	scratch_store_b32 off, v0, off offset:1336 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v18
	scratch_store_b32 off, v0, off offset:1340 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v21
	scratch_store_b32 off, v0, off offset:1344 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v20
	scratch_store_b32 off, v0, off offset:1348 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v19
	scratch_store_b32 off, v0, off offset:1352 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v38
	scratch_store_b32 off, v0, off offset:1356 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v36
	scratch_store_b32 off, v0, off offset:1360 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v34
	scratch_store_b32 off, v0, off offset:1364 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v33
	scratch_store_b32 off, v0, off offset:1368 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v46
	scratch_store_b32 off, v0, off offset:1372 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v45
	scratch_store_b32 off, v0, off offset:1376 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v48
	scratch_store_b32 off, v0, off offset:1380 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v47
	scratch_store_b32 off, v0, off offset:1384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v51
	scratch_store_b32 off, v0, off offset:1388 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v50
	scratch_store_b32 off, v0, off offset:1392 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v49
	scratch_store_b32 off, v0, off offset:1396 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v56
	scratch_store_b32 off, v0, off offset:1400 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v55
	scratch_store_b32 off, v0, off offset:1404 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v54
	scratch_store_b32 off, v0, off offset:1408 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v53
	scratch_store_b32 off, v0, off offset:1412 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s5, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1416
	scratch_store_b32 off, v23, off offset:1164
	v_add_nc_u32_e32 v0, s6, v23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1420
	scratch_store_b32 off, v43, off offset:1180
	v_add_nc_u32_e32 v0, s6, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1424
	scratch_store_b32 off, v42, off offset:1196
	v_add_nc_u32_e32 v0, s6, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1428
	scratch_store_b32 off, v41, off offset:1212
	v_add_nc_u32_e32 v0, s6, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1432
	scratch_store_b32 off, v66, off offset:1228
	v_add_nc_u32_e32 v0, s6, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1436
	scratch_store_b32 off, v24, off offset:1244
	v_add_nc_u32_e32 v0, s6, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1440
	scratch_store_b32 off, v22, off offset:1260
	v_add_nc_u32_e32 v0, s6, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1444
	scratch_store_b32 off, v44, off offset:1276
	v_add_nc_u32_e32 v0, s6, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1448
	scratch_store_b32 off, v35, off offset:1168
	v_add_nc_u32_e32 v0, s6, v35
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1452
	scratch_store_b32 off, v40, off offset:1184
	v_add_nc_u32_e32 v0, s6, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1456
	scratch_store_b32 off, v39, off offset:1200
	v_add_nc_u32_e32 v0, s6, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1460
	scratch_store_b32 off, v37, off offset:1216
	v_add_nc_u32_e32 v0, s6, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1464
	scratch_store_b32 off, v18, off offset:1232
	v_add_nc_u32_e32 v0, s6, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1468
	scratch_store_b32 off, v21, off offset:1248
	v_add_nc_u32_e32 v0, s6, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1472
	scratch_store_b32 off, v20, off offset:1264
	v_add_nc_u32_e32 v0, s6, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1476
	scratch_store_b32 off, v19, off offset:1280
	v_add_nc_u32_e32 v0, s6, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1480
	scratch_store_b32 off, v38, off offset:1172
	v_add_nc_u32_e32 v0, s6, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1484
	scratch_store_b32 off, v36, off offset:1188
	v_add_nc_u32_e32 v0, s6, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1488
	scratch_store_b32 off, v34, off offset:1204
	v_add_nc_u32_e32 v0, s6, v34
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1492
	scratch_store_b32 off, v33, off offset:1220
	v_add_nc_u32_e32 v0, s6, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1496
	scratch_store_b32 off, v46, off offset:1236
	v_add_nc_u32_e32 v0, s6, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1500
	scratch_store_b32 off, v45, off offset:1252
	v_add_nc_u32_e32 v0, s6, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1504
	scratch_store_b32 off, v48, off offset:1268
	v_add_nc_u32_e32 v0, s6, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1508
	scratch_store_b32 off, v47, off offset:1284
	v_add_nc_u32_e32 v0, s6, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1512
	scratch_store_b32 off, v51, off offset:1176
	v_add_nc_u32_e32 v0, s6, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1516
	scratch_store_b32 off, v50, off offset:1192
	v_add_nc_u32_e32 v0, s6, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1520
	scratch_store_b32 off, v49, off offset:1208
	v_add_nc_u32_e32 v0, s6, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1524
	scratch_store_b32 off, v56, off offset:1224
	v_add_nc_u32_e32 v0, s6, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1528
	scratch_store_b32 off, v55, off offset:1240
	v_add_nc_u32_e32 v0, s6, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1532
	scratch_store_b32 off, v54, off offset:1256
	v_add_nc_u32_e32 v0, s6, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1536
	scratch_store_b32 off, v53, off offset:1272
	v_add_nc_u32_e32 v0, s6, v53
	v_mad_u64_u32 v[18:19], null, s11, 46, v[67:68]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1540
	scratch_store_b32 off, v52, off offset:1288
	v_dual_mov_b32 v51, v57 :: v_dual_add_nc_u32 v0, s6, v52
	v_mov_b32_e32 v50, v57
	scratch_store_b64 off, v[18:19], off offset:948 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 44, v[67:68]
	scratch_store_b32 off, v0, off offset:1544 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s11, 1, v67
	v_mov_b32_e32 v49, v57
	v_mov_b32_e32 v48, v57
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v46, v57
	scratch_store_b64 off, v[18:19], off offset:956 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 42, v[67:68]
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v44, v57
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v42, v57
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v40, v57
	scratch_store_b64 off, v[18:19], off offset:964 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 40, v[67:68]
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v38, v57
	v_mov_b32_e32 v37, v57
	v_mov_b32_e32 v36, v57
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v34, v57
	scratch_store_b64 off, v[18:19], off offset:972 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 38, v[67:68]
	v_mov_b32_e32 v33, v57
	v_mov_b32_e32 v24, v57
	v_mov_b32_e32 v23, v57
	v_mov_b32_e32 v22, v57
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v20, v57
	scratch_store_b64 off, v[18:19], off offset:980 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 36, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:988 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 34, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:996 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 30, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1004 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 28, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1012 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 26, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1020 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 24, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1028 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 22, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1036 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 20, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1044 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 18, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1052 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 14, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1060 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 12, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1068 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 10, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1076 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 6, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1084 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 48, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1092 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 50, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 52, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 54, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 56, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 58, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 60, v[67:68]
	scratch_store_b64 off, v[18:19], off offset:1140 ; 8-byte Folded Spill
	v_mov_b32_e32 v18, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:616
	scratch_store_b32 off, v0, off offset:928
	v_lshl_add_u32 v0, s11, 2, v67
	v_mov_b32_e32 v8, v57
	scratch_store_b64 off, v[18:19], off offset:624 ; 8-byte Folded Spill
	v_mad_u64_u32 v[18:19], null, s11, 62, v[67:68]
	scratch_store_b32 off, v0, off offset:932 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s11, 3, v67
	scratch_store_b64 off, v[18:19], off offset:1148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[17:18], null, s4, v17, v[65:66]
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s11, 4, v67
	scratch_store_b32 off, v0, off offset:940 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s11, 5, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:944
	scratch_store_b32 off, v99, off offset:1548
	v_mov_b32_e32 v0, v57
	scratch_store_b64 off, v[17:18], off offset:1156 ; 8-byte Folded Spill
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x8                            ; 72-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:1092
	scratch_load_b64 v[19:20], off, off offset:1100
	scratch_load_b64 v[49:50], off, off offset:1020
	scratch_load_b64 v[20:21], off, off offset:996
	scratch_load_b64 v[43:44], off, off offset:1044
	scratch_load_b64 v[21:22], off, off offset:1108
	scratch_load_b64 v[22:23], off, off offset:988
	scratch_load_b64 v[45:46], off, off offset:1036
	scratch_load_b64 v[33:34], off, off offset:980
	.loc	1 870 25                        ; attention.py:870:25
	v_readlane_b32 s3, v252, 14
	v_readlane_b32 s4, v252, 13
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[23:24], off, off offset:1116
	scratch_load_b64 v[46:47], off, off offset:1084
	scratch_load_b64 v[47:48], off, off offset:1028
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s34, s3
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v18, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s4, s3
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s34, s34, 64
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x6                            ; 48-byte Folded Reload
	scratch_load_b64 v[50:51], off, off offset:1076
	scratch_load_b64 v[51:52], off, off offset:1012
	scratch_load_b32 v44, off, off offset:932
	scratch_load_b64 v[52:53], off, off offset:1068
	scratch_load_b32 v48, off, off offset:936
	scratch_load_b64 v[53:54], off, off offset:1004
	scratch_load_b64 v[54:55], off, off offset:1060
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v17, s3, v17, 1
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v19, s3, v19, 1
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v49, s3, v49, 1
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v20, s3, v20, 1
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v43, s3, v43, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s31
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v21, s3, v21, 1
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v45, s3, v45, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v24, s3, v33, 1
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[33:34], off, off offset:1124
	scratch_load_b64 v[34:35], off, off offset:972
	scratch_load_b64 v[35:36], off, off offset:1132
	scratch_load_b64 v[36:37], off, off offset:964
	scratch_load_b64 v[37:38], off, off offset:1140
	scratch_load_b64 v[38:39], off, off offset:956
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v18, s3, v18, 1
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[39:40], off, off offset:1148
	scratch_load_b64 v[40:41], off, off offset:948
	v_cndmask_b32_e64 v43, 0x80000000, v43, s64
	v_add_lshl_u32 v46, s3, v46, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s30
	s_clause 0x1
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	v_add_lshl_u32 v23, s3, v23, 1
	v_add_lshl_u32 v47, s3, v47, 1
	v_add_lshl_u32 v22, s3, v22, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s33
	v_cndmask_b32_e64 v45, 0x80000000, v45, s59
	v_cndmask_b32_e64 v21, 0x80000000, v21, s35
	v_cndmask_b32_e64 v46, 0x80000000, v46, s57
	v_cndmask_b32_e64 v23, 0x80000000, v23, s65
	v_cndmask_b32_e64 v47, 0x80000000, v47, s56
	v_cndmask_b32_e64 v49, 0x80000000, v49, s52
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s67
	v_cndmask_b32_e64 v24, 0x80000000, v24, s62
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v50, s3, v50, 1
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v51, s3, v51, 1
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v44, s3, v44, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v52, s3, v52, 1
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v48, s3, v48, 1
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v53, s3, v53, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s28
	v_cndmask_b32_e64 v44, 0x80000000, v44, s63
	v_cndmask_b32_e64 v50, 0x80000000, v50, s104
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v54, s3, v54, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s37
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s54
	s_clause 0x5
	buffer_load_u16 v45, v45, s[40:43], 0 offen
	buffer_load_u16 v46, v46, s[40:43], 0 offen
	buffer_load_u16 v47, v47, s[40:43], 0 offen
	buffer_load_u16 v49, v49, s[40:43], 0 offen
	buffer_load_u16 v48, v48, s[40:43], 0 offen
	buffer_load_u16 v50, v50, s[40:43], 0 offen
	v_cndmask_b32_e64 v54, 0x80000000, v54, s47
	s_clause 0x3
	buffer_load_u16 v51, v51, s[40:43], 0 offen
	buffer_load_u16 v52, v52, s[40:43], 0 offen
	buffer_load_u16 v53, v53, s[40:43], 0 offen
	buffer_load_u16 v54, v54, s[40:43], 0 offen
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v33, s3, v33, 1
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v34, s3, v34, 1
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v35, s3, v35, 1
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v36, s3, v36, 1
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v37, s3, v37, 1
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v38, s3, v38, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s60
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v39, s3, v39, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s58
	v_cndmask_b32_e64 v35, 0x80000000, v35, s55
	v_cndmask_b32_e64 v36, 0x80000000, v36, s53
	v_cndmask_b32_e64 v37, 0x80000000, v37, s27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s39
	v_cndmask_b32_e64 v39, 0x80000000, v39, s38
	s_waitcnt vmcnt(11)
	v_cndmask_b16 v104.h, 0xff80, v17.l, s31
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v17, off, off offset:940
	scratch_load_b64 v[41:42], off, off offset:624
	s_waitcnt vmcnt(12)
	v_cndmask_b16 v104.l, 0xff80, v18.l, s30
	v_add_lshl_u32 v40, s3, v40, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0x80000000, v40, vcc_hi
	s_clause 0xd
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v37, v37, s[40:43], 0 offen
	buffer_load_u16 v39, v39, s[40:43], 0 offen
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	buffer_load_u16 v38, v38, s[40:43], 0 offen
	buffer_load_u16 v40, v40, s[40:43], 0 offen
	s_waitcnt vmcnt(25)
	v_cndmask_b16 v102.h, 0xff80, v45.l, s59
	s_waitcnt vmcnt(24)
	v_cndmask_b16 v102.l, 0xff80, v46.l, s57
	s_waitcnt vmcnt(23)
	v_cndmask_b16 v100.h, 0xff80, v47.l, s56
	s_waitcnt vmcnt(22)
	v_cndmask_b16 v98.h, 0xff80, v49.l, s52
	s_waitcnt vmcnt(21)
	v_cndmask_b16 v100.l, 0xff80, v48.l, s54
	s_waitcnt vmcnt(10)
	v_cndmask_b16 v33.h, 0xff80, v51.l, s28
	v_cndmask_b16 v98.l, 0xff80, v50.l, s104
	v_cndmask_b16 v23.h, 0xff80, v53.l, s1
	v_cndmask_b16 v111.h, 0xff80, v19.l, s33
	v_cndmask_b16 v109.h, 0xff80, v21.l, s35
	v_cndmask_b16 v103.h, 0xff80, v23.l, s65
	v_cndmask_b16 v101.h, 0xff80, v33.l, s60
	v_add_lshl_u32 v17, s3, v17, 1
	v_add_lshl_u32 v18, s3, v41, 1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[41:42], off, off offset:1052
	scratch_load_b32 v42, off, off offset:928
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v111.l, 0xff80, v20.l, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s61
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v109.l, 0xff80, v22.l, s67
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v103.l, 0xff80, v24.l, s62
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v101.l, 0xff80, v34.l, s58
	v_cndmask_b16 v99.h, 0xff80, v35.l, s55
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v99.l, 0xff80, v36.l, s53
	v_cndmask_b16 v97.h, 0xff80, v37.l, s27
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v97.l, 0xff80, v38.l, s39
	v_cndmask_b16 v33.l, 0xff80, v52.l, s37
	v_cndmask_b16 v24.h, 0xff80, v39.l, s38
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v24.l, 0xff80, v40.l, vcc_hi
	v_cndmask_b16 v23.l, 0xff80, v54.l, s47
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v41, s3, v41, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v42, s3, v42, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s46
	v_cndmask_b32_e64 v42, 0x80000000, v42, s66
	s_clause 0x5
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	buffer_load_u16 v41, v41, s[40:43], 0 offen
	buffer_load_u16 v43, v43, s[40:43], 0 offen
	buffer_load_u16 v42, v42, s[40:43], 0 offen
	buffer_load_u16 v44, v44, s[40:43], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v112.h, 0xff80, v17.l, s0
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v17, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v112.l, 0xff80, v18.l, s61
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v110.h, 0xff80, v41.l, s46
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v110.l, 0xff80, v42.l, s66
	v_cndmask_b16 v106.h, 0xff80, v43.l, s64
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v106.l, 0xff80, v44.l, s63
	v_mov_b16_e64 v236.h, v112.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, 0, v17
	ds_store_2addr_b32 v17, v112, v104 offset1:32
	scratch_load_b32 v17, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.l, v236.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v112
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s20, s0, s4
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v110, v111 offset1:32
	scratch_load_b32 v17, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v106, v109 offset1:32
	scratch_load_b32 v17, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v102, v103 offset1:32
	scratch_load_b32 v17, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v100, v101 offset1:32
	scratch_load_b32 v17, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v98, v99 offset1:32
	scratch_load_b32 v17, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v33, v97 offset1:32
	scratch_load_b32 v17, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v17, v23, v24 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v17, off, off offset:472
	scratch_load_b32 v21, off, off offset:696
	scratch_load_b32 v19, off, off offset:688
	scratch_load_b32 v22, off, off offset:700
	scratch_load_b32 v36, off, off offset:712
	scratch_load_b32 v35, off, off offset:708
	scratch_load_b32 v34, off, off offset:704
	scratch_load_b32 v20, off, off offset:692
	scratch_load_b32 v37, off, off offset:716
	scratch_load_b32 v40, off, off offset:728
	scratch_load_b32 v41, off, off offset:732
	scratch_load_b32 v38, off, off offset:720
	scratch_load_b32 v43, off, off offset:740
	scratch_load_b32 v42, off, off offset:736
	scratch_load_b32 v39, off, off offset:724
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(8)
	ds_load_u16 v50, v34 offset:256
	ds_load_u16 v51, v22 offset:256
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v17, 0, v17
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v44, v21 offset:256
	s_waitcnt vmcnt(7)
	ds_load_u16 v45, v20 offset:256
	ds_load_u16 v48, v36 offset:256
	ds_load_u16 v46, v19 offset:256
	ds_load_u16 v47, v17 offset:256
	ds_load_u16 v18, v17
	ds_load_u16 v49, v35 offset:256
	s_waitcnt vmcnt(5)
	ds_load_u16 v52, v40 offset:256
	s_waitcnt vmcnt(0)
	ds_load_u16 v53, v39 offset:256
	ds_load_u16 v54, v38 offset:256
	ds_load_u16 v55, v37 offset:256
	s_waitcnt lgkmcnt(9)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt lgkmcnt(7)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt lgkmcnt(5)
	v_lshlrev_b32_e32 v17, 16, v18
	ds_load_u16 v18, v19
	ds_load_u16 v19, v20
	ds_load_u16 v20, v21
	ds_load_u16 v21, v22
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v45
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v45, s29, v75 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v21
	ds_load_u16 v21, v34
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v21
	ds_load_u16 v21, v35
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v21
	ds_load_u16 v21, v36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v21
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v21, 0x3fb8aa3b, v17
	v_dual_mul_f32 v17, 0x3fb8aa3b, v18 :: v_dual_mul_f32 v18, 0x3fb8aa3b, v19
	v_dual_mul_f32 v19, 0x3fb8aa3b, v20 :: v_dual_mul_f32 v20, 0x3fb8aa3b, v22
	v_mul_f32_e32 v22, 0x3fb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v17, s29, v90 :: v_dual_fmac_f32 v18, s29, v91
	v_dual_fmac_f32 v19, s29, v92 :: v_dual_fmac_f32 v20, s29, v93
	scratch_load_b32 v92, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v34, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	ds_load_u16 v36, v37
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v21, s29, v89 :: v_dual_fmac_f32 v22, s29, v94
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v89, v43 offset:256
	ds_load_u16 v90, v42 offset:256
	ds_load_u16 v91, v41 offset:256
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v34, s29, v95 :: v_dual_fmac_f32 v35, s29, v96
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	ds_load_u16 v56, v92 offset:256
	ds_load_u16 v37, v38
	ds_load_u16 v38, v39
	ds_load_u16 v39, v40
	ds_load_u16 v40, v41
	ds_load_u16 v41, v42
	ds_load_u16 v42, v43
	ds_load_u16 v43, v92
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v36, 16, v36
	v_lshlrev_b32_e32 v39, 16, v39
	v_lshlrev_b32_e32 v38, 16, v38
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v40, 16, v40
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v36, 0x3fb8aa3b, v36 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v39
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v41, 0x3fb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, 0x3fb8aa3b, v40 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v43
	v_mul_f32_e32 v42, 0x3fb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v36, s29, v81 :: v_dual_fmac_f32 v37, s29, v82
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v82, 16, v50
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v38, s29, v83 :: v_dual_fmac_f32 v39, s29, v84
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v81, 16, v44
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v46
	v_dual_mul_f32 v50, 0x3fb8aa3b, v47 :: v_dual_lshlrev_b32 v83, 16, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v40, s29, v85 :: v_dual_fmac_f32 v41, s29, v86
	v_dual_fmac_f32 v42, s29, v87 :: v_dual_fmac_f32 v43, s29, v88
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v48, 0x3fb8aa3b, v82 :: v_dual_lshlrev_b32 v51, 16, v51
	v_mul_f32_e32 v46, 0x3fb8aa3b, v81
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v50, s29, v73
	v_dual_fmac_f32 v44, s29, v74 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v51
	v_dual_mul_f32 v51, 0x3fb8aa3b, v83 :: v_dual_fmac_f32 v48, s29, v78
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v78, 16, v56
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, s29, v76 :: v_dual_fmac_f32 v49, s29, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v47, s29, v77 :: v_dual_lshlrev_b32 v76, 16, v90
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v74, 16, v52
	v_lshlrev_b32_e32 v77, 16, v89
	v_lshlrev_b32_e32 v75, 16, v91
	v_lshlrev_b32_e32 v73, 16, v53
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v54 :: v_dual_mul_f32 v56, 0x3fb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v54, 0x3fb8aa3b, v73 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v51, s29, v80
	v_fmac_f32_e32 v53, s29, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v73, 0x3fb8aa3b, v76 :: v_dual_fmac_f32 v56, s29, v69
	v_dual_mul_f32 v52, 0x3fb8aa3b, v55 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, s29, v67 :: v_dual_fmac_f32 v73, s29, v70
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v74, 0x3fb8aa3b, v77 :: v_dual_mul_f32 v75, 0x3fb8aa3b, v78
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, s29, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v104.l
	v_mov_b16_e64 v104.l, v236.l
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v55, s29, v68 :: v_dual_fmac_f32 v74, s29, v71
	v_fmac_f32_e32 v75, s29, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v104
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s12, s31, vcc_lo
	s_and_b32 s15, s30, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v110.l
	v_mov_b16_e64 v110.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s12
	v_cndmask_b32_e64 v66, 0, 1, s15
	s_and_b32 s23, s61, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v110
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s21, s46, s4
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s46, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s20
	v_cndmask_b32_e64 v66, 0, 1, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v65.h, v111.l
	v_mov_b16_e64 v111.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v111
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v67.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s33, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v106.l
	v_mov_b16_e64 v106.l, v236.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s13
	s_and_b32 s25, s66, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v106
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, s2, s3
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s17
	s_and_b32 s22, s64, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s21
	v_cndmask_b32_e64 v66, 0, 1, s25
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v109.l
	v_mov_b16_e64 v109.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v109
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v68.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s35, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v102.l
	v_mov_b16_e64 v102.l, v236.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s14
	s_and_b32 s26, s63, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v102
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, s67, s3
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s18
	s_and_b32 s24, s59, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v69.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s22
	v_cndmask_b32_e64 v66, 0, 1, s26
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v103.l
	v_mov_b16_e64 v103.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v69.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s65, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v100.l
	v_mov_b16_e64 v100.l, v236.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s16
	s_and_b32 vcc_lo, s57, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v100
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s62, s3
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v70.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s24
	v_cndmask_b32_e64 v66, 0, 1, vcc_lo
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v101.l
	v_mov_b16_e64 v101.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v101
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v70.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s97, s60, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v98.l
	v_mov_b16_e64 v98.l, v236.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s97
	s_and_b32 s7, s54, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v98
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s100, s58, s4
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s4, s56, s5
	v_cndmask_b32_e64 v66, 0, 1, s100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v71.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s4
	v_cndmask_b32_e64 v66, 0, 1, s7
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v99.l
	v_mov_b16_e64 v99.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v99
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v71.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s98, s55, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v33.l
	v_mov_b16_e64 v33.l, v236.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v65
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s98
	s_and_b32 s9, s104, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v72, 0, 1, s9
	s_and_b32 s102, s53, s5
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s5, s52, s6
	v_cndmask_b32_e64 v66, 0, 1, s102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v66.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s5
	v_mov_b16_e32 v66.l, v72.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v97.l
	v_mov_b16_e64 v97.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v97
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v66.l, v66.l, v65.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s99, s27, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v236
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v236.h, v23.l
	v_mov_b16_e64 v23.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s99
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v65
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, s37, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v23
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s104, s39, s6
	s_and_b32 s6, s28, s8
	v_cndmask_b32_e64 v65, 0, 1, s104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.h, v65.l, v33.l
	v_cndmask_b32_e64 v65, 0, 1, s6
	v_mov_b16_e32 v33.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s10
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v65.h, v24.l
	v_mov_b16_e64 v24.l, v236.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.l, v65.l, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v236.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s101, s38, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v236
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v23, 0, 1, s101
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v23.l, 8, v23.l
	s_and_b32 vcc_hi, vcc_hi, s8
	s_and_b32 s8, s1, s11
	s_and_b32 s11, s47, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s47, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v24, 0, 1, vcc_hi
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v23.h, v24.l, v23.l
	v_cndmask_b32_e64 v24, 0, 1, s8
	v_mov_b16_e32 v23.l, v24.l
	v_cndmask_b32_e64 v24, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v23.l, 8, v23.l
	v_or_b16 v23.l, v24.l, v23.l
	scratch_load_b32 v24, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, 0, v24
	ds_store_b32 v24, v67
	scratch_load_b32 v24, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v68
	scratch_load_b32 v24, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v69
	scratch_load_b32 v24, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v70
	scratch_load_b32 v24, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v71
	scratch_load_b32 v24, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v66
	scratch_load_b32 v24, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v33
	scratch_load_b32 v24, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v24, off, off offset:780
	scratch_load_b32 v33, off, off offset:784
	scratch_load_b32 v66, off, off offset:788
	scratch_load_b32 v69, off, off offset:800
	scratch_load_b32 v68, off, off offset:796
	scratch_load_b32 v67, off, off offset:792
	scratch_load_b32 v72, off, off offset:776
	scratch_load_b32 v71, off, off offset:816
	scratch_load_b32 v76, off, off offset:828
	scratch_load_b32 v70, off, off offset:812
	scratch_load_b32 v77, off, off offset:832
	s_waitcnt vmcnt(5)
	ds_load_u8_d16 v65, v67 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v66 offset:128
	ds_load_u8_d16 v23, v24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v23, v33 offset:128
	ds_load_u8_d16 v24, v24 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s91, 1, v23.l
	ds_load_u8_d16 v23, v33
	ds_load_u8_d16 v33, v69 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v68 offset:128
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s95, 1, v23.l
	ds_load_u8_d16 v23, v66
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v66, v71 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s93, 1, v23.l
	ds_load_u8_d16 v23, v67
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	v_cmp_eq_u16_e64 s94, 1, v23.l
	ds_load_u8_d16 v23, v68
	scratch_load_b32 v68, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v22, 0xff800000, v22, s94
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s92, 1, v23.l
	ds_load_u8_d16 v23, v69
	scratch_load_b32 v69, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_u8_d16_hi v66, v70 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v67, v69 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v68 offset:128
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s96, 1, v23.l
	ds_load_u8_d16 v23, v68
	ds_load_u8_d16_hi v68, v76 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v23.l, 1, v23.l
	v_cmp_eq_u16_e64 s85, 1, v23.l
	ds_load_u8_d16 v23, v69
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s87, 1, v23.l
	ds_load_u8_d16 v23, v70
	scratch_load_b32 v70, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	v_cmp_eq_u16_e64 s83, 1, v23.l
	ds_load_u8_d16 v23, v71
	scratch_load_b32 v71, off, off offset:824 ; 4-byte Folded Reload
	ds_load_u8_d16 v68, v77 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v69, v71 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v69, v70 offset:128
	v_and_b16 v23.l, 1, v23.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v38, s83
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s89, 1, v23.l
	ds_load_u8_d16 v23, v70
	scratch_load_b32 v70, off, off offset:508 ; 4-byte Folded Reload
	ds_load_u8_d16_hi v24, v72 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, 0xff800000, v39, s89
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s86, 1, v23.l
	ds_load_u8_d16 v23, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v40, s86
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	v_cmp_eq_u16_e64 s88, 1, v23.l
	ds_load_u8_d16 v23, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v41, s88
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s84, 1, v23.l
	ds_load_u8_d16 v23, v77
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v42, s84
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v23.l, 1, v23.l
	v_cmp_eq_u16_e64 s90, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, 0xff800000, v43, s90
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, 0, v70
	ds_load_u8_d16 v23, v71 offset:128
	ds_load_u8_d16 v70, v72
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v70, v71
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v23.l, 1, v23.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s81, 1, v23.l
	v_and_b16 v23.l, 1, v24.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v249, 0xff800000, v50, s81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s82, 1, v23.l
	v_and_b16 v23.l, 1, v24.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v24, 0xff800000, v19, s95
	v_cndmask_b32_e64 v19, 0xff800000, v34, s92
	scratch_load_b32 v34, off, off offset:840 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v110, 0xff800000, v44, s82
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s79, 1, v23.l
	v_and_b16 v23.l, 1, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v198, 0xff800000, v45, s79
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s80, 1, v23.l
	v_and_b16 v23.l, 1, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v46, s80
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s77, 1, v23.l
	v_and_b16 v23.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v247, 0xff800000, v47, s77
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s78, 1, v23.l
	v_and_b16 v23.l, 1, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v248, 0xff800000, v48, s78
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s75, 1, v23.l
	v_and_b16 v23.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v245, 0xff800000, v49, s75
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s76, 1, v23.l
	v_and_b16 v23.l, 1, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v246, 0xff800000, v51, s76
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s73, 1, v23.l
	v_and_b16 v23.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v243, 0xff800000, v52, s73
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s74, 1, v23.l
	v_and_b16 v23.l, 1, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v244, 0xff800000, v53, s74
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s71, 1, v23.l
	v_and_b16 v23.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v241, 0xff800000, v54, s71
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s72, 1, v23.l
	v_and_b16 v23.l, 1, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v242, 0xff800000, v55, s72
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s69, 1, v23.l
	v_and_b16 v23.l, 1, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v239, 0xff800000, v56, s69
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s70, 1, v23.l
	v_and_b16 v23.l, 1, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v240, 0xff800000, v73, s70
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v23.l
	v_and_b16 v23.l, 1, v68.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v237, 0xff800000, v74, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s68, 1, v23.l
	v_and_b16 v23.l, 1, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v238, 0xff800000, v75, s68
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s103, 1, v23.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v23, 0xff800000, v18, s91
	v_cndmask_b32_e64 v18, 0xff800000, v37, s87
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0xff800000, v21, s103
	scratch_load_b32 v21, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, 0, v21
	ds_store_2addr_stride64_b32 v21, v33, v249 offset1:2
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v21.l, 1, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s3, 1, v21.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v21, 0xff800000, v20, s93
	v_cndmask_b32_e64 v20, 0xff800000, v35, s96
	v_cndmask_b32_e64 v50, 0xff800000, v17, s3
	v_cndmask_b32_e64 v17, 0xff800000, v36, s85
	ds_store_2addr_stride64_b32 v34, v50, v110 offset1:2
	scratch_load_b32 v34, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v23, v198 offset1:2
	scratch_load_b32 v34, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v24, v109 offset1:2
	scratch_load_b32 v34, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v21, v247 offset1:2
	scratch_load_b32 v34, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v22, v248 offset1:2
	scratch_load_b32 v34, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v19, v245 offset1:2
	scratch_load_b32 v34, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v20, v246 offset1:2
	scratch_load_b32 v34, off, off offset:868 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v17, v243 offset1:2
	scratch_load_b32 v34, off, off offset:872 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v18, v244 offset1:2
	scratch_load_b32 v34, off, off offset:876 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v106, v241 offset1:2
	scratch_load_b32 v34, off, off offset:880 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v172, v242 offset1:2
	scratch_load_b32 v34, off, off offset:884 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v113, v239 offset1:2
	scratch_load_b32 v34, off, off offset:888 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v114, v240 offset1:2
	scratch_load_b32 v34, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v111, v237 offset1:2
	scratch_load_b32 v34, off, off offset:896 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v112, v238 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v34, off, off offset:620
	scratch_load_b32 v43, off, off offset:900
	scratch_load_b32 v44, off, off offset:904
	scratch_load_b32 v45, off, off offset:908
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v34, 0, v34
	s_waitcnt vmcnt(2)
	ds_load_2addr_b32 v[79:80], v43 offset1:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_b32 v[81:82], v44 offset1:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[83:84], v45 offset1:32
	ds_load_2addr_b32 v[170:171], v34 offset0:64 offset1:96
	ds_load_2addr_b32 v[168:169], v43 offset0:64 offset1:96
	ds_load_2addr_b32 v[166:167], v44 offset0:64 offset1:96
	ds_load_2addr_b32 v[164:165], v45 offset0:64 offset1:96
	ds_load_2addr_b32 v[77:78], v34 offset1:32
	scratch_load_b32 v34, off, off offset:912 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[162:163], v34 offset1:32
	ds_load_2addr_b32 v[103:104], v34 offset0:64 offset1:96
	scratch_load_b32 v34, off, off offset:916 ; 4-byte Folded Reload
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(2)
	v_mov_b32_dpp v35, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v77, v77 :: v_dual_max_f32 v37, v79, v79
	v_dual_max_f32 v38, v81, v81 :: v_dual_max_f32 v39, v83, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v40, v84, v84
.Ltmp3:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[160:161], v34 offset1:32
	ds_load_2addr_b32 v[101:102], v34 offset0:64 offset1:96
	scratch_load_b32 v34, off, off offset:920 ; 4-byte Folded Reload
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp5:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[87:88], v34 offset1:32
	ds_load_2addr_b32 v[99:100], v34 offset0:64 offset1:96
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	scratch_load_b32 v34, off, off offset:924 ; 4-byte Folded Reload
.Ltmp7:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[85:86], v34 offset1:32
	ds_load_2addr_b32 v[97:98], v34 offset0:64 offset1:96
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v35, v37
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v38, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v38, v35, v38
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v38, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v38, v80, v80
	v_max_f32_e32 v35, v39, v35
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v39
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v39
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v39
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v36, 31
	v_mov_b32_dpp v36, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s0, v37, 31
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v38, v37
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v36, s1 :: v_dual_max_f32 v37, v37, v38
	v_mov_b32_dpp v38, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v35, -1, -1 op_sel:[1,0]
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
	v_max_f32_e32 v39, v82, v82
	v_max_f32_e32 v38, v39, v38
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v39, v40, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s27, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v35, s0 :: v_dual_max_f32 v38, v38, v40
	v_mov_b32_dpp v40, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v39, v39, v40
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v38, v38, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v39, v39, v40
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s30, v37, 31
	v_dual_mov_b32 v37, s2 :: v_dual_max_f32 v38, v38, v40
	v_mov_b32_dpp v40, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v40, v38, -1, -1 op_sel:[1,0]
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v40
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v40, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s31, v38, 31
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v38, s27 :: v_dual_mov_b32 v41, s31
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v40 :: v_dual_mov_b32 v40, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s33, v39, 31
	v_dual_mov_b32 v39, s28 :: v_dual_mov_b32 v42, s33
	ds_store_b128 v115, v[35:38]
	ds_store_b128 v115, v[39:42] offset:16
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v170, v170 :: v_dual_max_f32 v36, v168, v168
	v_dual_max_f32 v37, v166, v166 :: v_dual_max_f32 v38, v164, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v39, v165, v165 :: v_dual_max_f32 v34, v35, v34
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v37
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v171, v171
	v_max_f32_e32 v37, v38, v37
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v34, 31
	v_mov_b32_dpp v34, v171 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v36, v36, v38
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v37, v37, v38
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v36, 31
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v169, v169
	v_max_f32_e32 v35, v36, v35
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v38
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v36, v36, v36
	v_max_f32_e32 v38, v167, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s27, v37, 31
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v37, s27 :: v_dual_max_f32 v36, v36, v36
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, s0 :: v_dual_max_f32 v35, v35, v36
	v_mov_b32_dpp v36, v167 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s30, v35, 31
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_mov_b32 v35, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v38, v36
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v39, v38
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	v_readlane_b32 s31, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_mov_b32 v36, s2
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v40, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v39 :: v_dual_mov_b32 v39, s30
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s33, v38, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v38, s28 :: v_dual_mov_b32 v41, s33
	ds_store_b128 v115, v[34:37] offset:32
	ds_store_b128 v115, v[38:41] offset:48
	v_mov_b32_dpp v34, v162 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v162, v162 :: v_dual_max_f32 v36, v160, v160
	v_max_f32_e32 v39, v86, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v37, v87, v87 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v38, v85, v85
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v226
	ds_load_b128 v[73:76], v226 offset:16
	ds_load_b128 v[69:72], v226 offset:32
	ds_load_b128 v[65:68], v226 offset:48
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v160 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v47, v75
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v75, v75
	v_dual_max_f32 v46, v74, v74 :: v_dual_max_f32 v55, v71, v71
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v163 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v37
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v163, v163
	v_max_f32_e32 v37, v38, v37
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v161 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v36, 31
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v36, v35
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v36
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s27, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v37, s27 :: v_dual_max_f32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, s0 :: v_dual_max_f32 v35, v35, v36
	v_mov_b32_dpp v36, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s30, v35, 31
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_mov_b32 v35, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v38, v36
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v39, v38
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp257:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp259:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	v_readlane_b32 s31, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_mov_b32 v36, s2
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v40, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v39 :: v_dual_mov_b32 v39, s30
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s33, v38, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v38, s28 :: v_dual_mov_b32 v41, s33
	ds_store_b128 v115, v[34:37]
	ds_store_b128 v115, v[38:41] offset:16
	v_mov_b32_dpp v34, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v103, v103 :: v_dual_max_f32 v36, v101, v101
	v_dual_max_f32 v37, v99, v99 :: v_dual_max_f32 v38, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v39, v98, v98
	v_max_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v36, v35
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v37
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v104, v104
	v_max_f32_e32 v37, v38, v37
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v36, 31
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v36, v35
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v36
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s27, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v37, s27 :: v_dual_max_f32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, s0 :: v_dual_max_f32 v35, v35, v36
	v_mov_b32_dpp v36, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s30, v35, 31
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_mov_b32 v35, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v38, v36
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v39, v38
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp337:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp339:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp340:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp341:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	v_readlane_b32 s31, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_mov_b32 v36, s2
.Ltmp345:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v40, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v39 :: v_dual_mov_b32 v39, s30
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s33, v38, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v38, s28 :: v_dual_mov_b32 v41, s33
	ds_store_b128 v115, v[34:37] offset:32
	ds_store_b128 v115, v[38:41] offset:48
	v_mov_b32_e32 v40, v42
	v_mov_b32_e32 v38, v43
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v45, v45
.Ltmp349:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp350:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v42, v42
.Ltmp351:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp352:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v43, v43
	v_max_f32_e32 v37, v45, v45
.Ltmp353:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v35, v44
.Ltmp354:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v38, v38, v38
	v_dual_max_f32 v36, v44, v44 :: v_dual_mov_b32 v43, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp355:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp356:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v41, v40 :: v_dual_max_f32 v40, v39, v38
	v_max_f32_e32 v38, v34, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp357:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v34, v250, v250 :: v_dual_max_f32 v35, v35, v35
.Ltmp358:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v45, v74
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp359:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v73, v73
.Ltmp360:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v250, v34, v41 :: v_dual_max_f32 v39, v36, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp361:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp362:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v76, v76
.Ltmp363:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp364:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v77, v250
.Ltmp365:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp366:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v76, v76
.Ltmp367:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s23
.Ltmp368:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp369:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp370:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp371:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v195, v195
.Ltmp372:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp373:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v195, v35, v40
.Ltmp374:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v43, v43
.Ltmp375:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v155, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v79, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp376:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp377:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
.Ltmp378:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp379:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v196, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp380:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v35, 31
.Ltmp381:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v196, v36, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v81, v196
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s26
.Ltmp382:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp383:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp384:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp385:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v108, v108
.Ltmp386:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp387:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v108, v37, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v83, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp388:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp389:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v37, -1, -1 op_sel:[1,0]
.Ltmp390:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v37, v51
.Ltmp391:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v44, v34 :: v_dual_max_f32 v34, v45, v45
.Ltmp392:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v44, v157, v157 :: v_dual_max_f32 v45, v159, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp393:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v46, v34
	v_max_f32_e32 v34, v47, v47
.Ltmp394:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v155, v43, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp395:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v48, v34 :: v_dual_max_f32 v34, v42, v49
.Ltmp396:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v42, v153, v153 :: v_dual_sub_f32 v43, v80, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v157, v44, v35
	v_max_f32_e32 v159, v45, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v153, v42, v37
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v44, v82, v157 :: v_dual_sub_f32 v45, v84, v159
	v_sub_f32_e32 v42, v78, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v42, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s21
.Ltmp397:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp398:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s22
	v_cndmask_b32_e64 v45, 0, v45, s24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v42, 0, v42, s20
.Ltmp399:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v51, 31
.Ltmp400:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp401:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	ds_load_b128 v[51:54], v226
	ds_load_b128 v[73:76], v226 offset:16
	ds_load_b128 v[93:96], v226 offset:32
	ds_load_b128 v[89:92], v226 offset:48
.Ltmp402:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp403:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp404:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp405:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp406:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp407:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp408:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v46
.Ltmp409:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v43, -1, -1 op_sel:[1,0]
	v_readlane_b32 s21, v42, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp410:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v46
.Ltmp411:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s0
	v_readlane_b32 s22, v43, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp412:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v46
.Ltmp413:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v45, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v43, s1
	v_mov_b32_e32 v47, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s23, v44, 31
.Ltmp414:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v46 :: v_dual_mov_b32 v44, s2
.Ltmp415:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v46, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v48, s23
	v_readlane_b32 s24, v45, 31
	v_mov_b32_e32 v45, s20
	v_readlane_b32 s20, v252, 28
	v_readlane_b32 s22, v252, 30
	v_readlane_b32 s23, v252, 31
	v_mov_b32_e32 v49, s24
	ds_store_b128 v115, v[42:45]
	ds_store_b128 v115, v[46:49] offset:16
.Ltmp416:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v69
	v_dual_mov_b32 v45, v70 :: v_dual_max_f32 v42, v72, v72
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp417:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp418:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp419:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v70, v70
	v_dual_max_f32 v56, v72, v72 :: v_dual_mov_b32 v47, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v43, v43, v43 :: v_dual_mov_b32 v70, v65
.Ltmp420:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v71, v66
.Ltmp421:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp422:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp423:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v44, v43
	v_max_f32_e32 v43, v45, v45
.Ltmp424:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v72, v67
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp425:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v48, v46, v43
	v_max_f32_e32 v46, v42, v56
.Ltmp426:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v42, v188, v188 :: v_dual_max_f32 v43, v47, v47
.Ltmp427:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp428:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v56, v149, v149 :: v_dual_max_f32 v69, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v188, v42, v49 :: v_dual_max_f32 v47, v55, v43
.Ltmp429:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp430:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_readlane_b32 s21, v252, 29
.Ltmp431:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v170, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp432:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
.Ltmp433:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s15
.Ltmp434:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp435:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v43, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp436:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_max_f32 v43, v189, v189
.Ltmp437:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v42, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp438:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v189, v43, v48 :: v_dual_max_f32 v42, v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v168, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp439:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp440:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v44, v43, -1, -1 op_sel:[1,0]
.Ltmp441:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v43, v43, v44 :: v_dual_max_f32 v44, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp442:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v43, 31
.Ltmp443:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v222, v44, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v166, v222
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s18
.Ltmp444:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp445:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp446:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v44, v44, v45 :: v_dual_max_f32 v45, v139, v139
.Ltmp447:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v44, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp448:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v139, v45, v46
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v164, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp449:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp450:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v45, -1, -1 op_sel:[1,0]
.Ltmp451:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v45, v55
.Ltmp452:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v45, v65, v42 :: v_dual_max_f32 v42, v71, v71
.Ltmp453:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v209, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v149, v56, v45 :: v_dual_max_f32 v44, v66, v42
.Ltmp454:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v72, v72
.Ltmp455:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v251, v251
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v56, v171, v149 :: v_dual_max_f32 v209, v65, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp456:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v67, v42 :: v_dual_max_f32 v42, v69, v68
.Ltmp457:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v218, v218
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v65, v169, v209
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v251, v66, v43 :: v_dual_max_f32 v218, v67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v66, v167, v251 :: v_dual_sub_f32 v67, v165, v218
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s12
.Ltmp458:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s12, v55, 31
.Ltmp459:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
.Ltmp460:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v54, v54
.Ltmp461:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
.Ltmp462:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v56, v56, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp463:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s13
.Ltmp464:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp465:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v56, v56, v56 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp466:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp467:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v54, v54, v54
.Ltmp468:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s16
.Ltmp469:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v56, v56, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp470:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v54
.Ltmp471:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v56, v56, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp472:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v56, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp473:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v56, v56, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp474:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v65, -1, -1 op_sel:[1,0]
.Ltmp475:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp476:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s13, v56, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp477:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v68
.Ltmp478:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v66, -1, -1 op_sel:[1,0]
.Ltmp479:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v56, v51
.Ltmp480:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
.Ltmp481:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v69, s13
	v_readlane_b32 s14, v65, 31
.Ltmp482:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v68
.Ltmp483:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v65, s0
.Ltmp484:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp485:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v70, s14
	v_readlane_b32 s15, v66, 31
.Ltmp486:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_mov_b32 v66, s1
.Ltmp487:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v68, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp488:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v56, v56, v56 :: v_dual_mov_b32 v71, s15
.Ltmp489:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s16, v67, 31
	v_mov_b32_e32 v67, s2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp490:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v165, v51, v56 :: v_dual_mov_b32 v72, s16
.Ltmp491:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_store_b128 v115, v[65:68] offset:32
	ds_store_b128 v115, v[69:72] offset:48
.Ltmp492:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v65, v52 :: v_dual_mov_b32 v66, v53
.Ltmp493:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v53, v53, v53
.Ltmp494:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v68, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v70, v74 :: v_dual_max_f32 v69, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp495:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v51, v65, v65 :: v_dual_mov_b32 v72, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp496:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp497:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v76, v76
.Ltmp498:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp499:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v164, v52, v51 :: v_dual_max_f32 v51, v66, v66
	v_max_f32_e32 v71, v74, v74
.Ltmp500:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp501:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v73, v75, v75 :: v_dual_max_f32 v74, v76, v76
	v_max_f32_e32 v56, v53, v51
.Ltmp502:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v51, v117, v117 :: v_dual_max_f32 v66, v184, v184
.Ltmp503:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp504:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v117, v51, v165
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v162, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp505:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp506:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
.Ltmp507:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp508:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v119, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp509:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v51, 31
.Ltmp510:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v119, v52, v164
.Ltmp511:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v51, v68, v68 :: v_dual_max_f32 v68, v186, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp512:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v160, v119
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s9
.Ltmp513:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp514:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp515:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_max_f32 v53, v151, v151
.Ltmp516:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v52, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp517:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v151, v53, v56
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v87, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp518:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp519:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v54, v53, -1, -1 op_sel:[1,0]
.Ltmp520:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp521:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v54, v210, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp522:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v53, 31
.Ltmp523:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v210, v54, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v85, v210
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s11
.Ltmp524:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v54, v54, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v54, v54, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v54, v54, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v54, v54, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp525:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v65, v54, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp526:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v54, v65 :: v_dual_max_f32 v54, v69, v51
.Ltmp527:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v70, v70
.Ltmp528:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v69, v187, v187 :: v_dual_max_f32 v184, v66, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp529:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v71, v51
	v_max_f32_e32 v51, v72, v72
.Ltmp530:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v163, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp531:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v73, v51 :: v_dual_max_f32 v51, v67, v74
.Ltmp532:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v185, v185
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v186, v68, v52 :: v_dual_max_f32 v187, v69, v51
	v_dual_max_f32 v185, v67, v53 :: v_dual_sub_f32 v68, v88, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v86, v187
	v_sub_f32_e32 v67, v161, v185
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s4
.Ltmp533:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v65, 31
.Ltmp534:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v67, v67
.Ltmp535:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp536:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, s0
	ds_load_b128 v[85:88], v226
	ds_load_b128 v[81:84], v226 offset:16
	ds_load_b128 v[77:80], v226 offset:32
	ds_load_b128 v[73:76], v226 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp537:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp538:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s6
	v_cndmask_b32_e64 v69, 0, v69, s8
	v_cndmask_b32_e64 v67, 0, v67, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp539:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp540:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
.Ltmp541:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v66, v66, v70
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp542:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v66, 31
	v_mov_b32_e32 v66, s1
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp543:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp544:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp545:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp546:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v67, s2
	v_readlane_b32 s7, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp547:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v68, s4
.Ltmp548:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v70, s6 :: v_dual_mov_b32 v71, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s8, v69, 31
	v_dual_mov_b32 v69, s5 :: v_dual_mov_b32 v72, s8
	ds_store_b128 v115, v[65:68]
	ds_store_b128 v115, v[69:72] offset:16
.Ltmp549:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v93 :: v_dual_max_f32 v65, v96, v96
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp550:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v93, v93 :: v_dual_mov_b32 v68, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp551:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v70, v95
.Ltmp552:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v72, v96, v96 :: v_dual_max_f32 v69, v94, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp553:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp554:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp555:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp556:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v166, v65, v72
.Ltmp557:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v141, v141
.Ltmp558:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v95, v95
	v_max_f32_e32 v170, v67, v66
	v_max_f32_e32 v66, v68, v68
.Ltmp559:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v94, v89 :: v_dual_mov_b32 v95, v90
.Ltmp560:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v89, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp561:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v141, v65, v170
.Ltmp562:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v169, v69, v66
	v_max_f32_e32 v66, v70, v70
.Ltmp563:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v96, v91
.Ltmp564:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v103, v141
.Ltmp565:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp566:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v168, v71, v66
	v_max_f32_e32 v90, v90, v90
.Ltmp567:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp568:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
.Ltmp569:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v93, v92, v92
.Ltmp570:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp571:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v92, v92, v92
.Ltmp572:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp573:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v160, v93, v92
.Ltmp574:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp575:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp576:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v66 :: v_dual_max_f32 v66, v143, v143
.Ltmp577:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp578:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v143, v66, v169
.Ltmp579:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v94, v94 :: v_dual_sub_f32 v66, v101, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v163, v89, v65
	v_max_f32_e32 v65, v95, v95
.Ltmp580:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp581:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v162, v90, v65 :: v_dual_max_f32 v65, v96, v96
	v_max_f32_e32 v161, v91, v65
.Ltmp582:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v212, v212
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s102
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v212, v65, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp583:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp584:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v104, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp585:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp586:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp587:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp588:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s97
.Ltmp589:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp590:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v145, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp591:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v66, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp592:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v145, v67, v168
	v_max_f32_e32 v66, v219, v219
.Ltmp593:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp594:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v99, v145
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v219, v66, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp595:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp596:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v102, v219
.Ltmp597:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp598:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
.Ltmp599:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp600:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s104
.Ltmp601:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v65, 31
	v_mov_b32_e32 v65, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp602:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp603:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s98
	v_readlane_b32 s0, v254, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp604:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp605:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp606:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v67, v67, v68
.Ltmp607:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v147, v147
.Ltmp608:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s2, v67, 31
.Ltmp609:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v147, v68, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v67, v211, v211 :: v_dual_add_f32 v66, v66, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v97, v147 :: v_dual_max_f32 v211, v67, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp610:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v66, 31
	v_mov_b32_e32 v66, s1
	v_readlane_b32 s1, v252, 4
.Ltmp611:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v100, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, vcc_hi
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp612:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp613:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp614:
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
.Ltmp615:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp616:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v68, v68, v69
.Ltmp617:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v213, v213
.Ltmp618:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s4, v68, 31
.Ltmp619:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v213, v69, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp620:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v70 :: v_dual_mov_b32 v68, s4
.Ltmp621:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v98, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
.Ltmp622:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v67, 31
	v_mov_b32_e32 v67, s2
	s_mov_b32 s2, 0x76543210
.Ltmp623:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
.Ltmp624:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v71, s7
.Ltmp625:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp626:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp627:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
.Ltmp628:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp629:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v69, 31
	v_dual_mov_b32 v69, s5 :: v_dual_mov_b32 v72, s8
	ds_store_b128 v115, v[65:68] offset:32
	ds_store_b128 v115, v[69:72] offset:48
.Ltmp630:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v18, v106, v172
	v_max3_f32 v66, v113, v114, v111
	v_max3_f32 v67, v112, v249, v110
	v_max3_f32 v68, v243, v244, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v65, v66, v67
	v_max3_f32 v66, v198, v109, v247
	v_max3_f32 v67, v248, v245, v246
	v_max3_f32 v66, v66, v67, v68
	v_max_f32_e32 v67, v33, v50
	v_max3_f32 v68, v24, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v67, v67, v23, v68
	v_max3_f32 v68, v19, v20, v17
	v_max3_f32 v65, v67, v68, v65
	v_dual_max_f32 v67, v242, v239 :: v_dual_max_f32 v68, v237, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v67, v67, v240, v68
	v_max3_f32 v65, v65, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp631:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s2, 0xfedcba98 op_sel:[1,0]
.Ltmp632:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v167, v235, v65, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.h, v236.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v50, v167
	v_sub_f32_e32 v33, v33, v167
	v_sub_f32_e32 v24, v24, v167
	v_sub_f32_e32 v23, v23, v167
	v_sub_f32_e32 v22, v22, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v22, v22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v21, v167
	v_sub_f32_e32 v20, v20, v167
	v_sub_f32_e32 v17, v17, v167
	v_sub_f32_e32 v19, v19, v167
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s3
	v_cndmask_b32_e64 v33, 0, v33, s103
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v24, 0, v24, s95
	v_cndmask_b32_e64 v23, 0, v23, s91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v22, 0, v22, s94
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v20, v20
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v50, v65, 0x7fff
	v_mov_b16_e32 v50.l, v33.h
	v_mov_b16_e64 v50.h, v236.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s93
	v_cndmask_b32_e64 v20, 0, v20, s96
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v19, 0, v19, s92
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s85
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v33, v50, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v65.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.l, 0x7fff, v50.h, s3
	v_cmp_o_f32_e64 s3, v23, v23
	v_permlanex16_b32 v50, v33, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v50, v33, v174
	v_perm_b32 v66, v50, v33, v175
	v_mov_b16_e32 v33.l, v24.h
	v_mov_b16_e64 v33.h, v236.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v24, v33, 0x7fff
	v_mov_b16_e32 v24.l, v23.h
	v_mov_b16_e64 v24.h, v236.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v23, v24, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s3
	v_cmp_o_f32_e64 s3, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v24, v23, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v24, v23, v174
	v_perm_b32 v68, v24, v23, v175
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e64 v23.h, v236.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v22, v23, 0x7fff
	v_mov_b16_e32 v22.l, v21.h
	v_mov_b16_e64 v22.h, v236.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s3
	v_cmp_o_f32_e64 s3, v19, v19
	v_permlanex16_b32 v22, v21, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v22, v21, v174
	v_perm_b32 v70, v22, v21, v175
	v_mov_b16_e32 v21.l, v20.h
	v_mov_b16_e64 v21.h, v236.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v20, v21, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e64 v20.h, v236.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v20, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v20, v19, v174
	v_perm_b32 v72, v20, v19, v175
	scratch_load_b64 v[19:20], off, off offset:1156 ; 8-byte Folded Reload
.Ltmp633:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[19:20], null, s0, s1, v[19:20]
.Ltmp634:
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v252, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v21, v19, s0, 1
	v_readlane_b32 s0, v252, 16
	v_lshlrev_b32_e32 v20, 1, v19
	v_add_lshl_u32 v22, v19, s0, 1
	s_mul_i32 s0, s1, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v23, v19, s0, 1
	v_readlane_b32 s0, v252, 17
	v_add_lshl_u32 v24, v19, s0, 1
	s_mul_i32 s0, s1, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v33, v19, s0, 1
	s_mul_i32 s0, s1, 12
	v_add_lshl_u32 v50, v19, s0, 1
	s_mul_i32 s0, s1, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v89, v19, s0, 1
	v_readlane_b32 s0, v252, 18
	v_add_lshl_u32 v90, v19, s0, 1
	s_mul_i32 s0, s1, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v91, v19, s0, 1
	s_mul_i32 s0, s1, 20
	v_add_lshl_u32 v92, v19, s0, 1
	s_mul_i32 s0, s1, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v93, v19, s0, 1
	s_mul_i32 s0, s1, 24
	v_add_lshl_u32 v94, v19, s0, 1
	s_mul_i32 s0, s1, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v95, v19, s0, 1
	s_mul_i32 s0, s1, 28
	v_add_lshl_u32 v96, v19, s0, 1
	s_mul_i32 s0, s1, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v97, v19, s0, 1
	v_readlane_b32 s0, v252, 19
	v_add_lshl_u32 v98, v19, s0, 1
	s_mul_i32 s0, s1, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v99, v19, s0, 1
	s_mul_i32 s0, s1, 36
	v_add_lshl_u32 v100, v19, s0, 1
	s_mul_i32 s0, s1, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v101, v19, s0, 1
	s_mul_i32 s0, s1, 40
	v_add_lshl_u32 v102, v19, s0, 1
	s_mul_i32 s0, s1, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v103, v19, s0, 1
	s_mul_i32 s0, s1, 44
	v_add_lshl_u32 v104, v19, s0, 1
	s_mul_i32 s0, s1, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v122, v19, s0, 1
	s_mul_i32 s0, s1, 48
	v_add_lshl_u32 v123, v19, s0, 1
	s_mul_i32 s0, s1, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v124, v19, s0, 1
	s_mul_i32 s0, s1, 52
	v_add_lshl_u32 v125, v19, s0, 1
	s_mul_i32 s0, s1, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v126, v19, s0, 1
	s_mul_i32 s0, s1, 56
	v_add_lshl_u32 v127, v19, s0, 1
	s_mul_i32 s0, s1, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v128, v19, s0, 1
	s_mul_i32 s0, s1, 60
	v_add_lshl_u32 v129, v19, s0, 1
	s_mul_i32 s0, s1, 62
	.loc	1 892 26                        ; attention.py:892:26
	v_readlane_b32 s1, v254, 2
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v19, v19, s0, 1
	v_readlane_b32 s0, v252, 11
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 3
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 4
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 5
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 6
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 8
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_clause 0x7
	buffer_load_u16 v20, v20, s[44:47], 0 offen
	buffer_load_u16 v21, v21, s[44:47], 0 offen
	buffer_load_u16 v22, v22, s[44:47], 0 offen
	buffer_load_u16 v23, v23, s[44:47], 0 offen
	buffer_load_u16 v24, v24, s[44:47], 0 offen
	buffer_load_u16 v33, v33, s[44:47], 0 offen
	buffer_load_u16 v50, v50, s[44:47], 0 offen
	buffer_load_u16 v130, v89, s[44:47], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 11
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v89, 0x80000000, v90, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v90, 0x80000000, v91, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v91, 0x80000000, v92, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v92, 0x80000000, v93, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v93, 0x80000000, v94, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v94, 0x80000000, v95, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 17
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v95, 0x80000000, v96, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 18
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v96, 0x80000000, v97, vcc_lo
	s_clause 0x7
	buffer_load_u16 v131, v89, s[44:47], 0 offen
	buffer_load_u16 v132, v90, s[44:47], 0 offen
	buffer_load_u16 v133, v91, s[44:47], 0 offen
	buffer_load_u16 v134, v92, s[44:47], 0 offen
	buffer_load_u16 v135, v93, s[44:47], 0 offen
	buffer_load_u16 v136, v94, s[44:47], 0 offen
	buffer_load_u16 v137, v95, s[44:47], 0 offen
	buffer_load_u16 v171, v96, s[44:47], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 19
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v89, 0x80000000, v98, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v90, 0x80000000, v99, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 21
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v91, 0x80000000, v100, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 22
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v92, 0x80000000, v101, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 23
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v93, 0x80000000, v102, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 24
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v94, 0x80000000, v103, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v95, 0x80000000, v104, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 25
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v96, 0x80000000, v122, vcc_lo
	s_clause 0x7
	buffer_load_u16 v122, v89, s[44:47], 0 offen
	buffer_load_u16 v176, v90, s[44:47], 0 offen
	buffer_load_u16 v177, v91, s[44:47], 0 offen
	buffer_load_u16 v178, v92, s[44:47], 0 offen
	buffer_load_u16 v179, v93, s[44:47], 0 offen
	buffer_load_u16 v180, v94, s[44:47], 0 offen
	buffer_load_u16 v181, v95, s[44:47], 0 offen
	buffer_load_u16 v182, v96, s[44:47], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 28
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v89, 0x80000000, v123, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 30
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v90, 0x80000000, v124, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v91, 0x80000000, v125, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 26
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v92, 0x80000000, v126, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 29
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v93, 0x80000000, v127, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v254, 31
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v94, 0x80000000, v128, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v95, 0x80000000, v129, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x7
	buffer_load_u16 v123, v89, s[44:47], 0 offen
	buffer_load_u16 v124, v90, s[44:47], 0 offen
	buffer_load_u16 v125, v91, s[44:47], 0 offen
	buffer_load_u16 v126, v92, s[44:47], 0 offen
	buffer_load_u16 v127, v93, s[44:47], 0 offen
	buffer_load_u16 v128, v94, s[44:47], 0 offen
	buffer_load_u16 v129, v95, s[44:47], 0 offen
	buffer_load_u16 v19, v19, s[44:47], 0 offen
.Ltmp635:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[101:104], v226
	ds_load_b128 v[97:100], v226 offset:16
	ds_load_b128 v[93:96], v226 offset:32
	ds_load_b128 v[89:92], v226 offset:48
.Ltmp636:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v183, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v18, v18, v167
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v235
	.loc	1 818 13                        ; attention.py:818:13
	v_readlane_b32 s0, v254, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v18, v18
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s34, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s87
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v183, 0, v183
	ds_store_b16 v183, v20
	ds_store_b16 v183, v21 offset:256
	ds_store_b16 v183, v22 offset:512
	ds_store_b16 v183, v23 offset:768
	ds_store_b16 v183, v24 offset:1024
	ds_store_b16 v183, v33 offset:1280
	ds_store_b16 v183, v50 offset:1536
	ds_store_b16 v183, v130 offset:1792
	ds_store_b16 v183, v131 offset:2048
	ds_store_b16 v183, v132 offset:2304
	ds_store_b16 v183, v133 offset:2560
	ds_store_b16 v183, v134 offset:2816
	ds_store_b16 v183, v135 offset:3072
	ds_store_b16 v183, v136 offset:3328
	ds_store_b16 v183, v137 offset:3584
	ds_store_b16 v183, v171 offset:3840
	ds_store_b16 v183, v122 offset:4096
	ds_store_b16 v183, v176 offset:4352
	ds_store_b16 v183, v177 offset:4608
	ds_store_b16 v183, v178 offset:4864
	ds_store_b16 v183, v179 offset:5120
	ds_store_b16 v183, v180 offset:5376
	ds_store_b16 v183, v181 offset:5632
	ds_store_b16 v183, v182 offset:5888
	ds_store_b16 v183, v123 offset:6144
	ds_store_b16 v183, v124 offset:6400
	ds_store_b16 v183, v125 offset:6656
	ds_store_b16 v183, v126 offset:6912
	ds_store_b16 v183, v127 offset:7168
	ds_store_b16 v183, v128 offset:7424
	ds_store_b16 v183, v129 offset:7680
	ds_store_b16 v183, v19 offset:7936
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v19, v235, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v20.h, v236.l
	v_mov_b16_e64 v21.h, v236.l
	v_mov_b16_e64 v22.h, v236.l
	v_mov_b16_e64 v23.h, v236.l
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v19, v19
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v122, v121
	ds_load_u16_d16 v123, v121 offset:256
	ds_load_u16_d16 v124, v121 offset:512
	ds_load_u16_d16 v125, v121 offset:768
	ds_load_u16_d16 v126, v121 offset:1024
	ds_load_u16_d16 v127, v121 offset:1280
	ds_load_u16_d16 v128, v121 offset:1536
	ds_load_u16_d16 v129, v121 offset:1792
	ds_load_u16_d16 v176, v121 offset:32
	ds_load_u16_d16 v177, v121 offset:288
	ds_load_u16_d16 v228, v121 offset:64
	ds_load_u16_d16 v229, v121 offset:320
	ds_load_u16_d16 v131, v121 offset:352
	ds_load_u16_d16 v130, v121 offset:96
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v122, v121 offset:128
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v123, v121 offset:384
	ds_load_u16_d16 v178, v121 offset:544
	ds_load_u16_d16 v179, v121 offset:800
	ds_load_u16_d16 v230, v121 offset:576
	ds_load_u16_d16 v231, v121 offset:832
	ds_load_u16_d16 v133, v121 offset:864
	ds_load_u16_d16 v132, v121 offset:608
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v124, v121 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v125, v121 offset:896
	ds_load_u16_d16 v180, v121 offset:1056
	ds_load_u16_d16 v181, v121 offset:1312
	ds_load_u16_d16 v232, v121 offset:1088
	ds_load_u16_d16 v233, v121 offset:1344
	ds_load_u16_d16 v135, v121 offset:1376
	ds_load_u16_d16 v134, v121 offset:1120
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v126, v121 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v127, v121 offset:1408
	ds_load_u16_d16 v182, v121 offset:1568
	ds_load_u16_d16 v183, v121 offset:1824
	ds_load_u16_d16 v234, v121 offset:1600
	ds_load_u16_d16 v235, v121 offset:1856
	ds_load_u16_d16 v137, v121 offset:1888
	ds_load_u16_d16 v136, v121 offset:1632
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v128, v121 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v129, v121 offset:1920
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v19, 0, v19, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v176, v121 offset:160
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v177, v121 offset:416
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v178, v121 offset:672
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v179, v121 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v180, v121 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v181, v121 offset:1440
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v182, v121 offset:1696
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v183, v121 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v57, v57, v19
	v_mul_f32_e32 v58, v58, v19
	v_mul_f32_e32 v59, v59, v19
	v_mul_f32_e32 v60, v60, v19
	v_mul_f32_e32 v61, v61, v19
	v_mul_f32_e32 v62, v62, v19
	v_mul_f32_e32 v63, v63, v19
	v_mul_f32_e32 v64, v64, v19
	v_mul_f32_e32 v25, v25, v19
	v_mul_f32_e32 v26, v26, v19
	v_mul_f32_e32 v27, v27, v19
	v_mul_f32_e32 v28, v28, v19
	v_mul_f32_e32 v29, v29, v19
	v_mul_f32_e32 v30, v30, v19
	v_mul_f32_e32 v31, v31, v19
	v_mul_f32_e32 v32, v32, v19
	v_mul_f32_e32 v9, v9, v19
	v_mul_f32_e32 v10, v10, v19
	v_mul_f32_e32 v11, v11, v19
	v_mul_f32_e32 v12, v12, v19
	v_mul_f32_e32 v13, v13, v19
	v_mul_f32_e32 v14, v14, v19
	v_mul_f32_e32 v15, v15, v19
	v_mul_f32_e32 v16, v16, v19
	v_mul_f32_e32 v1, v1, v19
	v_mul_f32_e32 v2, v2, v19
	v_mul_f32_e32 v3, v3, v19
	v_mul_f32_e32 v4, v4, v19
	v_mul_f32_e32 v5, v5, v19
	v_mul_f32_e32 v6, v6, v19
	v_mul_f32_e32 v7, v7, v19
	v_mul_f32_e32 v8, v8, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v18.h
	v_mov_b16_e64 v19.h, v236.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v228, v121 offset:192
	ds_load_u16_d16_hi v229, v121 offset:448
	ds_load_u16_d16_hi v230, v121 offset:704
	ds_load_u16_d16_hi v231, v121 offset:960
	ds_load_u16_d16_hi v232, v121 offset:1216
	ds_load_u16_d16_hi v233, v121 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v234, v121 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v235, v121 offset:1984
	ds_load_u16_d16_hi v130, v121 offset:224
	ds_load_u16_d16_hi v131, v121 offset:480
	ds_load_u16_d16_hi v132, v121 offset:736
	ds_load_u16_d16_hi v133, v121 offset:992
	ds_load_u16_d16_hi v134, v121 offset:1248
	ds_load_u16_d16_hi v135, v121 offset:1504
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v136, v121 offset:1760
	ds_load_u16_d16_hi v137, v121 offset:2016
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v24.h, v236.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[122:129], v[65:72], v[57:64]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v19, 1, v19
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[176:183], v[65:72], v[25:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v33.h, v236.l
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v50, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e64 v18.h, v236.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[228:235], v[65:72], v[9:16]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[130:137], v[65:72], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v65, v121 offset:2048
	ds_load_u16_d16 v66, v121 offset:2304
	ds_load_u16_d16 v67, v121 offset:2560
	ds_load_u16_d16 v68, v121 offset:2816
	ds_load_u16_d16 v69, v121 offset:3072
	ds_load_u16_d16 v70, v121 offset:3328
	ds_load_u16_d16 v71, v121 offset:3584
	ds_load_u16_d16 v72, v121 offset:3840
	ds_load_u16_d16 v122, v121 offset:2080
	ds_load_u16_d16 v123, v121 offset:2336
	ds_load_u16_d16 v130, v121 offset:2112
	ds_load_u16_d16 v131, v121 offset:2368
	ds_load_u16_d16 v177, v121 offset:2400
	ds_load_u16_d16 v176, v121 offset:2144
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v65, v121 offset:2176
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v66, v121 offset:2432
	ds_load_u16_d16 v124, v121 offset:2592
	ds_load_u16_d16 v125, v121 offset:2848
	ds_load_u16_d16 v132, v121 offset:2624
	ds_load_u16_d16 v133, v121 offset:2880
	ds_load_u16_d16 v179, v121 offset:2912
	ds_load_u16_d16 v178, v121 offset:2656
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v67, v121 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v68, v121 offset:2944
	ds_load_u16_d16 v126, v121 offset:3104
	ds_load_u16_d16 v127, v121 offset:3360
	ds_load_u16_d16 v134, v121 offset:3136
	ds_load_u16_d16 v135, v121 offset:3392
	ds_load_u16_d16 v181, v121 offset:3424
	ds_load_u16_d16 v180, v121 offset:3168
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v69, v121 offset:3200
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v70, v121 offset:3456
	ds_load_u16_d16 v128, v121 offset:3616
	ds_load_u16_d16 v129, v121 offset:3872
	ds_load_u16_d16 v136, v121 offset:3648
	ds_load_u16_d16 v137, v121 offset:3904
	ds_load_u16_d16 v183, v121 offset:3936
	ds_load_u16_d16 v182, v121 offset:3680
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v71, v121 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v72, v121 offset:3968
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v122, v121 offset:2208
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v123, v121 offset:2464
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v124, v121 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v125, v121 offset:2976
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v126, v121 offset:3232
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v127, v121 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v128, v121 offset:3744
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v129, v121 offset:4000
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v18, v19, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v130, v121 offset:2240
	ds_load_u16_d16_hi v131, v121 offset:2496
	ds_load_u16_d16_hi v132, v121 offset:2752
	ds_load_u16_d16_hi v133, v121 offset:3008
	ds_load_u16_d16_hi v134, v121 offset:3264
	ds_load_u16_d16_hi v135, v121 offset:3520
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v136, v121 offset:3776
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v137, v121 offset:4032
	ds_load_u16_d16_hi v176, v121 offset:2272
	ds_load_u16_d16_hi v177, v121 offset:2528
	ds_load_u16_d16_hi v178, v121 offset:2784
	ds_load_u16_d16_hi v179, v121 offset:3040
	ds_load_u16_d16_hi v180, v121 offset:3296
	ds_load_u16_d16_hi v181, v121 offset:3552
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v182, v121 offset:3808
	ds_load_u16_d16_hi v183, v121 offset:4064
	v_mov_b32_e32 v235, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v17, v18, v19, v174
	v_perm_b32 v18, v18, v19, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v172, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v20.l, v19.h
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v20, v19, v20, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v106, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s83
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.l, v19.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v19, v19
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v19, v21, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v21, v20, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v21, v20, v174
	v_perm_b32 v20, v21, v20, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v114, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v22.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v113, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s86
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v23.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v21, v21
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v21, v23, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v23, v22, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v21, v23, v22, v174
	v_perm_b32 v22, v23, v22, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v112, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v24.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v23, v24, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v111, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s84
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v23, v23
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v23, v33, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v33.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v33, v24, v174
	v_perm_b32 v24, v33, v24, v175
	v_mov_b16_e64 v33.h, v236.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[17:24], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[130:137], v[17:24], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[176:183], v[17:24], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v17, v110, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v18.h, v236.l
	v_mov_b16_e64 v19.h, v236.l
	v_mov_b16_e64 v20.h, v236.l
	v_mov_b16_e64 v21.h, v236.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v22.h, v236.l
	v_mov_b16_e64 v23.h, v236.l
	v_mov_b16_e64 v24.h, v236.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v121 offset:4096
	ds_load_u16_d16 v66, v121 offset:4352
	ds_load_u16_d16 v67, v121 offset:4608
	ds_load_u16_d16 v68, v121 offset:4864
	ds_load_u16_d16 v69, v121 offset:5120
	ds_load_u16_d16 v70, v121 offset:5376
	ds_load_u16_d16 v71, v121 offset:5632
	ds_load_u16_d16 v72, v121 offset:5888
	ds_load_u16_d16 v122, v121 offset:4128
	ds_load_u16_d16 v123, v121 offset:4384
	ds_load_u16_d16 v130, v121 offset:4160
	ds_load_u16_d16 v131, v121 offset:4416
	ds_load_u16_d16 v177, v121 offset:4448
	ds_load_u16_d16 v176, v121 offset:4192
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v65, v121 offset:4224
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v66, v121 offset:4480
	ds_load_u16_d16 v124, v121 offset:4640
	ds_load_u16_d16 v125, v121 offset:4896
	ds_load_u16_d16 v132, v121 offset:4672
	ds_load_u16_d16 v133, v121 offset:4928
	ds_load_u16_d16 v179, v121 offset:4960
	ds_load_u16_d16 v178, v121 offset:4704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v67, v121 offset:4736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v68, v121 offset:4992
	ds_load_u16_d16 v126, v121 offset:5152
	ds_load_u16_d16 v127, v121 offset:5408
	ds_load_u16_d16 v134, v121 offset:5184
	ds_load_u16_d16 v135, v121 offset:5440
	ds_load_u16_d16 v181, v121 offset:5472
	ds_load_u16_d16 v180, v121 offset:5216
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v69, v121 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v70, v121 offset:5504
	ds_load_u16_d16 v128, v121 offset:5664
	ds_load_u16_d16 v129, v121 offset:5920
	ds_load_u16_d16 v136, v121 offset:5696
	ds_load_u16_d16 v137, v121 offset:5952
	ds_load_u16_d16 v183, v121 offset:5984
	ds_load_u16_d16 v182, v121 offset:5728
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v71, v121 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v72, v121 offset:6016
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s82
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v122, v121 offset:4256
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v123, v121 offset:4512
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v124, v121 offset:4768
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v125, v121 offset:5024
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v126, v121 offset:5280
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v127, v121 offset:5536
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v128, v121 offset:5792
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v129, v121 offset:6048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v130, v121 offset:4288
	ds_load_u16_d16_hi v131, v121 offset:4544
	ds_load_u16_d16_hi v132, v121 offset:4800
	ds_load_u16_d16_hi v133, v121 offset:5056
	ds_load_u16_d16_hi v134, v121 offset:5312
	ds_load_u16_d16_hi v135, v121 offset:5568
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v136, v121 offset:5824
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v137, v121 offset:6080
	ds_load_u16_d16_hi v176, v121 offset:4320
	ds_load_u16_d16_hi v177, v121 offset:4576
	ds_load_u16_d16_hi v178, v121 offset:4832
	ds_load_u16_d16_hi v179, v121 offset:5088
	ds_load_u16_d16_hi v180, v121 offset:5344
	ds_load_u16_d16_hi v181, v121 offset:5600
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v182, v121 offset:5856
	ds_load_u16_d16_hi v183, v121 offset:6112
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v249, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s1, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s1
	v_permlanex16_b32 v19, v18, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v174
	v_perm_b32 v18, v19, v18, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v109, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s80
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v20.l, v19.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v19, v20, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v198, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.l, v19.h
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v19, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	v_permlanex16_b32 v21, v20, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v21, v20, v174
	v_perm_b32 v20, v21, v20, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v248, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s78
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v22.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v247, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v21, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s1
	v_permlanex16_b32 v23, v22, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v23, v22, v174
	v_perm_b32 v22, v23, v22, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v246, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s76
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v24.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v23, v24, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v245, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.l, v23.h
	v_cmp_o_f32_e64 s1, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v23, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v24.l, 0x7fff, v33.h, s1
	v_permlanex16_b32 v33, v24, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v23, v33, v24, v174
	v_perm_b32 v24, v33, v24, v175
	v_mov_b16_e64 v33.h, v236.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[17:24], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[130:137], v[17:24], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[176:183], v[17:24], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v17, v244, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v18.h, v236.l
	v_mov_b16_e64 v19.h, v236.l
	v_mov_b16_e64 v20.h, v236.l
	v_mov_b16_e64 v21.h, v236.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v22.h, v236.l
	v_mov_b16_e64 v23.h, v236.l
	v_mov_b16_e64 v24.h, v236.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v65, v121 offset:6144
	ds_load_u16_d16 v66, v121 offset:6400
	ds_load_u16_d16 v67, v121 offset:6656
	ds_load_u16_d16 v68, v121 offset:6912
	ds_load_u16_d16 v69, v121 offset:7168
	ds_load_u16_d16 v70, v121 offset:7424
	ds_load_u16_d16 v71, v121 offset:7680
	ds_load_u16_d16 v72, v121 offset:7936
	ds_load_u16_d16 v122, v121 offset:6176
	ds_load_u16_d16 v123, v121 offset:6432
	ds_load_u16_d16 v130, v121 offset:6208
	ds_load_u16_d16 v131, v121 offset:6464
	ds_load_u16_d16 v177, v121 offset:6496
	ds_load_u16_d16 v176, v121 offset:6240
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v65, v121 offset:6272
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v66, v121 offset:6528
	ds_load_u16_d16 v124, v121 offset:6688
	ds_load_u16_d16 v125, v121 offset:6944
	ds_load_u16_d16 v132, v121 offset:6720
	ds_load_u16_d16 v133, v121 offset:6976
	ds_load_u16_d16 v179, v121 offset:7008
	ds_load_u16_d16 v178, v121 offset:6752
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v67, v121 offset:6784
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v68, v121 offset:7040
	ds_load_u16_d16 v126, v121 offset:7200
	ds_load_u16_d16 v127, v121 offset:7456
	ds_load_u16_d16 v134, v121 offset:7232
	ds_load_u16_d16 v135, v121 offset:7488
	ds_load_u16_d16 v181, v121 offset:7520
	ds_load_u16_d16 v180, v121 offset:7264
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v69, v121 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v70, v121 offset:7552
	ds_load_u16_d16 v128, v121 offset:7712
	ds_load_u16_d16 v129, v121 offset:7968
	ds_load_u16_d16 v136, v121 offset:7744
	ds_load_u16_d16 v137, v121 offset:8000
	ds_load_u16_d16 v183, v121 offset:8032
	ds_load_u16_d16 v182, v121 offset:7776
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v71, v121 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v72, v121 offset:8064
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s74
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v122, v121 offset:6304
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v123, v121 offset:6560
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v124, v121 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v125, v121 offset:7072
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v126, v121 offset:7328
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v127, v121 offset:7584
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v128, v121 offset:7840
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v129, v121 offset:8096
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v130, v121 offset:6336
	ds_load_u16_d16_hi v131, v121 offset:6592
	ds_load_u16_d16_hi v132, v121 offset:6848
	ds_load_u16_d16_hi v133, v121 offset:7104
	ds_load_u16_d16_hi v134, v121 offset:7360
	ds_load_u16_d16_hi v135, v121 offset:7616
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v136, v121 offset:7872
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v137, v121 offset:8128
	ds_load_u16_d16_hi v176, v121 offset:6368
	ds_load_u16_d16_hi v177, v121 offset:6624
	ds_load_u16_d16_hi v178, v121 offset:6880
	ds_load_u16_d16_hi v179, v121 offset:7136
	ds_load_u16_d16_hi v180, v121 offset:7392
	ds_load_u16_d16_hi v181, v121 offset:7648
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v182, v121 offset:7904
	ds_load_u16_d16_hi v183, v121 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v243, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s1, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s1
	v_permlanex16_b32 v19, v18, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v174
	v_perm_b32 v18, v19, v18, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v242, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s72
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v20.l, v19.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v20, v19, v20, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v241, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.l, v19.h
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v19, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	v_permlanex16_b32 v21, v20, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v21, v20, v174
	v_perm_b32 v20, v21, v20, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v240, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s70
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v22.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v21, v22, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v239, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v21, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s1
	v_permlanex16_b32 v23, v22, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v23, v22, v174
	v_perm_b32 v22, v23, v22, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v238, v167
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v24.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v23, v24, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v237, v167
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v227
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v23.h
	v_cmp_o_f32_e64 s1, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v23, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v24.l, 0x7fff, v33.h, s1
	v_permlanex16_b32 v33, v24, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v33, v24, v174
	v_perm_b32 v24, v33, v24, v175
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[17:24], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[130:137], v[17:24], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[176:183], v[17:24], v[1:8]
.Ltmp637:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v17, v85 :: v_dual_mov_b32 v18, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp638:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v85, v17
.Ltmp639:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v17, v87 :: v_dual_add_f32 v66, v86, v18
	v_mov_b32_e32 v18, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp640:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v87, v17
.Ltmp641:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v88
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp642:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v68, v88, v17 :: v_dual_mov_b32 v17, v101
.Ltmp643:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp644:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v101, v17
.Ltmp645:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v103
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp646:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v103, v17
.Ltmp647:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v104
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp648:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v72, v104, v17 :: v_dual_mov_b32 v17, v81
.Ltmp649:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp650:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v81, v17
.Ltmp651:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v83
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp652:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v83, v17
.Ltmp653:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v84
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp654:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v84, v84, v17 :: v_dual_mov_b32 v17, v97
.Ltmp655:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp656:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v97, v17
.Ltmp657:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v99
.Ltmp658:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v97, off, off          ; 4-byte Folded Reload
.Ltmp659:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp660:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v99, v17
.Ltmp661:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp662:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v88, v100, v17 :: v_dual_mov_b32 v17, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp663:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp664:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v17
.Ltmp665:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp666:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v79, v17
.Ltmp667:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp668:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v80, v80, v17 :: v_dual_mov_b32 v17, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp669:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp670:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v93, v17
.Ltmp671:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp672:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v102, v18
.Ltmp673:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v18, v82 :: v_dual_add_f32 v95, v95, v17
	v_mov_b32_e32 v17, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp674:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v96, v96, v17 :: v_dual_mov_b32 v17, v73
.Ltmp675:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp676:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v82, v82, v18 :: v_dual_add_f32 v73, v73, v17
.Ltmp677:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v75
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v18, v98 :: v_dual_add_f32 v75, v75, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v17, v76 :: v_dual_add_f32 v86, v98, v18
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp678:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v76, v76, v17 :: v_dual_mov_b32 v17, v89
.Ltmp679:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v18, v78 :: v_dual_add_f32 v89, v89, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v17, v91 :: v_dual_add_f32 v78, v78, v18
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v18, v94 :: v_dual_add_f32 v91, v91, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v17, v92 :: v_dual_add_f32 v94, v94, v18
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp680:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v92, v92, v17 :: v_dual_max_f32 v17, v227, v227
.Ltmp681:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v18, v74 :: v_dual_max_f32 v17, v17, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp682:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v41, off, off offset:64 ; 4-byte Folded Reload
.Ltmp683:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v18
.Ltmp684:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v90
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp685:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v18
.Ltmp686:
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v18, v227, v17 :: v_dual_mov_b32 v227, v17
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v18, 0, v18, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v207
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v65, v208, v18 :: v_dual_max_f32 v18, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v208, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v18, v18, v40
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v40, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v19, v207, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v19, v19
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v19, 0, v19, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v66, v206, v19 :: v_dual_max_f32 v19, v205, v205
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v19, v19, v39
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v39, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v20, v205, v19 :: v_dual_mov_b32 v205, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v20, v20
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v20, 0, v20, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v67, v204, v20 :: v_dual_max_f32 v20, v203, v203
	v_mov_b32_e32 v204, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v20, v20, v38
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v38, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v21, v203, v20
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v21, 0, v21, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v201
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v68, v202, v21
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v21, v201, v201
	v_mov_b32_e32 v207, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v21, v21, v165 :: v_dual_mov_b32 v206, v66
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v22, v201, v21
	v_mov_b32_e32 v201, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v22, v22
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v22, 0, v22, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v69, v200, v22 :: v_dual_max_f32 v22, v199, v199
	v_mov_b32_e32 v200, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v22, v22, v164
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v23, v199, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v23, v23
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v23, 0, v23, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v70, v193, v23 :: v_dual_max_f32 v23, v192, v192
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v23, v23, v56
	v_mov_b32_e32 v203, v20
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v56, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v24, v192, v23
	v_mov_b32_e32 v192, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v24, v24
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v24, 0, v24, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v71, v191, v24 :: v_dual_max_f32 v24, v190, v190
	v_dual_mov_b32 v202, v68 :: v_dual_mov_b32 v191, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v24, v24, v55
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v55, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v190, v24
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v221
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v72, v0, v33
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v37
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v37, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v221, v0
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v225
	v_mov_b32_e32 v199, v22
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v37, v33
	scratch_load_b32 v37, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v225, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v36
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v225, v33
	v_mov_b32_e32 v225, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v223
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v37, v36
	scratch_load_b32 v37, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v223, v223
	v_max_f32_e32 v35, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v223, v35
	v_mov_b32_e32 v223, v35
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v37, v36
	scratch_load_b32 v37, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v105, v105
	v_mov_b32_e32 v190, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v105, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v158
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v37, v36
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v158, v158
	v_max_f32_e32 v36, v36, v54
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v54, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v158, v36
	v_mov_b32_e32 v193, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v85, v38, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v156, v156
	v_max_f32_e32 v37, v37, v53
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v53, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v38, v156, v37
	v_mov_b32_e32 v156, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v38, v38
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v38, 0, v38, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v86, v39, v38
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v154, v154
	v_max_f32_e32 v38, v38, v52
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v52, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v39, v154, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v39, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v39, 0, v39, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v152
	v_mov_b32_e32 v221, v0
	v_mov_b32_e32 v0, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v87, v40, v39
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v152, v152
	v_max_f32_e32 v39, v39, v51
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v51, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v40, v152, v39
	v_mov_b32_e32 v152, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v40, v40
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v40, 0, v40, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v88, v41, v40
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v150, v150
	v_max_f32_e32 v40, v40, v49
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v49, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v150, v40
	v_mov_b32_e32 v105, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v148
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v49, v41
	scratch_load_b32 v49, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v148, v148
	v_dual_max_f32 v41, v41, v48 :: v_dual_mov_b32 v158, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v48, v148, v41
	v_mov_b32_e32 v148, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v48, 0, v48, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v146
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v78, v49, v48
	scratch_load_b32 v49, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v146, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v47, v48, v47
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v48, v146, v47
	v_dual_mov_b32 v146, v47 :: v_dual_mov_b32 v47, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v48, v48
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v48, 0, v48, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v49, v48
	scratch_load_b32 v49, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v48, v144, v144 :: v_dual_mov_b32 v41, v79
	v_max_f32_e32 v46, v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v48, v144, v46
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v48, 0, v48, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v142
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v80, v49, v48
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v142, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v48, v48, v170
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v142, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v93, v50, v49
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v49, v140, v140
	v_mov_b32_e32 v39, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v49, v49, v169 :: v_dual_mov_b32 v154, v38
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v50, v140, v49
	v_dual_mov_b32 v140, v49 :: v_dual_mov_b32 v49, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v50, v50
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v50, 0, v50, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v94, v51, v50
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v50, v138, v138
	v_mov_b32_e32 v38, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v168
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v51, v138, v50
	v_mov_b32_e32 v138, v50
	v_mov_b32_e32 v50, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v51, v51
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v51, 0, v51, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v95, v52, v51
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v51, v220, v220
	v_mov_b32_e32 v37, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v51, v51, v166 :: v_dual_mov_b32 v150, v40
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v220, v51
	v_dual_mov_b32 v220, v51 :: v_dual_mov_b32 v51, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v52, v52
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v52, 0, v52, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v96, v53, v52
	scratch_load_b32 v53, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v224, v224
	v_mov_b32_e32 v36, v96
	v_max_f32_e32 v45, v52, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v224, v45
	v_dual_mov_b32 v224, v45 :: v_dual_mov_b32 v45, v87
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v52, 0, v52, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v120
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v73, v53, v52
	scratch_load_b32 v53, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v52, v120, v120 :: v_dual_mov_b32 v35, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v44, v52, v44
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v120, v44
	v_mov_b32_e32 v120, v44
	v_mov_b32_e32 v44, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v52, v52
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v52, 0, v52, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v53, v52
	scratch_load_b32 v53, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v118, v118
	v_max_f32_e32 v43, v52, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v118, v43
	v_dual_mov_b32 v118, v43 :: v_dual_mov_b32 v43, v77
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v52, 0, v52, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v116
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v75, v53, v52
	scratch_load_b32 v53, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v52, v116, v116 :: v_dual_mov_b32 v33, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v52, v42
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v52, v116, v42
	v_mov_b32_e32 v116, v42
	v_mov_b32_e32 v42, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v52, v52
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v52, 0, v52, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v197
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v53, v52
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v197, v197
	v_mov_b32_e32 v24, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v52, v163
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v53, v197, v52 :: v_dual_mov_b32 v144, v46
	v_dual_mov_b32 v197, v52 :: v_dual_mov_b32 v46, v86
	v_mov_b32_e32 v34, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v53, v53
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v53, 0, v53, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v89, v54, v53
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v53, v107, v107
	v_mov_b32_e32 v23, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v53, v53, v162
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v54, v107, v53 :: v_dual_mov_b32 v107, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v54, v54
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v54, 0, v54, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v194
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v90, v55, v54
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v54, v194, v194
	v_mov_b32_e32 v22, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v54, v54, v161
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v55, v194, v54
	v_mov_b32_e32 v194, v54
	v_mov_b32_e32 v40, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v55, v55
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v55, 0, v55, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v91, v56, v55
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v55, v173, v173 :: v_dual_mov_b32 v142, v48
	v_dual_mov_b32 v48, v84 :: v_dual_mov_b32 v21, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v55, v55, v160
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v56, v173, v55 :: v_dual_mov_b32 v173, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v56, v56
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v56, 0, v56, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v92, v97, v56
	v_mov_b32_e32 v20, v92
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v51, off offset:92
	scratch_store_b32 off, v50, off offset:88
	scratch_store_b32 off, v49, off offset:84
	scratch_store_b32 off, v48, off offset:80
	scratch_store_b32 off, v47, off offset:76
	scratch_store_b32 off, v46, off offset:72
	scratch_store_b32 off, v45, off offset:68
	scratch_store_b32 off, v44, off offset:64
	scratch_store_b32 off, v43, off offset:60
	scratch_store_b32 off, v42, off offset:56
	scratch_store_b32 off, v41, off offset:52
	scratch_store_b32 off, v40, off offset:48
	scratch_store_b32 off, v39, off offset:44
	scratch_store_b32 off, v38, off offset:40
	scratch_store_b32 off, v37, off offset:36
	scratch_store_b32 off, v36, off offset:32
	scratch_store_b32 off, v35, off offset:28
	scratch_store_b32 off, v34, off offset:24
	scratch_store_b32 off, v33, off offset:20
	scratch_store_b32 off, v24, off offset:16
	scratch_store_b32 off, v23, off offset:12
	scratch_store_b32 off, v22, off offset:8
	scratch_store_b32 off, v21, off offset:4
	scratch_store_b32 off, v20, off
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5                            ; 44-byte Folded Reload
	scratch_load_b64 v[20:21], off, off offset:248
	scratch_load_b64 v[33:34], off, off offset:296
	scratch_load_b32 v21, off, off offset:204
	scratch_load_b64 v[22:23], off, off offset:264
	scratch_load_b64 v[23:24], off, off offset:280
	scratch_load_b64 v[34:35], off, off offset:228
	.loc	1 853 32                        ; attention.py:853:32
	v_readlane_b32 s0, v252, 10
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:240
	scratch_load_b64 v[36:37], off, off offset:256
	scratch_load_b64 v[37:38], off, off offset:212
	scratch_load_b64 v[38:39], off, off offset:272
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s1, s34, s0
	v_readlane_b32 s0, v253, 29
	v_writelane_b32 v254, s1, 1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[39:40], off, off offset:288
	scratch_load_b64 v[40:41], off, off offset:304
	scratch_load_b32 v41, off, off offset:220
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s0, s1, s0
	v_readlane_b32 s1, v252, 1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0xf                            ; 124-byte Folded Reload
	scratch_load_b64 v[65:66], off, off offset:464
	scratch_load_b32 v19, off, off offset:236
	scratch_load_b64 v[42:43], off, off offset:320
	scratch_load_b64 v[43:44], off, off offset:328
	scratch_load_b64 v[44:45], off, off offset:336
	scratch_load_b64 v[45:46], off, off offset:344
	scratch_load_b64 v[46:47], off, off offset:352
	scratch_load_b64 v[47:48], off, off offset:360
	scratch_load_b64 v[48:49], off, off offset:408
	scratch_load_b64 v[49:50], off, off offset:424
	scratch_load_b64 v[50:51], off, off offset:368
	scratch_load_b64 v[51:52], off, off offset:416
	scratch_load_b64 v[52:53], off, off offset:432
	scratch_load_b64 v[53:54], off, off offset:440
	scratch_load_b64 v[54:55], off, off offset:448
	scratch_load_b64 v[55:56], off, off offset:456
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(29)
	v_or_b32_e32 v17, s34, v17
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(28)
	v_add_lshl_u32 v20, s0, v20, 1
	s_waitcnt vmcnt(24)
	v_add_lshl_u32 v24, s0, v33, 1
	scratch_load_b32 v33, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s2, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v21, s0, v21, 1
	v_add_lshl_u32 v22, s0, v22, 1
	v_add_lshl_u32 v23, s0, v23, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s2
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(25)
	v_add_lshl_u32 v34, s0, v34, 1
	s_waitcnt vmcnt(24)
	v_add_lshl_u32 v35, s0, v35, 1
	s_waitcnt vmcnt(23)
	v_add_lshl_u32 v36, s0, v36, 1
	s_waitcnt vmcnt(22)
	v_add_lshl_u32 v37, s0, v37, 1
	s_waitcnt vmcnt(21)
	v_add_lshl_u32 v38, s0, v38, 1
	s_waitcnt vmcnt(20)
	v_add_lshl_u32 v39, s0, v39, 1
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v40, s0, v40, 1
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v41, s0, v41, 1
	v_writelane_b32 v254, s2, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v56, s0, v65, 1
	v_add_lshl_u32 v19, s0, v19, 1
	v_add_lshl_u32 v42, s0, v42, 1
	v_add_lshl_u32 v43, s0, v43, 1
	v_add_lshl_u32 v44, s0, v44, 1
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
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v33, s0, v33, 1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:148 ; 4-byte Folded Reload
	v_writelane_b32 v254, s25, 3
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:160 ; 4-byte Folded Reload
	v_writelane_b32 v254, s27, 4
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:112 ; 4-byte Folded Reload
	v_writelane_b32 v254, s35, 5
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s36, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:176 ; 4-byte Folded Reload
	v_writelane_b32 v254, s36, 6
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:184 ; 4-byte Folded Reload
	v_writelane_b32 v254, s31, 7
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s37, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:192 ; 4-byte Folded Reload
	v_writelane_b32 v254, s37, 8
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:116 ; 4-byte Folded Reload
	v_writelane_b32 v254, s33, 9
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:132 ; 4-byte Folded Reload
	v_writelane_b32 v254, s22, 10
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:144 ; 4-byte Folded Reload
	v_writelane_b32 v254, s17, 11
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:156 ; 4-byte Folded Reload
	v_writelane_b32 v254, s20, 12
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:120 ; 4-byte Folded Reload
	v_writelane_b32 v254, s18, 13
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:172 ; 4-byte Folded Reload
	v_writelane_b32 v254, s21, 14
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:180 ; 4-byte Folded Reload
	v_writelane_b32 v254, s28, 15
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:188 ; 4-byte Folded Reload
	v_writelane_b32 v254, s30, 16
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:124 ; 4-byte Folded Reload
	v_writelane_b32 v254, s26, 17
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:128 ; 4-byte Folded Reload
	v_writelane_b32 v254, s9, 18
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:140 ; 4-byte Folded Reload
	v_writelane_b32 v254, s7, 19
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:152 ; 4-byte Folded Reload
	v_writelane_b32 v254, s19, 20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:164 ; 4-byte Folded Reload
	v_writelane_b32 v254, s12, 21
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:168 ; 4-byte Folded Reload
	v_writelane_b32 v254, s15, 22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:312 ; 4-byte Folded Reload
	v_writelane_b32 v254, s13, 23
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:316 ; 4-byte Folded Reload
	v_writelane_b32 v254, s16, 24
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s5, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:380 ; 4-byte Folded Reload
	v_writelane_b32 v254, s5, 25
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s4, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:392 ; 4-byte Folded Reload
	v_writelane_b32 v255, s4, 0
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:396 ; 4-byte Folded Reload
	v_writelane_b32 v254, s14, 26
	v_writelane_b32 v254, s24, 27
	v_writelane_b32 v254, s3, 28
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:400 ; 4-byte Folded Reload
	v_writelane_b32 v254, s10, 29
	v_writelane_b32 v254, s6, 30
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s11, s23, v17
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v17, off, off offset:404 ; 4-byte Folded Reload
	v_writelane_b32 v254, s11, 31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s23, v17
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:196
	scratch_load_b32 v18, off, off offset:224
	v_writelane_b32 v255, s8, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v17, s0, v17, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v18, s0, v18, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s25
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s27
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s35
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s36
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s31
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s37
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s33
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s22
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x7
	buffer_load_u16 v17, v17, s[48:51], 0 offen
	buffer_load_u16 v18, v18, s[48:51], 0 offen
	buffer_load_u16 v19, v19, s[48:51], 0 offen
	buffer_load_u16 v20, v20, s[48:51], 0 offen
	buffer_load_u16 v21, v21, s[48:51], 0 offen
	buffer_load_u16 v22, v22, s[48:51], 0 offen
	buffer_load_u16 v23, v23, s[48:51], 0 offen
	buffer_load_u16 v24, v24, s[48:51], 0 offen
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s17
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s18
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s21
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s28
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s30
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s26
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s9
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	buffer_load_u16 v38, v38, s[48:51], 0 offen
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s7
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s19
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s12
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s15
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s13
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s16
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s5
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s14
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x5
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	buffer_load_u16 v42, v42, s[48:51], 0 offen
	buffer_load_u16 v43, v43, s[48:51], 0 offen
	buffer_load_u16 v45, v45, s[48:51], 0 offen
	buffer_load_u16 v46, v46, s[48:51], 0 offen
	buffer_load_u16 v47, v47, s[48:51], 0 offen
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s24
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s3
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s10
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s6
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_u16 v48, v48, s[48:51], 0 offen
	buffer_load_u16 v49, v49, s[48:51], 0 offen
	buffer_load_u16 v51, v51, s[48:51], 0 offen
	buffer_load_u16 v52, v52, s[48:51], 0 offen
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s11
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s4
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_u16 v53, v53, s[48:51], 0 offen
	buffer_load_u16 v54, v54, s[48:51], 0 offen
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s1, s8
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s0, v252, 20
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	s_clause 0x5
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	buffer_load_u16 v50, v50, s[48:51], 0 offen
	buffer_load_u16 v44, v44, s[48:51], 0 offen
	buffer_load_u16 v56, v56, s[48:51], 0 offen
	buffer_load_u16 v55, v55, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s7, v252, 27
	v_readlane_b32 s1, v252, 21
	v_readlane_b32 s2, v252, 22
	v_readlane_b32 s3, v252, 23
	v_readlane_b32 s4, v252, 24
	v_readlane_b32 s5, v252, 25
	v_readlane_b32 s6, v252, 26
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v214, v17
	s_waitcnt vmcnt(27)
	ds_store_b16 v214, v21 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v214, v33 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v214, v37 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v214, v41 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v214, v45 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v214, v48 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v214, v49 offset:7168
	ds_store_b16 v215, v18
	ds_store_b16 v215, v22 offset:1024
	ds_store_b16 v215, v34 offset:2048
	ds_store_b16 v215, v38 offset:3072
	ds_store_b16 v215, v42 offset:4096
	ds_store_b16 v215, v46 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v215, v51 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v215, v52 offset:7168
	ds_store_b16 v216, v19
	ds_store_b16 v216, v23 offset:1024
	ds_store_b16 v216, v35 offset:2048
	ds_store_b16 v216, v39 offset:3072
	ds_store_b16 v216, v43 offset:4096
	ds_store_b16 v216, v47 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v216, v53 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v216, v54 offset:7168
	ds_store_b16 v217, v20
	ds_store_b16 v217, v24 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v217, v36 offset:2048
	ds_store_b16 v217, v40 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v217, v44 offset:4096
	ds_store_b16 v217, v50 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v217, v55 offset:6144
	ds_store_b16 v217, v56 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v17, off, off offset:608
	scratch_load_b32 v53, off, off offset:632
	scratch_load_b128 v[122:125], off, off offset:476
	scratch_load_b128 v[126:129], off, off offset:492
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v104, s7 :: v_dual_mov_b32 v103, s6
	v_dual_mov_b32 v102, s5 :: v_dual_mov_b32 v101, s4
	v_dual_mov_b32 v100, s3 :: v_dual_mov_b32 v99, s2
	v_dual_mov_b32 v98, s1 :: v_dual_mov_b32 v97, s0
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v253, 19
	v_readlane_b32 s0, v253, 1
	v_readlane_b32 s1, v253, 12
	v_readlane_b32 s2, v253, 5
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v49, 0, v17
	s_waitcnt vmcnt(2)
	ds_load_b128 v[21:24], v53
	ds_load_b128 v[17:20], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v53 offset:2048
	ds_load_b128 v[45:48], v53 offset:4096
	ds_load_b128 v[41:44], v49 offset:4096
	ds_load_b128 v[49:52], v49 offset:6144
	ds_load_b128 v[53:56], v53 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[17:24], v[122:129], v[97:104]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[122:129], v[97:104]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[41:48], v[122:129], v[97:104]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[49:56], v[122:129], v[97:104]
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v50, off, off offset:640
	scratch_load_b32 v49, off, off offset:636
	scratch_load_b128 v[41:44], off, off offset:512
	scratch_load_b128 v[45:48], off, off offset:528
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[17:20], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v50 offset:2048
	ds_load_b128 v[21:24], v50
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[17:24], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[21:24], v50 offset:4096
	ds_load_b128 v[17:20], v49 offset:4096
	ds_load_b128 v[33:36], v49 offset:6144
	ds_load_b128 v[37:40], v50 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:648
	scratch_load_b32 v49, off, off offset:644
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[17:24], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[33:40], v[41:48], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:544
	scratch_load_b128 v[45:48], off, off offset:560
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[17:20], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v50 offset:2048
	ds_load_b128 v[21:24], v50
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[17:24], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[21:24], v50 offset:4096
	ds_load_b128 v[17:20], v49 offset:4096
	ds_load_b128 v[33:36], v49 offset:6144
	ds_load_b128 v[37:40], v50 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:656
	scratch_load_b32 v49, off, off offset:652
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[17:24], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[33:40], v[41:48], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:576
	scratch_load_b128 v[45:48], off, off offset:592
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[17:20], v49
	ds_load_b128 v[33:36], v49 offset:2048
	ds_load_b128 v[37:40], v50 offset:2048
	ds_load_b128 v[21:24], v50
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[33:40], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[17:24], v[41:48], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[21:24], v50 offset:4096
	ds_load_b128 v[17:20], v49 offset:4096
	ds_load_b128 v[33:36], v49 offset:6144
	ds_load_b128 v[37:40], v50 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[17:24], v[41:48], v[73:80]
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b64 v[17:18], off, off offset:104 ; 8-byte Folded Reload
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[33:40], v[41:48], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, s34, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s23, v17
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s67, s3, vcc_lo
	v_readlane_b32 s3, v253, 20
	s_and_b32 s61, s0, vcc_lo
	v_readlane_b32 s0, v253, 6
	s_and_b32 s46, s1, vcc_lo
	v_readlane_b32 s1, v253, 13
	s_and_b32 s62, s3, vcc_lo
	v_readlane_b32 s3, v253, 21
	s_and_b32 s66, s0, vcc_lo
	v_readlane_b32 s0, v253, 7
	s_and_b32 s64, s1, vcc_lo
	v_readlane_b32 s1, v253, 14
	s_and_b32 s58, s3, vcc_lo
	v_readlane_b32 s3, v253, 22
	s_and_b32 s63, s0, vcc_lo
	v_readlane_b32 s0, v253, 8
	s_and_b32 s59, s1, vcc_lo
	v_readlane_b32 s1, v253, 4
	s_and_b32 s53, s3, vcc_lo
	v_readlane_b32 s3, v253, 23
	s_and_b32 s57, s0, vcc_lo
	v_readlane_b32 s0, v253, 2
	s_and_b32 s56, s1, vcc_lo
	v_readlane_b32 s1, v253, 15
	s_and_b32 s39, s3, vcc_lo
	v_readlane_b32 s3, v253, 24
	s_and_b32 s54, s0, vcc_lo
	v_readlane_b32 s0, v253, 9
	s_and_b32 s52, s1, vcc_lo
	v_readlane_b32 s1, v253, 16
	s_and_b32 vcc_hi, s3, vcc_lo
	v_readlane_b32 s3, v253, 25
	s_and_b32 s104, s0, vcc_lo
	v_readlane_b32 s0, v253, 10
	s_and_b32 s28, s1, vcc_lo
	v_readlane_b32 s1, v253, 17
	s_and_b32 s31, s3, vcc_lo
	v_readlane_b32 s3, v253, 26
	s_and_b32 s37, s0, vcc_lo
	v_readlane_b32 s0, v253, 11
	s_and_b32 s30, s2, vcc_lo
	v_readlane_b32 s2, v253, 18
	s_and_b32 s33, s3, vcc_lo
	v_readlane_b32 s3, v253, 30
	s_and_b32 s47, s0, vcc_lo
	v_readlane_b32 s0, v253, 3
	s_and_b32 s1, s1, vcc_lo
	s_and_b32 s2, s2, vcc_lo
	s_and_b32 s35, s3, vcc_lo
	v_readlane_b32 s3, v252, 0
	s_and_b32 s0, s0, vcc_lo
	s_and_b32 s65, s3, vcc_lo
	v_readlane_b32 s3, v253, 27
	s_and_b32 s60, s3, vcc_lo
	v_readlane_b32 s3, v253, 28
	s_and_b32 s55, s3, vcc_lo
	v_readlane_b32 s3, v253, 31
	s_and_b32 s27, s3, vcc_lo
	v_readlane_b32 s3, v252, 2
	s_and_b32 s38, s3, vcc_lo
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v252, 3
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v18, off, off offset:1164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v17, v18
	scratch_load_b32 v18, off, off offset:1180 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s42, vcc_lo, s61
	s_and_not1_b32 s61, s61, exec_lo
	s_and_b32 s42, s42, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s61, s61, s42
	s_and_not1_b32 s42, s57, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v17, v18
	scratch_load_b32 v18, off, off offset:1196 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s66
	s_and_not1_b32 s66, s66, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s66, s66, s3
	s_and_not1_b32 s3, s63, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s4, v17, v18
	scratch_load_b32 v18, off, off offset:1212 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s4, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, exec_lo
	s_or_b32 s63, s3, s4
	s_and_not1_b32 s3, s54, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s5, v17, v18
	scratch_load_b32 v18, off, off offset:1228 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s5, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s57, s42, s5
	s_and_not1_b32 s5, s104, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s6, v17, v18
	scratch_load_b32 v18, off, off offset:1244 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s6, exec_lo
	s_or_b32 s54, s3, s4
	s_and_not1_b32 s3, s37, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s7, v17, v18
	scratch_load_b32 v18, off, off offset:1260 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s104
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s104, s5, s6
	s_and_not1_b32 s5, s47, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s8, v17, v18
	scratch_load_b32 v18, off, off offset:1276 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s8, exec_lo
	s_or_b32 s37, s3, s4
	s_and_not1_b32 s4, s46, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s9, v17, v18
	scratch_load_b32 v18, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s47, s5, s6
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s10, v17, v18
	scratch_load_b32 v18, off, off offset:1184 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s0
	s_and_not1_b32 s0, s0, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s0, s0, s3
	s_and_not1_b32 s3, s64, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s11, v17, v18
	scratch_load_b32 v18, off, off offset:1200 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s11, exec_lo
	s_or_b32 s46, s4, s5
	s_and_not1_b32 s5, s59, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v17, v18
	scratch_load_b32 v18, off, off offset:1216 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s12, exec_lo
	s_or_b32 s64, s3, s4
	s_and_not1_b32 s3, s56, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v17, v18
	scratch_load_b32 v18, off, off offset:1232 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s13, exec_lo
	s_or_b32 s59, s5, s6
	s_and_not1_b32 s5, s52, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v17, v18
	scratch_load_b32 v18, off, off offset:1248 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s14, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s14, exec_lo
	s_or_b32 s56, s3, s4
	s_and_not1_b32 s3, s28, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v17, v18
	scratch_load_b32 v18, off, off offset:1264 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s15, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s15, exec_lo
	s_or_b32 s52, s5, s6
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s16, v17, v18
	scratch_load_b32 v18, off, off offset:1280 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s16, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s16, exec_lo
	s_or_b32 s28, s3, s4
	s_and_not1_b32 s3, s30, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v17, v18
	scratch_load_b32 v18, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s5, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s1, s1, s5
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v17, v18
	scratch_load_b32 v18, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s18, s30
	s_and_b32 s4, s18, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s30, s3, s4
	s_and_not1_b32 s3, s67, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v17, v18
	scratch_load_b32 v18, off, off offset:1204 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s2
	s_and_not1_b32 s2, s2, exec_lo
	s_and_b32 s5, s19, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s2, s2, s5
	s_and_not1_b32 s5, s62, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v17, v18
	scratch_load_b32 v18, off, off offset:1220 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s20, exec_lo
	s_or_b32 s67, s3, s4
	s_and_not1_b32 s3, s58, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v17, v18
	scratch_load_b32 v18, off, off offset:1236 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s21, exec_lo
	s_or_b32 s62, s5, s6
	s_and_not1_b32 s5, s53, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v17, v18
	scratch_load_b32 v18, off, off offset:1252 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s22, exec_lo
	s_or_b32 s58, s3, s4
	s_and_not1_b32 s3, s39, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v17, v18
	scratch_load_b32 v18, off, off offset:1268 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s23, exec_lo
	s_or_b32 s53, s5, s6
	s_and_not1_b32 s5, vcc_hi, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v17, v18
	scratch_load_b32 v18, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s24, exec_lo
	s_or_b32 s39, s3, s4
	s_and_not1_b32 s3, s31, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v17, v18
	scratch_load_b32 v18, off, off offset:1176 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s25, exec_lo
	s_or_b32 vcc_hi, s5, s6
	s_and_not1_b32 s5, s33, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v17, v18
	scratch_load_b32 v18, off, off offset:1192 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s26, exec_lo
	s_or_b32 s31, s3, s4
	s_and_not1_b32 s3, s35, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v17, v18
	scratch_load_b32 v18, off, off offset:1208 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s36, s36, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s36, exec_lo
	s_or_b32 s33, s5, s6
	s_and_not1_b32 s5, s65, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v17, v18
	scratch_load_b32 v18, off, off offset:1224 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s43, s68, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s43, exec_lo
	s_or_b32 s35, s3, s4
	s_and_not1_b32 s3, s60, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v17, v18
	scratch_load_b32 v18, off, off offset:1240 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s68, s69, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s68, exec_lo
	s_or_b32 s65, s5, s6
	s_and_not1_b32 s5, s55, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v17, v18
	scratch_load_b32 v18, off, off offset:1256 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s69, s70, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s69, exec_lo
	s_or_b32 s60, s3, s4
	s_and_not1_b32 s3, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v17, v18
	scratch_load_b32 v18, off, off offset:1272 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s70, s71, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s70, exec_lo
	s_or_b32 s55, s5, s6
	s_and_not1_b32 s5, s38, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v17, v18
	scratch_load_b32 v18, off, off offset:1288 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s71, s72, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s71, exec_lo
	s_or_b32 s27, s3, s4
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v17, v18
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s72, s73, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s72, exec_lo
	s_or_b32 s38, s5, s6
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s3, v253, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v18, off, off offset:1292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v17, v18
	scratch_load_b32 v18, off, off offset:1296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v17, v18
	scratch_load_b32 v18, off, off offset:1300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s4, v17, v18
	scratch_load_b32 v18, off, off offset:1304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s5, v17, v18
	scratch_load_b32 v18, off, off offset:1308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s6, v17, v18
	scratch_load_b32 v18, off, off offset:1312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s7, v17, v18
	scratch_load_b32 v18, off, off offset:1316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s8, v17, v18
	scratch_load_b32 v18, off, off offset:1320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s9, v17, v18
	scratch_load_b32 v18, off, off offset:1324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s10, v17, v18
	scratch_load_b32 v18, off, off offset:1328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s11, v17, v18
	scratch_load_b32 v18, off, off offset:1332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v17, v18
	scratch_load_b32 v18, off, off offset:1336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v17, v18
	scratch_load_b32 v18, off, off offset:1340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v17, v18
	scratch_load_b32 v18, off, off offset:1344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v17, v18
	scratch_load_b32 v18, off, off offset:1348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v17, v18
	scratch_load_b32 v18, off, off offset:1352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v17, v18
	scratch_load_b32 v18, off, off offset:1356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v17, v18
	scratch_load_b32 v18, off, off offset:1360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v17, v18
	scratch_load_b32 v18, off, off offset:1364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v17, v18
	scratch_load_b32 v18, off, off offset:1368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v17, v18
	scratch_load_b32 v18, off, off offset:1372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v17, v18
	scratch_load_b32 v18, off, off offset:1376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v17, v18
	scratch_load_b32 v18, off, off offset:1380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v17, v18
	scratch_load_b32 v18, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v17, v18
	scratch_load_b32 v18, off, off offset:1388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v17, v18
	scratch_load_b32 v18, off, off offset:1392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s36, v17, v18
	scratch_load_b32 v18, off, off offset:1396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s68, v17, v18
	scratch_load_b32 v18, off, off offset:1400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s69, v17, v18
	scratch_load_b32 v18, off, off offset:1404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s70, v17, v18
	scratch_load_b32 v18, off, off offset:1408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s71, v17, v18
	scratch_load_b32 v18, off, off offset:1412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s72, v17, v18
	scratch_load_b32 v18, off, off offset:1416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s73, v17, v18
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v18, off, off offset:1420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v17, v18
	scratch_load_b32 v18, off, off offset:1424 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s74, vcc_lo, s74
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s74, s74, s61
	s_and_not1_b32 s61, s61, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v17, v18
	scratch_load_b32 v18, off, off offset:1428 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s66
	s_and_not1_b32 s66, s66, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s66, s66, s3
	s_and_not1_b32 s3, s63, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v17, v18
	scratch_load_b32 v18, off, off offset:1432 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s4, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, s63
	s_and_b32 s4, s4, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s63, s3, s4
	s_and_not1_b32 s3, s54, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v17, v18
	scratch_load_b32 v18, off, off offset:1436 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s5, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s5, s57
	s_and_not1_b32 s57, s57, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s57, s57, s5
	s_and_not1_b32 s5, s104, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v17, v18
	scratch_load_b32 v18, off, off offset:1440 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s6, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s6, s54
	s_and_b32 s4, s6, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s3, s4
	s_and_not1_b32 s3, s37, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v17, v18
	scratch_load_b32 v18, off, off offset:1444 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s7, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s7, s7, s104
	s_and_b32 s6, s7, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s104, s5, s6
	s_and_not1_b32 s5, s47, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v17, v18
	scratch_load_b32 v18, off, off offset:1448 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s8, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, s8, s37
	s_and_b32 s4, s8, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s37, s3, s4
	s_and_not1_b32 s4, s46, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v17, v18
	scratch_load_b32 v18, off, off offset:1452 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s9, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s9, s9, s47
	s_and_b32 s6, s9, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s47, s5, s6
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v17, v18
	scratch_load_b32 v18, off, off offset:1456 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s10, s82
	s_and_b32 s10, s10, s0
	s_and_not1_b32 s0, s0, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s0, s0, s3
	s_and_not1_b32 s3, s64, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v17, v18
	scratch_load_b32 v18, off, off offset:1460 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s11, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, s46
	s_and_b32 s5, s11, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s46, s4, s5
	s_and_not1_b32 s5, s59, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v17, v18
	scratch_load_b32 v18, off, off offset:1464 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s12, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, s64
	s_and_b32 s4, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s64, s3, s4
	s_and_not1_b32 s3, s56, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v17, v18
	scratch_load_b32 v18, off, off offset:1468 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s13, s85
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s59
	s_and_b32 s6, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s5, s6
	s_and_not1_b32 s5, s52, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v17, v18
	scratch_load_b32 v18, off, off offset:1472 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s14, s86
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s56
	s_and_b32 s4, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s56, s3, s4
	s_and_not1_b32 s3, s28, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v17, v18
	scratch_load_b32 v18, off, off offset:1476 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s15, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s52
	s_and_b32 s6, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s52, s5, s6
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v17, v18
	scratch_load_b32 v18, off, off offset:1480 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s16, s88
	s_and_b32 s16, s16, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s16, exec_lo
	s_or_b32 s28, s3, s4
	s_and_not1_b32 s3, s30, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v17, v18
	scratch_load_b32 v18, off, off offset:1484 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s17, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s5, s17, exec_lo
	s_or_b32 s1, s1, s5
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v17, v18
	scratch_load_b32 v18, off, off offset:1488 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s18, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s43, s43, s30
	s_and_b32 s4, s43, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s30, s3, s4
	s_and_not1_b32 s3, s67, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v17, v18
	scratch_load_b32 v18, off, off offset:1492 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s19, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s2
	s_and_not1_b32 s2, s2, exec_lo
	s_and_b32 s5, s19, exec_lo
	s_or_b32 s2, s2, s5
	s_and_not1_b32 s5, s62, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v17, v18
	scratch_load_b32 v18, off, off offset:1496 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s67
	s_and_b32 s4, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s67, s3, s4
	s_and_not1_b32 s3, s58, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v17, v18
	scratch_load_b32 v18, off, off offset:1500 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s62
	s_and_b32 s6, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s62, s5, s6
	s_and_not1_b32 s5, s53, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v17, v18
	scratch_load_b32 v18, off, off offset:1504 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s58
	s_and_b32 s4, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s58, s3, s4
	s_and_not1_b32 s3, s39, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s95, v17, v18
	scratch_load_b32 v18, off, off offset:1508 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s53
	s_and_b32 s6, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s53, s5, s6
	s_and_not1_b32 s5, vcc_hi, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s96, v17, v18
	scratch_load_b32 v18, off, off offset:1512 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s39
	s_and_b32 s4, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s39, s3, s4
	s_and_not1_b32 s3, s31, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s97, v17, v18
	scratch_load_b32 v18, off, off offset:1516 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, vcc_hi
	s_and_b32 s6, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 vcc_hi, s5, s6
	s_and_not1_b32 s5, s33, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s98, v17, v18
	scratch_load_b32 v18, off, off offset:1520 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s26, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s42, s42, s31
	s_and_b32 s4, s42, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s31, s3, s4
	s_and_not1_b32 s3, s35, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s99, v17, v18
	scratch_load_b32 v18, off, off offset:1524 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, s36, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, s36, s33
	s_and_b32 s6, s36, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s33, s5, s6
	s_and_not1_b32 s5, s65, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s100, v17, v18
	scratch_load_b32 v18, off, off offset:1528 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s68, s68, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s68, s68, s35
	s_and_b32 s4, s68, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s35, s3, s4
	s_and_not1_b32 s3, s60, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s101, v17, v18
	scratch_load_b32 v18, off, off offset:1532 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s69, s69, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s69, s69, s65
	s_and_b32 s6, s69, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s65, s5, s6
	s_and_not1_b32 s5, s55, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s102, v17, v18
	scratch_load_b32 v18, off, off offset:1536 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s70, s70, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s70, s70, s60
	s_and_b32 s4, s70, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s60, s3, s4
	s_and_not1_b32 s3, s27, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s103, v17, v18
	scratch_load_b32 v18, off, off offset:1540 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s71, s71, s103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s71, s71, s55
	s_and_b32 s6, s71, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s55, s5, s6
	s_and_not1_b32 s5, s38, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v17, v18
	scratch_load_b32 v18, off, off offset:1544 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s72, s26
	s_and_b32 s72, s74, exec_lo
	s_and_b32 s26, s26, s27
	s_or_b32 s61, s61, s72
	s_and_b32 s4, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s27, s3, s4
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v17, v18
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s73, s18
	s_and_b32 s18, s18, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s18, exec_lo
	s_or_b32 s38, s5, s6
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v99, off, off offset:1548
	scratch_load_b32 v100, off, off offset:1552
	scratch_load_b32 v101, off, off offset:1556
	scratch_load_b32 v102, off, off offset:1560
	scratch_load_b32 v104, off, off offset:1568
	scratch_load_b32 v98, off, off offset:1564
	v_readlane_b32 s36, v252, 5
	v_readlane_b32 s16, v252, 9
	v_readlane_b32 s37, v252, 6
	v_readlane_b32 s24, v252, 12
	v_readlane_b32 s38, v252, 7
	v_readlane_b32 s39, v252, 8
.LBB0_15:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v18, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v17, 0x80, v98
	v_lshrrev_b32_e32 v19, 1, v102
	v_add_nc_u32_e32 v0, 0, v102
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[69:72] offset:16
	v_add3_u32 v17, 0, v104, v17
	ds_store_b128 v0, v[81:84] offset:128
	ds_store_b128 v0, v[85:88] offset:144
	ds_store_b128 v0, v[77:80] offset:32
	ds_store_b128 v0, v[93:96] offset:48
	ds_store_b128 v0, v[73:76] offset:160
	ds_store_b128 v0, v[89:92] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v100
	v_readlane_b32 s31, v252, 4
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v48, 4, v101
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v54, v0, v99
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v48
	v_or_b32_e32 v20, 54, v48
	v_or_b32_e32 v21, 52, v48
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v52, s24, v54
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v22, 50, v48
	v_or_b32_e32 v23, 48, v48
	v_or_b32_e32 v24, 46, v48
	v_or_b32_e32 v33, 44, v48
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s22, v52
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 42, v48
	v_or_b32_e32 v35, 40, v48
	v_or_b32_e32 v36, 38, v48
	v_or_b32_e32 v37, 36, v48
	v_or_b32_e32 v38, 34, v48
	v_or_b32_e32 v39, 32, v48
	v_or_b32_e32 v40, 30, v48
	v_or_b32_e32 v41, 28, v48
	v_or_b32_e32 v42, 26, v48
	v_or_b32_e32 v43, 24, v48
	v_or_b32_e32 v44, 22, v48
	v_or_b32_e32 v45, 20, v48
	v_or_b32_e32 v46, 18, v48
	v_or_b32_e32 v47, 16, v48
	v_or_b32_e32 v50, 12, v48
	v_or_b32_e32 v51, 10, v48
	v_or_b32_e32 v52, 8, v48
	v_or_b32_e32 v56, 2, v48
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s31, v47
	v_cmp_gt_i32_e64 s8, s31, v50
	v_cmp_gt_i32_e64 s7, s31, v51
	v_cmp_gt_i32_e64 s6, s31, v52
	v_cmp_gt_i32_e64 s11, s31, v46
	v_cmp_gt_i32_e64 s12, s31, v45
	v_cmp_gt_i32_e64 s13, s31, v44
	v_cmp_gt_i32_e64 s14, s31, v43
	v_cmp_gt_i32_e64 s15, s31, v42
	v_cmp_gt_i32_e64 s17, s31, v40
	v_cmp_gt_i32_e64 s18, s31, v39
	v_cmp_gt_i32_e64 s19, s31, v38
	v_cmp_gt_i32_e64 s20, s31, v37
	v_cmp_gt_i32_e64 s21, s31, v36
	v_cmp_gt_i32_e64 s22, s31, v35
	v_cmp_gt_i32_e64 s23, s31, v34
	v_cmp_gt_i32_e64 s24, s31, v33
	v_cmp_gt_i32_e64 s25, s31, v24
	v_cmp_gt_i32_e64 s26, s31, v23
	v_cmp_gt_i32_e64 s27, s31, v22
	v_cmp_gt_i32_e64 s28, s31, v21
	v_cmp_gt_i32_e64 s29, s31, v20
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v54, s16, v54
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s31, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v54, v54, s31
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v52, v54, v52, 2
	v_add_lshl_u32 v51, v54, v51, 2
	v_add_lshl_u32 v50, v54, v50, 2
	v_add_lshl_u32 v47, v54, v47, 2
	v_add_lshl_u32 v46, v54, v46, 2
	v_add_lshl_u32 v45, v54, v45, 2
	v_add_lshl_u32 v41, v54, v41, 2
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v18, 28, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v17, v17, v19, v18
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v18, 58, v48
	v_or_b32_e32 v19, 56, v48
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v65, v17
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v17, 60, v48
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s31, v19
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
	v_div_scale_f32 v82, null, v65, v65, v26
	v_fmac_f32_e32 v67, v49, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v69, v53, v69
	v_fma_f32 v78, -v72, v73, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v74, v76, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v49, 14, v48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v71, v70, v67
	v_mul_f32_e32 v77, v75, v69
	v_fmac_f32_e32 v73, v78, v73
	v_div_scale_f32 v78, s2, v59, v65, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v66, v71, v70
	v_fmac_f32_e32 v76, v79, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v53, 6, v48
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s31, v49
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v55, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v55, 4, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v71, v70
	v_fma_f32 v70, -v68, v77, v75
	v_div_fmas_f32 v66, v66, v67, v71
	s_delay_alu instid0(VALU_DEP_2)
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
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v67, v68, v73
	v_rcp_f32_e32 v68, v80
	v_div_fmas_f32 v66, v66, v69, v77
	v_fma_f32 v69, -v74, v79, v71
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v57, 0, v57, s1
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
	v_div_scale_f32 v76, null, v65, v65, v25
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
	v_div_scale_f32 v78, s2, v25, v65, v25
	v_fmac_f32_e32 v70, v80, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v68, v65, v62
	v_fma_f32 v67, -v77, v66, v67
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v74, v81, 1.0
	v_mul_f32_e32 v68, v78, v70
	v_div_scale_f32 v77, null, v65, v65, v28
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
	v_div_scale_f32 v76, s4, v27, v65, v27
	v_fma_f32 v73, -v74, v75, v79
	v_fma_f32 v69, -v82, v71, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v78, -v77, v72, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v60, 0, v60, s1
	v_cndmask_b32_e64 v59, 0, v59, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v69, v71
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v61, 0, v61, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v72, v78, v72 :: v_dual_fmac_f32 v75, v73, v81
	v_div_scale_f32 v73, null, v65, v65, v27
	v_div_scale_f32 v78, null, v65, v65, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v74, v75, v79
	v_rcp_f32_e32 v69, v73
	v_div_scale_f32 v74, s3, v26, v65, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v81, v75
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v75, v74, v71
	v_div_fmas_f32 v66, v66, v70, v68
	v_div_scale_f32 v70, s2, v28, v65, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v73, v69, 1.0
	v_div_fixup_f32 v64, v67, v65, v64
	v_fma_f32 v67, -v82, v75, v74
	v_rcp_f32_e32 v81, v78
	v_div_fixup_f32 v25, v66, v65, v25
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v29
	v_dual_fmac_f32 v75, v67, v71 :: v_dual_mul_f32 v80, v70, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v76, v69
	v_rcp_f32_e32 v68, v79
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v66, -v82, v75, v74
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v64, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v73, v67, v76
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v71, v75
	v_fma_f32 v71, -v77, v80, v70
	v_fmac_f32_e32 v67, v74, v69
	v_fma_f32 v82, -v79, v68, 1.0
	v_div_scale_f32 v74, s3, v29, v65, v29
	v_fma_f32 v75, -v78, v81, 1.0
	v_div_fixup_f32 v26, v66, v65, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v68, v82, v68
	v_fma_f32 v66, -v73, v67, v76
	v_fmac_f32_e32 v80, v71, v72
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v73, s5, v30, v65, v30
	v_mul_f32_e32 v71, v74, v68
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v75, null, v65, v65, v31
	v_div_fmas_f32 v66, v66, v69, v67
	v_fma_f32 v67, -v77, v80, v70
	v_fma_f32 v69, -v79, v71, v74
	v_mul_f32_e32 v76, v73, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v27, v66, v65, v27
	v_div_fmas_f32 v67, v67, v72, v80
	v_fmac_f32_e32 v71, v69, v68
	v_fma_f32 v72, -v78, v76, v73
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v75
	v_div_scale_f32 v77, null, v65, v65, v32
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
	v_div_fixup_f32 v28, v67, v65, v28
	v_div_scale_f32 v67, s2, v31, v65, v31
	v_div_fmas_f32 v68, v68, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v80, v70
	v_fma_f32 v72, -v77, v69, 1.0
	v_div_scale_f32 v73, s3, v32, v65, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v68, v65, v30
	v_rcp_f32_e32 v68, v79
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, null, v65, v65, v9
	v_div_fixup_f32 v29, v66, v65, v29
	v_div_scale_f32 v81, null, v65, v65, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v72
	v_mul_f32_e32 v78, v73, v69
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v80, -v79, v68, 1.0
	v_rcp_f32_e32 v83, v81
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v77, v78, v73
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v68, v80, v68 :: v_dual_mul_f32 v71, v67, v70
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s4, v9, v65, v9
	v_fma_f32 v76, -v75, v71, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v76, v70
	v_fma_f32 v76, -v72, v74, 1.0
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v76, v74
	v_div_fmas_f32 v67, v67, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v70, -v77, v78, v73
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v73, s2, v10, v65, v10
	v_div_fixup_f32 v31, v67, v65, v31
	v_div_fmas_f32 v69, v70, v69, v78
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v73, v68
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v32, v69, v65, v32
	v_fma_f32 v69, -v81, v83, 1.0
	v_fma_f32 v70, -v79, v82, v73
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v75, v78, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v71, v80, v74 :: v_dual_fmac_f32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v72, v71, v66
	v_mul_f32_e32 v72, v69, v83
	v_div_fmas_f32 v66, v66, v74, v71
	v_fma_f32 v71, -v79, v82, v73
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v73, null, v65, v65, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v70, v67, 1.0
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v67, v70, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v74, v80, 1.0
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, null, v65, v65, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, s5, v2, v65, v2
	v_mul_f32_e32 v84, v81, v70
	v_div_fmas_f32 v68, v68, v75, v72
	v_fma_f32 v72, -v71, v73, v69
	v_mul_f32_e32 v75, v66, v78
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v83, v79
	v_div_fixup_f32 v14, v68, v65, v14
	v_fmac_f32_e32 v73, v72, v77
	v_fma_f32 v72, -v76, v75, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v71, v73, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v70, v70, v80, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v74, v83
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v70, v65, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v79, v69, v72
	v_rcp_f32_e32 v72, v68
	v_div_scale_f32 v70, null, v65, v65, v7
	v_rcp_f32_e32 v79, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v74, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v68, v72, 1.0
	v_fmac_f32_e32 v72, v78, v72
	v_div_fmas_f32 v66, v66, v83, v69
	v_rcp_f32_e32 v69, v67
	v_div_scale_f32 v71, vcc_lo, v4, v65, v4
	v_div_scale_f32 v78, s3, v6, v65, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v66, v65, v3
	v_fma_f32 v81, -v70, v74, 1.0
	v_fma_f32 v83, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v78, v72
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s4, v7, v65, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s2, v5, v65, v5
	v_fma_f32 v80, -v73, v76, v71
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s5, v8, v65, v8
	v_mul_f32_e32 v82, v66, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v80, v75 :: v_dual_mul_f32 v85, v81, v74
	v_mul_f32_e32 v86, v83, v79
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v80, -v67, v82, v66
	v_fma_f32 v71, -v73, v76, v71
	v_fma_f32 v73, -v68, v84, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
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
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v69, -v77, v86, v83
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
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v64, v48, s[36:39], 0 offen
	buffer_store_b32 v25, v47, s[36:39], 0 offen
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v54, v44, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	s_clause 0x1
	buffer_store_b32 v26, v46, s[36:39], 0 offen
	buffer_store_b32 v27, v45, s[36:39], 0 offen
	v_add_lshl_u32 v26, v54, v43, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v54, v42, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v71, v65, v4
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s15
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s16
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v54, v40, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_add_lshl_u32 v26, v54, v39, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[36:39], 0 offen
	buffer_store_b32 v31, v41, s[36:39], 0 offen
	v_add_lshl_u32 v27, v54, v38, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v54, v37, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s19
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v32, v25, s[36:39], 0 offen
	buffer_store_b32 v9, v26, s[36:39], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s20
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v54, v36, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_clause 0x1
	buffer_store_b32 v10, v27, s[36:39], 0 offen
	buffer_store_b32 v11, v28, s[36:39], 0 offen
	v_add_lshl_u32 v10, v54, v35, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v54, v34, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v54, v33, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s23
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s24
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v54, v24, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	v_add_lshl_u32 v10, v54, v23, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s25
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v25, s[36:39], 0 offen
	v_add_lshl_u32 v11, v54, v22, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v12, v54, v21, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s0, s27
	.loc	1 1044 48                       ; attention.py:1044:48
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
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_add_lshl_u32 v1, v54, v20, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s31, v18
	v_cmp_gt_i32_e32 vcc_lo, s31, v17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v54, v19, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s31, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s0, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v54, v18, 2
	v_add_lshl_u32 v9, v54, v17, 2
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
.Ltmp687:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1576
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1576
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46208
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1576
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
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
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
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
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
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
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
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
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1576
    .sgpr_count:     107
    .sgpr_spill_count: 98
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 393
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
