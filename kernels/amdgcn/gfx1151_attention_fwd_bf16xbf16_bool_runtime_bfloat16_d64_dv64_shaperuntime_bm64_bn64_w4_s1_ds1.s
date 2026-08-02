	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b128 s[12:15], s[0:1], 0x4c
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v57, 6, v0
	s_clause 0x1
	s_load_b32 s21, s[0:1], 0x5c
	s_load_b64 s[4:5], s[0:1], 0x0
	v_and_b32_e32 v66, 63, v0
	s_mov_b32 s7, 0x31027000
	v_or_b32_e32 v2, 8, v57
	v_or_b32_e32 v3, 16, v57
	v_or_b32_e32 v6, 24, v57
	v_or_b32_e32 v7, 32, v57
	v_or_b32_e32 v11, 10, v57
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v2, off offset:172
	scratch_store_b32 off, v3, off offset:176
	scratch_store_b32 off, v6, off offset:180
	scratch_store_b32 off, v57, off offset:168
	v_or_b32_e32 v12, 12, v57
	v_or_b32_e32 v13, 14, v57
	v_or_b32_e32 v20, 18, v57
	v_or_b32_e32 v21, 20, v57
	s_waitcnt lgkmcnt(0)
	s_and_b32 s6, 1, s40
	s_bitcmp1_b32 s40, 8
	v_or_b32_e32 v22, 22, v57
	s_cselect_b32 s8, -1, 0
	s_cmp_eq_u32 s6, 1
	v_writelane_b32 v255, s8, 0
	s_cselect_b32 s8, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s10, s12
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s16, s3
	s_cvt_f32_u32 s9, s10
	s_sub_i32 s11, 0, s10
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s2, 6
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[63:64], null, s21, v57, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s20, v2
	v_or_b32_e32 v2, s20, v6
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v23, 26, v57
	v_or_b32_e32 v24, 28, v57
	v_or_b32_e32 v25, 30, v57
	v_or_b32_e32 v26, 34, v57
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v11, off offset:200
	scratch_store_b32 off, v12, off offset:204
	scratch_store_b32 off, v13, off offset:208
	scratch_store_b32 off, v20, off offset:212
	scratch_store_b32 off, v21, off offset:216
	scratch_store_b32 off, v22, off offset:220
	scratch_store_b32 off, v23, off offset:224
	scratch_store_b32 off, v24, off offset:228
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	v_readfirstlane_b32 s9, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s20, v11
	v_or_b32_e32 v15, s20, v12
	v_or_b32_e32 v11, s20, v24
	scratch_store_b32 off, v25, off offset:232 ; 4-byte Folded Spill
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s20, v25
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[24:25], null, s21, 24, v[63:64]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s9, s9
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v8, 2, v57
	v_or_b32_e32 v9, 4, v57
	v_or_b32_e32 v10, 6, v57
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s11, s11, s9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s20, v57
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s11, s9, s11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s20, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s9, s9, s11
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s11, s3, s14
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s9, s16, s9
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v7, off offset:184
	scratch_store_b32 off, v8, off offset:188
	scratch_store_b32 off, v9, off offset:192
	scratch_store_b32 off, v10, off offset:196
	s_mul_i32 s17, s9, s10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s20, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s16, s17
	s_add_i32 s16, s9, 1
	s_sub_i32 s17, s2, s10
	s_cmp_ge_u32 s2, s10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s20, v21
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s9, s16, s9
	s_cselect_b32 s2, s17, s2
	s_add_i32 s16, s9, 1
	s_cmp_ge_u32 s2, s10
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v21, s21, 3, v63
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s16, s9
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s20, v10
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s9, s16
	s_sub_i32 s17, 0, s16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s20, v23
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v5
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v6, s9
	v_mov_b32_e32 v23, v24
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s22, s21, v66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s20, v9
	v_or_b32_e32 v9, s20, v22
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v22, s21, 4, v63
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v27, 36, v57
	v_or_b32_e32 v29, 38, v57
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v1, s20, v7
	v_or_b32_e32 v7, s20, v20
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	v_readfirstlane_b32 s9, v6
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v25, s21, 5, v63
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s14, v4
	v_cmp_gt_i32_e64 s25, s14, v3
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v21, off offset:312
	scratch_store_b32 off, v22, off offset:316
	scratch_store_b64 off, v[23:24], off offset:320
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v49, 40, v57
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v26, off offset:236
	scratch_store_b32 off, v27, off offset:240
	scratch_store_b32 off, v29, off offset:244
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s9, s9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s20, v26
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v26, s21, 2, v63
	scratch_store_b32 off, v25, off offset:328 ; 4-byte Folded Spill
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s17, s17, s9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s20, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s9, s17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s20, v27
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s9, s9, s17
	v_writelane_b32 v255, s23, 1
	s_mul_hi_u32 s17, s10, s9
	s_xor_b32 s9, s12, s13
	s_mul_i32 s18, s17, s16
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s10, s10, s18
	s_add_i32 s18, s17, 1
	s_sub_i32 s19, s10, s16
	s_cmp_ge_u32 s10, s16
	v_writelane_b32 v255, s24, 2
	s_cselect_b32 s17, s18, s17
	s_cselect_b32 s10, s19, s10
	s_add_i32 s18, s17, 1
	s_cmp_ge_u32 s10, s16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s10, s18, s17
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s16, s11, s20
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s22
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s11, s16, s21
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v20, s11, v63, 1
	v_add_lshl_u32 v21, s11, v21, 1
	v_add_lshl_u32 v22, s11, v22, 1
	v_add_lshl_u32 v23, s11, v24, 1
	v_add_lshl_u32 v24, s11, v25, 1
	v_cndmask_b32_e32 v25, 0x80000000, v20, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s22
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s20, v29
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[29:30], null, s21, 6, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s22
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[30:31], null, s21, 10, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s22
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[31:32], null, s21, 12, v[63:64]
	v_mad_u64_u32 v[32:33], null, s21, 14, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s22
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[33:34], null, s21, 18, v[63:64]
	v_mad_u64_u32 v[34:35], null, s21, 20, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v28, 0x80000000, v24, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v24, s21, 1, v63
	v_mad_u64_u32 v[35:36], null, s21, 22, v[63:64]
	v_mov_b32_e32 v27, v29
	v_writelane_b32 v255, s25, 3
	scratch_store_b32 off, v24, off offset:332 ; 4-byte Folded Spill
	v_mad_u64_u32 v[36:37], null, s21, 26, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[27:28], off offset:340 ; 8-byte Folded Spill
	v_add_lshl_u32 v27, s11, v29, 1
	v_mov_b32_e32 v29, v30
	v_writelane_b32 v255, s19, 4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[37:38], null, s21, 28, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v24, s11, v24, 1
	scratch_store_b64 off, v[29:30], off offset:348 ; 8-byte Folded Spill
	v_add_lshl_u32 v29, s11, v30, 1
	v_mov_b32_e32 v30, v31
	v_writelane_b32 v255, s17, 5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v17
	v_cmp_gt_i32_e64 s18, s14, v18
	v_cmp_gt_i32_e64 s19, s14, v19
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[30:31], off offset:356 ; 8-byte Folded Spill
	v_add_lshl_u32 v30, s11, v31, 1
	v_mov_b32_e32 v31, v32
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s22
	scratch_store_b32 off, v26, off offset:336 ; 4-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, s11, v26, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	scratch_store_b64 off, v[31:32], off offset:364 ; 8-byte Folded Spill
	v_add_lshl_u32 v31, s11, v32, 1
	v_mov_b32_e32 v32, v33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v14
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s14, v15
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	scratch_store_b64 off, v[32:33], off offset:372 ; 8-byte Folded Spill
	v_add_lshl_u32 v32, s11, v33, 1
	v_mov_b32_e32 v33, v34
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v16
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s22
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[33:34], off offset:380 ; 8-byte Folded Spill
	v_add_lshl_u32 v33, s11, v34, 1
	v_mov_b32_e32 v34, v35
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s14, v7
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s14, v8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[34:35], off offset:388 ; 8-byte Folded Spill
	v_add_lshl_u32 v34, s11, v35, 1
	v_mov_b32_e32 v35, v36
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[45:46], null, s21, 30, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s22
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[35:36], off offset:396 ; 8-byte Folded Spill
	v_add_lshl_u32 v35, s11, v36, 1
	v_mov_b32_e32 v36, v37
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s28, s14, v9
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s29, s14, v10
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[36:37], off offset:404 ; 8-byte Folded Spill
	v_add_lshl_u32 v36, s11, v37, 1
	s_clause 0x7
	buffer_load_u16 v37, v25, s[4:7], 0 offen
	buffer_load_u16 v38, v21, s[4:7], 0 offen
	buffer_load_u16 v39, v24, s[4:7], 0 offen
	buffer_load_u16 v40, v26, s[4:7], 0 offen
	buffer_load_u16 v41, v29, s[4:7], 0 offen
	buffer_load_u16 v42, v30, s[4:7], 0 offen
	buffer_load_u16 v43, v31, s[4:7], 0 offen
	buffer_load_u16 v44, v27, s[4:7], 0 offen
	v_cndmask_b32_e32 v24, 0x80000000, v32, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s30, s14, v11
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[30:31], null, s21, 36, v[63:64]
	v_mad_u64_u32 v[31:32], null, s21, 38, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v25, 0x80000000, v33, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s28, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s31, s14, v12
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v33, 0x80000000, v34, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s29, s22
	v_dual_mov_b32 v21, v45 :: v_dual_cndmask_b32 v26, 0x80000000, v35
	s_and_b32 vcc_lo, s30, s22
	v_writelane_b32 v255, s17, 6
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v27, 0x80000000, v36, vcc_lo
	scratch_store_b64 off, v[21:22], off offset:412 ; 8-byte Folded Spill
	v_add_lshl_u32 v21, s11, v45, 1
	s_clause 0x5
	buffer_load_u16 v35, v22, s[4:7], 0 offen
	buffer_load_u16 v36, v23, s[4:7], 0 offen
	buffer_load_u16 v45, v24, s[4:7], 0 offen
	buffer_load_u16 v46, v25, s[4:7], 0 offen
	buffer_load_u16 v47, v26, s[4:7], 0 offen
	buffer_load_u16 v48, v27, s[4:7], 0 offen
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[26:27], null, s21, 34, v[63:64]
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v6
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s31, s22
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[58:59], null, s21, 48, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v34, 0x80000000, v21, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s22
	v_mov_b32_e32 v25, v26
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[59:60], null, s21, 50, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 42, v57
	v_writelane_b32 v255, s18, 7
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[25:26], off offset:420 ; 8-byte Folded Spill
	v_add_lshl_u32 v25, s11, v26, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s14, v13
	scratch_store_b32 off, v49, off offset:248 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, s20, v50
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v23, 44, v57
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v29, 0x80000000, v25, vcc_lo
	v_mov_b32_e32 v25, v30
	scratch_store_b32 off, v50, off offset:252 ; 4-byte Folded Spill
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[50:51], null, s21, 42, v[63:64]
	v_writelane_b32 v255, s19, 8
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[25:26], off offset:428 ; 8-byte Folded Spill
	v_mov_b32_e32 v26, v31
	v_add_lshl_u32 v25, s11, v30, 1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v20
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s22
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	v_mad_u64_u32 v[51:52], null, s21, 44, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[26:27], off offset:436 ; 8-byte Folded Spill
	v_add_lshl_u32 v26, s11, v31, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[31:32], null, s21, 40, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v30, 0x80000000, v25, vcc_lo
	v_writelane_b32 v255, s23, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, s20, v49
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s22
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[60:61], null, s21, 56, v[63:64]
	v_mov_b32_e32 v25, v31
	v_mad_u64_u32 v[61:62], null, s21, 58, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v49, 0x80000000, v26, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[52:53], null, s21, 46, v[63:64]
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[25:26], off offset:444 ; 8-byte Folded Spill
	v_mov_b32_e32 v26, v50
	v_writelane_b32 v255, s24, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v24, 46, v57
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v21
	scratch_store_b32 off, v23, off offset:256 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, s20, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v25, s11, v31, 1
	scratch_store_b64 off, v[26:27], off offset:452 ; 8-byte Folded Spill
	v_mov_b32_e32 v27, v51
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s14, v22
	v_writelane_b32 v255, s25, 11
	scratch_store_b32 off, v24, off offset:260 ; 4-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, s20, v24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v26, s11, v50, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s22
	v_writelane_b32 v255, s26, 12
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v31, 0x80000000, v25, vcc_lo
	v_mov_b32_e32 v25, v52
	scratch_store_b64 off, v[27:28], off offset:460 ; 8-byte Folded Spill
	v_add_lshl_u32 v27, s11, v51, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s14, v24
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v32, 0x80000000, v26, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s22
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[25:26], off offset:468 ; 8-byte Folded Spill
	v_cndmask_b32_e32 v50, 0x80000000, v27, vcc_lo
	v_add_lshl_u32 v25, s11, v52, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v26, 48, v57
	v_or_b32_e32 v27, 50, v57
	v_or_b32_e32 v52, 52, v57
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s22
	v_writelane_b32 v255, s27, 13
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v51, 0x80000000, v25, vcc_lo
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v26, off offset:264
	scratch_store_b32 off, v27, off offset:268
	scratch_store_b32 off, v52, off offset:272
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, s20, v26
	v_or_b32_e32 v26, s20, v27
	v_or_b32_e32 v27, s20, v52
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x5
	buffer_load_u16 v52, v28, s[4:7], 0 offen
	buffer_load_u16 v53, v29, s[4:7], 0 offen
	buffer_load_u16 v54, v30, s[4:7], 0 offen
	buffer_load_u16 v55, v31, s[4:7], 0 offen
	buffer_load_u16 v56, v32, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v28, 54, v57
	v_or_b32_e32 v29, 56, v57
	v_or_b32_e32 v30, 58, v57
	v_or_b32_e32 v31, 60, v57
	v_or_b32_e32 v32, 62, v57
	v_mov_b32_e32 v57, v58
	v_writelane_b32 v255, s28, 14
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[67:68], null, s21, 52, v[63:64]
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v104, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[57:58], off offset:476 ; 8-byte Folded Spill
	v_add_lshl_u32 v57, s11, v58, 1
	v_mov_b32_e32 v58, v59
	v_writelane_b32 v255, s29, 15
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b32 off, v28, off offset:276
	scratch_store_b32 off, v29, off offset:280
	scratch_store_b32 off, v30, off offset:284
	scratch_store_b32 off, v31, off offset:288
	scratch_store_b64 off, v[58:59], off offset:484
	v_add_lshl_u32 v58, s11, v59, 1
	v_mov_b32_e32 v59, v60
	v_writelane_b32 v255, s30, 16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v29, s20, v29
	v_or_b32_e32 v30, s20, v30
	v_or_b32_e32 v31, s20, v31
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[59:60], off offset:492 ; 8-byte Folded Spill
	v_add_lshl_u32 v59, s11, v60, 1
	v_mov_b32_e32 v60, v61
	v_writelane_b32 v255, s31, 17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, s20, v28
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v98, 7, v104
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v106, 64, v0
	.loc	1 788 26                        ; attention.py:788:26
	scratch_store_b64 off, v[60:61], off offset:500 ; 8-byte Folded Spill
	v_add_lshl_u32 v60, s11, v61, 1
	v_mov_b32_e32 v61, v67
	v_writelane_b32 v255, s17, 18
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s14, v25
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v105, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v97, 7, v0
	scratch_store_b64 off, v[61:62], off offset:508 ; 8-byte Folded Spill
	v_add_lshl_u32 v61, s11, v67, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[67:68], null, s21, 60, v[63:64]
	v_mov_b32_e32 v62, v63
	v_mad_u64_u32 v[68:69], null, s21, 54, v[63:64]
	v_writelane_b32 v255, s18, 19
	v_mad_u64_u32 v[69:70], null, s21, 62, v[63:64]
	scratch_store_b64 off, v[62:63], off offset:304 ; 8-byte Folded Spill
	v_mov_b32_e32 v62, v67
	v_writelane_b32 v255, s19, 20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s14, v26
	.loc	1 790 22 is_stmt 0              ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s19, s14, v27
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	scratch_store_b64 off, v[62:63], off offset:516 ; 8-byte Folded Spill
	v_mov_b32_e32 v63, v68
	v_writelane_b32 v255, s23, 21
	v_add_lshl_u32 v62, s11, v67, 1
	v_dual_mov_b32 v67, v66 :: v_dual_lshlrev_b32 v66, 1, v66
	scratch_store_b64 off, v[63:64], off offset:524 ; 8-byte Folded Spill
	v_mov_b32_e32 v64, v69
	v_writelane_b32 v255, s24, 22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s24, s14, v29
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b32 off, v32, off offset:292
	scratch_store_b64 off, v[67:68], off offset:296
	scratch_store_b64 off, v[64:65], off offset:532
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v65, v0, 6, 1
	v_writelane_b32 v255, s25, 23
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s25, s14, v30
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v64, s11, v69, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_and_b32_e32 v65, 0x90, v65
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s22
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v32, s20, v32
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s24, s22
	v_writelane_b32 v255, s26, 24
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s26, s14, v31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_xor_b32_e32 v65, v65, v66
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s25, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s23, s14, v28
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s19, s22
	.loc	1 790 23 is_stmt 0              ; attention.py:790:23
	v_cmp_gt_i32_e64 s27, s14, v32
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_lshl_u32 v63, s11, v68, 1
	v_xor_b32_e32 v68, 0x240, v65
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s26, s22
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s23, s22
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_add_nc_u32 v224, 0, v68
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s27, s22
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	s_clause 0x7
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	v_lshlrev_b32_e32 v67, 6, v105
	v_lshlrev_b32_e32 v99, 4, v97
	v_add_nc_u32_e32 v222, 0, v65
	v_writelane_b32 v255, s17, 25
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s10, s9
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s15, 63
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v66, v98, v67, v99
	v_xor_b32_e32 v67, 0x120, v65
	v_xor_b32_e32 v65, 0x360, v65
	v_writelane_b32 v255, s18, 26
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s4, s9
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v69, 0, v66
	v_xad_u32 v70, v66, 16, 0
	v_add_nc_u32_e32 v223, 0, v67
	v_add_nc_u32_e32 v225, 0, v65
	v_xad_u32 v71, v66, 32, 0
	v_xad_u32 v72, v66, 48, 0
	v_xad_u32 v73, v66, 64, 0
	v_xad_u32 v74, 0x50, v66, 0
	v_xad_u32 v75, 0x60, v66, 0
	v_xad_u32 v66, 0x70, v66, 0
	v_writelane_b32 v255, s24, 27
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s5
	v_writelane_b32 v254, s23, 0
	s_cvt_f32_u32 s6, s4
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s9, s7, 31
	v_writelane_b32 v255, s25, 28
	s_lshr_b32 s9, s9, 26
	v_writelane_b32 v254, s22, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cmp_eq_u32_e64 s37, 0, v106
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s7, s7, s9
	v_writelane_b32 v255, s21, 29
	s_mov_b32 vcc_hi, 0
	v_writelane_b32 v254, s27, 2
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s18, s7, 0xffffffc0
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s7, s40, 0x10008
	v_writelane_b32 v255, s19, 30
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v222, v37
	s_waitcnt vmcnt(30)
	ds_store_b16 v222, v38 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v222, v35 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v222, v36 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v222, v52 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v222, v55 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v222, v57 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v222, v59 offset:7168
	ds_store_b16 v223, v39
	ds_store_b16 v223, v41 offset:1024
	ds_store_b16 v223, v45 offset:2048
	ds_store_b16 v223, v47 offset:3072
	ds_store_b16 v223, v53 offset:4096
	ds_store_b16 v223, v56 offset:5120
	ds_store_b16 v223, v58 offset:6144
	ds_store_b16 v223, v60 offset:7168
	ds_store_b16 v224, v40
	ds_store_b16 v224, v42 offset:1024
	ds_store_b16 v224, v46 offset:2048
	ds_store_b16 v224, v48 offset:3072
	ds_store_b16 v224, v54 offset:4096
	ds_store_b16 v224, v50 offset:5120
	ds_store_b16 v224, v61 offset:6144
	ds_store_b16 v224, v62 offset:7168
	ds_store_b16 v225, v44
	ds_store_b16 v225, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v225, v33 offset:2048
	ds_store_b16 v225, v34 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v225, v49 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v225, v51 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v225, v63 offset:6144
	ds_store_b16 v225, v64 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v69
	ds_load_b128 v[37:40], v70
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:540 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:556 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v71
	ds_load_b128 v[37:40], v72
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:572 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:588 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v73
	ds_load_b128 v[37:40], v74
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:604 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:620 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v75
	ds_load_b128 v[37:40], v66
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:636 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:652 ; 16-byte Folded Spill
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v33, s6
	v_writelane_b32 v255, s26, 31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v33
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s20, s42
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s20, s41
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s43
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s43
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s7, s15, s7
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s7, s7, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s9, s7, 31
	s_lshr_b32 s9, s9, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s7, s7, s9
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s9, s10, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s7, s7, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 vcc_hi, s9, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s18, s18, s7
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v33, 0, 1, s8
	s_and_not1_b32 vcc_lo, exec_lo, s8
	scratch_store_b32 off, v33, off offset:668 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s7, s20, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 64
	s_min_i32 s7, s15, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 26
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s7, s7, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s18, s18, s7
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_lshlrev_b32_e32 v107, 1, v0
	v_lshlrev_b32_e32 v100, 6, v0
	v_lshlrev_b32_e32 v108, 2, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 vcc_hi, s18
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v101, 1, v0
	v_and_b32_e32 v109, 64, v100
	v_lshlrev_b32_e32 v102, 2, v0
	s_mov_b32 s7, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr102
.LBB0_7:                                ; %Flow396
	s_load_b64 s[8:9], s[0:1], 0x38
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v103, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s36, 0, v103
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s8, 3
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_writelane_b32 v254, s9, 4
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_writelane_b32 v254, s10, 5
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_writelane_b32 v254, s11, 6
	s_load_b32 s8, s[0:1], 0x64
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	v_mov_b32_e32 v92, v40
	v_mov_b32_e32 v91, v40
	v_mov_b32_e32 v90, v40
	v_mov_b32_e32 v89, v40
	v_mov_b32_e32 v76, v40
	v_mov_b32_e32 v75, v40
	v_mov_b32_e32 v74, v40
	v_mov_b32_e32 v73, v40
	v_mov_b32_e32 v96, v40
	v_mov_b32_e32 v95, v40
	v_mov_b32_e32 v94, v40
	v_mov_b32_e32 v93, v40
	v_mov_b32_e32 v80, v40
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s8, 7
	v_mov_b32_e32 v79, v40
	v_mov_b32_e32 v78, v40
	v_mov_b32_e32 v77, v40
	v_mov_b32_e32 v88, v40
	v_mov_b32_e32 v87, v40
	v_mov_b32_e32 v86, v40
	v_mov_b32_e32 v85, v40
	v_mov_b32_e32 v84, v40
	v_mov_b32_e32 v83, v40
	v_mov_b32_e32 v82, v40
	v_mov_b32_e32 v81, v40
	v_mov_b32_e32 v72, v40
	v_mov_b32_e32 v71, v40
	v_mov_b32_e32 v70, v40
	v_mov_b32_e32 v69, v40
	v_mov_b32_e32 v68, v40
	v_mov_b32_e32 v67, v40
	v_mov_b32_e32 v66, v40
	v_mov_b32_e32 v65, v40
	s_cbranch_vccnz .LBB0_79
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v36, 0x70, v107
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v66, s43, v1
	.loc	1 818 13                        ; attention.py:818:13
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	s_xor_b32 s7, s3, s12
	v_lshrrev_b32_e32 v33, 5, v105
	s_ashr_i32 s7, s7, 31
	v_lshlrev_b32_e32 v34, 3, v104
	s_xor_b32 s2, s2, s7
	v_lshrrev_b32_e32 v35, 2, v103
	s_sub_i32 s2, s2, s7
	v_lshl_or_b32 v33, v104, 8, v33
	s_mul_i32 s8, s2, s12
	s_load_b32 s19, s[0:1], 0x7c
	s_sub_i32 s3, s3, s8
	s_load_b128 s[8:11], s[0:1], 0x6c
	v_and_b32_e32 v65, 63, v0
	v_dual_mov_b32 v60, v57 :: v_dual_and_b32 v39, 60, v107
	v_cndmask_b32_e64 v40, 0x404, 0, s37
	v_or3_b32 v42, v33, v35, v34
	v_dual_mov_b32 v59, v57 :: v_dual_lshlrev_b32 v34, 4, v0
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v58, v57 :: v_dual_lshlrev_b32 v37, 7, v65
	v_lshrrev_b32_e32 v38, 3, v106
	v_xor_b32_e32 v36, v99, v36
	v_dual_mov_b32 v62, v57 :: v_dual_lshlrev_b32 v33, 2, v65
	v_cndmask_b32_e64 v35, 0x108, 0, s37
	v_xor_b32_e32 v39, v40, v39
	v_dual_mov_b32 v64, v57 :: v_dual_and_b32 v41, 64, v100
	v_dual_mov_b32 v63, v57 :: v_dual_and_b32 v0, 0x410, v0
	v_mul_u32_u24_e32 v40, 0x90, v97
	v_or3_b32 v36, v37, v38, v36
	v_xor_b32_e32 v35, v35, v33
	v_dual_mov_b32 v50, v57 :: v_dual_add_nc_u32 v33, 0, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v38, v40, v0
	v_dual_mov_b32 v49, v57 :: v_dual_lshlrev_b32 v0, 1, v106
	v_dual_mov_b32 v61, v57 :: v_dual_and_b32 v34, 0x200, v34
	v_or_b32_e32 v37, v99, v98
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v236, v33, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s19, v65
	v_or3_b32 v34, v34, v39, v41
	v_dual_mov_b32 v52, v57 :: v_dual_add_nc_u32 v5, s43, v5
	v_dual_mov_b32 v54, v57 :: v_dual_add_nc_u32 v17, s43, v17
	v_dual_mov_b32 v51, v57 :: v_dual_add_nc_u32 v18, s43, v18
	v_dual_mov_b32 v56, v57 :: v_dual_add_nc_u32 v19, s43, v19
	v_dual_mov_b32 v53, v57 :: v_dual_add_nc_u32 v4, s43, v4
	v_dual_mov_b32 v55, v57 :: v_dual_add_nc_u32 v14, s43, v14
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v15, s43, v15
	v_add_nc_u32_e32 v16, s43, v16
	v_dual_mov_b32 v44, v57 :: v_dual_add_nc_u32 v3, s43, v3
	v_dual_mov_b32 v46, v57 :: v_dual_add_nc_u32 v7, s43, v7
	v_dual_mov_b32 v43, v57 :: v_dual_add_nc_u32 v8, s43, v8
	v_dual_mov_b32 v48, v57 :: v_dual_add_nc_u32 v9, s43, v9
	v_dual_mov_b32 v45, v57 :: v_dual_add_nc_u32 v2, s43, v2
	v_dual_mov_b32 v47, v57 :: v_dual_add_nc_u32 v10, s43, v10
	v_add_nc_u32_e32 v11, s43, v11
	v_dual_mov_b32 v33, v57 :: v_dual_add_nc_u32 v12, s43, v12
	v_add_nc_u32_e32 v6, s43, v6
	v_add_nc_u32_e32 v13, s43, v13
	v_add_nc_u32_e32 v20, s43, v20
	v_add_nc_u32_e32 v21, s43, v21
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_add_nc_u32 v22, s43, v22
	v_add_nc_u32_e32 v23, s43, v23
	v_dual_mov_b32 v229, 0xff800000 :: v_dual_add_nc_u32 v24, s43, v24
	v_add_nc_u32_e32 v25, s43, v25
	v_dual_mov_b32 v181, 0xff800000 :: v_dual_add_nc_u32 v26, s43, v26
	v_add_nc_u32_e32 v27, s43, v27
	v_dual_mov_b32 v139, 0xff800000 :: v_dual_add_nc_u32 v28, s43, v28
	v_add_nc_u32_e32 v29, s43, v29
	v_dual_mov_b32 v201, 0xff800000 :: v_dual_add_nc_u32 v30, s43, v30
	v_add_nc_u32_e32 v31, s43, v31
	v_dual_mov_b32 v97, v57 :: v_dual_add_nc_u32 v32, s43, v32
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_sub_i32 s7, 0, s4
	s_abs_i32 s12, s3
	v_writelane_b32 v254, s16, 8
	s_cvt_u32_f32 s6, s6
	s_ashr_i32 s5, s5, 31
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s24, s8, 0x3fb8aa3b
	s_mov_b32 s44, 0
	s_mul_i32 s7, s7, s6
	s_mov_b32 s45, s44
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s46, s44
	s_add_i32 s6, s6, s7
	s_ashr_i32 s7, s3, 31
	s_mul_hi_u32 s6, s12, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s7, s5
	s_mul_i32 s16, s6, s4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s10
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s7, s12, s16
	s_add_i32 s12, s6, 1
	s_sub_i32 s16, s7, s4
	s_cmp_ge_u32 s7, s4
	s_mov_b32 s47, s44
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s7, s16, s7
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s4
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s16, s2, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s4, s12, s6
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s2, s9
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s4, s4, s5
	s_mov_b32 s48, s44
	s_sub_i32 s17, s4, s5
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[12:13], s[0:1], 0x30
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s0, s17, s16
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s11, s20
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s0, s0, s15
	s_add_i32 s1, s2, s1
	v_writelane_b32 v254, s0, 9
	s_add_i32 s1, s1, s3
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_readlane_b32 s8, v254, 7
	v_writelane_b32 v254, s20, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v205, 4, v106
	v_mov_b32_e32 v172, 0xff800000
	v_mov_b32_e32 v208, 0xff800000
	v_mov_b32_e32 v232, 0xff800000
	v_writelane_b32 v254, s19, 11
	v_mov_b32_e32 v234, 0xff800000
	v_mov_b32_e32 v246, 0xff800000
	v_mov_b32_e32 v248, 0xff800000
	v_mov_b32_e32 v250, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v254, s1, 12
	s_lshl_b32 s1, s8, 1
	v_mov_b32_e32 v252, 0xff800000
	v_mov_b32_e32 v218, 0xff800000
	v_mov_b32_e32 v184, 0xff800000
	v_writelane_b32 v254, s1, 13
	s_lshl_b32 s1, s8, 3
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v188, 0xff800000
	v_mov_b32_e32 v190, 0xff800000
	v_writelane_b32 v254, s1, 14
	s_lshl_b32 s1, s8, 4
	v_mov_b32_e32 v228, 0xff800000
	v_mov_b32_e32 v138, 0xff800000
	v_mov_b32_e32 v200, 0xff800000
	v_writelane_b32 v254, s1, 15
	s_lshl_b32 s1, s8, 5
	v_mov_b32_e32 v202, 0xff800000
	v_mov_b32_e32 v112, 0xff800000
	v_mov_b32_e32 v204, 0xff800000
	v_writelane_b32 v254, s1, 16
	v_mov_b32_e32 v148, 0xff800000
	v_mov_b32_e32 v210, 0xff800000
	v_mov_b32_e32 v226, 0xff800000
	v_mov_b32_e32 v162, 0xff800000
	v_writelane_b32 v254, s44, 17
	v_mov_b32_e32 v160, 0xff800000
	v_mov_b32_e32 v158, 0xff800000
	v_mov_b32_e32 v206, 0xff800000
	v_mov_b32_e32 v214, 0xff800000
	v_writelane_b32 v254, s45, 18
	v_mov_b32_e32 v230, 0xff800000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s20, s4
	s_mov_b32 s23, 0x31027000
	v_writelane_b32 v254, s46, 19
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	v_mov_b32_e32 v215, 0xff800000
	v_writelane_b32 v254, s47, 20
	v_mov_b32_e32 v235, 0xff800000
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	v_mov_b32_e32 v189, 0xff800000
	v_writelane_b32 v254, s48, 21
	v_mov_b32_e32 v187, 0xff800000
	v_mov_b32_e32 v185, 0xff800000
	v_mov_b32_e32 v183, 0xff800000
	v_mov_b32_e32 v209, 0xff800000
	v_writelane_b32 v254, s49, 22
	v_mov_b32_e32 v253, 0xff800000
	v_mov_b32_e32 v251, 0xff800000
	v_mov_b32_e32 v249, 0xff800000
	v_mov_b32_e32 v247, 0xff800000
	v_writelane_b32 v254, s50, 23
	v_mov_b32_e32 v245, 0xff800000
	v_mov_b32_e32 v163, 0xff800000
	v_mov_b32_e32 v161, 0xff800000
	v_mov_b32_e32 v159, 0xff800000
	v_writelane_b32 v254, s51, 24
	v_mov_b32_e32 v157, 0xff800000
	v_mov_b32_e32 v207, 0xff800000
	v_mov_b32_e32 v213, 0xff800000
	v_mov_b32_e32 v211, 0xff800000
	v_writelane_b32 v254, s18, 25
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1180 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1188 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1196 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1204 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1212 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1220 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1228 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1236 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1244 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1252 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1260 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1268 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1276 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1284 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1292 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1300 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1308 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1316 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1324 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1332 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1340 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1348 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1356 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1364 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1372 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1380 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1388 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1396 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1404 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	scratch_store_b64 off, v[39:40], off offset:1412 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s11, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[0:1], null, s11, v1, v[0:1]
	scratch_store_b64 off, v[0:1], off offset:1428 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v1, 0x7632
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s8, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0x1054, v0, s36
	v_cndmask_b32_e64 v1, 0x3276, v1, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v1, v1, 8, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v1, 0x760076, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v191, 0x5040504, v0
	v_xor_b32_e32 v0, 16, v37
	v_and_b32_e32 v192, 0x7060706, v1
	v_lshl_or_b32 v1, v104, 10, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v37
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v37
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v37
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:716
	scratch_store_b32 off, v37, off offset:680
	v_xor_b32_e32 v0, 0x70, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v37, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x210, v35
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x420, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x630, v35
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa50, v35
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc60, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:744
	scratch_store_b32 off, v35, off offset:684
	v_xor_b32_e32 v0, 0xe70, v35
	v_dual_mov_b32 v35, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v42
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v42
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v42
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v42
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v42
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v42
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v42
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:804
	scratch_store_b32 off, v42, off offset:672
	v_xor_b32_e32 v0, 0x78, v42
	v_mov_b32_e32 v42, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:808
	scratch_store_b32 off, v104, off offset:1696
	scratch_store_b32 off, v108, off offset:1712
	v_xor_b32_e32 v0, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 36, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 52, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v1
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:868
	scratch_store_b32 off, v1, off offset:812
	v_xor_b32_e32 v0, 60, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:872 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x808, v34
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:876 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1818, v34
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:884 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2020, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2828, v34
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:892 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x3030, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:896
	scratch_store_b32 off, v34, off offset:688
	v_xor_b32_e32 v0, 0x3838, v34
	v_mov_b32_e32 v34, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:900
	scratch_store_b32 off, v105, off offset:1700
	v_lshlrev_b32_e32 v0, 1, v105
	v_add_nc_u32_e32 v171, 0, v0
	v_xor_b32_e32 v0, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:904 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:908 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:916 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:920 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v36
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:924
	scratch_store_b32 off, v36, off offset:676
	v_xor_b32_e32 v0, 0x70, v36
	v_mov_b32_e32 v36, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:928 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:932 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:940 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:944 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:948 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:952 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:956 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x820, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:960 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x830, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:964 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x810, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:968 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x860, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:972 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x870, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:976 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:980 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x850, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:984 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1040, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:988 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1050, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:992 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1060, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:996 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1070, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1000 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1004 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1020, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1008 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1030, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1012 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1860, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1016 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1870, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1020 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1840, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1024 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1850, v38
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1028 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1820, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1032 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1830, v38
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1036
	scratch_store_b32 off, v38, off offset:692
	v_xor_b32_e32 v0, 0x1810, v38
	v_mov_b32_e32 v38, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:1040 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v5
	scratch_store_b32 off, v0, off offset:1436 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v17
	scratch_store_b32 off, v0, off offset:1440 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v18
	scratch_store_b32 off, v0, off offset:1444 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v19
	scratch_store_b32 off, v0, off offset:1448 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v4
	scratch_store_b32 off, v0, off offset:1452 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v14
	scratch_store_b32 off, v0, off offset:1456 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v15
	scratch_store_b32 off, v0, off offset:1460 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v16
	scratch_store_b32 off, v0, off offset:1464 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v3
	scratch_store_b32 off, v0, off offset:1468 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v7
	scratch_store_b32 off, v0, off offset:1472 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v8
	scratch_store_b32 off, v0, off offset:1476 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v9
	scratch_store_b32 off, v0, off offset:1480 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v2
	scratch_store_b32 off, v0, off offset:1484 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v10
	scratch_store_b32 off, v0, off offset:1488 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v11
	scratch_store_b32 off, v0, off offset:1492 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v12
	scratch_store_b32 off, v0, off offset:1496 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v66
	scratch_store_b32 off, v0, off offset:1500 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v6
	scratch_store_b32 off, v0, off offset:1504 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v13
	scratch_store_b32 off, v0, off offset:1508 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v20
	scratch_store_b32 off, v0, off offset:1512 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v21
	scratch_store_b32 off, v0, off offset:1516 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v22
	scratch_store_b32 off, v0, off offset:1520 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v23
	scratch_store_b32 off, v0, off offset:1524 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v24
	scratch_store_b32 off, v0, off offset:1528 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v25
	scratch_store_b32 off, v0, off offset:1532 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v26
	scratch_store_b32 off, v0, off offset:1536 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v27
	scratch_store_b32 off, v0, off offset:1540 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v28
	scratch_store_b32 off, v0, off offset:1544 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v29
	scratch_store_b32 off, v0, off offset:1548 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v30
	scratch_store_b32 off, v0, off offset:1552 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v31
	scratch_store_b32 off, v0, off offset:1556 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s41, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1560
	scratch_store_b32 off, v5, off offset:1052
	v_add_nc_u32_e32 v0, s42, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1564
	scratch_store_b32 off, v17, off offset:1056
	v_add_nc_u32_e32 v0, s42, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1568
	scratch_store_b32 off, v18, off offset:1060
	v_add_nc_u32_e32 v0, s42, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1572
	scratch_store_b32 off, v19, off offset:1064
	v_add_nc_u32_e32 v0, s42, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1576
	scratch_store_b32 off, v4, off offset:1068
	v_add_nc_u32_e32 v0, s42, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1580
	scratch_store_b32 off, v14, off offset:1072
	v_add_nc_u32_e32 v0, s42, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1584
	scratch_store_b32 off, v15, off offset:1076
	v_add_nc_u32_e32 v0, s42, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1588
	scratch_store_b32 off, v16, off offset:1080
	v_add_nc_u32_e32 v0, s42, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1592
	scratch_store_b32 off, v3, off offset:1084
	v_add_nc_u32_e32 v0, s42, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1596
	scratch_store_b32 off, v7, off offset:1088
	v_add_nc_u32_e32 v0, s42, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1600
	scratch_store_b32 off, v8, off offset:1092
	v_add_nc_u32_e32 v0, s42, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1604
	scratch_store_b32 off, v9, off offset:1096
	v_add_nc_u32_e32 v0, s42, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1608
	scratch_store_b32 off, v2, off offset:1100
	v_add_nc_u32_e32 v0, s42, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1612
	scratch_store_b32 off, v10, off offset:1104
	v_add_nc_u32_e32 v0, s42, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1616
	scratch_store_b32 off, v11, off offset:1108
	v_add_nc_u32_e32 v0, s42, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1620
	scratch_store_b32 off, v12, off offset:1112
	v_add_nc_u32_e32 v0, s42, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1624
	scratch_store_b32 off, v66, off offset:1116
	v_add_nc_u32_e32 v0, s42, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1628
	scratch_store_b32 off, v6, off offset:1120
	v_add_nc_u32_e32 v0, s42, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1632
	scratch_store_b32 off, v13, off offset:1124
	v_add_nc_u32_e32 v0, s42, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1636
	scratch_store_b32 off, v20, off offset:1128
	v_add_nc_u32_e32 v0, s42, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1640
	scratch_store_b32 off, v21, off offset:1132
	v_add_nc_u32_e32 v0, s42, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1644
	scratch_store_b32 off, v22, off offset:1136
	v_add_nc_u32_e32 v0, s42, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1648
	scratch_store_b32 off, v23, off offset:1140
	v_add_nc_u32_e32 v0, s42, v23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1652
	scratch_store_b32 off, v24, off offset:1144
	v_add_nc_u32_e32 v0, s42, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1656
	scratch_store_b32 off, v25, off offset:1148
	v_add_nc_u32_e32 v0, s42, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1660
	scratch_store_b32 off, v26, off offset:1152
	v_add_nc_u32_e32 v0, s42, v26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1664
	scratch_store_b32 off, v32, off offset:1176
	v_add_nc_u32_e32 v0, s42, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1668
	scratch_store_b32 off, v31, off offset:1172
	v_add_nc_u32_e32 v0, s42, v31
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1672
	scratch_store_b32 off, v30, off offset:1168
	v_add_nc_u32_e32 v0, s42, v30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1676
	scratch_store_b32 off, v29, off offset:1164
	v_add_nc_u32_e32 v0, s42, v29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1680
	scratch_store_b32 off, v28, off offset:1160
	v_add_nc_u32_e32 v0, s42, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1684
	scratch_store_b32 off, v27, off offset:1156
	v_add_nc_u32_e32 v0, s42, v27
	v_mov_b32_e32 v32, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v29, v57
	scratch_store_b32 off, v0, off offset:1688 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[39:40], off offset:1420 ; 8-byte Folded Spill
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v40, v57
	v_mov_b32_e32 v28, v57
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v103, off offset:1692 ; 4-byte Folded Spill
	v_mov_b32_e32 v27, v57
	v_mov_b32_e32 v26, v57
	v_mov_b32_e32 v25, v57
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v106, off offset:1704 ; 4-byte Folded Spill
	v_mov_b32_e32 v24, v57
	v_mov_b32_e32 v23, v57
	v_mov_b32_e32 v22, v57
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v107, off offset:1708 ; 4-byte Folded Spill
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v20, v57
	v_mov_b32_e32 v19, v57
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v41, off offset:1716 ; 4-byte Folded Spill
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v18, v57
	v_mov_b32_e32 v17, v57
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v13, v57
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	v_mov_b32_e32 v12, v57
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v10, v57
	v_mov_b32_e32 v9, v57
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	v_mov_b32_e32 v8, v57
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v5, v57
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v2, v57
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s8, v205, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:1044 ; 8-byte Folded Spill
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	v_and_b16 v8.l, 0xff, v101.l
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v29, s24, v67 :: v_dual_mul_f32 v30, s24, v68
	v_dual_mul_f32 v31, s24, v69 :: v_dual_mul_f32 v32, s24, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v8.l
	v_and_b16 v8.l, 0xff, v105.h
	v_and_b16 v0.h, 0xff, v0.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v27, s24, v65 :: v_dual_mul_f32 v28, s24, v66
	v_dual_mul_f32 v65, s24, v71 :: v_dual_mul_f32 v66, s24, v72
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v8.l
	v_and_b16 v8.l, 0xff, v111.h
	v_and_b16 v0.l, 0xff, v0.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s90, s94, s1
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v8.l
	v_and_b16 v8.l, 0xff, v108.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s94, s11, vcc_lo
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v7, s24, v73 :: v_dual_mul_f32 v20, s24, v74
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s82, s2, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v8.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v8, 0, 1, s82
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v21, s24, v75 :: v_dual_mul_f32 v22, s24, v76
	v_dual_mul_f32 v6, s24, v89 :: v_dual_mul_f32 v1, s24, v90
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s86, s95, s36
	v_lshlrev_b16 v8.l, 8, v8.l
	v_cndmask_b32_e64 v9, 0, 1, s86
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v2, s24, v91 :: v_dual_mul_f32 v3, s24, v92
	v_dual_mul_f32 v10, s24, v95 :: v_dual_mul_f32 v11, s24, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v67.h, v9.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s90
	v_cndmask_b32_e64 v9, 0, 1, s94
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v4, s24, v93 :: v_dual_mul_f32 v5, s24, v94
	v_dual_mul_f32 v23, s24, v77 :: v_dual_mul_f32 v24, s24, v78
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v8.l, 8, v8.l
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v25, s24, v79 :: v_dual_mul_f32 v26, s24, v80
	v_dual_mul_f32 v12, s24, v81 :: v_dual_mul_f32 v13, s24, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v67.l, v9.l, v8.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v8.l, 0xff, v98.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v14, s24, v83 :: v_dual_mul_f32 v15, s24, v84
	v_dual_mul_f32 v16, s24, v85 :: v_dual_mul_f32 v17, s24, v86
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v8.l
	v_and_b16 v8.l, 0xff, v102.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v18, s24, v87 :: v_dual_mul_f32 v19, s24, v88
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s95, s7, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v8.l
	v_and_b16 v8.l, 0xff, v110.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s91, s9, s1
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v8.l
	v_and_b16 v8.l, 0xff, v106.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s83, s102, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v8.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v8, 0, 1, s83
	s_and_b32 s87, s31, s36
	v_lshlrev_b16 v8.l, 8, v8.l
	v_cndmask_b32_e64 v9, 0, 1, s87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v68.h, v9.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s91
	v_cndmask_b32_e64 v9, 0, 1, s95
	v_lshlrev_b16 v8.l, 8, v8.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v68.l, v9.l, v8.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v8.l, 0xff, v99.l
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v8.l
	v_and_b16 v8.l, 0xff, v103.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s96, s96, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v8.l
	v_and_b16 v8.l, 0xff, v111.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s92, s6, s1
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v8.l
	s_waitcnt vmcnt(0)
	v_and_b16 v8.l, 0xff, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s84, s18, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v8.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v8, 0, 1, s84
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s18, s22
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s88, s99, s36
	v_lshlrev_b16 v8.l, 8, v8.l
	v_cndmask_b32_e64 v9, 0, 1, s88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v69.h, v9.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s92
	v_cndmask_b32_e64 v9, 0, 1, s96
	v_lshlrev_b16 v8.l, 8, v8.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v69.l, v9.l, v8.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v8.l, 0xff, v97.h
	v_cmp_ne_u16_e32 vcc_lo, 0, v8.l
	v_and_b16 v8.l, 0xff, v101.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s97, s97, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v8.l
	v_and_b16 v8.l, 0xff, v109.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s93, s98, s1
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v8.l
	v_and_b16 v8.l, 0xff, v105.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s85, s103, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v8.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v8, 0, 1, s85
	s_and_b32 s89, s101, s36
	v_lshlrev_b16 v8.l, 8, v8.l
	v_cndmask_b32_e64 v9, 0, 1, s89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v70.h, v9.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s93
	v_cndmask_b32_e64 v9, 0, 1, s97
	v_lshlrev_b16 v8.l, 8, v8.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v70.l, v9.l, v8.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v8.l, 0xff, v98.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v8.l
	v_and_b16 v8.l, 0xff, v102.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s78, s27, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v8.l
	v_and_b16 v8.l, 0xff, v110.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.h
	v_and_b16 v0.h, 0xff, v100.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v71, 0, 1, s78
	s_and_b32 s74, s29, s1
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v8.l
	v_and_b16 v8.l, 0xff, v106.l
	v_cmp_ne_u16_e64 s1, 0, v0.h
	v_and_b16 v0.h, 0xff, v108.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s79, s25, vcc_lo
	s_and_b32 s66, s100, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v8.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v8, 0, 1, s66
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v0.h
	v_and_b16 v0.h, 0xff, v104.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s75, s26, s1
	s_and_b32 s70, s10, s36
	v_lshlrev_b16 v8.l, 8, v8.l
	v_cndmask_b32_e64 v9, 0, 1, s70
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v0.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s67, s8, s3
	v_or_b16 v9.h, v9.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s74
	v_mov_b16_e32 v9.l, v71.l
	s_and_b32 s71, s5, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v8.l, 8, v8.l
	v_or_b16 v9.l, v9.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s71
	v_or_b16 v71.h, v8.l, v0.h
	v_cndmask_b32_e64 v8, 0, 1, s75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s79
	v_or_b16 v71.l, v8.l, v0.h
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v0.h, 0xff, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.h
	v_and_b16 v0.h, 0xff, v100.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s80, s34, vcc_lo
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v0.h
	v_and_b16 v0.h, 0xff, v109.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v0.l
	v_and_b16 v0.l, 0xff, v99.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s76, s35, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v0.h
	v_and_b16 v0.h, 0xff, v104.h
	v_cmp_ne_u16_e64 s1, 0, v0.l
	v_and_b16 v0.l, 0xff, v107.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s81, s19, vcc_lo
	s_and_b32 s68, s4, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v0.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v8, 0, 1, s68
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v103.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s77, s33, s1
	s_and_b32 s72, s104, s36
	v_lshlrev_b16 v0.h, 8, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s72
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v0.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s69, s30, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s19, s23
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v72.h, v8.l, v0.h
	v_cndmask_b32_e64 v8, 0, 1, s76
	s_and_b32 s73, s28, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s80
	v_or_b16 v72.l, v8.l, v0.h
	v_cndmask_b32_e64 v0, 0, 1, s69
	v_cndmask_b32_e64 v8, 0, 1, s73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.l, 8, v0.l
	v_or_b16 v0.h, v8.l, v0.l
	v_cndmask_b32_e64 v8, 0, 1, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v8.l
	v_cndmask_b32_e64 v8, 0, 1, s81
	v_lshlrev_b16 v0.l, 8, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v0.l, v8.l, v0.l
	scratch_load_b32 v8, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v8, 0, v8
	ds_store_b32 v8, v67
	scratch_load_b32 v8, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v68
	scratch_load_b32 v8, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v69
	scratch_load_b32 v8, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v70
	scratch_load_b32 v8, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v9
	scratch_load_b32 v8, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v71
	scratch_load_b32 v8, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v72
	scratch_load_b32 v8, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v8, off, off offset:756
	scratch_load_b32 v9, off, off offset:760
	scratch_load_b32 v68, off, off offset:764
	scratch_load_b32 v71, off, off offset:776
	scratch_load_b32 v70, off, off offset:772
	scratch_load_b32 v69, off, off offset:768
	scratch_load_b32 v74, off, off offset:752
	scratch_load_b32 v73, off, off offset:792
	scratch_load_b32 v75, off, off offset:804
	scratch_load_b32 v72, off, off offset:788
	scratch_load_b32 v76, off, off offset:808
	s_waitcnt vmcnt(5)
	ds_load_u8_d16 v67, v69 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v68 offset:128
	ds_load_u8_d16 v0, v8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v0, v9 offset:128
	ds_load_u8_d16 v8, v8 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s58, 1, v0.l
	ds_load_u8_d16 v0, v9
	ds_load_u8_d16_hi v9, v70 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v9, v71 offset:128
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s62, 1, v0.l
	ds_load_u8_d16 v0, v68
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v68, v73 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s60, 1, v0.l
	ds_load_u8_d16 v0, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v4, 0xff800000, v4, s60
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s61, 1, v0.l
	ds_load_u8_d16 v0, v70
	scratch_load_b32 v70, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v5, 0xff800000, v5, s61
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s59, 1, v0.l
	ds_load_u8_d16 v0, v71
	scratch_load_b32 v71, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_u8_d16_hi v68, v72 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v69, v71 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v69, v70 offset:128
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s63, 1, v0.l
	ds_load_u8_d16 v0, v70
	ds_load_u8_d16_hi v70, v75 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s49, 1, v0.l
	ds_load_u8_d16 v0, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v12, s49
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s52, 1, v0.l
	ds_load_u8_d16 v0, v72
	scratch_load_b32 v72, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s45, 1, v0.l
	ds_load_u8_d16 v0, v73
	scratch_load_b32 v73, off, off offset:800 ; 4-byte Folded Reload
	ds_load_u8_d16 v70, v76 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v71, v73 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v71, v72 offset:128
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v14, s45
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s56, 1, v0.l
	ds_load_u8_d16 v0, v72
	scratch_load_b32 v72, off, off offset:672 ; 4-byte Folded Reload
	ds_load_u8_d16_hi v8, v74 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v15, s56
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s51, 1, v0.l
	ds_load_u8_d16 v0, v73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v16, s51
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s54, 1, v0.l
	ds_load_u8_d16 v0, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v17, s54
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v0.l
	ds_load_u8_d16 v0, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v18, s47
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s57, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v19, s57
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, 0, v72
	ds_load_u8_d16 v0, v73 offset:128
	ds_load_u8_d16 v72, v74
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v72, v73
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s53, 1, v0.l
	v_and_b16 v0.l, 1, v8.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v7, s53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s55, 1, v0.l
	v_and_b16 v0.l, 1, v8.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v7, 0xff800000, v3, s62
	v_cndmask_b32_e64 v3, 0xff800000, v11, s63
	v_cndmask_b32_e64 v165, 0xff800000, v20, s55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s48, 1, v0.l
	v_and_b16 v0.l, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v21, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s50, 1, v0.l
	v_and_b16 v0.l, 1, v67.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, 0xff800000, v22, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s44, 1, v0.l
	v_and_b16 v0.l, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v23, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s46, 1, v0.l
	v_and_b16 v0.l, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v24, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s42, 1, v0.l
	v_and_b16 v0.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, 0xff800000, v25, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s43, 1, v0.l
	v_and_b16 v0.l, 1, v69.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v26, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s40, 1, v0.l
	v_and_b16 v0.l, 1, v69.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, 0xff800000, v27, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s41, 1, v0.l
	v_and_b16 v0.l, 1, v68.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v28, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s38, 1, v0.l
	v_and_b16 v0.l, 1, v68.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v220, 0xff800000, v29, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s39, 1, v0.l
	v_and_b16 v0.l, 1, v71.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v221, 0xff800000, v30, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s36, 1, v0.l
	v_and_b16 v0.l, 1, v71.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v217, 0xff800000, v31, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s37, 1, v0.l
	v_and_b16 v0.l, 1, v70.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v219, 0xff800000, v32, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	v_and_b16 v0.l, 1, v70.l
	v_cmp_eq_u16_e64 s1, 1, v0.l
	v_and_b16 v0.l, 1, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v66, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s64, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	scratch_load_b32 v0, off, off offset:812 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0xff800000, v6, s64
	v_cndmask_b32_e64 v6, 0xff800000, v2, s58
	v_cndmask_b32_e64 v2, 0xff800000, v10, s59
	scratch_load_b32 v10, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_2addr_stride64_b32 v0, v8, v146 offset1:2
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v0.l, 1, v72.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s65, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v0, 0xff800000, v65, vcc_lo
	v_cndmask_b32_e64 v9, 0xff800000, v1, s65
	v_cndmask_b32_e64 v1, 0xff800000, v13, s52
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v9, v165 offset1:2
	scratch_load_b32 v10, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v6, v147 offset1:2
	scratch_load_b32 v10, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v7, v164 offset1:2
	scratch_load_b32 v10, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v4, v144 offset1:2
	scratch_load_b32 v10, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v5, v145 offset1:2
	scratch_load_b32 v10, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v2, v142 offset1:2
	scratch_load_b32 v10, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v3, v143 offset1:2
	scratch_load_b32 v10, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v182, v140 offset1:2
	scratch_load_b32 v10, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v1, v141 offset1:2
	scratch_load_b32 v10, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v170, v220 offset1:2
	scratch_load_b32 v10, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v113, v221 offset1:2
	scratch_load_b32 v10, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v168, v217 offset1:2
	scratch_load_b32 v10, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v169, v219 offset1:2
	scratch_load_b32 v10, off, off offset:868 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v166, v0 offset1:2
	scratch_load_b32 v10, off, off offset:872 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v10, v167, v111 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v10, off, off offset:688
	scratch_load_b32 v19, off, off offset:876
	scratch_load_b32 v20, off, off offset:880
	scratch_load_b32 v21, off, off offset:884
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v10, 0, v10
	s_waitcnt vmcnt(2)
	ds_load_2addr_b32 v[79:80], v19 offset1:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_b32 v[81:82], v20 offset1:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[83:84], v21 offset1:32
	ds_load_2addr_b32 v[77:78], v10 offset1:32
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v13, v79, v79 :: v_dual_max_f32 v14, v81, v81
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v15, v83, v83 :: v_dual_max_f32 v16, v84, v84
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v11, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v12, v77, v77 :: v_dual_max_f32 v11, v11, v11
	v_max_f32_e32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v12
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[177:178], v10 offset0:64 offset1:96
	ds_load_2addr_b32 v[175:176], v19 offset0:64 offset1:96
	ds_load_2addr_b32 v[173:174], v20 offset0:64 offset1:96
	ds_load_2addr_b32 v[109:110], v21 offset0:64 offset1:96
	scratch_load_b32 v10, off, off offset:888 ; 4-byte Folded Reload
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[107:108], v10 offset1:32
	ds_load_2addr_b32 v[103:104], v10 offset0:64 offset1:96
	scratch_load_b32 v10, off, off offset:892 ; 4-byte Folded Reload
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[105:106], v10 offset1:32
	ds_load_2addr_b32 v[101:102], v10 offset0:64 offset1:96
	scratch_load_b32 v10, off, off offset:896 ; 4-byte Folded Reload
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v13, v12
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[87:88], v10 offset1:32
	ds_load_2addr_b32 v[99:100], v10 offset0:64 offset1:96
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	scratch_load_b32 v10, off, off offset:900 ; 4-byte Folded Reload
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[85:86], v10 offset1:32
	ds_load_2addr_b32 v[97:98], v10 offset0:64 offset1:96
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v13
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(11)
	v_mov_b32_dpp v10, v177 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v10, v10, v10
	v_max_f32_e32 v12, v12, v13
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v11, v11, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v12, v12, v13
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v13, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v13, v11, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v12, v11
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v12, v14, v12
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v14, v11, v14
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v14, 31
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v14, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v15, v11
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v12, v12, v15
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v13, 31
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v11, v11, v15
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v15
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v15
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v12, 31
	v_mov_b32_dpp v12, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v13, v12
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v14, v13
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v14
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v12, -1, -1 op_sel:[1,0]
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v11, v11, v15
	v_max_f32_e32 v15, v82, v82
	v_max_f32_e32 v12, v12, v14
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_readlane_b32 s5, v11, 31
	v_mov_b32_e32 v11, s2
	v_readlane_b32 s6, v12, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v12, s3 :: v_dual_max_f32 v13, v13, v14
	v_mov_b32_dpp v14, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v14, v15, v14
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v15, v16, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v16
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v13, 31
	v_mov_b32_e32 v13, s4
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v16
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v15, v15, v16
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v15, v15, v16
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v16, v14, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v16, v15, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v14, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v14, s5 :: v_dual_mov_b32 v17, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v15, v15, v16 :: v_dual_mov_b32 v16, s7
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v15, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v15, s6 :: v_dual_mov_b32 v18, s9
	ds_store_b128 v171, v[11:14]
	ds_store_b128 v171, v[15:18] offset:16
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v177, v177 :: v_dual_max_f32 v12, v175, v175
	v_dual_max_f32 v14, v109, v109 :: v_dual_max_f32 v15, v110, v110
	v_dual_max_f32 v13, v173, v173 :: v_dual_max_f32 v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v11
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v175 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v12, v11
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v10, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v10, v178 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v12
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v173 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v10
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v13, v12
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v13, v11, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v11, v11, v13
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s3, v11, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v11, v178, v178
	v_max_f32_e32 v13, v14, v13
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v11, v10
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v176 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v12, v14
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v13, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v12, 31
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v11, v12, v11
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v12
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v12
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v12
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v11, v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v12
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v10, 31
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v10, s2 :: v_dual_max_f32 v11, v11, v12
	v_mov_b32_dpp v12, v174 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s7, v11, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_mov_b32 v11, s3
	v_max_f32_e32 v13, v13, v14
	v_max_f32_e32 v14, v174, v174
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v13, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v14, v12
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v13, s5 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v15, v14
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v14, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v12, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_mov_b32 v12, s4
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v16, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v14, v14, v15 :: v_dual_mov_b32 v15, s7
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v14, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v14, s6 :: v_dual_mov_b32 v17, s9
	ds_store_b128 v171, v[10:13] offset:32
	ds_store_b128 v171, v[14:17] offset:48
	v_mov_b32_dpp v10, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v107, v107 :: v_dual_max_f32 v12, v105, v105
	v_dual_max_f32 v13, v87, v87 :: v_dual_max_f32 v14, v85, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v10, v10, v10
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v236
	ds_load_b128 v[73:76], v236 offset:16
	ds_load_b128 v[69:72], v236 offset:32
	ds_load_b128 v[65:68], v236 offset:48
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v86, v86
	v_max_f32_e32 v10, v11, v10
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v11
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v23, v75
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v24, v75, v75
	v_max_f32_e32 v30, v71, v71
	v_dual_max_f32 v22, v74, v74 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v32, v68, v68
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v12, v11
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v12
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v10, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v10, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v12
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v10
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v13, v12
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v13, v11, -1, -1 op_sel:[1,0]
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v11, v11, v13
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s3, v11, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v11, v108, v108
	v_max_f32_e32 v13, v14, v13
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v11, v10
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v12, v14
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v13, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v12, 31
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v106, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v11, v12, v11
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v13, v13, v14 :: v_dual_max_f32 v14, v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v12, v12
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v13, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v12
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v13, s5 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v12
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v11, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v10, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v10, s2 :: v_dual_max_f32 v11, v11, v12
	v_mov_b32_dpp v12, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s7, v11, 31
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_mov_b32 v11, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v14, v12
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v15, v14
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp255:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp257:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v14, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v12, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_mov_b32 v12, s4
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v16, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v14, v14, v15 :: v_dual_mov_b32 v15, s7
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v14, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v14, s6 :: v_dual_mov_b32 v17, s9
	ds_store_b128 v171, v[10:13]
	ds_store_b128 v171, v[14:17] offset:16
	v_mov_b32_dpp v10, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v103, v103 :: v_dual_max_f32 v12, v101, v101
	v_dual_max_f32 v13, v99, v99 :: v_dual_max_f32 v14, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v10, v10, v10
	v_max_f32_e32 v15, v98, v98
	v_max_f32_e32 v10, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v11
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v12, v11
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s2, v10, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v10, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v12
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v10
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v13, v12
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v13, v11, -1, -1 op_sel:[1,0]
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v11, v11, v13
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v13, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s3, v11, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v11, v104, v104
	v_max_f32_e32 v13, v14, v13
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v11, v10
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v12, v14
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v14
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v14, v13, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v12, 31
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v11, v12, v11
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v13, v13, v14 :: v_dual_max_f32 v14, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, v12, v12
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v13, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v10, v12
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v13, s5 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v12
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v11, v12
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v12, v11, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v10, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v10, s2 :: v_dual_max_f32 v11, v11, v12
	v_mov_b32_dpp v12, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s7, v11, 31
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_mov_b32 v11, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v12, v14, v12
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v15, v14
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp337:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp339:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp340:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp341:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v15, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v14, v14, v15
.Ltmp345:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v15, v14, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v12, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_mov_b32 v12, s4
.Ltmp349:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v16, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp350:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v14, v14, v15 :: v_dual_mov_b32 v15, s7
.Ltmp351:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v14, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v14, s6 :: v_dual_mov_b32 v17, s9
	ds_store_b128 v171, v[10:13] offset:32
	ds_store_b128 v171, v[14:17] offset:48
	v_mov_b32_e32 v16, v18
	v_mov_b32_e32 v14, v19
.Ltmp352:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v21, v21
.Ltmp353:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp354:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v18, v18
.Ltmp355:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp356:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v19, v19
	v_max_f32_e32 v13, v21, v21
.Ltmp357:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v11, v20
.Ltmp358:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v14, v14, v14
	v_dual_max_f32 v12, v20, v20 :: v_dual_mov_b32 v19, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp359:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp360:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v17, v17, v16 :: v_dual_max_f32 v16, v15, v14
	v_max_f32_e32 v14, v10, v13
.Ltmp361:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v10, off, off          ; 4-byte Folded Reload
.Ltmp362:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp363:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v21, v74 :: v_dual_max_f32 v20, v73, v73
.Ltmp364:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v15, v12, v11
.Ltmp365:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp366:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v25, v76, v76 :: v_dual_max_f32 v10, v10, v10
.Ltmp367:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v10, v10, v17
	scratch_store_b32 off, v10, off         ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v77, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp368:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp369:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v11, v10, -1, -1 op_sel:[1,0]
.Ltmp370:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v11
.Ltmp371:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v11, off, off offset:4 ; 4-byte Folded Reload
.Ltmp372:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v10, 31
.Ltmp373:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v19, v19
.Ltmp374:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v19, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v16
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v19, v19, v19
	scratch_store_b32 off, v11, off offset:4 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v79, v11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s95
.Ltmp375:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp376:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v12, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp377:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp378:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v12, off, off offset:8 ; 4-byte Folded Reload
.Ltmp379:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v11, 31
.Ltmp380:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v12, v12, v12
	v_max_f32_e32 v12, v12, v15
	scratch_store_b32 off, v12, off offset:8 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v81, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp381:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp382:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v13, v12, -1, -1 op_sel:[1,0]
.Ltmp383:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v12, v13
.Ltmp384:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v13, off, off offset:12 ; 4-byte Folded Reload
.Ltmp385:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v12, 31
.Ltmp386:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v13, v13, v14
	scratch_store_b32 off, v13, off offset:12 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v83, v13
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s97
.Ltmp387:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp388:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v26, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp389:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v13, v26
.Ltmp390:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v13, v20, v10 :: v_dual_max_f32 v10, v21, v21
.Ltmp391:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v20, v172, v172
	v_max_f32_e32 v21, v208, v208
.Ltmp392:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v26, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp393:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v22, v10
	v_max_f32_e32 v10, v23, v23
.Ltmp394:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v19, v19, v12
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp395:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v24, v10 :: v_dual_max_f32 v10, v18, v25
.Ltmp396:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v18, off, off offset:32 ; 4-byte Folded Reload
	scratch_store_b32 off, v19, off offset:36 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v80, v19
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v172, v20, v11
	v_max_f32_e32 v208, v21, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v20, v82, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_sub_f32_e32 v21, v84, v208
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v21, v21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp397:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp398:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v20, 0, v20, s92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0, v21, s93
.Ltmp399:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v20, v20, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v21, v21, v21 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp400:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v18, v18, v13
	scratch_store_b32 off, v18, off offset:32 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v18, v78, v18
.Ltmp401:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v236
	ds_load_b128 v[73:76], v236 offset:16
	ds_load_b128 v[93:96], v236 offset:32
	ds_load_b128 v[89:92], v236 offset:48
.Ltmp402:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp403:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v18, v18
.Ltmp404:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp405:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s90
.Ltmp406:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp407:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v22, v18, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp408:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v18, v18, v22
.Ltmp409:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v22, v19, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v18, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp410:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v19, v19, v22
.Ltmp411:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v22, v20, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v18, s2
	v_readlane_b32 s7, v19, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp412:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v20, v22
.Ltmp413:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v22, v21, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v19, s3
	v_mov_b32_e32 v23, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s8, v20, 31
.Ltmp414:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v21, v21, v22 :: v_dual_mov_b32 v20, s4
.Ltmp415:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v22, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v24, s8
	v_readlane_b32 s9, v21, 31
	v_mov_b32_e32 v21, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v25, s9
	ds_store_b128 v171, v[18:21]
	ds_store_b128 v171, v[22:25] offset:16
.Ltmp416:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v19, v69
	v_dual_mov_b32 v21, v70 :: v_dual_max_f32 v18, v72, v72
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp417:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp418:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp419:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v22, v70, v70 :: v_dual_max_f32 v31, v72, v72
.Ltmp420:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v23, v71
.Ltmp421:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
.Ltmp422:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v69, v65 :: v_dual_mov_b32 v70, v66
.Ltmp423:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp424:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp425:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v25, v20, v19
	v_max_f32_e32 v19, v21, v21
.Ltmp426:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v71, v67
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp427:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v24, v22, v19
	v_max_f32_e32 v22, v18, v31
.Ltmp428:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v18, v250, v250 :: v_dual_max_f32 v19, v23, v23
.Ltmp429:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp430:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp431:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v31, v188, v188 :: v_dual_max_f32 v250, v18, v25
.Ltmp432:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v23, v30, v19 :: v_dual_sub_f32 v18, v177, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp433:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v18, v18
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp434:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp435:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v19, v18, -1, -1 op_sel:[1,0]
.Ltmp436:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v18, v18, v19 :: v_dual_max_f32 v19, v252, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp437:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v18, 31
.Ltmp438:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v252, v19, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp439:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v18, v69, v69 :: v_dual_sub_f32 v19, v175, v252
.Ltmp440:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s87
.Ltmp441:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v19, v19, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp442:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v20, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp443:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v19, v19, v20
.Ltmp444:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v20, v227, v227
.Ltmp445:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v19, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp446:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v227, v20, v23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v20, v173, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v20, v20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v20, 0, v20, s88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp447:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v20, v20, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp448:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v21, v20, -1, -1 op_sel:[1,0]
.Ltmp449:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v20, v21
.Ltmp450:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v21, v229, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp451:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v20, 31
.Ltmp452:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v229, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v109, v229
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s89
.Ltmp453:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v21, v21, v21 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v21, v21, v21 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v21, v21, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v21, v21, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp454:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v30, v21, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp455:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v30, v21, v30
.Ltmp456:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v65, v18
	v_dual_max_f32 v18, v70, v70 :: v_dual_max_f32 v65, v228, v228
.Ltmp457:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v30, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp458:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v188, v31, v21
.Ltmp459:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v66, v18
	v_max_f32_e32 v18, v71, v71
.Ltmp460:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v138, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp461:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v30, v29, v29 :: v_dual_sub_f32 v31, v178, v188
.Ltmp462:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp463:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v19, v67, v18 :: v_dual_max_f32 v18, v32, v68
.Ltmp464:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v32, v190, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
.Ltmp465:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v68, s5
.Ltmp466:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v228, v65, v19
	v_max_f32_e32 v138, v66, v18
	v_dual_max_f32 v190, v32, v20 :: v_dual_max_f32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v174, v228
	v_sub_f32_e32 v66, v110, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_sub_f32_e32 v32, v176, v190
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s82
.Ltmp467:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v30, v30, v29
.Ltmp468:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v32, v32
.Ltmp469:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_add_f32_dpp v31, v31, v31 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp470:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v66, 0, v66, s85
	v_cndmask_b32_e64 v32, 0, v32, s83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp471:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v31, v31, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v31, v31, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp472:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v31, -1, -1 op_sel:[1,0]
.Ltmp473:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v31, v31, v67
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v32, v32, v32 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp474:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v31, 31
.Ltmp475:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v31, v26
.Ltmp476:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
.Ltmp477:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v32, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v69, s6
.Ltmp478:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp479:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v32, v67
.Ltmp480:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v65, -1, -1 op_sel:[1,0]
.Ltmp481:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp482:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v32, 31
.Ltmp483:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
.Ltmp484:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
.Ltmp485:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp486:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_mov_b32 v70, s7
.Ltmp487:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v65, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp488:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v66, v66, v67 :: v_dual_mov_b32 v65, s2
.Ltmp489:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, s4
.Ltmp490:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v32, v32 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp491:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v71, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_readlane_b32 s9, v66, 31
	v_dual_mov_b32 v66, s3 :: v_dual_max_f32 v193, v26, v31
.Ltmp492:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v32, v32
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp493:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v72, s9
	ds_store_b128 v171, v[65:68] offset:32
	ds_store_b128 v171, v[69:72] offset:48
.Ltmp494:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v65, v28
.Ltmp495:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v32, v27, v26 :: v_dual_mov_b32 v67, v73
.Ltmp496:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp497:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v68, v73, v73 :: v_dual_mov_b32 v71, v75
.Ltmp498:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp499:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v65, v65
	v_max_f32_e32 v66, v76, v76
.Ltmp500:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp501:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v74, v74
.Ltmp502:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp503:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v31, v28, v26
.Ltmp504:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v26, off, off offset:16 ; 4-byte Folded Reload
.Ltmp505:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v72, v75, v75 :: v_dual_max_f32 v73, v76, v76
.Ltmp506:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v26, v26, v193
	scratch_store_b32 off, v26, off offset:16 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v26, v107, v26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s78
.Ltmp507:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v26, v26, v26 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v26, v26, v26 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v26, v26, v26 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v26, v26, v26 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp508:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v27, v26, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp509:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v26, v27
.Ltmp510:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v27, off, off offset:20 ; 4-byte Folded Reload
.Ltmp511:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v26, 31
.Ltmp512:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v26, v67, v67 :: v_dual_max_f32 v67, v234, v234
.Ltmp513:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v27, v27, v32
	scratch_store_b32 off, v27, off offset:20 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v105, v27
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s79
.Ltmp514:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v27, v27, v27 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v27, v27, v27 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v27, v27, v27 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v27, v27, v27 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp515:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v28, v27, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp516:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v27, v27, v28
.Ltmp517:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v28, off, off offset:24 ; 4-byte Folded Reload
.Ltmp518:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v27, 31
.Ltmp519:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v28, v28, v28
	v_max_f32_e32 v28, v28, v31
	scratch_store_b32 off, v28, off offset:24 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v87, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v28, s80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp520:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v28, v28, v28 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v28, v28, v28 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v28, v28, v28 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp521:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v29, v28, -1, -1 op_sel:[1,0]
.Ltmp522:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v28, v28, v29
.Ltmp523:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v29, off, off offset:28 ; 4-byte Folded Reload
.Ltmp524:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v28, 31
.Ltmp525:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_max_f32_e32 v29, v29, v30
	scratch_store_b32 off, v29, off offset:28 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v85, v29
.Ltmp526:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp527:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s81
.Ltmp528:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v29, v29, v29 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v29, v29, v29 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v29, v29, v29 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v29, v29, v29 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp529:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v65, v29, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp530:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v29, v65
.Ltmp531:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v29, v68, v26 :: v_dual_max_f32 v26, v69, v69
.Ltmp532:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v68, v246, v246 :: v_dual_max_f32 v69, v248, v248
.Ltmp533:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v65, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v65, s2 :: v_dual_max_f32 v28, v70, v26
.Ltmp534:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v71, v71
.Ltmp535:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v234, v67, v28 :: v_dual_max_f32 v27, v72, v26
.Ltmp536:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v66, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp537:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v66, v232, v232 :: v_dual_sub_f32 v67, v106, v234
	v_max_f32_e32 v246, v68, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v248, v69, v26
	v_max_f32_e32 v232, v66, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v68, v88, v246 :: v_dual_sub_f32 v69, v86, v248
	s_delay_alu instid0(VALU_DEP_2)
	v_sub_f32_e32 v66, v108, v232
.Ltmp538:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[85:88], v236
	ds_load_b128 v[81:84], v236 offset:16
	ds_load_b128 v[77:80], v236 offset:32
	ds_load_b128 v[73:76], v236 offset:48
	s_waitcnt lgkmcnt(0)
.Ltmp539:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v66, v66
.Ltmp540:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
.Ltmp541:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp542:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp543:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v69, 0, v69, s77
	v_cndmask_b32_e64 v66, 0, v66, s74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp544:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp545:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp546:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp547:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v66, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp548:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp549:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v66, s3
	v_readlane_b32 s7, v67, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp550:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp551:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v67, s4
	v_readlane_b32 s8, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp552:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v68, s5
.Ltmp553:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v70, s7 :: v_dual_mov_b32 v71, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s9, v69, 31
	v_dual_mov_b32 v69, s6 :: v_dual_mov_b32 v72, s9
	ds_store_b128 v171, v[65:68]
	ds_store_b128 v171, v[69:72] offset:16
.Ltmp554:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v93 :: v_dual_max_f32 v65, v96, v96
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp555:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v67, v93, v93 :: v_dual_mov_b32 v68, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp556:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v70, v95
.Ltmp557:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v72, v96, v96 :: v_dual_max_f32 v69, v94, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp558:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp559:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp560:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp561:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v198, v65, v72
.Ltmp562:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v181, v181
.Ltmp563:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v71, v95, v95
	v_max_f32_e32 v212, v67, v66
	v_max_f32_e32 v66, v68, v68
.Ltmp564:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v94, v89 :: v_dual_mov_b32 v95, v90
.Ltmp565:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v89, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp566:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v181, v65, v212
.Ltmp567:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v203, v69, v66
	v_max_f32_e32 v66, v70, v70
.Ltmp568:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v94, v94 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v96, v91
.Ltmp569:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v103, v181
.Ltmp570:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v95, v95 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp571:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v199, v71, v66
	v_max_f32_e32 v90, v90, v90
.Ltmp572:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp573:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
.Ltmp574:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v91, v91, v91
	v_max_f32_e32 v93, v92, v92
.Ltmp575:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp576:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v92, v92, v92
.Ltmp577:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp578:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v194, v93, v92
.Ltmp579:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp580:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp581:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v66
.Ltmp582:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v218, v218
.Ltmp583:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v65, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp584:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v218, v66, v203
.Ltmp585:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v94, v94
.Ltmp586:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v101, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp587:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v197, v89, v65
	v_max_f32_e32 v65, v95, v95
.Ltmp588:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp589:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v196, v90, v65 :: v_dual_max_f32 v65, v96, v96
	v_max_f32_e32 v195, v91, v65
.Ltmp590:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v139, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s71
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v139, v65, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp591:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp592:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v104, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp593:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp594:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp595:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp596:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s66
.Ltmp597:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp598:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v184, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp599:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v66, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp600:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v184, v67, v199
	v_max_f32_e32 v66, v200, v200
.Ltmp601:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp602:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v99, v184
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v200, v66, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp603:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp604:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v66, v102, v200
.Ltmp605:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp606:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
.Ltmp607:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp608:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s72
.Ltmp609:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v65, 31
	v_mov_b32_e32 v65, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp610:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp611:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s67
	v_readlane_b32 s2, v254, 26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp612:
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
.Ltmp613:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp614:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v67, v67, v68 :: v_dual_max_f32 v68, v186, v186
.Ltmp615:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s4, v67, 31
.Ltmp616:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v186, v68, v198 :: v_dual_max_f32 v67, v201, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp617:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp618:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v97, v186 :: v_dual_max_f32 v201, v67, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp619:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v66, 31
	v_mov_b32_e32 v66, s3
.Ltmp620:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v100, v201
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s73
.Ltmp621:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp622:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s68
.Ltmp623:
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
.Ltmp624:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp625:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v68, v68, v69 :: v_dual_max_f32 v69, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp626:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp627:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v202, v69, v194
.Ltmp628:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v70 :: v_dual_mov_b32 v68, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp629:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v98, v202
.Ltmp630:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v67, 31
	v_mov_b32_e32 v67, s4
	v_readlane_b32 s4, v254, 7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp631:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
.Ltmp632:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v71, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp633:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s69
.Ltmp634:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp635:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp636:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v70 :: v_dual_mov_b32 v70, s7
.Ltmp637:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v69, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v69, s6 :: v_dual_mov_b32 v72, s9
	ds_store_b128 v171, v[65:68] offset:32
	ds_store_b128 v171, v[69:72] offset:48
.Ltmp638:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v205
.Ltmp639:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp640:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s86, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 1, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s66, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 2, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s66, s0, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s87, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 3, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s80, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 8, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s80, s0, s80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s88, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 9, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s69, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 10, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s69, s0, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s89, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 11, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s74, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 16, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s74, s0, s74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s90, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 17, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 18, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s91, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 19, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s67, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 24, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s92, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 25, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s68, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 26, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s93, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 27, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s73, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 32, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s94, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 33, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s70, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 34, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s95, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 35, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s71, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 40, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s96, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 41, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s72, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 42, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s84, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 43, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s84, s0, s84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s75, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 48, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s85, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 49, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s76, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 50, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s82, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 51, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s82, s0, s82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s77, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 56, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s83, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 57, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s78, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 58, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s81, s15, v65
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 59, v205
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s81, s0, s81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, vcc_hi, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 vcc_hi, vcc_hi, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s79, s15, v65
	scratch_load_b64 v[65:66], off, off offset:1044 ; 8-byte Folded Reload
.Ltmp641:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[67:68], null, s2, s4, v[65:66]
.Ltmp642:
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s2, v254, 13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v66, v67, s2, 1
	v_readlane_b32 s2, v254, 14
	v_lshlrev_b32_e32 v65, 1, v67
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s86
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s87
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s86
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s2, v254, 15
	v_cndmask_b32_e64 v68, 0x80000000, v68, s86
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s89
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v65, v65, s[16:19], 0 offen
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s86
	s_clause 0x1
	buffer_load_u16 v105, v68, s[16:19], 0 offen
	buffer_load_u16 v106, v69, s[16:19], 0 offen
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	s_mul_i32 s2, s4, 24
	v_cndmask_b32_e64 v68, 0x80000000, v68, s86
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s91
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s86
	s_clause 0x1
	buffer_load_u16 v107, v68, s[16:19], 0 offen
	buffer_load_u16 v108, v69, s[16:19], 0 offen
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 26
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s92
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	v_readlane_b32 s2, v254, 16
	v_cndmask_b32_e64 v68, 0x80000000, v68, s86
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s93
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s86
	s_clause 0x1
	buffer_load_u16 v109, v68, s[16:19], 0 offen
	buffer_load_u16 v110, v69, s[16:19], 0 offen
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 34
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	s_mul_i32 s2, s4, 40
	v_cndmask_b32_e64 v68, 0x80000000, v68, s86
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s95
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s86
	s_clause 0x1
	buffer_load_u16 v173, v68, s[16:19], 0 offen
	buffer_load_u16 v174, v69, s[16:19], 0 offen
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s0, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	s_mul_i32 s2, s4, 48
	v_cndmask_b32_e64 v68, 0x80000000, v68, s86
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s84
	s_clause 0x1
	buffer_load_u16 v175, v68, s[16:19], 0 offen
	buffer_load_u16 v176, v69, s[16:19], 0 offen
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s84, s0, s85
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	s_mul_i32 s2, s4, 56
	v_cndmask_b32_e64 v68, 0x80000000, v68, s84
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s82
	s_clause 0x1
	buffer_load_u16 v177, v68, s[16:19], 0 offen
	buffer_load_u16 v178, v69, s[16:19], 0 offen
	v_add_lshl_u32 v68, v67, s2, 1
	s_mul_i32 s2, s4, 58
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s82, s0, s83
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v67, s2, 1
	s_mul_i32 s2, s4, 3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s82
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s81
	s_clause 0x1
	buffer_load_u16 v179, v68, s[16:19], 0 offen
	buffer_load_u16 v180, v69, s[16:19], 0 offen
	v_add_lshl_u32 v69, v67, s2, 1
	s_mul_i32 s2, s4, 9
	v_add_lshl_u32 v68, v67, s4, 1
	v_add_lshl_u32 v70, v67, s2, 1
	s_mul_i32 s2, s4, 11
	v_cndmask_b32_e64 v69, 0x80000000, v69, s80
	v_add_lshl_u32 v71, v67, s2, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s66
	v_cndmask_b32_e64 v70, 0x80000000, v70, s69
	s_mul_i32 s2, s4, 17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s66, s0, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s74
	s_clause 0x3
	buffer_load_u16 v114, v71, s[16:19], 0 offen
	buffer_load_u16 v115, v70, s[16:19], 0 offen
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	v_add_lshl_u32 v72, v67, s2, 1
	s_mul_i32 s2, s4, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v89, v67, s2, 1
	s_mul_i32 s2, s4, 25
	v_cndmask_b32_e64 v71, 0x80000000, v72, s3
	v_add_lshl_u32 v90, v67, s2, 1
	s_mul_i32 s2, s4, 27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s70
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v91, v67, s2, 1
	s_mul_i32 s2, s4, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v92, v67, s2, 1
	s_mul_i32 s2, s4, 35
	v_add_lshl_u32 v93, v67, s2, 1
	s_mul_i32 s2, s4, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v94, v67, s2, 1
	s_mul_i32 s2, s4, 43
	v_add_lshl_u32 v95, v67, s2, 1
	s_mul_i32 s2, s4, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v96, v67, s2, 1
	s_mul_i32 s2, s4, 51
	v_add_lshl_u32 v97, v67, s2, 1
	s_mul_i32 s2, s4, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v98, v67, s2, 1
	s_mul_i32 s2, s4, 59
	v_add_lshl_u32 v67, v67, s2, 1
	s_mov_b32 s2, 0x76543210
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v106.h, v114.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v105.h, v115.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v66.h, v69.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v65.h, v68.l
	v_cndmask_b32_e64 v68, 0x80000000, v89, s66
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s66, s0, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v91, s66
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s66, s0, s68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v90, s66
	s_clause 0x3
	buffer_load_u16 v116, v69, s[16:19], 0 offen
	buffer_load_u16 v117, v70, s[16:19], 0 offen
	buffer_load_u16 v118, v68, s[16:19], 0 offen
	buffer_load_u16 v119, v71, s[16:19], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v92, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s71
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v93, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s72
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v94, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v95, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s76
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v96, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v89, 0x80000000, v97, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s78
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v90, 0x80000000, v98, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s79
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	s_clause 0x7
	buffer_load_u16 v120, v71, s[16:19], 0 offen
	buffer_load_u16 v121, v70, s[16:19], 0 offen
	buffer_load_u16 v122, v69, s[16:19], 0 offen
	buffer_load_u16 v123, v68, s[16:19], 0 offen
	buffer_load_u16 v124, v67, s[16:19], 0 offen
	buffer_load_u16 v125, v90, s[16:19], 0 offen
	buffer_load_u16 v126, v89, s[16:19], 0 offen
	buffer_load_u16 v127, v72, s[16:19], 0 offen
.Ltmp643:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[101:104], v236
	ds_load_b128 v[97:100], v236 offset:16
	ds_load_b128 v[93:96], v236 offset:32
	ds_load_b128 v[89:92], v236 offset:48
.Ltmp644:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v67, off, off offset:676 ; 4-byte Folded Reload
.Ltmp645:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v68, v140, v141, v220
	v_readlane_b32 s18, v254, 25
.Ltmp646:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 vcc_hi, s18
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v110.h, v116.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v109.h, v117.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v108.h, v118.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v107.h, v119.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v176.h, v120.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v175.h, v121.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v174.h, v122.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v173.h, v123.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v180.h, v124.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v179.h, v125.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v178.h, v126.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v177.h, v127.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, 0, v67
	ds_store_b64 v67, v[65:66]
.Ltmp647:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v1, v170, v113
	v_max3_f32 v66, v168, v169, v166
	v_max3_f32 v67, v167, v146, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v65, v66, v67
	v_max3_f32 v66, v147, v164, v144
	v_max3_f32 v67, v145, v142, v143
	v_max3_f32 v66, v66, v67, v68
	v_max_f32_e32 v67, v8, v9
	v_max3_f32 v68, v7, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v67, v67, v6, v68
	v_max3_f32 v68, v2, v3, v182
	v_max3_f32 v65, v67, v68, v65
	v_dual_max_f32 v67, v221, v217 :: v_dual_max_f32 v68, v0, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v67, v67, v219, v68
	v_max3_f32 v65, v65, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp648:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s2, 0xfedcba98 op_sel:[1,0]
.Ltmp649:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v216, v149, v65, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v216
	v_sub_f32_e32 v8, v8, v216
	v_sub_f32_e32 v7, v7, v216
	v_sub_f32_e32 v6, v6, v216
	v_sub_f32_e32 v5, v5, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v4, v4, v216
	v_sub_f32_e32 v3, v3, v216
	v_sub_f32_e32 v2, v2, v216
	v_sub_f32_e32 v1, v1, v216
	v_sub_f32_e32 v0, v0, v216
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v9, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.h, 0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v8, 0, v8, s64
	v_cndmask_b32_e64 v7, 0, v7, s62
	v_cndmask_b32_e64 v6, 0, v6, s58
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v9.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	v_cmp_o_f32_e64 s64, v8, v8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v5, 0, v5, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s58, v6, v6
	v_and_b32_e32 v66, 1, v9
	v_mov_b16_e32 v9.l, v7.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v2, v2
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_mov_b16_e32 v65.l, v8.h
	v_mov_b16_e32 v65.h, v9.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v4, 0, v4, s60
	v_cndmask_b32_e64 v3, 0, v3, s63
	v_cndmask_b32_e64 v2, 0, v2, s59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v8, v65, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v7, v7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v8.l, 0x7fff, v65.h, s64
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v8, v191
	v_perm_b32 v66, v66, v8, v192
	v_and_b32_e32 v8, 1, v9
	v_mov_b16_e32 v9.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v7, v8, 0x7fff
	v_mov_b16_e32 v7.l, v6.h
	v_mov_b16_e32 v7.h, v9.h
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v6, v7, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cmp_o_f32_e64 s3, v5, v5
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s58
	v_cmp_o_f32_e64 s58, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v7, v6, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v7, v6, v191
	v_perm_b32 v68, v7, v6, v192
	v_and_b32_e32 v6, 1, v9
	v_mov_b16_e32 v9.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v5, v6, 0x7fff
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v5.h, v9.h
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v4, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s3
	v_cmp_o_f32_e64 s3, v3, v3
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s58
	v_cmp_o_f32_e64 s58, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v5, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v5, v4, v191
	v_perm_b32 v70, v5, v4, v192
	v_and_b32_e32 v4, 1, v9
	v_mov_b16_e32 v9.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v3, v4, 0x7fff
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v3.h, v9.h
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v2, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v3, v2, v191
	v_perm_b32 v72, v3, v2, v192
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v2, off, off offset:904 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[105:106]
	scratch_load_b32 v2, off, off offset:908 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[107:108]
	scratch_load_b32 v2, off, off offset:912 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[109:110]
	scratch_load_b32 v2, off, off offset:916 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[173:174]
	scratch_load_b32 v2, off, off offset:920 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[175:176]
	scratch_load_b32 v2, off, off offset:924 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[177:178]
	scratch_load_b32 v2, off, off offset:928 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[179:180]
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v2, v149, v216
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:932
	scratch_load_b32 v5, off, off offset:1036
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v3, v2
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v2, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v3, 0, v3, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v57, v57, v3
	v_mul_f32_e32 v58, v58, v3
	v_mul_f32_e32 v59, v59, v3
	v_mul_f32_e32 v60, v60, v3
	v_mul_f32_e32 v61, v61, v3
	v_mul_f32_e32 v62, v62, v3
	v_mul_f32_e32 v63, v63, v3
	v_mul_f32_e32 v64, v64, v3
	v_mul_f32_e32 v49, v49, v3
	v_mul_f32_e32 v50, v50, v3
	v_mul_f32_e32 v51, v51, v3
	v_mul_f32_e32 v52, v52, v3
	v_mul_f32_e32 v53, v53, v3
	v_mul_f32_e32 v54, v54, v3
	v_mul_f32_e32 v55, v55, v3
	v_mul_f32_e32 v56, v56, v3
	v_mul_f32_e32 v41, v41, v3
	v_mul_f32_e32 v42, v42, v3
	v_mul_f32_e32 v43, v43, v3
	v_mul_f32_e32 v44, v44, v3
	v_mul_f32_e32 v45, v45, v3
	v_mul_f32_e32 v46, v46, v3
	v_mul_f32_e32 v47, v47, v3
	v_mul_f32_e32 v48, v48, v3
	v_mul_f32_e32 v33, v33, v3
	v_mul_f32_e32 v34, v34, v3
	v_mul_f32_e32 v35, v35, v3
	v_mul_f32_e32 v36, v36, v3
	v_mul_f32_e32 v37, v37, v3
	v_mul_f32_e32 v38, v38, v3
	v_mul_f32_e32 v39, v39, v3
	v_mul_f32_e32 v40, v40, v3
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v3, off, off offset:1016 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_b128 v[177:180], v4
	scratch_load_b32 v4, off, off offset:936 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, 0, v2
	s_waitcnt vmcnt(0)
	ds_load_b128 v[114:117], v4
	ds_load_b128 v[122:125], v2 offset:2048
	ds_load_b128 v[173:176], v2
	scratch_load_b32 v4, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[173:180], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[173:176], v4
	scratch_load_b32 v4, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[177:180], v4
	scratch_load_b32 v4, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[173:180], v[65:72], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v4
	scratch_load_b32 v4, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v4
	scratch_load_b32 v4, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[173:176], v4
	scratch_load_b32 v4, off, off offset:992 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[177:180], v4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v4.h, v9.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[173:180], v[65:72], v[41:48]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[173:176], v3
	scratch_load_b32 v3, off, off offset:1020 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[177:180], v3
	scratch_load_b32 v3, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[173:180], v[65:72], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[149:152], v3
	scratch_load_b32 v3, off, off offset:1012 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[241:244], v3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v3, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v182, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s49
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s49, v1, v1
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s49
	v_mov_b16_e32 v4.h, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v3, v1, v191
	v_perm_b32 v66, v3, v1, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v113, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v170, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	v_cmp_o_f32_e64 s45, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s45
	v_mov_b16_e32 v4.h, v9.h
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v3, v1, v191
	v_perm_b32 v68, v3, v1, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v169, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s54
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v1, v1
	v_and_b32_e32 v3, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v168, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v1, v1
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s45
	v_mov_b16_e32 v4.h, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v3, v1, v191
	v_perm_b32 v70, v3, v1, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v167, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v166, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	v_cmp_o_f32_e64 s45, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s45
	v_mov_b16_e32 v4.h, v9.h
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v3, v1, v191
	v_perm_b32 v72, v3, v1, v192
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v1, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[49:56], v[122:129], v[65:72], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v1
	scratch_load_b32 v1, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[114:121], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[173:176], v1
	scratch_load_b32 v1, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[113:116], v1
	scratch_load_b32 v1, off, off offset:1000 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v1
	scratch_load_b32 v1, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[113:120], v[65:72], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[153:156], v1
	scratch_load_b32 v1, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[149:156], v[65:72], v[33:40]
	v_mov_b32_e32 v149, v216
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[113:116], v1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v165, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v146, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	v_cmp_o_f32_e64 s45, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s45
	v_mov_b16_e32 v4.h, v9.h
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v3, v1, v191
	v_perm_b32 v66, v3, v1, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v164, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v1, v1
	v_and_b32_e32 v3, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v147, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v1, v1
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s45
	v_mov_b16_e32 v4.h, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v3, v1, v191
	v_perm_b32 v68, v3, v1, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v145, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e64 s3, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 1, v9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v144, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	v_cmp_o_f32_e64 s44, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s44
	v_mov_b16_e32 v4.h, v9.h
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v3, v1, v191
	v_perm_b32 v70, v3, v1, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v143, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v1, v1
	v_and_b32_e32 v3, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v1, v142, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v1, 0, v1, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v4.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v1, v1
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v3, v1, v191
	v_perm_b32 v72, v3, v1, v192
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v1, off, off offset:948 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[177:180], v1
	scratch_load_b32 v1, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[173:180], v[65:72], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v1
	scratch_load_b32 v1, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v1
	scratch_load_b32 v1, off, off offset:976 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v1
	scratch_load_b32 v1, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[117:124], v[65:72], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[117:120], v2 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v1
	scratch_load_b32 v1, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[117:124], v[65:72], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[117:120], v5
	scratch_load_b32 v5, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[113:120], v[65:72], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v141, v216
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v9.h
	v_mov_b16_e32 v69.h, v9.h
	v_mov_b16_e32 v71.h, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v9
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v140, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
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
	v_permlanex16_b32 v67, v66, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v66, v191
	v_perm_b32 v66, v67, v66, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v221, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v67.h
	v_cmp_o_f32_e64 s3, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v9
	v_add3_u32 v68, v67, v68, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v220, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
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
	v_permlanex16_b32 v69, v68, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v69, v68, v191
	v_perm_b32 v68, v69, v68, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v219, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v69.h
	v_cmp_o_f32_e64 s3, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v9
	v_add3_u32 v70, v69, v70, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v217, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
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
	v_permlanex16_b32 v71, v70, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v71, v70, v191
	v_perm_b32 v70, v71, v70, v192
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v111, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v9.l, v71.h
	v_cmp_o_f32_e64 s1, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v72, 1, v9
	v_mov_b16_e32 v9.l, v0.h
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v0, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v0.h, 0x7fff, v72.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v9.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v9, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v9, v0, v191
	v_perm_b32 v72, v9, v0, v192
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	ds_load_b128 v[237:240], v1
	ds_load_b128 v[1:4], v2 offset:6144
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v9, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[130:137], v[65:72], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[237:244], v[65:72], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[113:116], v0
	scratch_load_b32 v0, off, off offset:984 ; 4-byte Folded Reload
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[1:8], v[65:72], v[33:40]
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v2, off, off offset:164
	scratch_load_b32 v3, off, off offset:160
	scratch_load_b32 v4, off, off offset:156
	scratch_load_b32 v5, off, off offset:152
	scratch_load_b32 v6, off, off offset:148
	scratch_load_b32 v7, off, off offset:144
	scratch_load_b32 v8, off, off offset:140
.Ltmp650:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v1, v86 :: v_dual_mov_b32 v0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp651:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[113:120], v[65:72], v[49:56]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp652:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v86, v1
.Ltmp653:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v1, v102
.Ltmp654:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v85, v0 :: v_dual_mov_b32 v0, v87
.Ltmp655:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp656:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v102, v1
.Ltmp657:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v1, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp658:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v87, v0 :: v_dual_mov_b32 v0, v88
.Ltmp659:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp660:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v82, v1
.Ltmp661:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp662:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v86, v98, v1
.Ltmp663:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp664:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v1
.Ltmp665:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v1, v94 :: v_dual_add_f32 v68, v88, v0
	v_mov_b32_e32 v0, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp666:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v94, v1
.Ltmp667:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v1, v74
.Ltmp668:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v101, v0 :: v_dual_mov_b32 v0, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp669:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp670:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v1
.Ltmp671:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v1, v90
.Ltmp672:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v71, v103, v0 :: v_dual_mov_b32 v0, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp673:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp674:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v1
	v_add_f32_e32 v72, v104, v0
.Ltmp675:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp676:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v81, v81, v0 :: v_dual_mov_b32 v0, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp677:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp678:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v83, v83, v0 :: v_dual_mov_b32 v0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp679:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp680:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v84, v0
.Ltmp681:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp682:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v85, v97, v0 :: v_dual_mov_b32 v0, v99
.Ltmp683:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v97, off, off offset:40 ; 4-byte Folded Reload
.Ltmp684:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp685:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v87, v99, v0 :: v_dual_mov_b32 v0, v100
.Ltmp686:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp687:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v100, v0
.Ltmp688:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v77
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp689:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v77, v77, v0 :: v_dual_mov_b32 v0, v79
.Ltmp690:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp691:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v79, v79, v0 :: v_dual_mov_b32 v0, v80
.Ltmp692:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp693:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v0
.Ltmp694:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v93
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp695:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v93, v93, v0 :: v_dual_mov_b32 v0, v95
.Ltmp696:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp697:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v95, v95, v0 :: v_dual_mov_b32 v0, v96
.Ltmp698:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp699:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v96, v96, v0
.Ltmp700:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v73
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp701:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v73, v73, v0 :: v_dual_mov_b32 v0, v75
.Ltmp702:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp703:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v75, v75, v0 :: v_dual_mov_b32 v0, v76
.Ltmp704:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp705:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v0
.Ltmp706:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v89
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp707:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v89, v0 :: v_dual_mov_b32 v0, v91
.Ltmp708:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp709:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v91, v91, v0 :: v_dual_mov_b32 v0, v92
.Ltmp710:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp711:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v0
.Ltmp712:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v215, v215
	v_max_f32_e32 v0, v0, v17
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v17, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v1, v215, v0
	v_mov_b32_e32 v215, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v1, v1
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v235
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v2, v1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v1, v235, v235
	v_max_f32_e32 v1, v1, v16
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v16, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v2, v235, v1 :: v_dual_mov_b32 v235, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v2, v2
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v112
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v3, v2
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v2, v112, v112
	v_max_f32_e32 v2, v2, v15
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v15, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v3, v112, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v3, v3
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v233
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v4, v3
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v3, v233, v233
	v_max_f32_e32 v3, v3, v14
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v14, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v4, v233, v3 :: v_dual_mov_b32 v233, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v4, v4
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v4, 0, v4, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v5, v4
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v4, v231, v231
	v_max_f32_e32 v4, v4, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v5, v231, v4
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v204
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v69, v6, v5
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v5, v204, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, v5, v32
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v32, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v6, v204, v5
	v_mov_b32_e32 v204, v5
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v6, 0, v6, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v148
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v70, v7, v6
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v6, v148, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v6, v6, v31
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v31, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v7, v148, v6
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v189
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v71, v8, v7
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v7, v189, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v7, v7, v30
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v30, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v8, v189, v7 :: v_dual_mov_b32 v189, v7
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v187
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v72, v9, v8
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v8, v187, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v8, v8, v13
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v13, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v9, v187, v8
	v_mov_b32_e32 v187, v8
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v9, 0, v9, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v185
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v13, v9
	scratch_load_b32 v13, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v9, v185, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v12
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v185, v9
	v_mov_b32_e32 v185, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v183
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v13, v12
	scratch_load_b32 v13, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v12, v183, v183
	v_max_f32_e32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v183, v11
	v_mov_b32_e32 v183, v11
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v209
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v13, v12
	scratch_load_b32 v13, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v12, v209, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v12, v10
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v12, v209, v10 :: v_dual_mov_b32 v209, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v210
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v13, v12
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v12, v210, v210
	v_max_f32_e32 v12, v12, v29
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v29, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v13, v210, v12 :: v_dual_mov_b32 v210, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v13, v13
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v13, 0, v13, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v85, v14, v13
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v13, v226, v226
	v_max_f32_e32 v13, v13, v28
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v28, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v14, v226, v13
	v_mov_b32_e32 v226, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v14, v14
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v14, 0, v14, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v86, v15, v14
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v14, v253, v253
	v_max_f32_e32 v14, v14, v27
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v27, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v15, v253, v14
	v_mov_b32_e32 v253, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v15, v15
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v15, 0, v15, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v87, v16, v15
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v15, v251, v251
	v_max_f32_e32 v15, v15, v26
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v26, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v16, v251, v15
	v_mov_b32_e32 v251, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v16, v16
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v16, 0, v16, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v88, v17, v16
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v16, v249, v249
	v_max_f32_e32 v16, v16, v25
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v25, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v17, v249, v16
	v_mov_b32_e32 v249, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v17, v17
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v17, 0, v17, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v247
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v25, v17
	scratch_load_b32 v25, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v17, v247, v247
	v_max_f32_e32 v17, v17, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v24, v247, v17 :: v_dual_mov_b32 v247, v17
	v_mov_b32_e32 v17, v77
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v24, 0, v24, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v245
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v78, v25, v24
	scratch_load_b32 v25, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v24, v245, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v78 :: v_dual_max_f32 v23, v24, v23
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v24, v245, v23 :: v_dual_mov_b32 v245, v23
	v_dual_mov_b32 v23, v83 :: v_dual_mov_b32 v112, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v24, v24
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v24, 0, v24, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v163
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v25, v24
	scratch_load_b32 v25, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v24, v163, v163
	v_dual_mov_b32 v15, v79 :: v_dual_max_f32 v22, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v24, v163, v22 :: v_dual_mov_b32 v163, v22
	v_mov_b32_e32 v22, v84
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v24, 0, v24, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v161
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v80, v25, v24
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v24, v161, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v14, v80
	v_max_f32_e32 v24, v24, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v25, v161, v24
	v_dual_mov_b32 v161, v24 :: v_dual_mov_b32 v24, v82
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v25, 0, v25, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v159
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v93, v26, v25
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v25, v159, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v13, v93
	v_max_f32_e32 v25, v25, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v231, v4 :: v_dual_sub_f32 v26, v159, v25
	v_mov_b32_e32 v159, v25
	v_mov_b32_e32 v25, v81
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v26, 0, v26, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v157
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v94, v27, v26
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v26, v157, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v12, v94
	v_max_f32_e32 v26, v26, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v27, v157, v26
	v_dual_mov_b32 v157, v26 :: v_dual_mov_b32 v26, v72
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v27, 0, v27, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v95, v28, v27
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v27, v162, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v11, v95
	v_max_f32_e32 v27, v27, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v162, v27
	v_mov_b32_e32 v162, v27
	v_mov_b32_e32 v27, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v160
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v96, v29, v28
	scratch_load_b32 v29, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v28, v160, v160
	v_mov_b32_e32 v10, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v21, v28, v21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v160, v21
	v_mov_b32_e32 v160, v21
	v_mov_b32_e32 v21, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v158
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v29, v28
	scratch_load_b32 v29, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v28, v158, v158 :: v_dual_mov_b32 v9, v73
	v_max_f32_e32 v20, v28, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v158, v20
	v_mov_b32_e32 v158, v20
	v_mov_b32_e32 v20, v86
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v207
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v74, v29, v28
	scratch_load_b32 v29, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v28, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v8, v74 :: v_dual_max_f32 v19, v28, v19
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v207, v19
	v_mov_b32_e32 v207, v19
	v_mov_b32_e32 v19, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v206
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v29, v28
	scratch_load_b32 v29, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v28, v206, v206 :: v_dual_mov_b32 v7, v75
	v_max_f32_e32 v18, v28, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v28, v206, v18
	v_mov_b32_e32 v206, v18
	v_mov_b32_e32 v18, v88
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v214
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v76, v29, v28
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v28, v214, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v28, v28, v197
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v29, v214, v28 :: v_dual_mov_b32 v214, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v29, v29
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v29, 0, v29, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v89, v30, v29
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v29, v230, v230
	v_mov_b32_e32 v5, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v29, v29, v196 :: v_dual_mov_b32 v28, v70
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v30, v230, v29
	v_mov_b32_e32 v230, v29
	v_mov_b32_e32 v29, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v30, v30
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v30, 0, v30, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v90, v31, v30
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v30, v213, v213
	v_mov_b32_e32 v4, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v30, v30, v195
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v31, v213, v30
	v_dual_mov_b32 v213, v30 :: v_dual_mov_b32 v30, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v31, v31
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v31, 0, v31, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v91, v32, v31
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v31, v211, v211
	v_mov_b32_e32 v3, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v31, v31, v194 :: v_dual_mov_b32 v148, v6
	v_mov_b32_e32 v6, v76
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v32, v211, v31
	v_mov_b32_e32 v211, v31
	v_mov_b32_e32 v31, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v32, v32
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v32, 0, v32, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v92, v97, v32
	v_dual_mov_b32 v97, v65 :: v_dual_mov_b32 v32, v66
	v_mov_b32_e32 v2, v92
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_78
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v97, off offset:164
	scratch_store_b32 off, v32, off offset:160
	scratch_store_b32 off, v31, off offset:156
	scratch_store_b32 off, v30, off offset:152
	scratch_store_b32 off, v29, off offset:148
	scratch_store_b32 off, v28, off offset:144
	scratch_store_b32 off, v27, off offset:140
	scratch_store_b32 off, v26, off offset:136
	scratch_store_b32 off, v25, off offset:132
	scratch_store_b32 off, v24, off offset:128
	scratch_store_b32 off, v23, off offset:124
	scratch_store_b32 off, v22, off offset:120
	scratch_store_b32 off, v21, off offset:116
	scratch_store_b32 off, v20, off offset:112
	scratch_store_b32 off, v19, off offset:108
	scratch_store_b32 off, v18, off offset:104
	scratch_store_b32 off, v17, off offset:100
	scratch_store_b32 off, v16, off offset:96
	scratch_store_b32 off, v15, off offset:92
	scratch_store_b32 off, v14, off offset:88
	scratch_store_b32 off, v13, off offset:84
	scratch_store_b32 off, v12, off offset:80
	scratch_store_b32 off, v11, off offset:76
	scratch_store_b32 off, v10, off offset:72
	scratch_store_b32 off, v9, off offset:68
	scratch_store_b32 off, v8, off offset:64
	scratch_store_b32 off, v7, off offset:60
	scratch_store_b32 off, v6, off offset:56
	scratch_store_b32 off, v5, off offset:52
	scratch_store_b32 off, v4, off offset:48
	scratch_store_b32 off, v3, off offset:44
	scratch_store_b32 off, v2, off offset:40
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[3:4], off, off offset:340
	scratch_load_b32 v4, off, off offset:312
	.loc	1 853 32                        ; attention.py:853:32
	v_readlane_b32 s2, v254, 9
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[5:6], off, off offset:348
	scratch_load_b64 v[6:7], off, off offset:356
	scratch_load_b64 v[7:8], off, off offset:364
	scratch_load_b32 v8, off, off offset:316
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s4, vcc_hi, s2
	v_readlane_b32 s2, v255, 29
	v_writelane_b32 v254, s4, 26
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[9:10], off, off offset:372
	scratch_load_b64 v[10:11], off, off offset:380
	scratch_load_b64 v[11:12], off, off offset:388
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s2, s4, s2
	v_readlane_b32 s4, v254, 1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x14                           ; 160-byte Folded Reload
	scratch_load_b64 v[12:13], off, off offset:320
	scratch_load_b64 v[13:14], off, off offset:396
	scratch_load_b64 v[14:15], off, off offset:404
	scratch_load_b64 v[15:16], off, off offset:412
	scratch_load_b32 v16, off, off offset:328
	scratch_load_b64 v[17:18], off, off offset:420
	scratch_load_b64 v[18:19], off, off offset:428
	scratch_load_b64 v[19:20], off, off offset:436
	scratch_load_b32 v2, off, off offset:336
	scratch_load_b64 v[20:21], off, off offset:444
	scratch_load_b64 v[21:22], off, off offset:452
	scratch_load_b64 v[22:23], off, off offset:460
	scratch_load_b64 v[23:24], off, off offset:476
	scratch_load_b64 v[24:25], off, off offset:492
	scratch_load_b64 v[25:26], off, off offset:468
	scratch_load_b64 v[26:27], off, off offset:484
	scratch_load_b64 v[27:28], off, off offset:500
	scratch_load_b64 v[28:29], off, off offset:508
	scratch_load_b64 v[29:30], off, off offset:516
	scratch_load_b64 v[30:31], off, off offset:524
	scratch_load_b64 v[31:32], off, off offset:532
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(30)
	v_or_b32_e32 v0, vcc_hi, v0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(29)
	v_add_lshl_u32 v3, s2, v3, 1
	s_waitcnt vmcnt(28)
	v_add_lshl_u32 v4, s2, v4, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s58, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(28)
	v_add_lshl_u32 v5, s2, v5, 1
	s_waitcnt vmcnt(25)
	v_add_lshl_u32 v8, s2, v8, 1
	v_add_lshl_u32 v6, s2, v6, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s58
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v7, s2, v7, 1
	s_waitcnt vmcnt(24)
	v_add_lshl_u32 v9, s2, v9, 1
	s_waitcnt vmcnt(23)
	v_add_lshl_u32 v10, s2, v10, 1
	s_waitcnt vmcnt(22)
	v_add_lshl_u32 v11, s2, v11, 1
	s_waitcnt vmcnt(21)
	v_add_lshl_u32 v12, s2, v12, 1
	s_waitcnt vmcnt(20)
	v_add_lshl_u32 v13, s2, v13, 1
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v14, s2, v14, 1
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v15, s2, v15, 1
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v16, s2, v16, 1
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v17, s2, v17, 1
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v18, s2, v18, 1
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v19, s2, v19, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v2, s2, v2, 1
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v20, s2, v20, 1
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v21, s2, v21, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v22, s2, v22, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v23, s2, v23, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v24, s2, v24, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v25, s2, v25, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v26, s2, v26, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v27, s2, v27, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v28, s2, v28, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v29, s2, v29, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v30, s2, v30, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v31, s2, v31, 1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s59, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s60, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s61, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s62, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s63, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s64, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s57, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s57, s4, s57
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v7, 0x80000000, v7, s57
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s56, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s56, s4, s56
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v8, 0x80000000, v8, s56
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s55, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s55, s4, s55
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s55
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s54, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s54, s4, s54
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v10, 0x80000000, v10, s54
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s53, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s53, s4, s53
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v11, 0x80000000, v11, s53
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s52, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s52, s4, s52
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v12, 0x80000000, v12, s52
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s51, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s51, s4, s51
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v13, 0x80000000, v13, s51
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s50, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s50, s4, s50
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v14, 0x80000000, v14, s50
	s_clause 0x5
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	buffer_load_u16 v13, v13, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s49, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s49, s4, s49
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v15, 0x80000000, v15, s49
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s48, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s48, s4, s48
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v16, 0x80000000, v16, s48
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s47, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s47, s4, s47
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s47
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s46, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s46, s4, s46
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s46
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s45, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s45, s4, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v19, 0x80000000, v19, s45
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s44, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s44, s4, s44
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v20, 0x80000000, v20, s44
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s43, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s43, s4, s43
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v21, 0x80000000, v21, s43
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s42, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s42, s4, s42
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v22, 0x80000000, v22, s42
	s_clause 0x5
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	buffer_load_u16 v18, v18, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s38, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s4, s38
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v25, 0x80000000, v25, s38
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s40, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s40, s4, s40
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v23, 0x80000000, v23, s40
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s37, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s37, s4, s37
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v26, 0x80000000, v26, s37
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s36, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s36, s4, s36
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v28, 0x80000000, v28, s36
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, s4, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s41, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s40, s4, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v24, 0x80000000, v24, s40
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s39, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s37, s4, s39
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v27, 0x80000000, v27, s37
	s_clause 0x3
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s3, s15, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s3, s4, s3
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	s_clause 0x1
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 26
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, vcc_hi, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s15, v0
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:304
	scratch_load_b32 v1, off, off offset:332
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	s_clause 0x5
	buffer_load_u16 v15, v15, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v0, s2, v0, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v1, s2, v1, 1
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s2, v255, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v0, 0x80000000, v0, s58
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s59
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s58
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s58
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s61
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v3, 0x80000000, v3, s58
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v4, 0x80000000, v4, s58
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s63
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v5, 0x80000000, v5, s58
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s58, s4, s64
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s4, v254, 17
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v6, 0x80000000, v6, s58
	s_clause 0x7
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s11, v254, 24
	v_readlane_b32 s5, v254, 18
	v_readlane_b32 s6, v254, 19
	v_readlane_b32 s7, v254, 20
	v_readlane_b32 s8, v254, 21
	v_readlane_b32 s9, v254, 22
	v_readlane_b32 s10, v254, 23
	v_mov_b32_e32 v104, s11
	v_dual_mov_b32 v100, s7 :: v_dual_mov_b32 v99, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v102, s9 :: v_dual_mov_b32 v101, s8
	v_dual_mov_b32 v103, s10 :: v_dual_mov_b32 v98, s5
	v_mov_b32_e32 v97, s4
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v222, v0
	s_waitcnt vmcnt(3)
	ds_store_b16 v222, v4 offset:1024
	ds_store_b16 v222, v8 offset:2048
	ds_store_b16 v222, v12 offset:3072
	ds_store_b16 v222, v16 offset:4096
	ds_store_b16 v222, v20 offset:5120
	ds_store_b16 v222, v23 offset:6144
	ds_store_b16 v222, v24 offset:7168
	ds_store_b16 v223, v1
	s_waitcnt vmcnt(2)
	ds_store_b16 v223, v5 offset:1024
	ds_store_b16 v223, v9 offset:2048
	ds_store_b16 v223, v13 offset:3072
	ds_store_b16 v223, v17 offset:4096
	ds_store_b16 v223, v21 offset:5120
	ds_store_b16 v223, v26 offset:6144
	ds_store_b16 v223, v27 offset:7168
	ds_store_b16 v224, v2
	s_waitcnt vmcnt(1)
	ds_store_b16 v224, v6 offset:1024
	ds_store_b16 v224, v10 offset:2048
	ds_store_b16 v224, v14 offset:3072
	ds_store_b16 v224, v18 offset:4096
	ds_store_b16 v224, v22 offset:5120
	ds_store_b16 v224, v28 offset:6144
	ds_store_b16 v224, v29 offset:7168
	ds_store_b16 v225, v3
	s_waitcnt vmcnt(0)
	ds_store_b16 v225, v7 offset:1024
	ds_store_b16 v225, v11 offset:2048
	ds_store_b16 v225, v15 offset:3072
	ds_store_b16 v225, v19 offset:4096
	ds_store_b16 v225, v25 offset:5120
	ds_store_b16 v225, v30 offset:6144
	ds_store_b16 v225, v31 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v0, off, off offset:680
	scratch_load_b32 v28, off, off offset:696
	scratch_load_b128 v[113:116], off, off offset:540
	scratch_load_b128 v[117:120], off, off offset:556
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, 0, v0
	s_waitcnt vmcnt(2)
	ds_load_b128 v[4:7], v28
	ds_load_b128 v[0:3], v24
	ds_load_b128 v[8:11], v24 offset:2048
	ds_load_b128 v[12:15], v28 offset:2048
	ds_load_b128 v[20:23], v28 offset:4096
	ds_load_b128 v[16:19], v24 offset:4096
	ds_load_b128 v[24:27], v24 offset:6144
	ds_load_b128 v[28:31], v28 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[0:7], v[113:120], v[97:104]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[8:15], v[113:120], v[97:104]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[16:23], v[113:120], v[97:104]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[24:31], v[113:120], v[97:104]
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v25, off, off offset:704
	scratch_load_b32 v24, off, off offset:700
	scratch_load_b128 v[16:19], off, off offset:572
	scratch_load_b128 v[20:23], off, off offset:588
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[0:3], v24
	ds_load_b128 v[8:11], v24 offset:2048
	ds_load_b128 v[12:15], v25 offset:2048
	ds_load_b128 v[4:7], v25
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[8:15], v[16:23], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[0:7], v[16:23], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[4:7], v25 offset:4096
	ds_load_b128 v[0:3], v24 offset:4096
	ds_load_b128 v[8:11], v24 offset:6144
	ds_load_b128 v[12:15], v25 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:712
	scratch_load_b32 v24, off, off offset:708
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[0:7], v[16:23], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[8:15], v[16:23], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:604
	scratch_load_b128 v[20:23], off, off offset:620
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[0:3], v24
	ds_load_b128 v[8:11], v24 offset:2048
	ds_load_b128 v[12:15], v25 offset:2048
	ds_load_b128 v[4:7], v25
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[8:15], v[16:23], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[0:7], v[16:23], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[4:7], v25 offset:4096
	ds_load_b128 v[0:3], v24 offset:4096
	ds_load_b128 v[8:11], v24 offset:6144
	ds_load_b128 v[12:15], v25 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:720
	scratch_load_b32 v24, off, off offset:716
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[0:7], v[16:23], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[8:15], v[16:23], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:636
	scratch_load_b128 v[20:23], off, off offset:652
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[0:3], v24
	ds_load_b128 v[8:11], v24 offset:2048
	ds_load_b128 v[12:15], v25 offset:2048
	ds_load_b128 v[4:7], v25
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[8:15], v[16:23], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[0:7], v[16:23], v[89:96]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[4:7], v25 offset:4096
	ds_load_b128 v[0:3], v24 offset:4096
	ds_load_b128 v[8:11], v24 offset:6144
	ds_load_b128 v[12:15], v25 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[0:7], v[16:23], v[73:80]
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:296
	scratch_load_b32 v1, off, off offset:668
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[8:15], v[16:23], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, vcc_hi, v0
	.loc	1 863 17                        ; attention.py:863:17
	s_waitcnt vmcnt(0)
	v_cmp_ne_u32_e32 vcc_lo, 1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s15, v0
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s11, s2, s1
	v_readlane_b32 s2, v255, 6
	s_and_b32 s102, s3, s1
	v_readlane_b32 s3, v255, 30
	s_and_b32 s7, s2, s1
	v_readlane_b32 s2, v255, 7
	s_and_b32 s18, s3, s1
	v_readlane_b32 s3, v254, 0
	s_and_b32 s96, s2, s1
	v_readlane_b32 s2, v255, 8
	s_and_b32 s103, s3, s1
	v_readlane_b32 s3, v255, 27
	s_and_b32 s97, s2, s1
	v_readlane_b32 s2, v255, 2
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 28
	s_and_b32 s27, s2, s1
	v_readlane_b32 s2, v255, 9
	s_and_b32 s8, s3, s1
	v_readlane_b32 s3, v255, 31
	s_and_b32 s25, s2, s1
	v_readlane_b32 s2, v255, 10
	s_and_b32 s4, s3, s1
	v_readlane_b32 s3, v254, 2
	s_and_b32 s34, s2, s1
	v_readlane_b32 s2, v255, 11
	s_and_b32 s30, s3, s1
	s_and_b32 s19, s2, s1
	v_readlane_b32 s2, v255, 3
	s_and_b32 s94, s2, s1
	v_readlane_b32 s2, v255, 12
	s_and_b32 s9, s2, s1
	v_readlane_b32 s2, v255, 13
	s_and_b32 s6, s2, s1
	v_readlane_b32 s2, v255, 14
	s_and_b32 s98, s2, s1
	v_readlane_b32 s2, v255, 4
	s_and_b32 s29, s2, s1
	v_readlane_b32 s2, v255, 15
	s_and_b32 s26, s2, s1
	v_readlane_b32 s2, v255, 16
	s_and_b32 s35, s2, s1
	v_readlane_b32 s2, v255, 17
	s_and_b32 s33, s2, s1
	v_readlane_b32 s2, v255, 5
	s_and_b32 s95, s2, s1
	v_readlane_b32 s2, v255, 18
	s_and_b32 s31, s2, s1
	v_readlane_b32 s2, v255, 19
	s_and_b32 s99, s2, s1
	v_readlane_b32 s2, v255, 20
	s_and_b32 s101, s2, s1
	v_readlane_b32 s2, v255, 21
	s_and_b32 s10, s2, s1
	v_readlane_b32 s2, v255, 22
	s_and_b32 s5, s2, s1
	v_readlane_b32 s2, v255, 23
	s_and_b32 s104, s2, s1
	v_readlane_b32 s2, v255, 24
	s_and_b32 s28, s2, s1
	v_readlane_b32 s2, v255, 25
	s_and_b32 s2, s2, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v1, off, off offset:1052 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v1
	scratch_load_b32 v1, off, off offset:1056 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s65, vcc_lo, s11
	s_and_not1_b32 s11, s11, exec_lo
	s_and_b32 s65, s65, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s11, s11, s65
	s_and_not1_b32 s65, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v0, v1
	scratch_load_b32 v1, off, off offset:1060 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s7
	s_and_not1_b32 s7, s7, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s7, s7, s1
	s_and_not1_b32 s1, s96, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v1
	scratch_load_b32 v1, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v0, v1
	scratch_load_b32 v1, off, off offset:1068 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s36, s36, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, s36, exec_lo
	s_or_b32 s97, s65, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v0, v1
	scratch_load_b32 v1, off, off offset:1072 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s37, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s37, exec_lo
	s_or_b32 s27, s1, s3
	s_and_not1_b32 s1, s34, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v0, v1
	scratch_load_b32 v1, off, off offset:1076 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s38, s25
	s_and_not1_b32 s25, s25, exec_lo
	s_and_b32 s36, s38, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s25, s25, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v0, v1
	scratch_load_b32 v1, off, off offset:1080 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s39, s34
	s_and_b32 s3, s39, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s34, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v0, v1
	scratch_load_b32 v1, off, off offset:1084 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s40, s40, s19
	s_and_not1_b32 s19, s19, exec_lo
	s_and_b32 s36, s40, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s19, s19, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v0, v1
	scratch_load_b32 v1, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s41, s94
	s_and_b32 s3, s41, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s1, s3
	s_and_not1_b32 s1, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v0, v1
	scratch_load_b32 v1, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s42, s42, s9
	s_and_not1_b32 s9, s9, exec_lo
	s_and_b32 s36, s42, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s9, s9, s36
	s_and_not1_b32 s36, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v0, v1
	scratch_load_b32 v1, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s43, s43, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s43, exec_lo
	s_or_b32 s6, s1, s3
	s_and_not1_b32 s1, s29, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v0, v1
	scratch_load_b32 v1, off, off offset:1100 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s44, s44, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s44, exec_lo
	s_or_b32 s98, s36, s37
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v0, v1
	scratch_load_b32 v1, off, off offset:1104 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s45, s45, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s45, exec_lo
	s_or_b32 s29, s1, s3
	s_and_not1_b32 s1, s35, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v0, v1
	scratch_load_b32 v1, off, off offset:1108 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s46, s46, s26
	s_and_not1_b32 s26, s26, exec_lo
	s_and_b32 s36, s46, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s26, s26, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v0, v1
	scratch_load_b32 v1, off, off offset:1112 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s47, s47, s35
	s_and_b32 s3, s47, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s35, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v0, v1
	scratch_load_b32 v1, off, off offset:1116 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s48, s48, s33
	s_and_not1_b32 s33, s33, exec_lo
	s_and_b32 s36, s48, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s33, s33, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v0, v1
	scratch_load_b32 v1, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s49, s49, s95
	s_and_b32 s3, s49, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v0, v1
	scratch_load_b32 v1, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s50, s50, s31
	s_and_not1_b32 s31, s31, exec_lo
	s_and_b32 s36, s50, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s31, s31, s36
	s_and_not1_b32 s36, s101, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v0, v1
	scratch_load_b32 v1, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s51, s51, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s51, exec_lo
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v0, v1
	scratch_load_b32 v1, off, off offset:1132 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s52, s52, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s52, exec_lo
	s_or_b32 s101, s36, s37
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v0, v1
	scratch_load_b32 v1, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s53, s53, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s53, exec_lo
	s_or_b32 s10, s1, s3
	s_and_not1_b32 s1, s104, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v0, v1
	scratch_load_b32 v1, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s54, s54, s5
	s_and_not1_b32 s5, s5, exec_lo
	s_and_b32 s36, s54, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s5, s5, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v0, v1
	scratch_load_b32 v1, off, off offset:1144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s55, s55, s104
	s_and_b32 s3, s55, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s104, s1, s3
	s_and_not1_b32 s1, s2, exec_lo
	s_and_not1_b32 s3, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v0, v1
	scratch_load_b32 v1, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s56, s56, s28
	s_and_not1_b32 s28, s28, exec_lo
	s_and_b32 s36, s56, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s28, s28, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v0, v1
	scratch_load_b32 v1, off, off offset:1152 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s57, s57, s2
	s_and_b32 s2, s57, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s2, s1, s2
	s_and_not1_b32 s1, s18, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v0, v1
	scratch_load_b32 v1, off, off offset:1156 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s58, s58, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, s58, exec_lo
	s_or_b32 s102, s3, s36
	s_and_not1_b32 s36, s103, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v0, v1
	scratch_load_b32 v1, off, off offset:1160 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s59, s59, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s59, exec_lo
	s_or_b32 s18, s1, s3
	s_and_not1_b32 s1, s100, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v0, v1
	scratch_load_b32 v1, off, off offset:1164 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s60, s60, s103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s60, exec_lo
	s_or_b32 s103, s36, s37
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v0, v1
	scratch_load_b32 v1, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s61, s61, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s61, exec_lo
	s_or_b32 s100, s1, s3
	s_and_not1_b32 s1, s4, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v0, v1
	scratch_load_b32 v1, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s62, s62, s8
	s_and_not1_b32 s8, s8, exec_lo
	s_and_b32 s36, s62, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s8, s8, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v0, v1
	scratch_load_b32 v1, off, off offset:1176 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s63, s63, s4
	s_and_b32 s3, s63, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s4, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v0, v1
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s64, s64, s30
	s_and_not1_b32 s30, s30, exec_lo
	s_and_b32 s36, s64, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s30, s30, s36
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v1, off, off offset:1436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v0, v1
	scratch_load_b32 v1, off, off offset:1440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v0, v1
	scratch_load_b32 v1, off, off offset:1444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v0, v1
	scratch_load_b32 v1, off, off offset:1448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s36, v0, v1
	scratch_load_b32 v1, off, off offset:1452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s37, v0, v1
	scratch_load_b32 v1, off, off offset:1456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s38, v0, v1
	scratch_load_b32 v1, off, off offset:1460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s39, v0, v1
	scratch_load_b32 v1, off, off offset:1464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s40, v0, v1
	scratch_load_b32 v1, off, off offset:1468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s41, v0, v1
	scratch_load_b32 v1, off, off offset:1472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s42, v0, v1
	scratch_load_b32 v1, off, off offset:1476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s43, v0, v1
	scratch_load_b32 v1, off, off offset:1480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s44, v0, v1
	scratch_load_b32 v1, off, off offset:1484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s45, v0, v1
	scratch_load_b32 v1, off, off offset:1488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s46, v0, v1
	scratch_load_b32 v1, off, off offset:1492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s47, v0, v1
	scratch_load_b32 v1, off, off offset:1496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s48, v0, v1
	scratch_load_b32 v1, off, off offset:1500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s49, v0, v1
	scratch_load_b32 v1, off, off offset:1504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s50, v0, v1
	scratch_load_b32 v1, off, off offset:1508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s51, v0, v1
	scratch_load_b32 v1, off, off offset:1512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s52, v0, v1
	scratch_load_b32 v1, off, off offset:1516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s53, v0, v1
	scratch_load_b32 v1, off, off offset:1520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s54, v0, v1
	scratch_load_b32 v1, off, off offset:1524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s55, v0, v1
	scratch_load_b32 v1, off, off offset:1528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s56, v0, v1
	scratch_load_b32 v1, off, off offset:1532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s57, v0, v1
	scratch_load_b32 v1, off, off offset:1536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s58, v0, v1
	scratch_load_b32 v1, off, off offset:1540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s59, v0, v1
	scratch_load_b32 v1, off, off offset:1544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s60, v0, v1
	scratch_load_b32 v1, off, off offset:1548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s61, v0, v1
	scratch_load_b32 v1, off, off offset:1552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s62, v0, v1
	scratch_load_b32 v1, off, off offset:1556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s63, v0, v1
	scratch_load_b32 v1, off, off offset:1560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s64, v0, v1
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v1, off, off offset:1564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v0, v1
	scratch_load_b32 v1, off, off offset:1568 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s65, vcc_lo, s65
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s65, s65, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v0, v1
	scratch_load_b32 v1, off, off offset:1572 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s66, s1, s66
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s66, s66, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v0, v1
	scratch_load_b32 v1, off, off offset:1576 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s67, s3, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s67, s67, s96
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v0, v1
	scratch_load_b32 v1, off, off offset:1580 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, s36, s68
	s_and_b32 s36, s36, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, s36, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v0, v1
	scratch_load_b32 v1, off, off offset:1584 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s37, s69
	s_and_b32 s37, s37, s27
	s_and_not1_b32 s27, s27, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v0, v1
	scratch_load_b32 v1, off, off offset:1588 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s38, s70
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s38, s38, s25
	s_and_not1_b32 s25, s25, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v0, v1
	scratch_load_b32 v1, off, off offset:1592 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s39, s71
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s39, s39, s34
	s_and_not1_b32 s34, s34, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v0, v1
	scratch_load_b32 v1, off, off offset:1596 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s40, s72
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s40, s40, s19
	s_and_not1_b32 s19, s19, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v0, v1
	scratch_load_b32 v1, off, off offset:1600 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s41, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s41, s41, s94
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v0, v1
	scratch_load_b32 v1, off, off offset:1604 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s42, s74
	s_and_b32 s42, s42, s9
	s_and_not1_b32 s9, s9, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v0, v1
	scratch_load_b32 v1, off, off offset:1608 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s43, s75
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s43, s43, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v0, v1
	scratch_load_b32 v1, off, off offset:1612 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s44, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s44, s44, s98
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v0, v1
	scratch_load_b32 v1, off, off offset:1616 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s45, s45, s77
	s_and_b32 s45, s45, s29
	s_and_not1_b32 s29, s29, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v0, v1
	scratch_load_b32 v1, off, off offset:1620 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s46, s46, s78
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s46, s46, s26
	s_and_not1_b32 s26, s26, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v0, v1
	scratch_load_b32 v1, off, off offset:1624 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s47, s47, s79
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s47, s47, s35
	s_and_not1_b32 s35, s35, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v0, v1
	scratch_load_b32 v1, off, off offset:1628 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s48, s48, s80
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s48, s48, s33
	s_and_not1_b32 s33, s33, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v0, v1
	scratch_load_b32 v1, off, off offset:1632 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s49, s49, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s49, s49, s95
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v0, v1
	scratch_load_b32 v1, off, off offset:1636 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s50, s50, s82
	s_and_b32 s50, s50, s31
	s_and_not1_b32 s31, s31, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v0, v1
	scratch_load_b32 v1, off, off offset:1640 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s51, s51, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s51, s51, s99
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v0, v1
	scratch_load_b32 v1, off, off offset:1644 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s52, s52, s84
	s_and_b32 s52, s52, s101
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v0, v1
	scratch_load_b32 v1, off, off offset:1648 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s53, s53, s85
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s53, s53, s10
	s_and_not1_b32 s10, s10, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v0, v1
	scratch_load_b32 v1, off, off offset:1652 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s54, s54, s86
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s54, s54, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v0, v1
	scratch_load_b32 v1, off, off offset:1656 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s55, s55, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s55, s55, s104
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v0, v1
	scratch_load_b32 v1, off, off offset:1660 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s56, s56, s88
	s_and_b32 s56, s56, s28
	s_and_not1_b32 s28, s28, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v0, v1
	scratch_load_b32 v1, off, off offset:1664 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s57, s57, s89
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s57, s57, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v0, v1
	scratch_load_b32 v1, off, off offset:1688 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s58, s58, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s58, s58, s102
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v0, v1
	scratch_load_b32 v1, off, off offset:1684 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s59, s59, s91
	s_and_b32 s59, s59, s18
	s_and_not1_b32 s18, s18, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v0, v1
	scratch_load_b32 v1, off, off offset:1680 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s60, s60, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s60, s60, s103
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v0, v1
	scratch_load_b32 v1, off, off offset:1676 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s61, s61, s93
	s_and_b32 s61, s61, s100
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v1
	scratch_load_b32 v1, off, off offset:1672 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s62, s62, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s62, s62, s8
	s_and_not1_b32 s8, s8, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v0, v1
	scratch_load_b32 v1, off, off offset:1668 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s63, s1
	s_and_b32 s63, s65, exec_lo
	s_and_not1_b32 s65, s97, exec_lo
	s_and_b32 s1, s1, s4
	s_or_b32 s97, s65, s36
	s_and_b32 s36, s37, exec_lo
	s_and_b32 s37, s38, exec_lo
	s_or_b32 s27, s27, s36
	s_or_b32 s25, s25, s37
	s_and_b32 s36, s39, exec_lo
	s_and_b32 s37, s40, exec_lo
	s_or_b32 s34, s34, s36
	s_or_b32 s19, s19, s37
	s_and_not1_b32 s36, s94, exec_lo
	s_and_b32 s37, s41, exec_lo
	s_and_b32 s38, s42, exec_lo
	s_or_b32 s94, s36, s37
	s_or_b32 s9, s9, s38
	s_and_b32 s36, s43, exec_lo
	s_and_not1_b32 s37, s98, exec_lo
	s_and_b32 s38, s44, exec_lo
	s_or_b32 s6, s6, s36
	s_or_b32 s98, s37, s38
	s_and_b32 s36, s45, exec_lo
	s_and_b32 s37, s46, exec_lo
	s_or_b32 s29, s29, s36
	s_or_b32 s26, s26, s37
	s_and_b32 s36, s47, exec_lo
	s_and_b32 s37, s48, exec_lo
	s_or_b32 s35, s35, s36
	s_or_b32 s33, s33, s37
	s_and_not1_b32 s36, s95, exec_lo
	s_and_b32 s37, s49, exec_lo
	s_and_b32 s38, s50, exec_lo
	s_or_b32 s95, s36, s37
	s_and_not1_b32 s36, s99, exec_lo
	s_and_b32 s37, s51, exec_lo
	s_or_b32 s31, s31, s38
	s_and_not1_b32 s38, s101, exec_lo
	s_and_b32 s39, s52, exec_lo
	s_or_b32 s99, s36, s37
	s_and_b32 s36, s53, exec_lo
	s_and_b32 s37, s54, exec_lo
	s_or_b32 s101, s38, s39
	s_or_b32 s10, s10, s36
	s_or_b32 s5, s5, s37
	s_and_not1_b32 s36, s104, exec_lo
	s_and_b32 s37, s55, exec_lo
	s_and_b32 s38, s56, exec_lo
	s_or_b32 s104, s36, s37
	s_or_b32 s28, s28, s38
	s_and_b32 s36, s57, exec_lo
	s_and_not1_b32 s37, s102, exec_lo
	s_and_b32 s38, s58, exec_lo
	s_or_b32 s2, s2, s36
	s_or_b32 s102, s37, s38
	s_and_b32 s36, s59, exec_lo
	s_and_not1_b32 s37, s103, exec_lo
	s_and_b32 s38, s60, exec_lo
	s_or_b32 s11, s11, s63
	s_and_not1_b32 s63, s96, exec_lo
	s_or_b32 s18, s18, s36
	s_or_b32 s103, s37, s38
	s_and_not1_b32 s36, s100, exec_lo
	s_and_b32 s37, s61, exec_lo
	s_and_b32 s38, s62, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s100, s36, s37
	s_or_b32 s8, s8, s38
	s_or_b32 s4, s4, s1
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s64, s3
	s_and_b32 s64, s66, exec_lo
	s_and_b32 s3, s3, s30
	s_or_b32 s7, s7, s64
	s_and_b32 s64, s67, exec_lo
	s_and_not1_b32 s30, s30, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s96, s63, s64
	s_or_b32 s30, s30, s3
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v98.h, 0
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	v_readlane_b32 s1, v254, 11
	v_readlane_b32 s3, v254, 12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v101.l, v98.h
	s_mul_i32 s1, vcc_hi, s1
	s_add_i32 s1, s3, s1
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s11
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1428 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s12, v0
	v_add_co_ci_u32_e64 v1, null, s13, v1, vcc_lo
	global_load_d16_u8 v101, v[0:1], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s7
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1180 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s12, v0
	v_add_co_ci_u32_e64 v1, null, s13, v1, vcc_lo
	global_load_d16_hi_u8 v98, v[0:1], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v97.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.l, v97.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s96
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1188 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s12, v0
	v_add_co_ci_u32_e64 v1, null, s13, v1, vcc_lo
	global_load_d16_u8 v99, v[0:1], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s97
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1196 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s12, v0
	v_add_co_ci_u32_e64 v1, null, s13, v1, vcc_lo
	global_load_d16_hi_u8 v97, v[0:1], off
.LBB0_22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v0.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v98.l, v0.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s27
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1204 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v98, v[1:2], off
.LBB0_24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s25
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[0:1], off, off offset:1212 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v0, vcc_lo, s12, v0
	v_add_co_ci_u32_e64 v1, null, s13, v1, vcc_lo
	global_load_d16_hi_u8 v0, v[0:1], off
.LBB0_26:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v0.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v97.l, v0.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s34
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1220 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v97, v[1:2], off
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s19
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1228 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v0, v[1:2], off
.LBB0_30:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v102.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v105.h, v102.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s94
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1236 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v105, v[1:2], off
.LBB0_32:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1244 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v102, v[1:2], off
.LBB0_34:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v101.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v103.l, v101.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s6
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1252 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v103, v[1:2], off
.LBB0_36:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s98
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1260 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v101, v[1:2], off
.LBB0_38:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v100.l, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v102.l, v100.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s29
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1268 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v102, v[1:2], off
.LBB0_40:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s26
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1276 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v100, v[1:2], off
.LBB0_42:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v99.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v100.h, v99.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s35
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1284 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v100, v[1:2], off
.LBB0_44:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s33
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1292 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v99, v[1:2], off
.LBB0_46:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v106.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v108.h, v106.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s95
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1300 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v108, v[1:2], off
.LBB0_48:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s31
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1308 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v106, v[1:2], off
.LBB0_50:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v105.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v107.l, v105.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s99
	s_cbranch_execz .LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1316 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v107, v[1:2], off
.LBB0_52:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s101
	s_cbranch_execz .LBB0_54
; %bb.53:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1324 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v105, v[1:2], off
.LBB0_54:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v104.l, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v106.l, v104.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s10
	s_cbranch_execz .LBB0_56
; %bb.55:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1332 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v106, v[1:2], off
.LBB0_56:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s5
	s_cbranch_execz .LBB0_58
; %bb.57:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1340 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v104, v[1:2], off
.LBB0_58:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v103.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v104.h, v103.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s104
	s_cbranch_execz .LBB0_60
; %bb.59:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1348 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v104, v[1:2], off
.LBB0_60:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s28
	s_cbranch_execz .LBB0_62
; %bb.61:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1356 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v103, v[1:2], off
.LBB0_62:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v110.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v111.h, v110.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s2
	s_cbranch_execz .LBB0_64
; %bb.63:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1364 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v111, v[1:2], off
.LBB0_64:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s102
	s_cbranch_execz .LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1372 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v110, v[1:2], off
.LBB0_66:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v109.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v111.l, v109.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s18
	s_cbranch_execz .LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1380 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v111, v[1:2], off
.LBB0_68:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s103
	s_cbranch_execz .LBB0_70
; %bb.69:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1388 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v109, v[1:2], off
.LBB0_70:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v108.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v110.l, v108.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s100
	s_cbranch_execz .LBB0_72
; %bb.71:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1396 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v110, v[1:2], off
.LBB0_72:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_74
; %bb.73:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1404 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v108, v[1:2], off
.LBB0_74:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v107.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v109.l, v107.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s4
	s_cbranch_execz .LBB0_76
; %bb.75:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1412 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_u8 v109, v[1:2], off
.LBB0_76:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s30
	s_cbranch_execz .LBB0_9
; %bb.77:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[1:2], off, off offset:1420 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v2, 31, v1
	v_add_co_u32 v1, vcc_lo, s12, v1
	v_add_co_ci_u32_e64 v2, null, s13, v2, vcc_lo
	global_load_d16_hi_u8 v107, v[1:2], off
	s_branch .LBB0_9
.LBB0_78:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v103, off, off offset:1692
	scratch_load_b32 v104, off, off offset:1696
	scratch_load_b32 v105, off, off offset:1700
	scratch_load_b32 v106, off, off offset:1704
	scratch_load_b32 v109, off, off offset:1716
	scratch_load_b32 v101, off, off offset:1708
	scratch_load_b32 v102, off, off offset:1712
	v_readlane_b32 s16, v254, 8
	v_readlane_b32 s20, v254, 10
.LBB0_79:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 0x80, v102
	v_and_b32_e32 v2, 28, v101
	v_lshrrev_b32_e32 v3, 1, v106
	v_add_nc_u32_e32 v0, 0, v106
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, 0, v109, v1
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[69:72] offset:16
	ds_store_b128 v0, v[81:84] offset:128
	ds_store_b128 v0, v[85:88] offset:144
	ds_store_b128 v0, v[77:80] offset:32
	ds_store_b128 v0, v[93:96] offset:48
	v_add3_u32 v1, v1, v3, v2
	ds_store_b128 v0, v[73:76] offset:160
	ds_store_b128 v0, v[89:92] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v105
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v65, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v24, 1, v103
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, v0, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 55, v24
	v_or_b32_e32 v1, 54, v24
	v_or_b32_e32 v2, 53, v24
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v28, s20, v32
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v3, 52, v24
	v_or_b32_e32 v4, 51, v24
	v_or_b32_e32 v5, 50, v24
	v_or_b32_e32 v6, 49, v24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s14, v28
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v7, 48, v24
	v_or_b32_e32 v8, 39, v24
	v_or_b32_e32 v9, 38, v24
	v_or_b32_e32 v10, 37, v24
	v_or_b32_e32 v11, 36, v24
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
	v_fma_f32 v25, -v66, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v68, v69, 1.0
	v_div_scale_f32 v80, null, v65, v65, v62
	v_div_scale_f32 v82, null, v65, v65, v50
	v_fmac_f32_e32 v67, v25, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v69, v29, v69
	v_fma_f32 v78, -v72, v73, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v74, v76, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v12, 35, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v71, v70, v67
	v_mul_f32_e32 v77, v75, v69
	v_fmac_f32_e32 v73, v78, v73
	v_div_scale_f32 v78, s2, v59, v65, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v30, -v66, v71, v70
	v_fmac_f32_e32 v76, v79, v76
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v13, 34, v24
	v_or_b32_e32 v14, 33, v24
	v_or_b32_e32 v15, 32, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v30, v67
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v16, 23, v24
	v_or_b32_e32 v17, 22, v24
	v_or_b32_e32 v18, 21, v24
	v_or_b32_e32 v19, 20, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v66, v71, v70
	v_fma_f32 v70, -v68, v77, v75
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v20, 19, v24
	v_or_b32_e32 v21, 18, v24
	v_or_b32_e32 v22, 17, v24
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
	v_div_scale_f32 v76, null, v65, v65, v49
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
	v_div_scale_f32 v78, s2, v49, v65, v49
	v_fmac_f32_e32 v70, v80, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v68, v65, v62
	v_fma_f32 v67, -v77, v66, v67
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v74, v81, 1.0
	v_mul_f32_e32 v68, v78, v70
	v_div_scale_f32 v77, null, v65, v65, v52
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
	v_div_scale_f32 v76, s4, v51, v65, v51
	v_fma_f32 v73, -v74, v75, v79
	v_fma_f32 v69, -v82, v71, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v78, -v77, v72, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v59, 0, v59, s1
	v_cndmask_b32_e64 v60, 0, v60, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v69, v71
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v61, 0, v61, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v72, v78, v72 :: v_dual_fmac_f32 v75, v73, v81
	v_div_scale_f32 v73, null, v65, v65, v51
	v_div_scale_f32 v78, null, v65, v65, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v74, v75, v79
	v_rcp_f32_e32 v69, v73
	v_div_scale_f32 v74, s3, v50, v65, v50
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v81, v75
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v75, v74, v71
	v_div_fmas_f32 v66, v66, v70, v68
	v_div_scale_f32 v70, s2, v52, v65, v52
	v_fma_f32 v79, -v73, v69, 1.0
	v_div_fixup_f32 v64, v67, v65, v64
	v_fma_f32 v67, -v82, v75, v74
	v_rcp_f32_e32 v81, v78
	v_div_fixup_f32 v49, v66, v65, v49
	v_fmac_f32_e32 v69, v79, v69
	v_div_scale_f32 v79, null, v65, v65, v53
	v_dual_fmac_f32 v75, v67, v71 :: v_dual_mul_f32 v80, v70, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v76, v69
	v_rcp_f32_e32 v68, v79
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v66, -v82, v75, v74
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v74, -v73, v67, v76
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v58, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v71, v75
	v_fma_f32 v71, -v77, v80, v70
	v_fmac_f32_e32 v67, v74, v69
	v_fma_f32 v82, -v79, v68, 1.0
	v_div_scale_f32 v74, s3, v53, v65, v53
	v_fma_f32 v75, -v78, v81, 1.0
	v_div_fixup_f32 v50, v66, v65, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v68, v82, v68
	v_fma_f32 v66, -v73, v67, v76
	v_fmac_f32_e32 v80, v71, v72
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v73, s5, v54, v65, v54
	v_mul_f32_e32 v71, v74, v68
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v75, null, v65, v65, v55
	v_div_fmas_f32 v66, v66, v69, v67
	v_fma_f32 v67, -v77, v80, v70
	v_fma_f32 v69, -v79, v71, v74
	v_mul_f32_e32 v76, v73, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v51, v66, v65, v51
	v_div_fmas_f32 v67, v67, v72, v80
	v_fmac_f32_e32 v71, v69, v68
	v_fma_f32 v72, -v78, v76, v73
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v70, v75
	v_div_scale_f32 v77, null, v65, v65, v56
	v_fma_f32 v66, -v79, v71, v74
	v_fmac_f32_e32 v76, v72, v81
	v_div_scale_f32 v79, null, v65, v65, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v77
	v_div_fmas_f32 v66, v66, v68, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v68, -v78, v76, v73
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v80, -v75, v70, 1.0
	v_div_fixup_f32 v52, v67, v65, v52
	v_div_scale_f32 v67, s2, v55, v65, v55
	v_div_fmas_f32 v68, v68, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v80, v70
	v_fma_f32 v72, -v77, v69, 1.0
	v_div_scale_f32 v73, s3, v56, v65, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v54, v68, v65, v54
	v_rcp_f32_e32 v68, v79
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, null, v65, v65, v41
	v_div_fixup_f32 v53, v66, v65, v53
	v_div_scale_f32 v81, null, v65, v65, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v72
	v_mul_f32_e32 v78, v73, v69
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v80, -v79, v68, 1.0
	v_rcp_f32_e32 v83, v81
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v59, v59
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v66, -v77, v78, v73
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s36, v60, v60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v68, v80, v68 :: v_dual_mul_f32 v71, v67, v70
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v64, 0, v64, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s4, v41, v65, v41
	v_fma_f32 v76, -v75, v71, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v49, s1
	v_cndmask_b32_e64 v50, 0, v50, s1
	v_cndmask_b32_e64 v51, 0, v51, s1
	v_cndmask_b32_e64 v52, 0, v52, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v76, v70
	v_fma_f32 v76, -v72, v74, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v53, 0, v53, s1
	v_cndmask_b32_e64 v54, 0, v54, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v23, 16, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v43
	v_fmac_f32_e32 v74, v76, v74
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v25, 7, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v67, v67, v70, v71
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v70, -v77, v78, v73
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v73, s2, v42, v65, v42
	v_div_fixup_f32 v55, v67, v65, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v70, v69, v78
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v82, v73, v68
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v26, 6, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v77, -v75, v76, 1.0
	v_div_fixup_f32 v56, v69, v65, v56
	v_fma_f32 v69, -v81, v83, 1.0
	v_fma_f32 v70, -v79, v82, v73
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v55, 0, v55, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, s5, v43, v65, v43
	v_fmac_f32_e32 v83, v69, v83
	v_mul_f32_e32 v71, v66, v74
	v_fmac_f32_e32 v82, v70, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v77, v76
	v_div_scale_f32 v70, null, v65, v65, v45
	v_fma_f32 v80, -v72, v71, v66
	v_div_scale_f32 v69, s3, v44, v65, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v75, v78, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v56, 0, v56, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v71, v80, v74
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v27, 5, v24
	v_or_b32_e32 v28, 4, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	v_fma_f32 v66, -v72, v71, v66
	v_mul_f32_e32 v72, v69, v83
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v29, 3, v24
	v_or_b32_e32 v30, 2, v24
	v_or_b32_e32 v31, 1, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v66, v66, v74, v71
	v_fma_f32 v71, -v79, v82, v73
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v73, null, v65, v65, v46
	v_fma_f32 v74, -v70, v67, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v68, v71, v68, v82
	v_fma_f32 v71, -v75, v78, v77
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v75, v73
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s2, v45, v65, v45
	v_div_fmas_f32 v71, v71, v76, v78
	v_fma_f32 v76, -v81, v72, v69
	v_div_fixup_f32 v41, v66, v65, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v66, v74, v67
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v43, v71, v65, v43
	v_fmac_f32_e32 v72, v76, v83
	v_div_scale_f32 v71, null, v65, v65, v47
	v_fma_f32 v76, -v70, v66, v74
	v_div_fixup_f32 v42, v68, v65, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v81, v72, v69
	v_rcp_f32_e32 v77, v71
	v_fma_f32 v68, -v73, v75, 1.0
	v_fmac_f32_e32 v66, v76, v67
	v_div_scale_f32 v76, null, v65, v65, v48
	v_div_fmas_f32 v69, v69, v83, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v75, v68, v75
	v_div_scale_f32 v68, s4, v46, v65, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v44, v69, v65, v44
	v_fma_f32 v69, -v70, v66, v74
	v_fma_f32 v74, -v71, v77, 1.0
	v_rcp_f32_e32 v78, v76
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v41, s1
	v_cndmask_b32_e64 v42, 0, v42, s1
	v_cndmask_b32_e64 v43, 0, v43, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v77, v74, v77
	v_div_fmas_f32 v66, v69, v67, v66
	v_div_scale_f32 v69, s2, v47, v65, v47
	v_mul_f32_e32 v72, v68, v75
	v_div_scale_f32 v67, null, v65, v65, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v45, v66, v65, v45
	v_fma_f32 v66, -v76, v78, 1.0
	v_fma_f32 v70, -v73, v72, v68
	v_div_scale_f32 v74, null, v65, v65, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v78, v66, v78
	v_fmac_f32_e32 v72, v70, v75
	v_rcp_f32_e32 v70, v67
	v_div_scale_f32 v66, s3, v48, v65, v48
	v_rcp_f32_e32 v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v68, -v73, v72, v68
	v_mul_f32_e32 v73, v69, v77
	v_div_scale_f32 v81, s4, v33, v65, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v44, s1
	v_cndmask_b32_e64 v45, 0, v45, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v67, v70, 1.0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v32, s16, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v82, -v74, v80, 1.0
	v_fmac_f32_e32 v70, v79, v70
	v_div_scale_f32 v79, null, v65, v65, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, s5, v34, v65, v34
	v_mul_f32_e32 v84, v81, v70
	v_div_fmas_f32 v68, v68, v75, v72
	v_fma_f32 v72, -v71, v73, v69
	v_mul_f32_e32 v75, v66, v78
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v83, v79
	v_div_fixup_f32 v46, v68, v65, v46
	v_fmac_f32_e32 v73, v72, v77
	v_fma_f32 v72, -v76, v75, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v46, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v68, -v71, v73, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v75, v72, v78
	v_fma_f32 v69, -v67, v84, v81
	v_mul_f32_e32 v71, v82, v80
	v_fma_f32 v72, -v79, v83, 1.0
	v_div_fmas_f32 v68, v68, v77, v73
	v_fma_f32 v66, -v76, v75, v66
	v_div_scale_f32 v73, null, v65, v65, v36
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v84, v69, v70
	v_div_fmas_f32 v66, v66, v78, v75
	v_rcp_f32_e32 v75, v73
	v_fma_f32 v69, -v74, v71, v82
	v_fmac_f32_e32 v83, v72, v83
	v_div_scale_f32 v72, s2, v35, v65, v35
	v_div_fixup_f32 v47, v68, v65, v47
	v_fma_f32 v67, -v67, v84, v81
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v48, v66, v65, v48
	v_div_scale_f32 v77, null, v65, v65, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v73, v75, 1.0
	v_div_fmas_f32 v67, v67, v70, v84
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v47, 0, v47, s1
	v_cndmask_b32_e64 v48, 0, v48, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v75, v68, v75
	v_fmac_f32_e32 v71, v69, v80
	v_mul_f32_e32 v69, v72, v83
	v_div_scale_f32 v68, null, v65, v65, v38
	v_div_fixup_f32 v33, v67, v65, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v71, v82
	v_fma_f32 v74, -v79, v69, v72
	v_div_scale_f32 v67, null, v65, v65, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v33, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v70, v70, v80, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v74, v83
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v34, v70, v65, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v79, v69, v72
	v_rcp_f32_e32 v72, v68
	v_div_scale_f32 v70, null, v65, v65, v39
	v_rcp_f32_e32 v79, v77
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v34, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v74, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v68, v72, 1.0
	v_fmac_f32_e32 v72, v78, v72
	v_div_fmas_f32 v66, v66, v83, v69
	v_rcp_f32_e32 v69, v67
	v_div_scale_f32 v71, vcc_lo, v36, v65, v36
	v_div_scale_f32 v78, s3, v38, v65, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v35, v66, v65, v35
	v_fma_f32 v81, -v70, v74, 1.0
	v_fma_f32 v83, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v78, v72
	v_fma_f32 v66, -v67, v69, 1.0
	v_mul_f32_e32 v76, v71, v75
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s4, v39, v65, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s2, v37, v65, v37
	v_fma_f32 v80, -v73, v76, v71
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s5, v40, v65, v40
	v_mul_f32_e32 v82, v66, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v80, v75 :: v_dual_mul_f32 v85, v81, v74
	v_mul_f32_e32 v86, v83, v79
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v35, s1
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
	v_fma_f32 v68, -v68, v84, v78
	v_div_fixup_f32 v36, v71, v65, v36
	v_div_fmas_f32 v66, v66, v69, v82
	v_fmac_f32_e32 v86, v67, v79
	v_fma_f32 v67, -v70, v85, v81
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v36, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v68, v68, v72, v84
	v_fma_f32 v69, -v77, v86, v83
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v37, v66, v65, v37
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v38, v68, v65, v38
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v66, v58, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v39, v67, v65, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v68, v59, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v40, v69, v65, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v57, 16, 1
	v_add3_u32 v66, v58, v66, 0x7fff
	v_add3_u32 v58, v59, v68, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v38, s1
	v_cndmask_b32_e64 v39, 0, v39, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v65, v57, v65, 0x7fff
	v_bfe_u32 v57, v60, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v66.h, s34
	v_cmp_o_f32_e64 s34, v62, v62
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v40, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v59.l, 0x7fff, v65.h, s33
	v_add3_u32 v57, v60, v57, 0x7fff
	v_bfe_u32 v60, v61, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s35
	v_bfe_u32 v58, v62, 16, 1
	v_bfe_u32 v65, v63, 16, 1
	v_cmp_o_f32_e64 s33, v61, v61
	v_add3_u32 v60, v61, v60, 0x7fff
	v_bfe_u32 v61, v64, 16, 1
	v_add3_u32 v58, v62, v58, 0x7fff
	v_add3_u32 v62, v63, v65, 0x7fff
	v_cmp_o_f32_e64 s35, v63, v63
	v_cndmask_b16 v58.l, 0x7fff, v60.h, s33
	v_bfe_u32 v60, v49, 16, 1
	v_add3_u32 v61, v64, v61, 0x7fff
	v_bfe_u32 v63, v51, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s35
	v_bfe_u32 v62, v50, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s36
	v_cmp_o_f32_e64 s36, v64, v64
	v_add3_u32 v60, v49, v60, 0x7fff
	v_cmp_o_f32_e64 s33, v49, v49
	v_bfe_u32 v49, v52, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s34
	v_add3_u32 v62, v50, v62, 0x7fff
	v_cmp_o_f32_e64 s34, v50, v50
	v_add3_u32 v50, v51, v63, 0x7fff
	v_cmp_o_f32_e64 s35, v51, v51
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s36
	v_add3_u32 v49, v52, v49, 0x7fff
	v_cmp_o_f32_e64 s36, v52, v52
	v_bfe_u32 v52, v53, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v60.h, s33
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s35
	v_bfe_u32 v50, v54, 16, 1
	v_bfe_u32 v60, v55, 16, 1
	v_add3_u32 v52, v53, v52, 0x7fff
	v_cmp_o_f32_e64 s33, v53, v53
	v_bfe_u32 v53, v56, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v62.h, s34
	v_add3_u32 v50, v54, v50, 0x7fff
	v_cmp_o_f32_e64 s34, v54, v54
	v_add3_u32 v54, v55, v60, 0x7fff
	v_cmp_o_f32_e64 s35, v55, v55
	v_cndmask_b16 v50.l, 0x7fff, v52.h, s33
	v_bfe_u32 v52, v41, 16, 1
	v_add3_u32 v53, v56, v53, 0x7fff
	v_bfe_u32 v55, v43, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s35
	v_bfe_u32 v54, v42, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s36
	v_cmp_o_f32_e64 s36, v56, v56
	v_add3_u32 v52, v41, v52, 0x7fff
	v_cmp_o_f32_e64 s33, v41, v41
	v_bfe_u32 v41, v44, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s34
	v_add3_u32 v54, v42, v54, 0x7fff
	v_cmp_o_f32_e64 s34, v42, v42
	v_add3_u32 v42, v43, v55, 0x7fff
	v_cmp_o_f32_e64 s35, v43, v43
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s36
	v_add3_u32 v41, v44, v41, 0x7fff
	v_cmp_o_f32_e64 s36, v44, v44
	v_bfe_u32 v44, v45, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v52.h, s33
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s35
	v_bfe_u32 v42, v46, 16, 1
	v_bfe_u32 v52, v47, 16, 1
	v_add3_u32 v44, v45, v44, 0x7fff
	v_cmp_o_f32_e64 s33, v45, v45
	v_bfe_u32 v45, v48, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v54.h, s34
	v_add3_u32 v42, v46, v42, 0x7fff
	v_cmp_o_f32_e64 s34, v46, v46
	v_add3_u32 v46, v47, v52, 0x7fff
	v_cmp_o_f32_e64 s35, v47, v47
	v_cndmask_b16 v42.l, 0x7fff, v44.h, s33
	v_bfe_u32 v44, v33, 16, 1
	v_add3_u32 v45, v48, v45, 0x7fff
	v_bfe_u32 v47, v35, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s35
	v_bfe_u32 v46, v34, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s36
	v_cmp_o_f32_e64 s36, v48, v48
	v_add3_u32 v44, v33, v44, 0x7fff
	v_cmp_o_f32_e64 s33, v33, v33
	v_bfe_u32 v33, v36, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s34
	v_add3_u32 v46, v34, v46, 0x7fff
	v_cmp_o_f32_e64 s34, v34, v34
	v_add3_u32 v34, v35, v47, 0x7fff
	v_cmp_o_f32_e64 s35, v35, v35
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s36
	v_add3_u32 v33, v36, v33, 0x7fff
	v_cmp_o_f32_e64 s36, v36, v36
	v_bfe_u32 v36, v37, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s35
	v_bfe_u32 v34, v38, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v44.h, s33
	v_cmp_o_f32_e64 s33, v37, v37
	v_add3_u32 v36, v37, v36, 0x7fff
	v_bfe_u32 v44, v39, 16, 1
	v_add3_u32 v34, v38, v34, 0x7fff
	v_mov_b32_e32 v48, 0x5410
	v_cndmask_b16 v35.h, 0x7fff, v46.h, s34
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s33
	v_cmp_eq_u32_e64 s33, 0, v103
	v_bfe_u32 v37, v40, 16, 1
	v_cmp_o_f32_e64 s34, v38, v38
	v_add3_u32 v38, v39, v44, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s36
	v_cndmask_b32_e64 v44, v50, v51, s33
	v_cndmask_b32_e64 v46, v51, v50, s33
	v_mov_b32_e32 v50, 0x7632
	v_cndmask_b32_e64 v51, v42, v43, s33
	v_cndmask_b32_e64 v42, v43, v42, s33
	v_cndmask_b32_e64 v43, 0x1054, v48, s33
	v_cmp_o_f32_e64 s35, v39, v39
	v_add3_u32 v37, v40, v37, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
	v_cndmask_b32_e64 v48, 0x3276, v50, s33
	v_lshl_or_b32 v43, v43, 8, v43
	v_readlane_b32 s5, v254, 7
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s34
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s35
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s36
	v_cndmask_b32_e64 v38, v59, v58, s33
	v_cndmask_b32_e64 v40, v57, v61, s33
	v_lshl_or_b32 v48, v48, 8, v48
	v_and_b32_e32 v43, 0x540054, v43
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, v32, s5
	s_mov_b32 s34, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v50, v45, v41, s33
	v_cndmask_b32_e64 v41, v41, v45, s33
	v_cndmask_b32_e64 v45, v34, v35, s33
	v_cndmask_b32_e64 v34, v35, v34, s33
	v_cndmask_b32_e64 v35, v36, v33, s33
	v_and_b32_e32 v48, 0x760076, v48
	v_cndmask_b32_e64 v33, v33, v36, s33
	v_permlanex16_b32 v36, v38, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v40, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v40, v43, 4, v43
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s5, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v37, v58, v59, s33
	v_cndmask_b32_e64 v47, v53, v49, s33
	v_cndmask_b32_e64 v49, v49, v53, s33
	v_lshl_or_b32 v43, v48, 4, v48
	v_and_b32_e32 v40, 0x5040504, v40
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v24, v32, v24, 1
	v_readlane_b32 s36, v254, 3
	v_readlane_b32 s37, v254, 4
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s31, s0, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v48, v49, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x7060706, v43
	v_perm_b32 v49, v36, v37, v40
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v24, 0x80000000, v24, s31
	v_readlane_b32 s38, v254, 5
	v_readlane_b32 s39, v254, 6
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s5, v31
	v_cmp_gt_i32_e64 s28, s5, v29
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s5, v30
	v_cmp_gt_i32_e64 s27, s5, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v67.h, 0
	v_cndmask_b32_e64 v39, v61, v57, s33
	v_permlanex16_b32 v46, v46, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v36, v37, v43
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v31, v32, v31, 1
	buffer_store_b16 v49, v24, s[36:39], 0 offen
	v_add_lshl_u32 v24, v32, v29, 1
	v_add_lshl_u32 v30, v32, v30, 1
	v_add_lshl_u32 v28, v32, v28, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s30, s0, s30
	s_and_b32 s28, s0, s28
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s5, v4
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s29, s0, s29
	s_and_b32 s27, s0, s27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_perm_b32 v37, v38, v39, v40
	v_perm_b32 v38, v38, v39, v43
	v_perm_b32 v39, v46, v44, v40
	v_perm_b32 v44, v46, v44, v43
	v_perm_b32 v46, v48, v47, v40
	v_perm_b32 v47, v48, v47, v43
	v_perm_b32 v48, v42, v51, v40
	v_perm_b32 v42, v42, v51, v43
	v_perm_b32 v51, v41, v50, v40
	v_perm_b32 v41, v41, v50, v43
	v_perm_b32 v50, v34, v45, v40
	v_perm_b32 v40, v33, v35, v40
	v_perm_b32 v33, v33, v35, v43
	v_mov_b16_e32 v67.l, v36.h
	v_mov_b16_e32 v35.l, v49.h
	v_mov_b16_e32 v35.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v31, 0x80000000, v31, s30
	v_cndmask_b32_e64 v24, 0x80000000, v24, s28
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s5, v3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v30, 0x80000000, v30, s29
	v_cndmask_b32_e64 v28, 0x80000000, v28, s27
	v_add_lshl_u32 v4, v32, v4, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s5, v27
	v_cmp_gt_i32_e64 s24, s5, v25
	v_cmp_gt_i32_e64 s22, s5, v22
	v_cmp_gt_i32_e64 s20, s5, v20
	v_cmp_gt_i32_e64 s18, s5, v18
	v_cmp_gt_i32_e64 s16, s5, v16
	v_cmp_gt_i32_e64 s14, s5, v14
	v_cmp_gt_i32_e64 s12, s5, v12
	v_cmp_gt_i32_e64 s9, s5, v10
	v_cmp_gt_i32_e64 s4, s5, v8
	v_cmp_gt_i32_e64 s2, s5, v6
	v_cmp_gt_i32_e64 s7, s5, v2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v3, v32, v3, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s5, v26
	v_cmp_gt_i32_e64 s23, s5, v23
	v_cmp_gt_i32_e64 s21, s5, v21
	v_cmp_gt_i32_e64 s19, s5, v19
	v_cmp_gt_i32_e64 s17, s5, v17
	v_cmp_gt_i32_e64 s15, s5, v15
	v_cmp_gt_i32_e64 s13, s5, v13
	v_cmp_gt_i32_e64 s10, s5, v11
	v_cmp_gt_i32_e64 s8, s5, v9
	v_cmp_gt_i32_e64 s3, s5, v7
	v_cmp_gt_i32_e64 s1, s5, v5
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s5, v1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_perm_b32 v34, v34, v45, v43
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v35, v31, s[36:39], 0 offen
	buffer_store_b16 v36, v30, s[36:39], 0 offen
	v_add_lshl_u32 v27, v32, v27, 1
	s_clause 0x1
	buffer_store_b16 v67, v24, s[36:39], 0 offen
	buffer_store_b16 v37, v28, s[36:39], 0 offen
	v_add_lshl_u32 v24, v32, v25, 1
	v_add_lshl_u32 v22, v32, v22, 1
	v_add_lshl_u32 v20, v32, v20, 1
	v_add_lshl_u32 v18, v32, v18, 1
	v_add_lshl_u32 v16, v32, v16, 1
	v_add_lshl_u32 v14, v32, v14, 1
	v_add_lshl_u32 v12, v32, v12, 1
	v_add_lshl_u32 v10, v32, v10, 1
	v_add_lshl_u32 v8, v32, v8, 1
	v_add_lshl_u32 v6, v32, v6, 1
	v_add_lshl_u32 v2, v32, v2, 1
	v_add_lshl_u32 v26, v32, v26, 1
	v_add_lshl_u32 v23, v32, v23, 1
	v_add_lshl_u32 v21, v32, v21, 1
	v_add_lshl_u32 v19, v32, v19, 1
	v_add_lshl_u32 v17, v32, v17, 1
	v_add_lshl_u32 v15, v32, v15, 1
	v_add_lshl_u32 v13, v32, v13, 1
	v_add_lshl_u32 v11, v32, v11, 1
	v_add_lshl_u32 v9, v32, v9, 1
	v_add_lshl_u32 v7, v32, v7, 1
	v_add_lshl_u32 v5, v32, v5, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s11
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s5, v0
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v1, v32, v1, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s26, s0, s26
	s_and_b32 s24, s0, s24
	s_and_b32 s22, s0, s22
	s_and_b32 s20, s0, s20
	s_and_b32 s18, s0, s18
	s_and_b32 s16, s0, s16
	s_and_b32 s14, s0, s14
	s_and_b32 s12, s0, s12
	s_and_b32 s9, s0, s9
	s_and_b32 s4, s0, s4
	s_and_b32 s2, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	s_and_b32 s25, s0, s25
	s_and_b32 s23, s0, s23
	s_and_b32 s21, s0, s21
	s_and_b32 s19, s0, s19
	s_and_b32 s17, s0, s17
	s_and_b32 s15, s0, s15
	s_and_b32 s13, s0, s13
	s_and_b32 s10, s0, s10
	s_and_b32 s8, s0, s8
	s_and_b32 s3, s0, s3
	s_and_b32 s1, s0, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v32, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v38.h
	v_mov_b16_e32 v43.h, v67.h
	v_mov_b16_e32 v45.l, v37.h
	v_mov_b16_e32 v45.h, v67.h
	v_mov_b16_e32 v52.l, v44.h
	v_mov_b16_e32 v52.h, v67.h
	v_mov_b16_e32 v53.l, v39.h
	v_mov_b16_e32 v53.h, v67.h
	v_mov_b16_e32 v54.l, v47.h
	v_mov_b16_e32 v54.h, v67.h
	v_mov_b16_e32 v55.l, v46.h
	v_mov_b16_e32 v55.h, v67.h
	v_mov_b16_e32 v56.l, v42.h
	v_mov_b16_e32 v56.h, v67.h
	v_mov_b16_e32 v57.l, v48.h
	v_mov_b16_e32 v57.h, v67.h
	v_mov_b16_e32 v58.l, v41.h
	v_mov_b16_e32 v58.h, v67.h
	v_mov_b16_e32 v59.l, v51.h
	v_mov_b16_e32 v59.h, v67.h
	v_mov_b16_e32 v60.l, v34.h
	v_mov_b16_e32 v60.h, v67.h
	v_mov_b16_e32 v61.l, v50.h
	v_mov_b16_e32 v61.h, v67.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s26
	v_cndmask_b32_e64 v24, 0x80000000, v24, s24
	v_cndmask_b32_e64 v22, 0x80000000, v22, s22
	v_cndmask_b32_e64 v20, 0x80000000, v20, s20
	v_cndmask_b32_e64 v18, 0x80000000, v18, s18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s16
	v_cndmask_b32_e64 v14, 0x80000000, v14, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s12
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s6
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s25
	v_cndmask_b32_e64 v23, 0x80000000, v23, s23
	v_cndmask_b32_e64 v21, 0x80000000, v21, s21
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	v_cndmask_b32_e64 v15, 0x80000000, v15, s15
	v_cndmask_b32_e64 v13, 0x80000000, v13, s13
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s8
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v63.l, v40.h
	v_mov_b16_e32 v63.h, v67.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v62.l, v33.h
	v_mov_b16_e32 v62.h, v67.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1a
	buffer_store_b16 v45, v27, s[36:39], 0 offen
	buffer_store_b16 v38, v26, s[36:39], 0 offen
	buffer_store_b16 v43, v24, s[36:39], 0 offen
	buffer_store_b16 v39, v23, s[36:39], 0 offen
	buffer_store_b16 v53, v22, s[36:39], 0 offen
	buffer_store_b16 v44, v21, s[36:39], 0 offen
	buffer_store_b16 v52, v20, s[36:39], 0 offen
	buffer_store_b16 v46, v19, s[36:39], 0 offen
	buffer_store_b16 v55, v18, s[36:39], 0 offen
	buffer_store_b16 v47, v17, s[36:39], 0 offen
	buffer_store_b16 v54, v16, s[36:39], 0 offen
	buffer_store_b16 v48, v15, s[36:39], 0 offen
	buffer_store_b16 v57, v14, s[36:39], 0 offen
	buffer_store_b16 v42, v13, s[36:39], 0 offen
	buffer_store_b16 v56, v12, s[36:39], 0 offen
	buffer_store_b16 v51, v11, s[36:39], 0 offen
	buffer_store_b16 v59, v10, s[36:39], 0 offen
	buffer_store_b16 v41, v9, s[36:39], 0 offen
	buffer_store_b16 v58, v8, s[36:39], 0 offen
	buffer_store_b16 v50, v7, s[36:39], 0 offen
	buffer_store_b16 v61, v6, s[36:39], 0 offen
	buffer_store_b16 v34, v5, s[36:39], 0 offen
	buffer_store_b16 v60, v4, s[36:39], 0 offen
	buffer_store_b16 v40, v3, s[36:39], 0 offen
	buffer_store_b16 v63, v2, s[36:39], 0 offen
	buffer_store_b16 v33, v1, s[36:39], 0 offen
	buffer_store_b16 v62, v0, s[36:39], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp713:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1724
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1724
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46924
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1724
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
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
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
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
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
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
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
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
	.quad	.Ltmp683-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1724
    .sgpr_count:     107
    .sgpr_spill_count: 59
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 440
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
