	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
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
	scratch_store_b32 off, v2, off offset:152
	scratch_store_b32 off, v3, off offset:156
	scratch_store_b32 off, v6, off offset:160
	scratch_store_b32 off, v57, off offset:140
	v_or_b32_e32 v12, 12, v57
	v_or_b32_e32 v13, 14, v57
	v_or_b32_e32 v20, 18, v57
	v_or_b32_e32 v21, 20, v57
	s_waitcnt lgkmcnt(0)
	s_and_b32 s6, 1, s8
	s_bitcmp1_b32 s8, 8
	v_or_b32_e32 v22, 22, v57
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s6, 1
	v_writelane_b32 v254, s12, 0
	s_cselect_b32 s13, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s15, s28
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s16, s3
	s_cvt_f32_u32 s12, s15
	s_sub_i32 s14, 0, s15
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s22, s2, 6
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[63:64], null, s21, v57, v[66:67]
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s22, v2
	v_or_b32_e32 v2, s22, v6
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v23, 26, v57
	v_or_b32_e32 v24, 28, v57
	v_or_b32_e32 v25, 30, v57
	v_or_b32_e32 v26, 34, v57
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v11, off offset:180
	scratch_store_b32 off, v12, off offset:184
	scratch_store_b32 off, v13, off offset:188
	scratch_store_b32 off, v20, off offset:192
	scratch_store_b32 off, v21, off offset:196
	scratch_store_b32 off, v22, off offset:200
	scratch_store_b32 off, v23, off offset:204
	scratch_store_b32 off, v24, off offset:208
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	v_readfirstlane_b32 s12, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v14, s22, v11
	v_or_b32_e32 v15, s22, v12
	v_or_b32_e32 v11, s22, v24
	scratch_store_b32 off, v25, off offset:212 ; 4-byte Folded Spill
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s12, s12, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v12, s22, v25
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[24:25], null, s21, 24, v[63:64]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s12, s12
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v8, 2, v57
	v_or_b32_e32 v9, 4, v57
	v_or_b32_e32 v10, 6, v57
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s14, s14, s12
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s22, v57
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s14, s12, s14
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s17, s3, s30
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s12, s12, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s22, v3
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s12, s16, s12
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v7, off offset:164
	scratch_store_b32 off, v8, off offset:168
	scratch_store_b32 off, v9, off offset:172
	scratch_store_b32 off, v10, off offset:176
	s_mul_i32 s14, s12, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s22, v8
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s14, s16, s14
	s_add_i32 s16, s12, 1
	s_sub_i32 s18, s14, s15
	s_cmp_ge_u32 s14, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v8, s22, v21
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s12, s16, s12
	s_cselect_b32 s14, s18, s14
	s_add_i32 s16, s12, 1
	s_cmp_ge_u32 s14, s15
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v21, s21, 3, v63
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s12, s16, s12
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s16, s29
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, s22, v10
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s14, s16
	s_sub_i32 s18, 0, s16
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, s22, v23
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s30, v5
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v6, s14
	v_mov_b32_e32 v23, v24
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s21, v66
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v18, s22, v9
	v_or_b32_e32 v9, s22, v22
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v22, s21, 4, v63
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v27, 36, v57
	v_or_b32_e32 v29, 38, v57
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v1, s22, v7
	v_or_b32_e32 v7, s22, v20
	.loc	1 568 22 is_stmt 1              ; attention.py:568:22
	v_readfirstlane_b32 s14, v6
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v25, s21, 5, v63
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s30, v4
	v_cmp_gt_i32_e64 s25, s30, v3
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v21, off offset:284
	scratch_store_b32 off, v22, off offset:288
	scratch_store_b64 off, v[23:24], off offset:292
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s14, s14, 0x4f7ffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v49, 40, v57
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v26, off offset:216
	scratch_store_b32 off, v27, off offset:220
	scratch_store_b32 off, v29, off offset:224
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s14, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s22, v26
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v26, s21, 2, v63
	scratch_store_b32 off, v25, off offset:300 ; 4-byte Folded Spill
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s18, s18, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s22, v13
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s18, s14, s18
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, s22, v27
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s14, s14, s18
	v_writelane_b32 v254, s23, 1
	s_mul_hi_u32 s18, s15, s14
	s_xor_b32 s14, s28, s29
	s_mul_i32 s19, s18, s16
	s_ashr_i32 s14, s14, 31
	s_sub_i32 s15, s15, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s15, s16
	s_cmp_ge_u32 s15, s16
	v_writelane_b32 v254, s24, 2
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s15, s20, s15
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s15, s16
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s30, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s15, s19, s18
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s17, s17, s22
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s16, s17, s21
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s30, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v20, s16, v63, 1
	v_add_lshl_u32 v21, s16, v21, 1
	v_add_lshl_u32 v22, s16, v22, 1
	v_add_lshl_u32 v23, s16, v24, 1
	v_add_lshl_u32 v24, s16, v25, 1
	v_cndmask_b32_e32 v25, 0x80000000, v20, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v20, s22, v29
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[29:30], null, s21, 6, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[30:31], null, s21, 10, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[31:32], null, s21, 12, v[63:64]
	v_mad_u64_u32 v[32:33], null, s21, 14, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[33:34], null, s21, 18, v[63:64]
	v_mad_u64_u32 v[34:35], null, s21, 20, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v28, 0x80000000, v24, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v24, s21, 1, v63
	v_mad_u64_u32 v[35:36], null, s21, 22, v[63:64]
	v_mov_b32_e32 v27, v29
	v_writelane_b32 v254, s25, 3
	scratch_store_b32 off, v24, off offset:304 ; 4-byte Folded Spill
	v_mad_u64_u32 v[36:37], null, s21, 26, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[27:28], off offset:312 ; 8-byte Folded Spill
	v_add_lshl_u32 v27, s16, v29, 1
	v_mov_b32_e32 v29, v30
	v_writelane_b32 v254, s20, 4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[37:38], null, s21, 28, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v24, s16, v24, 1
	scratch_store_b64 off, v[29:30], off offset:320 ; 8-byte Folded Spill
	v_add_lshl_u32 v29, s16, v30, 1
	v_mov_b32_e32 v30, v31
	v_writelane_b32 v254, s18, 5
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s30, v17
	v_cmp_gt_i32_e64 s19, s30, v18
	v_cmp_gt_i32_e64 s20, s30, v19
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[30:31], off offset:328 ; 8-byte Folded Spill
	v_add_lshl_u32 v30, s16, v31, 1
	v_mov_b32_e32 v31, v32
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s2
	scratch_store_b32 off, v26, off offset:308 ; 4-byte Folded Spill
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v26, s16, v26, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	scratch_store_b64 off, v[31:32], off offset:336 ; 8-byte Folded Spill
	v_add_lshl_u32 v31, s16, v32, 1
	v_mov_b32_e32 v32, v33
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s30, v14
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s30, v15
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	scratch_store_b64 off, v[32:33], off offset:344 ; 8-byte Folded Spill
	v_add_lshl_u32 v32, s16, v33, 1
	v_mov_b32_e32 v33, v34
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s25, s30, v16
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[33:34], off offset:352 ; 8-byte Folded Spill
	v_add_lshl_u32 v33, s16, v34, 1
	v_mov_b32_e32 v34, v35
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s26, s30, v7
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s27, s30, v8
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	scratch_store_b64 off, v[34:35], off offset:360 ; 8-byte Folded Spill
	v_add_lshl_u32 v34, s16, v35, 1
	v_mov_b32_e32 v35, v36
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[45:46], null, s21, 30, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[35:36], off offset:368 ; 8-byte Folded Spill
	v_add_lshl_u32 v35, s16, v36, 1
	v_mov_b32_e32 v36, v37
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s33, s30, v9
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s34, s30, v10
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	scratch_store_b64 off, v[36:37], off offset:376 ; 8-byte Folded Spill
	v_add_lshl_u32 v36, s16, v37, 1
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
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s35, s30, v11
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	v_mad_u64_u32 v[30:31], null, s21, 36, v[63:64]
	v_mad_u64_u32 v[31:32], null, s21, 38, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v25, 0x80000000, v33, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s33, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s36, s30, v12
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v33, 0x80000000, v34, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s34, s2
	v_dual_mov_b32 v21, v45 :: v_dual_cndmask_b32 v26, 0x80000000, v35
	s_and_b32 vcc_lo, s35, s2
	v_writelane_b32 v254, s18, 6
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v27, 0x80000000, v36, vcc_lo
	scratch_store_b64 off, v[21:22], off offset:384 ; 8-byte Folded Spill
	v_add_lshl_u32 v21, s16, v45, 1
	s_clause 0x5
	buffer_load_u16 v35, v22, s[4:7], 0 offen
	buffer_load_u16 v36, v23, s[4:7], 0 offen
	buffer_load_u16 v45, v24, s[4:7], 0 offen
	buffer_load_u16 v46, v25, s[4:7], 0 offen
	buffer_load_u16 v47, v26, s[4:7], 0 offen
	buffer_load_u16 v48, v27, s[4:7], 0 offen
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[26:27], null, s21, 34, v[63:64]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s30, v6
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 vcc_lo, s36, s2
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	v_mad_u64_u32 v[58:59], null, s21, 48, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v34, 0x80000000, v21, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s2
	v_mov_b32_e32 v25, v26
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[59:60], null, s21, 50, v[63:64]
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v50, 42, v57
	v_writelane_b32 v254, s19, 7
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[25:26], off offset:392 ; 8-byte Folded Spill
	v_add_lshl_u32 v25, s16, v26, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s19, s30, v13
	scratch_store_b32 off, v49, off offset:228 ; 4-byte Folded Spill
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v22, s22, v50
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v23, 44, v57
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v29, 0x80000000, v25, vcc_lo
	v_mov_b32_e32 v25, v30
	scratch_store_b32 off, v50, off offset:232 ; 4-byte Folded Spill
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[50:51], null, s21, 42, v[63:64]
	v_writelane_b32 v254, s20, 8
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[25:26], off offset:400 ; 8-byte Folded Spill
	v_mov_b32_e32 v26, v31
	v_add_lshl_u32 v25, s16, v30, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s30, v20
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 vcc_lo, s19, s2
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	v_mad_u64_u32 v[51:52], null, s21, 44, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[26:27], off offset:408 ; 8-byte Folded Spill
	v_add_lshl_u32 v26, s16, v31, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[31:32], null, s21, 40, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v30, 0x80000000, v25, vcc_lo
	v_writelane_b32 v254, s23, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v21, s22, v49
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[60:61], null, s21, 56, v[63:64]
	v_mov_b32_e32 v25, v31
	v_mad_u64_u32 v[61:62], null, s21, 58, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v49, 0x80000000, v26, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[52:53], null, s21, 46, v[63:64]
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[25:26], off offset:416 ; 8-byte Folded Spill
	v_mov_b32_e32 v26, v50
	v_writelane_b32 v254, s24, 10
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v24, 46, v57
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s30, v21
	scratch_store_b32 off, v23, off offset:236 ; 4-byte Folded Spill
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v23, s22, v23
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v25, s16, v31, 1
	scratch_store_b64 off, v[26:27], off offset:424 ; 8-byte Folded Spill
	v_mov_b32_e32 v27, v51
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s30, v22
	v_writelane_b32 v254, s25, 11
	scratch_store_b32 off, v24, off offset:240 ; 4-byte Folded Spill
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v24, s22, v24
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s25, s30, v23
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v26, s16, v50, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s23, s2
	v_writelane_b32 v254, s26, 12
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v31, 0x80000000, v25, vcc_lo
	v_mov_b32_e32 v25, v52
	scratch_store_b64 off, v[27:28], off offset:432 ; 8-byte Folded Spill
	v_add_lshl_u32 v27, s16, v51, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s26, s30, v24
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v32, 0x80000000, v26, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[25:26], off offset:440 ; 8-byte Folded Spill
	v_cndmask_b32_e32 v50, 0x80000000, v27, vcc_lo
	v_add_lshl_u32 v25, s16, v52, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v26, 48, v57
	v_or_b32_e32 v27, 50, v57
	v_or_b32_e32 v52, 52, v57
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s26, s2
	v_writelane_b32 v254, s27, 13
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v51, 0x80000000, v25, vcc_lo
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v26, off offset:244
	scratch_store_b32 off, v27, off offset:248
	scratch_store_b32 off, v52, off offset:252
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v25, s22, v26
	v_or_b32_e32 v26, s22, v27
	v_or_b32_e32 v27, s22, v52
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x5
	buffer_load_u16 v52, v28, s[4:7], 0 offen
	buffer_load_u16 v53, v29, s[4:7], 0 offen
	buffer_load_u16 v54, v30, s[4:7], 0 offen
	buffer_load_u16 v55, v31, s[4:7], 0 offen
	buffer_load_u16 v56, v32, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v28, 54, v57
	v_or_b32_e32 v29, 56, v57
	v_or_b32_e32 v30, 58, v57
	v_or_b32_e32 v31, 60, v57
	v_or_b32_e32 v32, 62, v57
	v_mov_b32_e32 v57, v58
	v_writelane_b32 v254, s33, 14
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[67:68], null, s21, 52, v[63:64]
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v102, 0x60, v0
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[57:58], off offset:448 ; 8-byte Folded Spill
	v_add_lshl_u32 v57, s16, v58, 1
	v_mov_b32_e32 v58, v59
	v_writelane_b32 v254, s34, 15
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b32 off, v29, off offset:260
	scratch_store_b32 off, v30, off offset:264
	scratch_store_b32 off, v31, off offset:268
	scratch_store_b32 off, v32, off offset:272
	scratch_store_b64 off, v[58:59], off offset:456
	v_add_lshl_u32 v58, s16, v59, 1
	v_mov_b32_e32 v59, v60
	v_writelane_b32 v254, s35, 16
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v29, s22, v29
	v_or_b32_e32 v30, s22, v30
	v_or_b32_e32 v31, s22, v31
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[59:60], off offset:464 ; 8-byte Folded Spill
	v_add_lshl_u32 v59, s16, v60, 1
	v_mov_b32_e32 v60, v61
	v_writelane_b32 v254, s36, 17
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v32, s22, v32
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_and_b32_e32 v101, 15, v0
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_lshlrev_b32_e32 v97, 4, v0
	scratch_store_b64 off, v[60:61], off offset:472 ; 8-byte Folded Spill
	v_add_lshl_u32 v60, s16, v61, 1
	v_mov_b32_e32 v61, v67
	v_writelane_b32 v254, s18, 18
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s18, s30, v25
	v_cmp_gt_i32_e64 s27, s30, v32
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v98, 7, v101
	scratch_store_b64 off, v[61:62], off offset:480 ; 8-byte Folded Spill
	v_add_lshl_u32 v61, s16, v67, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[67:68], null, s21, 60, v[63:64]
	v_mov_b32_e32 v62, v63
	v_mad_u64_u32 v[68:69], null, s21, 54, v[63:64]
	v_writelane_b32 v254, s19, 19
	v_mad_u64_u32 v[69:70], null, s21, 62, v[63:64]
	scratch_store_b64 off, v[62:63], off offset:276 ; 8-byte Folded Spill
	v_mov_b32_e32 v62, v67
	v_writelane_b32 v254, s20, 20
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s19, s30, v26
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 vcc_lo, s18, s2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s20, s30, v27
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	scratch_store_b64 off, v[62:63], off offset:488 ; 8-byte Folded Spill
	v_mov_b32_e32 v63, v68
	v_writelane_b32 v254, s23, 21
	v_add_lshl_u32 v62, s16, v67, 1
	v_mov_b32_e32 v67, v66
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v28, off offset:256
	scratch_store_b64 off, v[63:64], off offset:496
	v_mov_b32_e32 v64, v69
	v_writelane_b32 v254, s24, 22
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s24, s30, v29
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v28, s22, v28
	.loc	1 599 26                        ; attention.py:599:26
	scratch_store_b64 off, v[64:65], off offset:504 ; 8-byte Folded Spill
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v65, v0, 6, 1
	v_writelane_b32 v254, s25, 23
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s25, s30, v30
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v64, s16, v69, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_and_b32_e32 v65, 0x90, v65
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s19, s2
	v_writelane_b32 v254, s26, 24
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s24, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s26, s30, v31
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_xor_b32_e32 v65, v65, v66
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s25, s2
	.loc	1 601 23 is_stmt 0              ; attention.py:601:23
	v_cmp_gt_i32_e64 s23, s30, v28
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s20, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v63, s16, v68, 1
	scratch_store_b64 off, v[67:68], off offset:144 ; 8-byte Folded Spill
	v_xor_b32_e32 v68, 0x240, v65
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s26, s2
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x1
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s23, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_add_nc_u32 v218, 0, v68
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s27, s2
	.loc	1 599 26                        ; attention.py:599:26
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
	v_lshlrev_b32_e32 v67, 6, v102
	v_and_b32_e32 v99, 0x70, v97
	v_add_nc_u32_e32 v216, 0, v65
	v_writelane_b32 v254, s18, 25
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s4, s15, s14
                                        ; implicit-def: $vgpr253 : SGPR spill to VGPR lane
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v103, 64, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v66, v98, v67, v99
	v_xor_b32_e32 v67, 0x120, v65
	v_xor_b32_e32 v65, 0x360, v65
	v_writelane_b32 v254, s19, 26
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s4, s14
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v69, 0, v66
	v_xad_u32 v70, v66, 16, 0
	v_add_nc_u32_e32 v217, 0, v67
	v_add_nc_u32_e32 v219, 0, v65
	v_xad_u32 v71, v66, 32, 0
	v_xad_u32 v72, v66, 48, 0
	v_xad_u32 v73, v66, 64, 0
	v_xad_u32 v74, 0x50, v66, 0
	v_xad_u32 v75, 0x60, v66, 0
	v_xad_u32 v66, 0x70, v66, 0
	v_writelane_b32 v254, s24, 27
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s5, s6
	v_writelane_b32 v253, s23, 0
	s_cvt_f32_u32 s4, s5
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s14, s31, 63
	v_writelane_b32 v254, s25, 28
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(31)
	ds_store_b16 v216, v37
	s_waitcnt vmcnt(30)
	ds_store_b16 v216, v38 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v216, v35 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v216, v36 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v216, v52 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v216, v55 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v216, v57 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v216, v59 offset:7168
	ds_store_b16 v217, v39
	ds_store_b16 v217, v41 offset:1024
	ds_store_b16 v217, v45 offset:2048
	ds_store_b16 v217, v47 offset:3072
	ds_store_b16 v217, v53 offset:4096
	ds_store_b16 v217, v56 offset:5120
	ds_store_b16 v217, v58 offset:6144
	ds_store_b16 v217, v60 offset:7168
	ds_store_b16 v218, v40
	ds_store_b16 v218, v42 offset:1024
	ds_store_b16 v218, v46 offset:2048
	ds_store_b16 v218, v48 offset:3072
	ds_store_b16 v218, v54 offset:4096
	ds_store_b16 v218, v50 offset:5120
	ds_store_b16 v218, v61 offset:6144
	ds_store_b16 v218, v62 offset:7168
	ds_store_b16 v219, v44
	ds_store_b16 v219, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v219, v33 offset:2048
	ds_store_b16 v219, v34 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v219, v49 offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b16 v219, v51 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v63 offset:6144
	ds_store_b16 v219, v64 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v69
	ds_load_b128 v[37:40], v70
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:512 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:528 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v71
	ds_load_b128 v[37:40], v72
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:544 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:560 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v73
	ds_load_b128 v[37:40], v74
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:576 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:592 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v75
	ds_load_b128 v[37:40], v66
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:608 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:624 ; 16-byte Folded Spill
	v_writelane_b32 v254, s21, 29
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v33, s4
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s4, s14, 31
	v_writelane_b32 v253, s27, 1
	s_lshr_b32 s15, s4, 26
	v_writelane_b32 v254, s20, 30
	.loc	1 599 26                        ; attention.py:599:26
	v_cmp_eq_u32_e64 s4, 0, v103
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s14, s14, s15
	s_mov_b32 s27, 0
	.loc	1 606 14 is_stmt 0              ; attention.py:606:14
	s_and_b32 s23, s14, 0xffffffc0
	v_writelane_b32 v254, s26, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	v_readfirstlane_b32 s7, v33
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s8, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s22, s10
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s15, s22, s9
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s8, s11
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s15, s15, s11
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s8, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s8, s31, s8
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s8, s8, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s14, s8, 31
	s_lshr_b32 s14, s14, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s8, s8, s14
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s14, s15, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s8, s8, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s27, s14, 0x7fffffc0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s23, s23, s8
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v33, 0, 1, s13
	s_and_not1_b32 vcc_lo, exec_lo, s13
	scratch_store_b32 off, v33, off offset:640 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s8, s22, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 64
	s_min_i32 s8, s31, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s13, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 26
	s_add_i32 s8, s8, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s8, s8, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s23, s23, s8
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_lshlrev_b32_e32 v33, 1, v0
	v_lshlrev_b32_e32 v100, 6, v0
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_lt_i32 s27, s23
	scratch_store_b32 off, v33, off offset:136 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v106, 64, v100
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr106
.LBB0_7:                                ; %Flow671
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s13, s[0:1], 0x64
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v105, 2, v0
	v_and_b32_e32 v104, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_delay_alu instid0(VALU_DEP_2)
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
	v_writelane_b32 v253, s20, 2
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v56, v40
	v_mov_b32_e32 v55, v40
	v_writelane_b32 v253, s21, 3
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	v_writelane_b32 v253, s22, 4
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_writelane_b32 v253, s23, 5
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_writelane_b32 v253, s13, 6
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	v_mov_b32_e32 v96, v40
	v_mov_b32_e32 v95, v40
	v_mov_b32_e32 v94, v40
	v_mov_b32_e32 v93, v40
	v_mov_b32_e32 v92, v40
	v_mov_b32_e32 v91, v40
	v_mov_b32_e32 v90, v40
	v_mov_b32_e32 v89, v40
	v_mov_b32_e32 v88, v40
	v_mov_b32_e32 v87, v40
	v_mov_b32_e32 v86, v40
	v_mov_b32_e32 v85, v40
	v_mov_b32_e32 v84, v40
	v_mov_b32_e32 v83, v40
	v_mov_b32_e32 v82, v40
	v_mov_b32_e32 v81, v40
	v_mov_b32_e32 v80, v40
	v_mov_b32_e32 v79, v40
	v_mov_b32_e32 v78, v40
	v_mov_b32_e32 v77, v40
	v_mov_b32_e32 v76, v40
	v_mov_b32_e32 v75, v40
	v_mov_b32_e32 v74, v40
	v_mov_b32_e32 v73, v40
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
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v34, off, off offset:136
	scratch_load_b64 v[65:66], off, off offset:144
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v18, s11, v18
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_add_nc_u32_e32 v67, s11, v13
	scratch_load_b32 v13, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v66, s11, v1
	.loc	1 629 13                        ; attention.py:629:13
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v35, 0x404, 0, s4
	v_cndmask_b32_e64 v38, 0x108, 0, s4
	s_xor_b32 s4, s3, s28
	s_load_b32 s20, s[0:1], 0x7c
	s_ashr_i32 s4, s4, 31
	v_lshrrev_b32_e32 v0, 5, v102
	s_xor_b32 s8, s12, s4
	v_lshlrev_b32_e32 v33, 3, v101
	s_sub_i32 s8, s8, s4
	v_lshrrev_b32_e32 v36, 2, v104
	s_mul_i32 s12, s8, s28
	v_lshl_or_b32 v0, v101, 8, v0
	s_sub_i32 s3, s3, s12
	s_load_b128 s[12:15], s[0:1], 0x6c
	v_dual_mov_b32 v58, v57 :: v_dual_and_b32 v39, 64, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or3_b32 v36, v0, v36, v33
	v_cmp_eq_u32_e32 vcc_lo, 0, v104
	v_lshlrev_b32_e32 v0, 1, v103
	v_dual_mov_b32 v62, v57 :: v_dual_add_nc_u32 v33, 0, v39
	scratch_store_b32 off, v39, off offset:1536 ; 4-byte Folded Spill
	v_or_b32_e32 v40, v99, v98
	v_dual_mov_b32 v64, v57 :: v_dual_add_nc_u32 v5, s11, v5
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_add_nc_u32 v225, v33, v0
	v_dual_mov_b32 v50, v57 :: v_dual_add_nc_u32 v17, s11, v17
	v_dual_mov_b32 v52, v57 :: v_dual_add_nc_u32 v19, s11, v19
	v_dual_mov_b32 v59, v57 :: v_dual_add_nc_u32 v4, s11, v4
	v_dual_mov_b32 v61, v57 :: v_dual_add_nc_u32 v14, s11, v14
	v_dual_mov_b32 v54, v57 :: v_dual_add_nc_u32 v15, s11, v15
	v_dual_mov_b32 v63, v57 :: v_dual_add_nc_u32 v16, s11, v16
	v_dual_mov_b32 v56, v57 :: v_dual_add_nc_u32 v3, s11, v3
	v_dual_mov_b32 v42, v57 :: v_dual_add_nc_u32 v7, s11, v7
	v_dual_mov_b32 v49, v57 :: v_dual_add_nc_u32 v8, s11, v8
	v_dual_mov_b32 v44, v57 :: v_dual_add_nc_u32 v9, s11, v9
	v_dual_mov_b32 v51, v57 :: v_dual_add_nc_u32 v2, s11, v2
	v_dual_mov_b32 v53, v57 :: v_dual_add_nc_u32 v10, s11, v10
	v_dual_mov_b32 v46, v57 :: v_dual_add_nc_u32 v11, s11, v11
	v_dual_mov_b32 v55, v57 :: v_dual_add_nc_u32 v12, s11, v12
	v_dual_mov_b32 v43, v57 :: v_dual_add_nc_u32 v6, s11, v6
	v_dual_mov_b32 v41, v57 :: v_dual_add_nc_u32 v20, s11, v20
	v_mov_b32_e32 v45, v57
	v_dual_mov_b32 v48, v57 :: v_dual_add_nc_u32 v21, s11, v21
	v_dual_mov_b32 v47, v57 :: v_dual_add_nc_u32 v22, s11, v22
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v23, s11, v23
	v_dual_mov_b32 v33, v57 :: v_dual_add_nc_u32 v24, s11, v24
	v_add_nc_u32_e32 v25, s11, v25
	v_add_nc_u32_e32 v26, s11, v26
	v_add_nc_u32_e32 v27, s11, v27
	v_add_nc_u32_e32 v28, s11, v28
	v_add_nc_u32_e32 v29, s11, v29
	v_add_nc_u32_e32 v30, s11, v30
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_add_nc_u32 v31, s11, v31
	v_dual_mov_b32 v239, 0xff800000 :: v_dual_add_nc_u32 v32, s11, v32
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_sub_i32 s4, 0, s5
	s_abs_i32 s16, s3
	v_writelane_b32 v253, s17, 7
	s_cvt_u32_f32 s7, s7
	s_ashr_i32 s6, s6, 31
	s_mov_b64 s[18:19], s[30:31]
	s_mov_b32 s44, 0
	s_mul_i32 s4, s4, s7
	s_mov_b32 s45, s44
	s_mul_hi_u32 s4, s7, s4
	s_mov_b32 s46, s44
	s_add_i32 s7, s7, s4
	s_mov_b32 s47, s44
	s_mul_hi_u32 s4, s16, s7
	s_ashr_i32 s7, s3, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s17, s4, s5
	s_xor_b32 s6, s7, s6
	s_sub_i32 s7, s16, s17
	s_add_i32 s16, s4, 1
	s_sub_i32 s17, s7, s5
	s_cmp_ge_u32 s7, s5
	.loc	1 676 27                        ; attention.py:676:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s3, s14
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s4, s16, s4
	s_cselect_b32 s7, s17, s7
	s_add_i32 s16, s4, 1
	s_cmp_ge_u32 s7, s5
	s_mov_b32 s48, s44
	s_cselect_b32 s4, s16, s4
	.loc	1 656 33                        ; attention.py:656:33
	s_mul_i32 s16, s8, s29
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s4, s4, s6
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s29, s12, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s17, s4, s6
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[34:35], s[0:1], 0x30
	.loc	1 656 33                        ; attention.py:656:33
	s_add_i32 s0, s17, s16
	.loc	1 656 32 is_stmt 0              ; attention.py:656:32
	v_writelane_b32 v253, s16, 8
	s_mul_i32 s0, s0, s31
	.loc	1 674 25 is_stmt 1              ; attention.py:674:25
	s_mul_i32 s1, s15, s22
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s8, s13
	s_mov_b32 s49, s44
	.loc	1 656 32                        ; attention.py:656:32
	v_writelane_b32 v253, s17, 9
	s_add_i32 s1, s8, s1
	s_mov_b32 s50, s44
	s_add_i32 s1, s1, s3
	s_mov_b32 s51, s44
	v_writelane_b32 v253, s18, 10
	v_lshl_add_u32 v237, v101, 1, 0
	v_mov_b32_e32 v240, 0xff800000
	v_mov_b32_e32 v164, 0xff800000
	v_mov_b32_e32 v166, 0xff800000
	v_writelane_b32 v253, s19, 11
	v_mov_b32_e32 v168, 0xff800000
	v_mov_b32_e32 v170, 0xff800000
	v_mov_b32_e32 v172, 0xff800000
	v_mov_b32_e32 v212, 0xff800000
	v_writelane_b32 v253, s0, 12
	v_mov_b32_e32 v244, 0xff800000
	v_mov_b32_e32 v246, 0xff800000
	v_mov_b32_e32 v248, 0xff800000
	v_mov_b32_e32 v174, 0xff800000
	v_readlane_b32 s12, v253, 6
	v_writelane_b32 v253, s22, 13
	v_mov_b32_e32 v100, v57
	v_mov_b32_e32 v98, v57
	v_mov_b32_e32 v154, 0xff800000
	v_mov_b32_e32 v252, 0xff800000
	v_writelane_b32 v253, s20, 14
	v_mov_b32_e32 v250, 0xff800000
	v_mov_b32_e32 v214, 0xff800000
	v_mov_b32_e32 v242, 0xff800000
	v_mov_b32_e32 v194, 0xff800000
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v253, s1, 15
	s_lshl_b32 s1, s12, 1
	v_mov_b32_e32 v192, 0xff800000
	v_mov_b32_e32 v190, 0xff800000
	v_mov_b32_e32 v188, 0xff800000
	v_writelane_b32 v253, s1, 16
	s_lshl_b32 s1, s12, 2
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v184, 0xff800000
	v_mov_b32_e32 v182, 0xff800000
	v_writelane_b32 v253, s1, 17
	s_lshl_b32 s1, s12, 3
	v_mov_b32_e32 v180, 0xff800000
	v_mov_b32_e32 v178, 0xff800000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s5, 0xffff
	v_writelane_b32 v253, s1, 18
	s_lshl_b32 s1, s12, 4
	s_mov_b32 s40, s4
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_writelane_b32 v253, s1, 19
	s_lshl_b32 s1, s12, 5
	s_and_b32 s37, s7, 0xffff
	s_mov_b32 s36, s6
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v60, v57
	v_writelane_b32 v253, s1, 20
	v_mov_b32_e32 v241, 0xff800000
	v_mov_b32_e32 v163, 0xff800000
	v_mov_b32_e32 v165, 0xff800000
	v_mov_b32_e32 v167, 0xff800000
	v_writelane_b32 v253, s44, 21
	v_mov_b32_e32 v169, 0xff800000
	v_mov_b32_e32 v171, 0xff800000
	v_mov_b32_e32 v211, 0xff800000
	v_mov_b32_e32 v245, 0xff800000
	v_writelane_b32 v253, s45, 22
	v_mov_b32_e32 v247, 0xff800000
	v_mov_b32_e32 v173, 0xff800000
	v_mov_b32_e32 v175, 0xff800000
	v_mov_b32_e32 v99, v57
	v_writelane_b32 v253, s46, 23
	v_mov_b32_e32 v201, 0xff800000
	v_mov_b32_e32 v199, 0xff800000
	v_mov_b32_e32 v197, 0xff800000
	v_mov_b32_e32 v235, 0xff800000
	v_writelane_b32 v253, s47, 24
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v231, 0xff800000
	v_mov_b32_e32 v229, 0xff800000
	v_mov_b32_e32 v227, 0xff800000
	v_writelane_b32 v253, s48, 25
	v_mov_b32_e32 v249, 0xff800000
	v_mov_b32_e32 v153, 0xff800000
	v_mov_b32_e32 v223, 0xff800000
	v_mov_b32_e32 v177, 0xff800000
	v_writelane_b32 v253, s49, 26
	v_writelane_b32 v253, s50, 27
	v_writelane_b32 v253, s51, 28
	v_writelane_b32 v253, s23, 29
	v_and_b32_e32 v34, 60, v34
	v_mul_lo_u32 v0, s20, v65
	v_lshlrev_b32_e32 v37, 2, v65
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s12, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v34, v35, v34
	v_and_b32_e32 v35, 0x200, v97
	v_xor_b32_e32 v37, v38, v37
	v_mov_b32_e32 v97, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v34, v35, v34, v39
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	v_mov_b32_e32 v35, v57
	scratch_store_b64 off, v[38:39], off offset:1004 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1012 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1020 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1028 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1036 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1044 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1052 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1060 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1068 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1076 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1084 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1092 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1100 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1108 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1116 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1124 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1132 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1140 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1148 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1156 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1164 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1172 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1180 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1188 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1196 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1204 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1212 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1220 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1228 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	scratch_store_b64 off, v[38:39], off offset:1236 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, s15, v1, v[0:1]
	v_mad_u64_u32 v[0:1], null, s15, v13, v[0:1]
	scratch_store_b64 off, v[0:1], off offset:1252 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, 0x5410
	v_mov_b32_e32 v1, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_cndmask_b32_e32 v1, 0x3276, v1, vcc_lo
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
	v_and_b32_e32 v202, 0x5040504, v0
	v_xor_b32_e32 v0, 16, v40
	v_and_b32_e32 v203, 0x7060706, v1
	v_lshl_or_b32 v1, v101, 10, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v40
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v40
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v40
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:680
	scratch_store_b32 off, v40, off offset:648
	v_xor_b32_e32 v0, 0x70, v40
	v_mov_b32_e32 v40, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x210, v37
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x420, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x630, v37
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x840, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa50, v37
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc60, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:708
	scratch_store_b32 off, v37, off offset:652
	v_xor_b32_e32 v0, 0xe70, v37
	v_dual_mov_b32 v37, v57 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x48, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x58, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v36
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x68, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v36
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:768
	scratch_store_b32 off, v36, off offset:644
	v_xor_b32_e32 v0, 0x78, v36
	v_mov_b32_e32 v36, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:772
	scratch_store_b32 off, v105, off offset:1532
	v_xor_b32_e32 v0, 4, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 8, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 12, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 20, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 28, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 36, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 40, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 44, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 52, v1
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:832
	scratch_store_b32 off, v1, off offset:776
	v_xor_b32_e32 v0, 60, v1
	v_dual_mov_b32 v1, 0xff800000 :: v_dual_add_nc_u32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x808, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v34
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1818, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2020, v34
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2828, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x3030, v34
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:860
	scratch_store_b32 off, v34, off offset:656
	v_xor_b32_e32 v0, 0x3838, v34
	v_mov_b32_e32 v34, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:864
	scratch_store_b32 off, v102, off offset:1520
	v_lshlrev_b32_e32 v0, 1, v102
	v_mov_b32_e32 v102, v57
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v220, 0, v0
	v_subrev_nc_u32_e32 v0, s9, v5
	scratch_store_b32 off, v0, off offset:1260 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v17
	scratch_store_b32 off, v0, off offset:1264 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v18
	scratch_store_b32 off, v0, off offset:1268 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v19
	scratch_store_b32 off, v0, off offset:1272 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v4
	scratch_store_b32 off, v0, off offset:1276 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v14
	scratch_store_b32 off, v0, off offset:1280 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v15
	scratch_store_b32 off, v0, off offset:1284 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v16
	scratch_store_b32 off, v0, off offset:1288 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v3
	scratch_store_b32 off, v0, off offset:1292 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v7
	scratch_store_b32 off, v0, off offset:1296 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v8
	scratch_store_b32 off, v0, off offset:1300 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v9
	scratch_store_b32 off, v0, off offset:1304 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v2
	scratch_store_b32 off, v0, off offset:1308 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v10
	scratch_store_b32 off, v0, off offset:1312 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v11
	scratch_store_b32 off, v0, off offset:1316 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v12
	scratch_store_b32 off, v0, off offset:1320 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v66
	scratch_store_b32 off, v0, off offset:1324 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v6
	scratch_store_b32 off, v0, off offset:1328 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v67
	scratch_store_b32 off, v0, off offset:1332 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v20
	scratch_store_b32 off, v0, off offset:1336 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v21
	scratch_store_b32 off, v0, off offset:1340 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v22
	scratch_store_b32 off, v0, off offset:1344 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v23
	scratch_store_b32 off, v0, off offset:1348 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v24
	scratch_store_b32 off, v0, off offset:1352 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v25
	scratch_store_b32 off, v0, off offset:1356 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v26
	scratch_store_b32 off, v0, off offset:1360 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v27
	scratch_store_b32 off, v0, off offset:1364 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v28
	scratch_store_b32 off, v0, off offset:1368 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v29
	scratch_store_b32 off, v0, off offset:1372 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v30
	scratch_store_b32 off, v0, off offset:1376 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v31
	scratch_store_b32 off, v0, off offset:1380 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s9, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1384
	scratch_store_b32 off, v5, off offset:876
	v_add_nc_u32_e32 v0, s10, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1388
	scratch_store_b32 off, v17, off offset:880
	v_add_nc_u32_e32 v0, s10, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1392
	scratch_store_b32 off, v18, off offset:884
	v_add_nc_u32_e32 v0, s10, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1396
	scratch_store_b32 off, v19, off offset:888
	v_add_nc_u32_e32 v0, s10, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1400
	scratch_store_b32 off, v4, off offset:892
	v_add_nc_u32_e32 v0, s10, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1404
	scratch_store_b32 off, v14, off offset:896
	v_add_nc_u32_e32 v0, s10, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1408
	scratch_store_b32 off, v15, off offset:900
	v_add_nc_u32_e32 v0, s10, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1412
	scratch_store_b32 off, v16, off offset:904
	v_add_nc_u32_e32 v0, s10, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1416
	scratch_store_b32 off, v3, off offset:908
	v_add_nc_u32_e32 v0, s10, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1420
	scratch_store_b32 off, v7, off offset:912
	v_add_nc_u32_e32 v0, s10, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1424
	scratch_store_b32 off, v8, off offset:916
	v_add_nc_u32_e32 v0, s10, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1428
	scratch_store_b32 off, v9, off offset:920
	v_add_nc_u32_e32 v0, s10, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1432
	scratch_store_b32 off, v2, off offset:924
	v_add_nc_u32_e32 v0, s10, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1436
	scratch_store_b32 off, v10, off offset:928
	v_add_nc_u32_e32 v0, s10, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1440
	scratch_store_b32 off, v11, off offset:932
	v_add_nc_u32_e32 v0, s10, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1444
	scratch_store_b32 off, v12, off offset:936
	v_add_nc_u32_e32 v0, s10, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1448
	scratch_store_b32 off, v66, off offset:940
	v_add_nc_u32_e32 v0, s10, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1452
	scratch_store_b32 off, v6, off offset:944
	v_add_nc_u32_e32 v0, s10, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1456
	scratch_store_b32 off, v67, off offset:948
	v_add_nc_u32_e32 v0, s10, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1460
	scratch_store_b32 off, v20, off offset:952
	v_add_nc_u32_e32 v0, s10, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1464
	scratch_store_b32 off, v21, off offset:956
	v_add_nc_u32_e32 v0, s10, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1468
	scratch_store_b32 off, v22, off offset:960
	v_add_nc_u32_e32 v0, s10, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1472
	scratch_store_b32 off, v23, off offset:964
	v_add_nc_u32_e32 v0, s10, v23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1476
	scratch_store_b32 off, v24, off offset:968
	v_add_nc_u32_e32 v0, s10, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1480
	scratch_store_b32 off, v25, off offset:972
	v_add_nc_u32_e32 v0, s10, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1484
	scratch_store_b32 off, v26, off offset:976
	v_add_nc_u32_e32 v0, s10, v26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1488
	scratch_store_b32 off, v27, off offset:980
	v_add_nc_u32_e32 v0, s10, v27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1492
	scratch_store_b32 off, v28, off offset:984
	v_add_nc_u32_e32 v0, s10, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1496
	scratch_store_b32 off, v29, off offset:988
	v_add_nc_u32_e32 v0, s10, v29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1500
	scratch_store_b32 off, v30, off offset:992
	v_add_nc_u32_e32 v0, s10, v30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1504
	scratch_store_b32 off, v31, off offset:996
	v_add_nc_u32_e32 v0, s10, v31
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1508
	scratch_store_b32 off, v32, off offset:1000
	v_add_nc_u32_e32 v0, s10, v32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1512
	scratch_store_b32 off, v101, off offset:1516
	v_mov_b32_e32 v0, 0xff800000
	v_mad_u64_u32 v[13:14], null, s12, v13, v[65:66]
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v10, v57
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b64 off, v[38:39], off offset:1244 ; 8-byte Folded Spill
	v_mov_b32_e32 v38, v57
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v8, v57
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v103, off offset:1524 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v2, v57
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v104, off offset:1528 ; 4-byte Folded Spill
	v_mov_b32_e32 v103, v57
	v_mov_b32_e32 v101, v57
	v_mov_b32_e32 v32, v57
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0xff800000 :: v_dual_mov_b32 v31, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v29, v57
	v_mov_b32_e32 v28, v57
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0xff800000 :: v_dual_mov_b32 v27, v57
	v_mov_b32_e32 v26, v57
	v_mov_b32_e32 v25, v57
	v_mov_b32_e32 v24, v57
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0xff800000 :: v_dual_mov_b32 v23, v57
	v_mov_b32_e32 v22, v57
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v20, v57
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0xff800000 :: v_dual_mov_b32 v19, v57
	v_mov_b32_e32 v18, v57
	v_mov_b32_e32 v17, v57
	v_mov_b32_e32 v16, v57
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v0, v57
	v_dual_mov_b32 v12, 0xff800000 :: v_dual_mov_b32 v9, 0xff800000
	v_mov_b32_e32 v7, 0xff800000
	v_mov_b32_e32 v5, 0xff800000
	v_mov_b32_e32 v3, 0xff800000
	scratch_store_b64 off, v[13:14], off offset:868 ; 8-byte Folded Spill
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	v_and_b16 v0.l, 0xff, v0.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v19, s29, v65 :: v_dual_mul_f32 v14, s29, v70
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v13.l, 0xff, v98.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v25, s29, v76 :: v_dual_mul_f32 v18, s29, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v97.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v13.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v17, s29, v67
	v_dual_mul_f32 v23, s29, v78 :: v_dual_mul_f32 v16, s29, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s4, 0, v0.l
	v_and_b16 v0.l, 0xff, v0.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s26, s66, s3
	s_and_b32 vcc_lo, s104, vcc_lo
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v15, s29, v69
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s25, s31, s4
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s5, 0, v0.l
	v_and_b16 v0.l, 0xff, v98.h
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v13, s29, v72
	v_dual_mul_f32 v27, s29, v74 :: v_dual_mul_f32 v20, s29, v80
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s24, s65, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v0.l
	v_and_b16 v0.l, 0xff, v97.h
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v31, s29, v85 :: v_dual_mul_f32 v26, s29, v75
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s7, 0, v0.l
	v_and_b16 v0.l, 0xff, v99.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s9, s30, s6
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v21, s29, v89 :: v_dual_mul_f32 v32, s29, v91
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s8, s64, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s10, 0, v0.l
	v_and_b16 v0.l, 0xff, v99.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v73, s29, v73 :: v_dual_mul_f32 v22, s29, v79
	v_dual_mul_f32 v91, s29, v94 :: v_dual_mul_f32 v94, s29, v81
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s11, 0, v0.l
	v_and_b16 v0.l, 0xff, v100.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s7, s33, s10
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v81, s29, v86 :: v_dual_mul_f32 v24, s29, v77
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s104, s63, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s12, 0, v0.l
	v_and_b16 v0.l, 0xff, v100.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v83, s29, v83 :: v_dual_mul_f32 v28, s29, v88
	v_dual_mul_f32 v29, s29, v90 :: v_dual_mul_f32 v90, s29, v93
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s13, 0, v0.l
	v_and_b16 v0.l, 0xff, v102.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s23, s28, s12
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v89, s29, v92 :: v_dual_mul_f32 v92, s29, v95
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s22, s62, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s14, 0, v0.l
	v_and_b16 v0.l, 0xff, v101.h
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v93, s29, v96 :: v_dual_mul_f32 v30, s29, v87
	v_dual_mul_f32 v95, s29, v82 :: v_dual_mul_f32 v82, s29, v84
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s15, 0, v0.l
	s_waitcnt vmcnt(0)
	v_and_b16 v0.l, 0xff, v104.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s21, s39, s14
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.h, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s27, s27, 64
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s20, s61, s15
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v101.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s5, s60, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v103.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s4, s59, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v102.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s6, s58, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v104.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 vcc_hi, vcc_hi, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v103.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s19, s57, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v105.h
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v66, 0, 1, s19
	s_and_b32 s18, s56, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v105.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s17, s55, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v106.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s16, s54, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v106.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s97, s53, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v107.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s96, s52, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v107.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s95, s51, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v108.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s93, s49, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v108.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s15, s50, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v65, 0, 1, s15
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v0.l, 0xff, v109.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s14, s48, s3
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v109.l
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s23
	v_cndmask_b32_e64 v66, 0, 1, vcc_lo
	s_and_b32 s13, s47, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v110.h
	.loc	1 681 25                        ; attention.py:681:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s12, s46, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v67.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s14
	v_cndmask_b32_e64 v66, 0, 1, s18
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v0.l, 0xff, v110.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s94, s45, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v111.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s22
	v_cndmask_b32_e64 v66, 0, 1, s26
	s_and_b32 s92, s44, s3
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	v_and_b16 v0.l, 0xff, v111.l
	.loc	1 681 25                        ; attention.py:681:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s91, s1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v0.l
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v68.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s13
	v_cndmask_b32_e64 v66, 0, 1, s17
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v0, s29, v71
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s90, s38, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v69.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s21
	v_cndmask_b32_e64 v66, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v69.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s12
	v_cndmask_b32_e64 v66, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v70.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s20
	v_cndmask_b32_e64 v66, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v70.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s94
	v_cndmask_b32_e64 v66, 0, 1, s97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v71.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s5
	v_cndmask_b32_e64 v66, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v71.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s92
	v_cndmask_b32_e64 v66, 0, 1, s96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v72.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s4
	v_cndmask_b32_e64 v66, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v72.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s91
	v_cndmask_b32_e64 v66, 0, 1, s95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v74.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s6
	v_cndmask_b32_e64 v66, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v74.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s90
	v_cndmask_b32_e64 v66, 0, 1, s93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, vcc_hi
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s104
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v65.l, v66.l, v65.l
	scratch_load_b32 v66, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, 0, v66
	ds_store_b32 v66, v67
	scratch_load_b32 v66, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v68
	scratch_load_b32 v66, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v69
	scratch_load_b32 v66, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v70
	scratch_load_b32 v66, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v71
	scratch_load_b32 v66, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v72
	scratch_load_b32 v66, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v74
	scratch_load_b32 v66, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v66, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v65, off, off offset:644
	scratch_load_b32 v68, off, off offset:716
	scratch_load_b32 v70, off, off offset:724
	scratch_load_b32 v71, off, off offset:728
	scratch_load_b32 v75, off, off offset:740
	scratch_load_b32 v74, off, off offset:736
	scratch_load_b32 v72, off, off offset:732
	scratch_load_b32 v69, off, off offset:720
	scratch_load_b32 v79, off, off offset:756
	scratch_load_b32 v76, off, off offset:744
	scratch_load_b32 v77, off, off offset:748
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v67, v69 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v68 offset:128
	v_add_nc_u32_e32 v66, 0, v65
	ds_load_u8_d16 v65, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v66 offset:128
	ds_load_u8_d16 v66, v68
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v66, v70 offset:128
	v_and_b16 v67.l, 1, v67.l
	v_and_b16 v67.h, 1, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s80, 1, v67.l
	v_and_b16 v65.l, 1, v65.l
	v_and_b16 v65.h, 1, v65.h
	v_cmp_eq_u16_e64 s79, 1, v67.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v26, 0xff800000, v26, s80
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s10, 1, v65.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s74, 1, v65.h
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v65, v76 offset:128
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v120, 0xff800000, v21, s10
	v_cndmask_b32_e64 v21, 0xff800000, v73, s74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:768
	scratch_load_b32 v78, off, off offset:752
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s72, 1, v65.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v19, 0xff800000, v19, s72
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v65, v78
	ds_load_u8_d16 v68, v69
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v68, v70
	ds_load_u8_d16 v69, v71
	ds_load_u8_d16 v70, v74 offset:128
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v69, v75 offset:128
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v66.h, 1, v66.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s11, 1, v66.l
	ds_load_u8_d16 v66, v77
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s81, 1, v66.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v137, 0xff800000, v29, s11
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b16 v65.h, 1, v65.h
	v_and_b16 v68.l, 1, v68.l
	v_and_b16 v68.h, 1, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s82, 1, v65.h
	v_cmp_eq_u16_e64 s98, 1, v68.l
	ds_load_u8_d16 v68, v79
	ds_load_u8_d16_hi v70, v72 offset:128
	ds_load_u8_d16 v71, v71 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v71, v72
	ds_load_u8_d16 v72, v74
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v72, v75
	v_and_b16 v69.l, 1, v69.l
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v69.h, 1, v69.h
	v_cmp_eq_u16_e64 s103, 1, v68.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v117, 0xff800000, v32, s98
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s101, 1, v69.l
	v_cmp_eq_u16_e64 s84, 1, v66.l
	v_cmp_eq_u16_e64 s76, 1, v69.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v119, 0xff800000, v89, s103
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b16 v70.l, 1, v70.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v115, 0xff800000, v90, s101
	v_cndmask_b32_e64 v110, 0xff800000, v95, s84
	v_cndmask_b32_e64 v29, 0xff800000, v83, s82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s75, 1, v70.l
	v_and_b16 v70.h, 1, v70.h
	v_and_b16 v71.l, 1, v71.l
	v_and_b16 v71.h, 1, v71.h
	v_and_b16 v68.l, 1, v68.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v22, 0xff800000, v22, s75
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s78, 1, v70.h
	v_cmp_eq_u16_e64 s77, 1, v71.l
	v_cmp_eq_u16_e64 s102, 1, v71.h
	ds_load_u8_d16_hi v71, v73
	ds_load_u8_d16 v74, v76
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v74, v79 offset:128
	ds_load_u8_d16 v73, v73 offset:128
	ds_load_u8_d16 v75, v78 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v75, v77 offset:128
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v76, off, off offset:760
	scratch_load_b32 v77, off, off offset:764
	scratch_load_b32 v78, off, off offset:772
	v_and_b16 v72.l, 1, v72.l
	v_and_b16 v72.h, 1, v72.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v24, 0xff800000, v24, s77
	v_cndmask_b32_e64 v116, 0xff800000, v91, s102
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s89, 1, v68.l
	v_cmp_eq_u16_e64 s99, 1, v72.l
	v_cmp_eq_u16_e64 s100, 1, v72.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v112, 0xff800000, v82, s89
	v_cndmask_b32_e64 v113, 0xff800000, v92, s99
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v114, 0xff800000, v93, s100
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b16 v74.l, 1, v74.l
	v_and_b16 v74.h, 1, v74.h
	v_and_b16 v71.h, 1, v71.h
	v_and_b16 v73.l, 1, v73.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v73.h, 1, v75.h
	v_cmp_eq_u16_e64 s83, 1, v74.l
	v_cmp_eq_u16_e64 s71, 1, v74.h
	v_and_b16 v74.l, 1, v75.l
	v_cmp_eq_u16_e64 s85, 1, v71.h
	v_cmp_eq_u16_e64 s73, 1, v73.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v32, 0xff800000, v94, s83
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s3, 1, v73.l
	v_cmp_eq_u16_e64 s70, 1, v74.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v30, 0xff800000, v30, s85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0xff800000, v0, s3
	v_cndmask_b32_e64 v17, 0xff800000, v17, s70
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt vmcnt(2)
	ds_load_u8_d16_hi v68, v76
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v69, v77
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v72, v78
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v72, v78 offset:128
	ds_load_u8_d16 v66, v77 offset:128
	ds_load_u8_d16_hi v65, v76 offset:128
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v76, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b16 v68.h, 1, v68.h
	v_and_b16 v69.l, 1, v69.l
	v_and_b16 v72.l, 1, v72.l
	v_and_b16 v72.h, 1, v72.h
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v65.h, 1, v65.h
	v_cmp_eq_u16_e64 s86, 1, v68.h
	v_cmp_eq_u16_e64 s87, 1, v72.l
	v_cmp_eq_u16_e64 s67, 1, v72.h
	v_cmp_eq_u16_e64 s69, 1, v66.l
	v_cmp_eq_u16_e64 s68, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v31, 0xff800000, v31, s86
	v_cndmask_b32_e64 v109, 0xff800000, v28, s87
	v_cndmask_b32_e64 v28, 0xff800000, v27, s79
	v_cndmask_b32_e64 v27, 0xff800000, v25, s81
	v_cndmask_b32_e64 v25, 0xff800000, v23, s78
	v_cndmask_b32_e64 v23, 0xff800000, v20, s76
	v_cndmask_b32_e64 v20, 0xff800000, v18, s73
	v_cndmask_b32_e64 v18, 0xff800000, v16, s71
	v_cndmask_b32_e64 v16, 0xff800000, v14, s69
	v_cndmask_b32_e64 v14, 0xff800000, v13, s67
	scratch_load_b32 v13, off, off offset:780 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v15, 0xff800000, v15, s68
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s88, 1, v69.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v111, 0xff800000, v81, s88
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v76, 0, v76
	ds_store_2addr_stride64_b32 v76, v120, v21 offset1:2
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v137, v28 offset1:2
	scratch_load_b32 v13, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v117, v26 offset1:2
	scratch_load_b32 v13, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v119, v27 offset1:2
	scratch_load_b32 v13, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v115, v24 offset1:2
	scratch_load_b32 v13, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v116, v25 offset1:2
	scratch_load_b32 v13, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v113, v22 offset1:2
	scratch_load_b32 v13, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v114, v23 offset1:2
	scratch_load_b32 v13, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v32, v19 offset1:2
	scratch_load_b32 v13, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v110, v20 offset1:2
	scratch_load_b32 v13, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v29, v17 offset1:2
	scratch_load_b32 v13, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v112, v18 offset1:2
	scratch_load_b32 v13, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v31, v15 offset1:2
	scratch_load_b32 v13, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v111, v16 offset1:2
	scratch_load_b32 v13, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v30, v0 offset1:2
	scratch_load_b32 v13, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v109, v14 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v13, off, off offset:656
	scratch_load_b32 v74, off, off offset:840
	scratch_load_b32 v75, off, off offset:844
	scratch_load_b32 v76, off, off offset:848
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v13, 0, v13
	s_waitcnt vmcnt(2)
	ds_load_2addr_b32 v[79:80], v74 offset1:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_b32 v[105:106], v75 offset1:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[107:108], v76 offset1:32
	ds_load_2addr_b32 v[77:78], v13 offset1:32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(3)
	v_max_f32_e32 v67, v79, v79
	v_max_f32_e32 v71, v80, v80
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v69, v107, v107
	v_max_f32_e32 v73, v108, v108
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v65, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v77, v77
	v_max_f32_e32 v68, v105, v105
	v_max_f32_e32 v70, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v72, v106, v106 :: v_dual_max_f32 v65, v65, v65
	v_max_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b32 v[103:104], v13 offset0:64 offset1:96
	ds_load_2addr_b32 v[101:102], v74 offset0:64 offset1:96
	ds_load_2addr_b32 v[99:100], v75 offset0:64 offset1:96
	ds_load_2addr_b32 v[97:98], v76 offset0:64 offset1:96
	scratch_load_b32 v13, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[95:96], v13 offset1:32
	ds_load_2addr_b32 v[87:88], v13 offset0:64 offset1:96
	scratch_load_b32 v13, off, off offset:856 ; 4-byte Folded Reload
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v66
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[93:94], v13 offset1:32
	ds_load_2addr_b32 v[85:86], v13 offset0:64 offset1:96
	scratch_load_b32 v13, off, off offset:860 ; 4-byte Folded Reload
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[89:90], v13 offset1:32
	ds_load_2addr_b32 v[81:82], v13 offset0:64 offset1:96
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	scratch_load_b32 v13, off, off offset:864 ; 4-byte Folded Reload
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[91:92], v13 offset1:32
	ds_load_2addr_b32 v[83:84], v13 offset0:64 offset1:96
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v66
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(11)
	v_mov_b32_dpp v13, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v66, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v67, v66
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v67
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v66, v66, v67
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v65, 31
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, s1
	v_readlane_b32 s1, v66, 31
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v67, v68, v67 :: v_dual_mov_b32 v66, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v78 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v67, s1
	v_readlane_b32 s1, v68, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v69, v70, v69 :: v_dual_mov_b32 v68, s1
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v70
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v70
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v80 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v71, v70
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v71, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v71, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v71
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v71, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	v_max_f32_e32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v70, v70, v71
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v71, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v69, 31
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v69, s1
	v_readlane_b32 s1, v70, 31
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v71, v72, v71 :: v_dual_mov_b32 v70, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v72
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v72
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v72, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v71, v71, v72
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v73, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v73
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v73, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v73, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v73
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v73, v72, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v72, v72, v73
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s1, v71, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v71, s1
	v_readlane_b32 s1, v72, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v72, s1
	ds_store_b128 v220, v[65:68]
	ds_store_b128 v220, v[69:72] offset:16
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v65, v103, v103 :: v_dual_max_f32 v66, v101, v101
	v_dual_max_f32 v67, v99, v99 :: v_dual_max_f32 v68, v97, v97
	v_max_f32_e32 v13, v65, v13
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v13, -1, -1 op_sel:[1,0]
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v67, v66
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v97 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s1, v13, 31
	v_mov_b32_dpp v13, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v68
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s28, v65, 31
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v104, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v69, v98, v98 :: v_dual_max_f32 v68, v68, v68
	v_max_f32_e32 v13, v65, v13
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v68
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v68, v66, -1, -1 op_sel:[1,0]
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s30, v66, 31
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v102, v102
	v_dual_max_f32 v68, v68, v68 :: v_dual_max_f32 v65, v66, v65
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v68
	v_max_f32_e32 v68, v100, v100
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s31, v67, 31
	v_mov_b32_e32 v67, s30
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v13, v66
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v13, -1, -1 op_sel:[1,0]
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v68, v66
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v68, v69, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v69
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v69
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v69
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s33, v13, 31
	v_mov_b32_dpp v13, v95 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v68, v68, v69
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	v_readlane_b32 s38, v65, 31
	v_mov_b32_e32 v65, s1
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_mov_b32 v70, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v66, v66, v69
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	v_readlane_b32 s39, v66, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_mov_b32 v66, s28
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v71, s39 :: v_dual_max_f32 v68, v68, v69
	v_mov_b32_e32 v69, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s44, v68, 31
	v_mov_b32_e32 v68, s31
	v_mov_b32_e32 v72, s44
	ds_store_b128 v220, v[65:68] offset:32
	ds_store_b128 v220, v[69:72] offset:48
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v65, v95, v95 :: v_dual_max_f32 v66, v93, v93
	v_dual_max_f32 v67, v89, v89 :: v_dual_max_f32 v68, v91, v91
	v_max_f32_e32 v69, v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max_f32_e32 v13, v65, v13
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v93 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v13, -1, -1 op_sel:[1,0]
.Ltmp195:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v66
.Ltmp196:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
.Ltmp198:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v89 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v67, v66
.Ltmp200:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v91 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp203:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp210:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
.Ltmp212:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s1, v13, 31
	v_mov_b32_dpp v13, v96 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp213:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v68
.Ltmp214:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s28, v65, 31
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v65, v96, v96
.Ltmp216:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v121, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v65, v13
.Ltmp218:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v94 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp219:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
.Ltmp220:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v68, v66, -1, -1 op_sel:[1,0]
.Ltmp221:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v68
.Ltmp222:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s30, v66, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v66, v94, v94 :: v_dual_mov_b32 v123, s30
	v_max_f32_e32 v65, v66, v65
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v13, v13, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp226:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp227:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v68, v68, v68 :: v_dual_max_f32 v65, v65, v66
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v67, v67, v68 :: v_dual_max_f32 v68, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v66, v66, v66
.Ltmp230:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s31, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v13, v66
.Ltmp232:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp233:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v65, v65, v66
.Ltmp234:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v13, v13, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp237:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v65, v65, v66
.Ltmp238:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v13, v13, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
.Ltmp241:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v90 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v68, v66
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v92 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v68, v69, v68
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v68, v68, v69
.Ltmp250:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp252:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp253:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v68, v68, v69
.Ltmp254:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s33, v13, 31
	v_mov_b32_dpp v13, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v122, s28 :: v_dual_max_f32 v69, v69, v69
	v_mov_b32_e32 v125, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp255:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_mov_b32 v124, s31
	v_max_f32_e32 v66, v66, v69
.Ltmp256:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s38, v65, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_mov_b32 v126, s38
	v_max_f32_e32 v68, v68, v69
.Ltmp258:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp260:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
	v_readlane_b32 s39, v66, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v127, s39 :: v_dual_max_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_readlane_b32 s44, v68, 31
	ds_load_b128 v[129:132], v225
	ds_load_b128 v[73:76], v225 offset:16
	ds_load_b128 v[69:72], v225 offset:32
	ds_load_b128 v[65:68], v225 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v128, s44
	ds_store_b128 v220, v[121:124]
	ds_store_b128 v220, v[125:128] offset:16
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v121, v87, v87 :: v_dual_max_f32 v122, v85, v85
	v_dual_max_f32 v123, v81, v81 :: v_dual_max_f32 v124, v83, v83
	v_max_f32_e32 v125, v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v13, v121, v13
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v121, v85 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v121, v121, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v121, v122, v121
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v121, v121, v122
.Ltmp270:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp272:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v121 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp273:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v121, v121, v122
.Ltmp274:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp275:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v121 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp277:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v121, v121, v122
.Ltmp278:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v122, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp279:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s1, v13, 31
	v_mov_b32_dpp v13, v88 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp281:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp282:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v122, v121, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp283:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v121, v121, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s28, v121, 31
.Ltmp285:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v121, v88, v88
.Ltmp286:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v81 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp287:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v13, v121, v13 :: v_dual_max_f32 v122, v122, v122
.Ltmp288:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v121, v86 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v122, v123, v122 :: v_dual_max_f32 v121, v121, v121
.Ltmp290:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v123, v83 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp291:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v123, v123, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v123, v124, v123
.Ltmp292:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	v_max_f32_e32 v122, v122, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp294:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v123 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp295:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v123, v123, v124
.Ltmp296:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v122 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	v_max_f32_e32 v122, v122, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp298:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v123 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp299:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v123, v123, v124
.Ltmp300:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v122 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp301:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	v_max_f32_e32 v122, v122, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v123 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp303:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v123, v123, v124
.Ltmp304:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v124, v122, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp305:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	v_max_f32_e32 v122, v122, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s30, v122, 31
.Ltmp307:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v86, v86
	v_max_f32_e32 v121, v122, v121
.Ltmp308:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v121 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp311:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v121, v121, v122
.Ltmp312:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp313:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v121 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp315:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v121, v121, v122
.Ltmp316:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v124, v123, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp317:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_dual_max_f32 v124, v124, v124 :: v_dual_max_f32 v13, v13, v122
.Ltmp318:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v121 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp319:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v123, v123, v124 :: v_dual_max_f32 v124, v82, v82
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp320:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s31, v123, 31
	v_mov_b32_e32 v123, s30
.Ltmp321:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v121, v121, v122
.Ltmp322:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v122, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	v_max_f32_e32 v13, v13, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v122, v121, -1, -1 op_sel:[1,0]
.Ltmp325:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v121, v121, v122
.Ltmp326:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v82 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp327:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v122, v124, v122
.Ltmp328:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v84 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp329:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v124, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v124, v125, v124
.Ltmp330:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v125, v122 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v125, v125, v125
	v_max_f32_e32 v122, v122, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp332:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v125, v124 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s33, v13, 31
.Ltmp333:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v132, v132
.Ltmp334:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp335:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v125, v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v124, v124, v125
.Ltmp336:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v125, v122 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s38, v121, 31
	v_mov_b32_e32 v121, s1
.Ltmp337:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v125, v125, v125 :: v_dual_mov_b32 v126, s38
.Ltmp338:
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s38, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp339:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v122, v125
.Ltmp340:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v125, v124 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp341:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v125, v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v124, v124, v125
.Ltmp342:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v125, v122 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp343:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v125, v125, v125
	v_max_f32_e32 v122, v122, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp344:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v125, v124 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp345:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v125, v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v124, v124, v125
.Ltmp346:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v125, v122, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp347:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v125, v125, v125
	v_max_f32_e32 v122, v122, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp348:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v125, v124, -1, -1 op_sel:[1,0]
	v_readlane_b32 s39, v122, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp349:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v125, v125, v125 :: v_dual_mov_b32 v122, s28
.Ltmp350:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v127, s39 :: v_dual_max_f32 v124, v124, v125
	v_mov_b32_e32 v125, s33
.Ltmp351:
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s39, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp352:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s44, v124, 31
	v_mov_b32_e32 v124, s31
	v_mov_b32_e32 v128, s44
	ds_store_b128 v220, v[121:124] offset:32
	ds_store_b128 v220, v[125:128] offset:48
.Ltmp353:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v123, v132, v132 :: v_dual_mov_b32 v124, v130
.Ltmp354:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v121, v131
.Ltmp355:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v127, v129, v129
	v_max_f32_e32 v125, v130, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v209, v13, v123
.Ltmp356:
	.loc	1 688 24                        ; attention.py:688:24
	scratch_load_b32 v13, off, off          ; 4-byte Folded Reload
.Ltmp357:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp358:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v122, v131, v131
.Ltmp359:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v131, v75
.Ltmp360:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v121, v121, v121 :: v_dual_max_f32 v124, v124, v124
.Ltmp361:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v131, v131 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp362:
	.loc	1 688 24                        ; attention.py:688:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp363:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v126, v129 :: v_dual_max_f32 v179, v122, v121
	v_mov_b32_e32 v129, v73
.Ltmp364:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v73, v73, v73
.Ltmp365:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v129, v129 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp366:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v126, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v193, v127, v126 :: v_dual_max_f32 v128, v76, v76
.Ltmp367:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp368:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v13, v13, v193 :: v_dual_mov_b32 v130, v74
	scratch_store_b32 off, v13, off         ; 4-byte Folded Spill
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v77, v13
.Ltmp369:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v130, v130 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp370:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
.Ltmp371:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_cndmask_b32 v13, 0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp372:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp373:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v77, v13, -1, -1 op_sel:[1,0]
.Ltmp374:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v76, v76, v76 :: v_dual_add_f32 v13, v13, v77
.Ltmp375:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v77, v238, v238
.Ltmp376:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v181, v125, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v204, v128, v76
.Ltmp377:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v13, 31
.Ltmp378:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp379:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v238, v77, v181
.Ltmp380:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v210, v73, v13 :: v_dual_sub_f32 v77, v79, v238
	v_max_f32_e32 v13, v130, v130
.Ltmp381:
	.loc	1 688 24                        ; attention.py:688:24
	scratch_load_b32 v73, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v77
.Ltmp382:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v208, v74, v13 :: v_dual_max_f32 v13, v131, v131
.Ltmp383:
	.loc	1 688 24                        ; attention.py:688:24
	scratch_load_b32 v74, off, off offset:24 ; 4-byte Folded Reload
.Ltmp384:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v75, v13
.Ltmp385:
	.loc	1 688 24                        ; attention.py:688:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:16
	scratch_load_b32 v75, off, off offset:28
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v77, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp386:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v77, v77, v77 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v77, v77, v77 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v77, v77, v77 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp387:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v79, v77, -1, -1 op_sel:[1,0]
.Ltmp388:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v77, v77, v79
.Ltmp389:
	.loc	1 688 24                        ; attention.py:688:24
	scratch_load_b32 v79, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_max_f32_e32 v73, v73, v73
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_max_f32 v73, v73, v208 :: v_dual_max_f32 v74, v74, v74
	s_waitcnt vmcnt(2)
	v_max_f32_e32 v13, v13, v13
	s_waitcnt vmcnt(1)
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v13, v13, v210
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v74, v74, v206 :: v_dual_max_f32 v75, v75, v204
	scratch_store_b32 off, v73, off offset:20 ; 4-byte Folded Spill
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v80, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v13, off offset:16
	scratch_store_b32 off, v74, off offset:24
	v_sub_f32_e32 v74, v106, v74
	v_sub_f32_e32 v13, v78, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	scratch_store_b32 off, v75, off offset:28 ; 4-byte Folded Spill
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v75, v108, v75
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v75, v75
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s22
	v_cndmask_b32_e64 v74, 0, v74, s21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v13, 0, v13, s23
.Ltmp390:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp391:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v75, s20
.Ltmp392:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp393:
	.loc	1 688 24                        ; attention.py:688:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v79, v79, v79
.Ltmp394:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp395:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v79, v79, v179
.Ltmp396:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	scratch_store_b32 off, v79, off offset:4 ; 4-byte Folded Spill
.Ltmp397:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v79, v105, v79
.Ltmp398:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v75, v75, v75 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp399:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v79
.Ltmp400:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v75, v75, v75 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp401:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v76, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp402:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s25
.Ltmp403:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v76
.Ltmp404:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v76, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp405:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp406:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s21, v13, 31
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp407:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v73, v73, v76
.Ltmp408:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v76, v74, -1, -1 op_sel:[1,0]
.Ltmp409:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v72, v72
.Ltmp410:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp411:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp412:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s22, v73, 31
.Ltmp413:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v74, v74, v76
.Ltmp414:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v76, v75, -1, -1 op_sel:[1,0]
.Ltmp415:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v79, v79, v79 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp416:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v72, v72, v72 :: v_dual_mov_b32 v121, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp417:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s23, v74, 31
.Ltmp418:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v75, v75, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v79, v79, v79 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp419:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v185, v13, v72 :: v_dual_mov_b32 v122, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp420:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v123, s23
	v_readlane_b32 s26, v75, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v105, v79, -1, -1 op_sel:[1,0]
.Ltmp421:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v13, v167, v167 :: v_dual_mov_b32 v124, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp422:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v79, v79, v105
.Ltmp423:
	.loc	1 688 24                        ; attention.py:688:24
	scratch_load_b32 v105, off, off offset:8 ; 4-byte Folded Reload
.Ltmp424:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s25, v79, 31
.Ltmp425:
	.loc	1 688 24                        ; attention.py:688:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v105, v105, v105
	v_max_f32_e32 v105, v105, v209
	scratch_store_b32 off, v105, off offset:8 ; 4-byte Folded Spill
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v105, v107, v105
.Ltmp426:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp427:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v105, v105
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v105, s24
.Ltmp428:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s24, v77, 31
.Ltmp429:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	ds_load_b128 v[125:128], v225
	ds_load_b128 v[129:132], v225 offset:16
	ds_load_b128 v[77:80], v225 offset:32
	ds_load_b128 v[73:76], v225 offset:48
.Ltmp430:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp431:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v105, v105, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp432:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v106, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp433:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v105, v105, v105 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v105, v105, v105 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v105, v105, v105 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp434:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v107, v105, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp435:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v105, v107
.Ltmp436:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v107, s25
	v_readlane_b32 s20, v105, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v105, s1 :: v_dual_mov_b32 v108, s20
	ds_store_b128 v220, v[105:108]
	ds_store_b128 v220, v[121:124] offset:16
.Ltmp437:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v105, v69
.Ltmp438:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_mov_b32 v106, v70
.Ltmp439:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v107, v71 :: v_dual_max_f32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v105, v105 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp440:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v71, v71
.Ltmp441:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v121, v65
.Ltmp442:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v105, v105, v105 :: v_dual_mov_b32 v122, v66
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v66, v66, v66
.Ltmp443:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp444:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v191, v69, v105
	v_max_f32_e32 v69, v106, v106
.Ltmp445:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v122, v122 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v123, v67
.Ltmp446:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v67
.Ltmp447:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v167, v13, v191
.Ltmp448:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v189, v70, v69
	v_max_f32_e32 v69, v107, v107
.Ltmp449:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v123, v123 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp450:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v108, v68, v68 :: v_dual_sub_f32 v13, v103, v167
.Ltmp451:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp452:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v187, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp453:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
.Ltmp454:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v205, v108, v68
.Ltmp455:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp456:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp457:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v13, -1, -1 op_sel:[1,0]
.Ltmp458:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v69
.Ltmp459:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v69, v168, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp460:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v13, 31
.Ltmp461:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v121, v121
	v_max_f32_e32 v183, v65, v13
	v_max_f32_e32 v13, v122, v122
.Ltmp462:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v245, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp463:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v176, v66, v13 :: v_dual_max_f32 v13, v123, v123
.Ltmp464:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v66, v246, v246 :: v_dual_max_f32 v245, v65, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp465:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v67, v13
.Ltmp466:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v13, v244, v244
	v_max_f32_e32 v67, v247, v247
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v65, v102, v245 :: v_dual_max_f32 v102, v131, v131
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v168, v69, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v244, v13, v183
	v_dual_max_f32 v246, v66, v207 :: v_dual_max_f32 v247, v67, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v69, v101, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v13, v104, v244
	v_dual_sub_f32 v66, v100, v246 :: v_dual_sub_f32 v67, v98, v247
.Ltmp467:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v98, v129, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp468:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s14
.Ltmp469:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v101, v131 :: v_dual_max_f32 v100, v130, v130
.Ltmp470:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp471:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v13, 0, v13, s15
	v_cndmask_b32_e64 v66, 0, v66, s13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s12
.Ltmp472:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp473:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp474:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp475:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v68, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp476:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp477:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v70, v169, v169
.Ltmp478:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v68
.Ltmp479:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v68, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp480:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v169, v70, v187
.Ltmp481:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s13, v13, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp482:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v65, v68
.Ltmp483:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v68, v66, -1, -1 op_sel:[1,0]
.Ltmp484:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v13, v128, v128 :: v_dual_sub_f32 v70, v99, v169
.Ltmp485:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v128, v128 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp486:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s14, v65, 31
.Ltmp487:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v68
.Ltmp488:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp489:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
.Ltmp490:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v65, s1
.Ltmp491:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v99, v130
.Ltmp492:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s15, v66, 31
.Ltmp493:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp494:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp495:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s18, v67, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp496:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s17
.Ltmp497:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp498:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp499:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp500:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v71, v170, v170
.Ltmp501:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s17, v70, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp502:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v170, v71, v185
.Ltmp503:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v70, s14 :: v_dual_mov_b32 v67, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp504:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v97, v170
.Ltmp505:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v97, v129
.Ltmp506:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp507:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v97, v97 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp508:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s16
.Ltmp509:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s16, v69, 31
	v_mov_b32_e32 v69, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp510:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp511:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v66, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp512:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp513:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v72, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp514:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v71, v71, v72 :: v_dual_mov_b32 v72, s18
.Ltmp515:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s12, v71, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v71, s15 :: v_dual_mov_b32 v68, s12
	ds_store_b128 v220, v[65:68] offset:32
	ds_store_b128 v220, v[69:72] offset:48
.Ltmp516:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v71, v128, v128
.Ltmp517:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, v125
.Ltmp518:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v66, v125, v125 :: v_dual_mov_b32 v67, v126
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp519:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v69, v127 :: v_dual_max_f32 v228, v13, v71
.Ltmp520:
	.loc	1 688 24                        ; attention.py:688:24
	scratch_load_b32 v13, off, off offset:12 ; 4-byte Folded Reload
.Ltmp521:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp522:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v126, v126
.Ltmp523:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp524:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v70, v127, v127 :: v_dual_max_f32 v65, v65, v65
	v_max_f32_e32 v72, v132, v132
.Ltmp525:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp526:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v234, v66, v65 :: v_dual_max_f32 v65, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v103, v132, v132
	v_max_f32_e32 v232, v68, v65
	v_max_f32_e32 v65, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v195, v72, v103 :: v_dual_max_f32 v230, v70, v65
.Ltmp527:
	.loc	1 688 24                        ; attention.py:688:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v13, v13, v234
	scratch_store_b32 off, v13, off offset:12 ; 4-byte Folded Spill
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v95, v13
.Ltmp528:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v225
	ds_load_b128 v[129:132], v225 offset:16
	ds_load_b128 v[125:128], v225 offset:32
	ds_load_b128 v[121:124], v225 offset:48
	s_waitcnt lgkmcnt(0)
.Ltmp529:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
.Ltmp530:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp531:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s9
.Ltmp532:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp533:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v65, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp534:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v65
.Ltmp535:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v239, v239
.Ltmp536:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v13, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp537:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v239, v65, v232
.Ltmp538:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v97, v97
.Ltmp539:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v93, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp540:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v243, v98, v13
	v_max_f32_e32 v13, v99, v99
.Ltmp541:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp542:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v221, v100, v13
	v_max_f32_e32 v13, v101, v101
	v_dual_max_f32 v222, v102, v13 :: v_dual_max_f32 v13, v163, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp543:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s8
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v163, v13, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp544:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp545:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v96, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp546:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp547:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp548:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp549:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s5
.Ltmp550:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp551:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v65, v65, v66 :: v_dual_max_f32 v66, v240, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp552:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v240, v66, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp553:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp554:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v89, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp555:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp556:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp557:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v13, -1, -1 op_sel:[1,0]
.Ltmp558:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp559:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s7
.Ltmp560:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s7, v65, 31
.Ltmp561:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v164, v164
.Ltmp562:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s5, v13, 31
.Ltmp563:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v80, v80
.Ltmp564:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp565:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp566:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v164, v65, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp567:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp568:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v94, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp569:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp570:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp571:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp572:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp573:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s4
.Ltmp574:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v241, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp575:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s8, v66, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp576:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v241, v67, v228 :: v_dual_max_f32 v66, v165, v165
.Ltmp577:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp578:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v91, v241
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v165, v66, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp579:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp580:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v66, v90, v165
.Ltmp581:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp582:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
.Ltmp583:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp584:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s104
.Ltmp585:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v65, v65, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp586:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp587:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s6, v65, 31
	v_mov_b32_e32 v65, s1
.Ltmp588:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp589:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v70, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp590:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp591:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp592:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v67, v67, v68 :: v_dual_max_f32 v68, v166, v166
.Ltmp593:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s4, v67, 31
.Ltmp594:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v166, v68, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp595:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v66, v66, v69 :: v_dual_mov_b32 v67, s8
.Ltmp596:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v92, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp597:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s9, v66, 31
	v_mov_b32_e32 v66, s7
.Ltmp598:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp599:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v71, s9
.Ltmp600:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, vcc_hi
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp601:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp602:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp603:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v68, v68, v69 :: v_dual_mov_b32 v69, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp604:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s12, v68, 31
	v_mov_b32_e32 v68, s4
	v_mov_b32_e32 v72, s12
	ds_store_b128 v220, v[65:68]
	ds_store_b128 v220, v[69:72] offset:16
.Ltmp605:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v65, v77
.Ltmp606:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v66, v77, v77 :: v_dual_max_f32 v71, v80, v80
.Ltmp607:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v67, v78
	v_mov_b32_e32 v69, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp608:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v78, v78
	v_max_f32_e32 v196, v13, v71
.Ltmp609:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v13, v171, v171
.Ltmp610:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp611:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp612:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp613:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v70, v79, v79 :: v_dual_mov_b32 v77, v73
.Ltmp614:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v78, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp615:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v236, v66, v65 :: v_dual_max_f32 v65, v67, v67
	v_max_f32_e32 v73, v73, v73
.Ltmp616:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp617:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v171, v13, v236 :: v_dual_max_f32 v200, v68, v65
.Ltmp618:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v69, v69
.Ltmp619:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp620:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_sub_f32 v13, v87, v171
.Ltmp621:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp622:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v198, v70, v65 :: v_dual_max_f32 v75, v75, v75
	v_max_f32_e32 v72, v76, v76
.Ltmp623:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
.Ltmp624:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp625:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp626:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp627:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v213, v72, v76
.Ltmp628:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp629:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v65, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp630:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v65
.Ltmp631:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v172, v172
.Ltmp632:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v13, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp633:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v172, v65, v200
.Ltmp634:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v13, v77, v77
.Ltmp635:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v85, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp636:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v226, v73, v13 :: v_dual_max_f32 v13, v78, v78
.Ltmp637:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.h, v215.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp638:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v251, v74, v13
	v_max_f32_e32 v13, v79, v79
	v_dual_max_f32 v224, v75, v13 :: v_dual_max_f32 v13, v248, v248
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp639:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s96
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v248, v13, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp640:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp641:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v88, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp642:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp643:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp644:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp645:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s94
.Ltmp646:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v66, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp647:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v65, v65, v66 :: v_dual_max_f32 v66, v211, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp648:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s4, v65, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp649:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v211, v66, v198
	v_max_f32_e32 v65, v173, v173
.Ltmp650:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp651:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v81, v211
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v173, v65, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp652:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp653:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v65, v86, v173
.Ltmp654:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp655:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
.Ltmp656:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v13, v13, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp657:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s95
.Ltmp658:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s7, v13, 31
.Ltmp659:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v13, v110, v29, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp660:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp661:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp662:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp663:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v67, v66, -1, -1 op_sel:[1,0]
.Ltmp664:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v66, v66, v67 :: v_dual_max_f32 v67, v212, v212
.Ltmp665:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v66, 31
.Ltmp666:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v212, v67, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v66, v174, v174 :: v_dual_add_f32 v65, v65, v69
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v83, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v174, v66, v224
.Ltmp667:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s8, v65, 31
	v_mov_b32_e32 v65, s1
	v_readlane_b32 s1, v253, 30
.Ltmp668:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v66, v82, v174
.Ltmp669:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v70, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp670:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp671:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp672:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp673:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp674:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp675:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v67, v67, v68
.Ltmp676:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v68, v175, v175
.Ltmp677:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v66, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s6, v67, 31
.Ltmp678:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v175, v68, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp679:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v66, v66, v69 :: v_dual_mov_b32 v67, s5
	s_mov_b32 s5, 0x76543210
.Ltmp680:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v84, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp681:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s9, v66, 31
	v_mov_b32_e32 v66, s4
.Ltmp682:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp683:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v71, s9
.Ltmp684:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp685:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp686:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp687:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v68, v68, v69 :: v_dual_mov_b32 v69, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp688:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s12, v68, 31
	v_mov_b32_e32 v68, s6
	v_mov_b32_e32 v72, s12
	ds_store_b128 v220, v[65:68] offset:32
	ds_store_b128 v220, v[69:72] offset:48
.Ltmp689:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v31, v111, v30
	v_max3_f32 v66, v109, v21, v28
	v_max3_f32 v67, v19, v20, v17
.Ltmp690:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v69.h, v215.h
	v_mov_b16_e64 v71.h, v215.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp691:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v13, v13, v65, v66
	v_max3_f32 v65, v26, v27, v24
	v_max3_f32 v66, v25, v22, v23
	v_max3_f32 v65, v65, v66, v67
	v_max_f32_e32 v66, v120, v137
	v_max3_f32 v67, v119, v115, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v117, v67
	v_max3_f32 v67, v113, v114, v32
	v_max3_f32 v13, v66, v67, v13
	v_dual_max_f32 v66, v18, v15 :: v_dual_max_f32 v67, v0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v66, v66, v16, v67
.Ltmp692:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v67.h, v215.h
.Ltmp693:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v13, v13, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp694:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v65, v13, s5, 0xfedcba98 op_sel:[1,0]
.Ltmp695:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v13, v118, v13, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v137, v13
	v_sub_f32_e32 v32, v32, v13
	v_sub_f32_e32 v29, v29, v13
	v_sub_f32_e32 v28, v28, v13
	v_sub_f32_e32 v21, v21, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v21, v21
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v20, v13
	v_sub_f32_e32 v19, v19, v13
	v_sub_f32_e32 v18, v18, v13
	v_sub_f32_e32 v17, v17, v13
	v_sub_f32_e32 v16, v16, v13
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s11
	v_cndmask_b32_e64 v32, 0, v32, s83
	v_cndmask_b32_e64 v29, 0, v29, s82
	v_cndmask_b32_e64 v28, 0, v28, s79
	v_cndmask_b32_e64 v21, 0, v21, s74
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v18, v18
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v215
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v16, v16
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v15, v15, v13
	v_sub_f32_e32 v14, v14, v13
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v120, v13
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v20, 0, v20, s73
	v_cndmask_b32_e64 v19, 0, v19, s72
	v_cndmask_b32_e64 v18, 0, v18, s71
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s70
	v_cndmask_b32_e64 v16, 0, v16, s69
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v14, v14
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v0, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s68
	v_cndmask_b32_e64 v14, 0, v14, s67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v67.l, v65.h
	v_cmp_o_f32_e64 s4, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v65, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s4
	v_permlanex16_b32 v67, v66, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v67, v66, v202
	v_perm_b32 v66, v67, v66, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v119, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s103
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_and_b32_e32 v68, 1, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v67, v68, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v117, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v69.l, v67.h
	v_cmp_o_f32_e64 s4, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v67, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s4
	v_permlanex16_b32 v69, v68, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v69, v68, v202
	v_perm_b32 v68, v69, v68, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v116, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s102
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_and_b32_e32 v70, 1, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v70, v69, v70, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v115, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v69.h
	v_cmp_o_f32_e64 s4, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v69, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s4
	v_permlanex16_b32 v71, v70, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v71, v70, v202
	v_perm_b32 v70, v71, v70, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v114, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s100
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_and_b32_e32 v72, 1, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v72, v71, v72, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v113, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v73.l, v71.h
	v_cmp_o_f32_e64 s4, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v71, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s4
	v_readlane_b32 s4, v253, 6
	v_permlanex16_b32 v73, v72, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v73, v72, v202
	v_perm_b32 v72, v73, v72, v203
	scratch_load_b64 v[73:74], off, off offset:868 ; 8-byte Folded Reload
.Ltmp696:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v225
	ds_load_b128 v[145:148], v225 offset:16
	ds_load_b128 v[141:144], v225 offset:32
	ds_load_b128 v[137:140], v225 offset:48
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[73:74], null, s1, s4, v[73:74]
.Ltmp697:
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s1, v253, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v75, v73, s1, 1
	v_readlane_b32 s1, v253, 17
	v_lshlrev_b32_e32 v74, 1, v73
	v_add_lshl_u32 v76, v73, s1, 1
	s_mul_i32 s1, s4, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v77, v73, s1, 1
	v_readlane_b32 s1, v253, 18
	v_add_lshl_u32 v78, v73, s1, 1
	s_mul_i32 s1, s4, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v79, v73, s1, 1
	s_mul_i32 s1, s4, 12
	v_add_lshl_u32 v80, v73, s1, 1
	s_mul_i32 s1, s4, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v81, v73, s1, 1
	v_readlane_b32 s1, v253, 19
	v_add_lshl_u32 v82, v73, s1, 1
	s_mul_i32 s1, s4, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v83, v73, s1, 1
	s_mul_i32 s1, s4, 20
	v_add_lshl_u32 v84, v73, s1, 1
	s_mul_i32 s1, s4, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v85, v73, s1, 1
	s_mul_i32 s1, s4, 24
	v_add_lshl_u32 v86, v73, s1, 1
	s_mul_i32 s1, s4, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v87, v73, s1, 1
	s_mul_i32 s1, s4, 28
	v_add_lshl_u32 v88, v73, s1, 1
	s_mul_i32 s1, s4, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v89, v73, s1, 1
	v_readlane_b32 s1, v253, 20
	v_add_lshl_u32 v90, v73, s1, 1
	s_mul_i32 s1, s4, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v91, v73, s1, 1
	s_mul_i32 s1, s4, 36
	v_add_lshl_u32 v92, v73, s1, 1
	s_mul_i32 s1, s4, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v93, v73, s1, 1
	s_mul_i32 s1, s4, 40
	v_add_lshl_u32 v94, v73, s1, 1
	s_mul_i32 s1, s4, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v95, v73, s1, 1
	s_mul_i32 s1, s4, 44
	v_add_lshl_u32 v96, v73, s1, 1
	s_mul_i32 s1, s4, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v97, v73, s1, 1
	s_mul_i32 s1, s4, 48
	v_add_lshl_u32 v98, v73, s1, 1
	s_mul_i32 s1, s4, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v99, v73, s1, 1
	s_mul_i32 s1, s4, 52
	v_add_lshl_u32 v100, v73, s1, 1
	s_mul_i32 s1, s4, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v101, v73, s1, 1
	s_mul_i32 s1, s4, 56
	v_add_lshl_u32 v102, v73, s1, 1
	s_mul_i32 s1, s4, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v103, v73, s1, 1
	s_mul_i32 s1, s4, 60
	v_add_lshl_u32 v104, v73, s1, 1
	s_mul_i32 s1, s4, 62
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v73, v73, s1, 1
	.loc	1 696 26                        ; attention.py:696:26
	v_readlane_b32 s1, v253, 31
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 0
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 3
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 4
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 5
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 6
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 7
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	s_clause 0x7
	buffer_load_u16 v74, v74, s[36:39], 0 offen
	buffer_load_u16 v75, v75, s[36:39], 0 offen
	buffer_load_u16 v76, v76, s[36:39], 0 offen
	buffer_load_u16 v77, v77, s[36:39], 0 offen
	buffer_load_u16 v78, v78, s[36:39], 0 offen
	buffer_load_u16 v79, v79, s[36:39], 0 offen
	buffer_load_u16 v80, v80, s[36:39], 0 offen
	buffer_load_u16 v81, v81, s[36:39], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 8
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 9
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 10
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 11
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 12
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 13
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 14
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 15
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_clause 0x7
	buffer_load_u16 v82, v82, s[36:39], 0 offen
	buffer_load_u16 v83, v83, s[36:39], 0 offen
	buffer_load_u16 v84, v84, s[36:39], 0 offen
	buffer_load_u16 v85, v85, s[36:39], 0 offen
	buffer_load_u16 v86, v86, s[36:39], 0 offen
	buffer_load_u16 v87, v87, s[36:39], 0 offen
	buffer_load_u16 v88, v88, s[36:39], 0 offen
	buffer_load_u16 v89, v89, s[36:39], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 16
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 17
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 18
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 19
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 20
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 21
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 24
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 22
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	s_clause 0x7
	buffer_load_u16 v90, v90, s[36:39], 0 offen
	buffer_load_u16 v91, v91, s[36:39], 0 offen
	buffer_load_u16 v92, v92, s[36:39], 0 offen
	buffer_load_u16 v93, v93, s[36:39], 0 offen
	buffer_load_u16 v94, v94, s[36:39], 0 offen
	buffer_load_u16 v95, v95, s[36:39], 0 offen
	buffer_load_u16 v96, v96, s[36:39], 0 offen
	buffer_load_u16 v97, v97, s[36:39], 0 offen
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 25
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 27
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 29
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 23
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 26
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 28
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	v_readlane_b32 s1, v255, 30
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u16 v98, v98, s[36:39], 0 offen
	buffer_load_u16 v99, v99, s[36:39], 0 offen
	buffer_load_u16 v100, v100, s[36:39], 0 offen
	buffer_load_u16 v101, v101, s[36:39], 0 offen
	buffer_load_u16 v102, v102, s[36:39], 0 offen
	buffer_load_u16 v103, v103, s[36:39], 0 offen
	buffer_load_u16 v104, v104, s[36:39], 0 offen
	buffer_load_u16 v73, v73, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v105, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, 0, v105
	ds_store_b16 v105, v74
	ds_store_b16 v105, v75 offset:256
	ds_store_b16 v105, v76 offset:512
	ds_store_b16 v105, v77 offset:768
	ds_store_b16 v105, v78 offset:1024
	ds_store_b16 v105, v79 offset:1280
	ds_store_b16 v105, v80 offset:1536
	ds_store_b16 v105, v81 offset:1792
	ds_store_b16 v105, v82 offset:2048
	ds_store_b16 v105, v83 offset:2304
	ds_store_b16 v105, v84 offset:2560
	ds_store_b16 v105, v85 offset:2816
	ds_store_b16 v105, v86 offset:3072
	ds_store_b16 v105, v87 offset:3328
	ds_store_b16 v105, v88 offset:3584
	ds_store_b16 v105, v89 offset:3840
	ds_store_b16 v105, v90 offset:4096
	ds_store_b16 v105, v91 offset:4352
	ds_store_b16 v105, v92 offset:4608
	ds_store_b16 v105, v93 offset:4864
	ds_store_b16 v105, v94 offset:5120
	ds_store_b16 v105, v95 offset:5376
	ds_store_b16 v105, v96 offset:5632
	ds_store_b16 v105, v97 offset:5888
	ds_store_b16 v105, v98 offset:6144
	ds_store_b16 v105, v99 offset:6400
	ds_store_b16 v105, v100 offset:6656
	ds_store_b16 v105, v101 offset:6912
	ds_store_b16 v105, v102 offset:7168
	ds_store_b16 v105, v103 offset:7424
	ds_store_b16 v105, v104 offset:7680
	ds_store_b16 v105, v73 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v75, v237 offset:608
	ds_load_u16_d16 v74, v237 offset:352
	ds_load_u16_d16 v89, v237
	ds_load_u16_d16 v91, v237 offset:512
	ds_load_u16_d16 v90, v237 offset:256
	ds_load_u16_d16 v92, v237 offset:768
	ds_load_u16_d16 v83, v237 offset:576
	ds_load_u16_d16 v84, v237 offset:832
	ds_load_u16_d16 v93, v237 offset:1024
	ds_load_u16_d16 v85, v237 offset:1088
	ds_load_u16_d16 v94, v237 offset:1280
	ds_load_u16_d16 v86, v237 offset:1344
	ds_load_u16_d16 v95, v237 offset:1536
	ds_load_u16_d16 v96, v237 offset:1792
	ds_load_u16_d16 v87, v237 offset:1600
	ds_load_u16_d16 v81, v237 offset:64
	ds_load_u16_d16 v82, v237 offset:320
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v118, v13
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v90, v237 offset:384
	ds_load_u16_d16_hi v91, v237 offset:640
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v83, v237 offset:704
	ds_load_u16_d16_hi v92, v237 offset:896
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v84, v237 offset:960
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v93, v237 offset:1152
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v237 offset:1216
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v94, v237 offset:1408
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v237 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v95, v237 offset:1664
	ds_load_u16_d16 v88, v237 offset:1856
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v237 offset:1728
	ds_load_u16_d16_hi v96, v237 offset:1920
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v76, v73
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v74, v237 offset:480
	ds_load_u16_d16 v73, v237 offset:96
	ds_load_u16_d16 v155, v237 offset:32
	ds_load_u16_d16 v156, v237 offset:288
	ds_load_u16_d16_hi v89, v237 offset:128
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v98, 0, v76, vcc_lo
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v155, v237 offset:160
	ds_load_u16_d16_hi v81, v237 offset:192
	ds_load_u16_d16_hi v73, v237 offset:224
	ds_load_u16_d16 v157, v237 offset:544
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v156, v237 offset:416
	ds_load_u16_d16_hi v82, v237 offset:448
	ds_load_u16_d16 v76, v237 offset:864
	ds_load_u16_d16 v77, v237 offset:1120
	ds_load_u16_d16 v78, v237 offset:1376
	ds_load_u16_d16 v79, v237 offset:1632
	ds_load_u16_d16_hi v88, v237 offset:1984
	ds_load_u16_d16 v97, v237 offset:2048
	ds_load_u16_d16 v105, v237 offset:2112
	ds_load_u16_d16 v80, v237 offset:1888
	ds_load_u16_d16 v158, v237 offset:800
	ds_load_u16_d16 v159, v237 offset:1056
	ds_load_u16_d16 v160, v237 offset:1312
	ds_load_u16_d16 v161, v237 offset:1568
	ds_load_u16_d16 v162, v237 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v157, v237 offset:672
	ds_load_u16_d16_hi v75, v237 offset:736
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v57, v57, v98
	v_mul_f32_e32 v58, v58, v98
	v_mul_f32_e32 v59, v59, v98
	v_mul_f32_e32 v60, v60, v98
	v_mul_f32_e32 v61, v61, v98
	v_mul_f32_e32 v62, v62, v98
	v_mul_f32_e32 v63, v63, v98
	v_mul_f32_e32 v64, v64, v98
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v158, v237 offset:928
	ds_load_u16_d16_hi v76, v237 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v159, v237 offset:1184
	ds_load_u16_d16_hi v77, v237 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v160, v237 offset:1440
	ds_load_u16_d16_hi v78, v237 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v161, v237 offset:1696
	ds_load_u16_d16_hi v79, v237 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v162, v237 offset:1952
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[89:96], v[65:72], v[57:64]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v80, v237 offset:2016
	ds_load_u16_d16 v106, v237 offset:2368
	ds_load_u16_d16_hi v105, v237 offset:2240
	ds_load_u16_d16 v113, v237 offset:2080
	ds_load_u16_d16 v89, v237 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v49, v49, v98
	v_mul_f32_e32 v50, v50, v98
	v_mul_f32_e32 v51, v51, v98
	v_mul_f32_e32 v52, v52, v98
	v_mul_f32_e32 v53, v53, v98
	v_mul_f32_e32 v54, v54, v98
	v_mul_f32_e32 v55, v55, v98
	v_mul_f32_e32 v56, v56, v98
	v_mul_f32_e32 v41, v41, v98
	v_mul_f32_e32 v42, v42, v98
	v_mul_f32_e32 v43, v43, v98
	v_mul_f32_e32 v44, v44, v98
	v_mul_f32_e32 v45, v45, v98
	v_mul_f32_e32 v46, v46, v98
	v_mul_f32_e32 v47, v47, v98
	v_mul_f32_e32 v48, v48, v98
	v_mul_f32_e32 v33, v33, v98
	v_mul_f32_e32 v34, v34, v98
	v_mul_f32_e32 v35, v35, v98
	v_mul_f32_e32 v36, v36, v98
	v_mul_f32_e32 v37, v37, v98
	v_mul_f32_e32 v38, v38, v98
	v_mul_f32_e32 v39, v39, v98
	v_mul_f32_e32 v40, v40, v98
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[155:162], v[65:72], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[81:88], v[65:72], v[41:48]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v114, v237 offset:2336
	ds_load_u16_d16 v115, v237 offset:2592
	ds_load_u16_d16 v116, v237 offset:2848
	ds_load_u16_d16 v117, v237 offset:3104
	ds_load_u16_d16 v118, v237 offset:3360
	ds_load_u16_d16 v119, v237 offset:3616
	ds_load_u16_d16 v120, v237 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v113, v237 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v89, v237 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[33:40], v[73:80], v[65:72], v[33:40]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v110, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v65.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v215
	v_add3_u32 v66, v65, v66, 0x7fff
	v_mov_b16_e32 v65.l, v32.h
	v_mov_b16_e64 v65.h, v215.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v32, v65, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v66.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v32.l, 0x7fff, v65.h, s1
	v_cmp_o_f32_e64 s1, v29, v29
	v_permlanex16_b32 v65, v32, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v75, v65, v32, v202
	v_perm_b32 v76, v65, v32, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v32, v112, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s89
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v32.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v65, 1, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v32, v65, 0x7fff
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e64 v32.h, v215.h
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v32, v29, v32, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v65.h, vcc_lo
	v_cndmask_b16 v29.l, 0x7fff, v32.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v32, v29, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v32, v29, v202
	v_perm_b32 v78, v32, v29, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v111, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v215
	v_add3_u32 v32, v29, v32, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v31, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v31.h, v215.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v31.l, v29.h
	v_cmp_o_f32_e64 s1, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v29, v31, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v32.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s1
	v_permlanex16_b32 v31, v29, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v79, v31, v29, v202
	v_perm_b32 v80, v31, v29, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v109, v13
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v99, v237 offset:2560
	ds_load_u16_d16 v107, v237 offset:2624
	ds_load_u16_d16 v100, v237 offset:2816
	ds_load_u16_d16 v108, v237 offset:2880
	ds_load_u16_d16 v101, v237 offset:3072
	ds_load_u16_d16 v109, v237 offset:3136
	ds_load_u16_d16 v102, v237 offset:3328
	ds_load_u16_d16 v110, v237 offset:3392
	ds_load_u16_d16 v103, v237 offset:3584
	ds_load_u16_d16 v111, v237 offset:3648
	ds_load_u16_d16 v104, v237 offset:3840
	ds_load_u16_d16 v98, v237 offset:2304
	ds_load_u16_d16_hi v97, v237 offset:2176
	ds_load_u16_d16_hi v106, v237 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v99, v237 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v107, v237 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v100, v237 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v108, v237 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v101, v237 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v109, v237 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v102, v237 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v110, v237 offset:3520
	ds_load_u16_d16 v112, v237 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v103, v237 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v111, v237 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v104, v237 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v98, v237 offset:2432
	ds_load_u16_d16 v90, v237 offset:2400
	ds_load_u16_d16 v91, v237 offset:2656
	ds_load_u16_d16 v92, v237 offset:2912
	ds_load_u16_d16 v93, v237 offset:3168
	ds_load_u16_d16 v94, v237 offset:3424
	ds_load_u16_d16 v95, v237 offset:3680
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v112, v237 offset:4032
	ds_load_u16_d16 v65, v237 offset:4096
	ds_load_u16_d16 v73, v237 offset:4160
	ds_load_u16_d16 v96, v237 offset:3936
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v215.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v31, 1, v215
	v_mov_b16_e64 v215.l, v28.h
	v_add3_u32 v31, v29, v31, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v30, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v30.h, v215.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v30.l, v29.h
	v_cmp_o_f32_e64 s1, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v29, v30, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s1
	v_cmp_o_f32_e64 s1, v21, v21
	v_permlanex16_b32 v30, v29, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v81, v30, v29, v202
	v_perm_b32 v82, v30, v29, v203
	v_and_b32_e32 v29, 1, v215
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[105:112], v[75:82], v[41:48]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v29, v28, v29, 0x7fff
	v_mov_b16_e32 v28.l, v21.h
	v_mov_b16_e64 v28.h, v215.h
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[97:104], v[75:82], v[57:64]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v114, v237 offset:2464
	ds_load_u16_d16_hi v90, v237 offset:2528
	ds_load_u16_d16_hi v115, v237 offset:2720
	ds_load_u16_d16_hi v91, v237 offset:2784
	ds_load_u16_d16_hi v116, v237 offset:2976
	ds_load_u16_d16_hi v92, v237 offset:3040
	ds_load_u16_d16_hi v117, v237 offset:3232
	ds_load_u16_d16_hi v93, v237 offset:3296
	ds_load_u16_d16_hi v118, v237 offset:3488
	ds_load_u16_d16_hi v94, v237 offset:3552
	ds_load_u16_d16_hi v119, v237 offset:3744
	ds_load_u16_d16_hi v95, v237 offset:3808
	ds_load_u16_d16_hi v120, v237 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v96, v237 offset:4064
	ds_load_u16_d16 v74, v237 offset:4416
	ds_load_u16_d16_hi v73, v237 offset:4288
	ds_load_u16_d16 v97, v237 offset:4128
	ds_load_u16_d16 v83, v237 offset:4192
	ds_load_u16_d16 v98, v237 offset:4384
	ds_load_u16_d16 v99, v237 offset:4640
	ds_load_u16_d16 v100, v237 offset:4896
	ds_load_u16_d16 v101, v237 offset:5152
	ds_load_u16_d16 v102, v237 offset:5408
	ds_load_u16_d16 v103, v237 offset:5664
	ds_load_u16_d16 v104, v237 offset:5920
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v97, v237 offset:4256
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v83, v237 offset:4320
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v28, 1, v28
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[49:56], v[113:120], v[75:82], v[49:56]
	v_wmma_f32_16x16x16_bf16 v[33:40], v[89:96], v[75:82], v[33:40]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v67, v237 offset:4608
	ds_load_u16_d16 v75, v237 offset:4672
	ds_load_u16_d16 v68, v237 offset:4864
	ds_load_u16_d16 v76, v237 offset:4928
	ds_load_u16_d16 v69, v237 offset:5120
	ds_load_u16_d16 v77, v237 offset:5184
	ds_load_u16_d16 v70, v237 offset:5376
	ds_load_u16_d16 v78, v237 offset:5440
	ds_load_u16_d16 v71, v237 offset:5632
	ds_load_u16_d16 v79, v237 offset:5696
	ds_load_u16_d16 v72, v237 offset:5888
	ds_load_u16_d16 v66, v237 offset:4352
	ds_load_u16_d16_hi v65, v237 offset:4224
	ds_load_u16_d16_hi v74, v237 offset:4544
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v67, v237 offset:4736
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v75, v237 offset:4800
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v68, v237 offset:4992
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v76, v237 offset:5056
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v69, v237 offset:5248
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v77, v237 offset:5312
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v70, v237 offset:5504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v78, v237 offset:5568
	ds_load_u16_d16 v80, v237 offset:5952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v71, v237 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v79, v237 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v72, v237 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v66, v237 offset:4480
	ds_load_u16_d16 v84, v237 offset:4448
	ds_load_u16_d16 v85, v237 offset:4704
	ds_load_u16_d16 v86, v237 offset:4960
	ds_load_u16_d16 v87, v237 offset:5216
	ds_load_u16_d16 v88, v237 offset:5472
	ds_load_u16_d16 v89, v237 offset:5728
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v28, v21, v28, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v29.h, vcc_lo
	v_mov_b32_e32 v118, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v21.l, 0x7fff, v28.h, s1
	v_permlanex16_b32 v28, v21, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v105, v28, v21, v202
	v_perm_b32 v106, v28, v21, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v27, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v21, 0, v21, s81
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v27, 1, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v27, v21, v27, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v26, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v26.h, v215.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v21, 0, v21, s80
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v26.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v21, v21
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v21, v26, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v27.h, vcc_lo
	v_cndmask_b16 v21.l, 0x7fff, v26.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v26, v21, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v107, v26, v21, v202
	v_perm_b32 v108, v26, v21, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v25, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v21, 0, v21, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v21.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v215
	v_add3_u32 v25, v21, v25, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v24, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v24.h, v215.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v21, 0, v21, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v24.l, v21.h
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v21, v24, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s1
	v_permlanex16_b32 v24, v21, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v109, v24, v21, v202
	v_perm_b32 v110, v24, v21, v203
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v23, v13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v21, 0, v21, s76
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v215.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v23, 1, v215
	v_mov_b16_e64 v215.l, v20.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v22, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v22.h, v215.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v21, 0, v21, s75
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v22.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v21, v21
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v21, v22, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s1
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v22, v21, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v111, v22, v21, v202
	v_perm_b32 v112, v22, v21, v203
	v_and_b32_e32 v22, 1, v215
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v80, v237 offset:6080
	ds_load_u16_d16 v21, v237 offset:6144
	ds_load_u16_d16 v81, v237 offset:6208
	ds_load_u16_d16 v90, v237 offset:5984
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v215.l, v18.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[105:112], v[57:64]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v22, v20, v22, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e64 v20.h, v215.h
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v98, v237 offset:4512
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v84, v237 offset:4576
	ds_load_u16_d16_hi v99, v237 offset:4768
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v85, v237 offset:4832
	ds_load_u16_d16_hi v100, v237 offset:5024
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v86, v237 offset:5088
	ds_load_u16_d16_hi v101, v237 offset:5280
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v237 offset:5344
	ds_load_u16_d16_hi v102, v237 offset:5536
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v88, v237 offset:5600
	ds_load_u16_d16_hi v103, v237 offset:5792
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v237 offset:5856
	ds_load_u16_d16_hi v104, v237 offset:6048
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v90, v237 offset:6112
	ds_load_u16_d16 v82, v237 offset:6464
	ds_load_u16_d16_hi v81, v237 offset:6336
	ds_load_u16_d16 v65, v237 offset:6176
	ds_load_u16_d16 v91, v237 offset:6240
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v20, 1, v20
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[41:48], v[73:80], v[105:112], v[41:48]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v66, v237 offset:6432
	ds_load_u16_d16 v67, v237 offset:6688
	ds_load_u16_d16 v68, v237 offset:6944
	ds_load_u16_d16 v69, v237 offset:7200
	ds_load_u16_d16 v70, v237 offset:7456
	ds_load_u16_d16 v71, v237 offset:7712
	ds_load_u16_d16 v72, v237 offset:7968
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v65, v237 offset:6304
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v91, v237 offset:6368
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[33:40], v[83:90], v[105:112], v[33:40]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v23, v237 offset:6656
	ds_load_u16_d16 v83, v237 offset:6720
	ds_load_u16_d16 v24, v237 offset:6912
	ds_load_u16_d16 v84, v237 offset:6976
	ds_load_u16_d16 v25, v237 offset:7168
	ds_load_u16_d16 v85, v237 offset:7232
	ds_load_u16_d16 v26, v237 offset:7424
	ds_load_u16_d16 v86, v237 offset:7488
	ds_load_u16_d16 v27, v237 offset:7680
	ds_load_u16_d16 v87, v237 offset:7744
	ds_load_u16_d16 v28, v237 offset:7936
	ds_load_u16_d16 v22, v237 offset:6400
	ds_load_u16_d16_hi v21, v237 offset:6272
	ds_load_u16_d16_hi v82, v237 offset:6592
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s1
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[49:56], v[97:104], v[105:112], v[49:56]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v23, v237 offset:6784
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v83, v237 offset:6848
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v24, v237 offset:7040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v84, v237 offset:7104
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v25, v237 offset:7296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v85, v237 offset:7360
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v26, v237 offset:7552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v237 offset:7616
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v27, v237 offset:7808
	ds_load_u16_d16 v88, v237 offset:8000
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v237 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v28, v237 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v22, v237 offset:6528
	ds_load_u16_d16 v92, v237 offset:6496
	ds_load_u16_d16 v93, v237 offset:6752
	ds_load_u16_d16 v94, v237 offset:7008
	ds_load_u16_d16 v95, v237 offset:7264
	ds_load_u16_d16 v96, v237 offset:7520
	ds_load_u16_d16 v97, v237 offset:7776
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v20, v19, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v88, v237 offset:8128
	ds_load_u16_d16 v98, v237 offset:8032
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v73, v20, v19, v202
	v_perm_b32 v74, v20, v19, v203
	v_and_b32_e32 v19, 1, v215
	v_mov_b16_e64 v215.l, v16.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v66, v237 offset:6560
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v92, v237 offset:6624
	ds_load_u16_d16_hi v67, v237 offset:6816
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v93, v237 offset:6880
	ds_load_u16_d16_hi v68, v237 offset:7072
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v94, v237 offset:7136
	ds_load_u16_d16_hi v69, v237 offset:7328
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v95, v237 offset:7392
	ds_load_u16_d16_hi v70, v237 offset:7584
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v96, v237 offset:7648
	ds_load_u16_d16_hi v71, v237 offset:7840
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v97, v237 offset:7904
	ds_load_u16_d16_hi v72, v237 offset:8096
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v98, v237 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v19, v18, v19, 0x7fff
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e64 v18.h, v215.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v17, v18, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_cmp_o_f32_e64 s1, v15, v15
	v_permlanex16_b32 v18, v17, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v75, v18, v17, v202
	v_perm_b32 v76, v18, v17, v203
	v_and_b32_e32 v17, 1, v215
	v_mov_b16_e64 v215.l, v14.h
	v_add3_u32 v17, v16, v17, 0x7fff
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e64 v16.h, v215.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v15, v16, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s1
	v_cmp_o_f32_e64 s1, v0, v0
	v_permlanex16_b32 v16, v15, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v77, v16, v15, v202
	v_perm_b32 v78, v16, v15, v203
	v_and_b32_e32 v15, 1, v215
	v_mov_b16_e64 v215.l, v0.h
	v_add3_u32 v15, v14, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v215
	v_add3_u32 v14, v0, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v15.h, vcc_lo
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v12
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v0.l, 0x7fff, v14.h, s1
	.loc	1 629 13                        ; attention.py:629:13
	v_readlane_b32 s1, v253, 29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v14, v0, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s27, s1
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v79, v14, v0, v202
	v_perm_b32 v80, v14, v0, v203
.Ltmp698:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v134
	v_mov_b32_e32 v0, v133
.Ltmp699:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[65:72], v[73:80], v[49:56]
.Ltmp700:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp701:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[57:64], v[21:28], v[73:80], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[81:88], v[73:80], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[91:98], v[73:80], v[33:40]
.Ltmp702:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp703:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v134, v14
.Ltmp704:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp705:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v150, v14
.Ltmp706:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp707:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v74, v130, v14
.Ltmp708:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp709:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v146, v14
.Ltmp710:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp711:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v82, v126, v14 :: v_dual_add_f32 v65, v133, v0
.Ltmp712:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v135
	v_mov_b32_e32 v14, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp713:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v67, v135, v0 :: v_dual_mov_b32 v0, v136
	v_add_f32_e32 v86, v142, v14
.Ltmp714:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp715:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v136, v0
.Ltmp716:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v149
.Ltmp717:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v122, v14
.Ltmp718:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v14, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp719:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v69, v149, v0 :: v_dual_mov_b32 v0, v151
	v_add_f32_e32 v94, v138, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp720:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp721:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v71, v151, v0 :: v_dual_mov_b32 v0, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp722:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp723:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v72, v152, v0
.Ltmp724:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp725:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v73, v129, v0 :: v_dual_mov_b32 v0, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp726:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp727:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v75, v131, v0 :: v_dual_mov_b32 v0, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp728:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp729:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v76, v132, v0
.Ltmp730:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp731:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v77, v145, v0 :: v_dual_mov_b32 v0, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp732:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp733:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v79, v147, v0 :: v_dual_mov_b32 v0, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp734:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp735:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v148, v0
.Ltmp736:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp737:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v81, v125, v0 :: v_dual_mov_b32 v0, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp738:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp739:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v83, v127, v0 :: v_dual_mov_b32 v0, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp740:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp741:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v128, v0
.Ltmp742:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp743:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v85, v141, v0 :: v_dual_mov_b32 v0, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp744:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp745:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v87, v143, v0 :: v_dual_mov_b32 v0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp746:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp747:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v88, v144, v0
.Ltmp748:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp749:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v89, v121, v0 :: v_dual_mov_b32 v0, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp750:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp751:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v91, v123, v0 :: v_dual_mov_b32 v0, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp752:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp753:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v92, v124, v0
.Ltmp754:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp755:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v93, v137, v0 :: v_dual_mov_b32 v0, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp756:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp757:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v95, v139, v0 :: v_dual_mov_b32 v0, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp758:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp759:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v96, v140, v0
.Ltmp760:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v0, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v193
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v14, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v14, v14
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v12, 0, v14, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v65, v11, v12
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v11, v9, v9
	v_max_f32_e32 v11, v11, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v12, v9, v11
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v9, 0, v12, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v7
	v_mov_b32_e32 v12, v0
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_dual_fmac_f32 v66, v10, v9 :: v_dual_max_f32 v9, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v10, v9, v179
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v9, v7, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v9, v9
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v7, 0, v9, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v67, v8, v7
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v7, v5, v5
	v_max_f32_e32 v8, v7, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v7, v5, v8
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v5, 0, v7, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v3
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v10, v66
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_dual_fmac_f32 v68, v6, v5 :: v_dual_max_f32 v5, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v6, v5, v234
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v5, v3, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v5, v5
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v3, 0, v5, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v1
	v_mov_b32_e32 v5, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v69, v4, v3
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v3, v1, v1
	v_max_f32_e32 v4, v3, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v3, v1, v4
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v3, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v3, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v154
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v70, v2, v1
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v154, v154
	v_max_f32_e32 v2, v1, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v154, v2
	v_mov_b32_e32 v154, v2
	v_mov_b32_e32 v2, v70
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v201
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v71, v3, v1
	scratch_load_b32 v3, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v201, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v14, v1, v228
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v201, v14
	v_mov_b32_e32 v201, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v199
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v3, v1
	scratch_load_b32 v3, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v199, v199
	v_max_f32_e32 v15, v1, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v199, v15
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v197
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v73, v3, v1
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v16, v1, v208
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v197, v16
	v_mov_b32_e32 v197, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v235
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v3, v1
	scratch_load_b32 v3, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v235, v235
	v_max_f32_e32 v17, v1, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v235, v17
	v_mov_b32_e32 v235, v17
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v233
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v75, v3, v1
	scratch_load_b32 v3, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v233, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v18, v1, v204
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v233, v18
	v_mov_b32_e32 v233, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v3, v1
	scratch_load_b32 v3, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v231, v231
	v_max_f32_e32 v19, v1, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v231, v19
	v_mov_b32_e32 v231, v19
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v229
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v77, v3, v1
	scratch_load_b32 v3, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v229, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v20, v1, v221
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v229, v20
	v_mov_b32_e32 v229, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v227
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v3, v1
	scratch_load_b32 v3, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v227, v227
	v_max_f32_e32 v21, v1, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v227, v21
	v_mov_b32_e32 v227, v21
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v249
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v79, v3, v1
	scratch_load_b32 v3, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v249, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v22, v1, v195
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v249, v22
	v_mov_b32_e32 v249, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v252
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v3, v1
	scratch_load_b32 v3, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v252, v252
	v_max_f32_e32 v23, v1, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v252, v23 :: v_dual_mov_b32 v252, v23
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v250
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v3, v1
	scratch_load_b32 v3, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v250, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v24, v1, v189
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v250, v24 :: v_dual_mov_b32 v250, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v3, v1
	scratch_load_b32 v3, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v153, v153
	v_max_f32_e32 v25, v1, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v153, v25
	v_mov_b32_e32 v153, v25
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v223
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v3, v1
	scratch_load_b32 v3, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v26, v1, v185
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v223, v26
	v_mov_b32_e32 v223, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v214
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v3, v1
	scratch_load_b32 v3, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v1, v214, v214 :: v_dual_mov_b32 v26, v84
	v_max_f32_e32 v27, v1, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v214, v27 :: v_dual_mov_b32 v214, v27
	v_mov_b32_e32 v27, v83
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v242
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v85, v3, v1
	scratch_load_b32 v3, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v242, v242
	v_mov_b32_e32 v25, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v28, v1, v200
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v242, v28 :: v_dual_mov_b32 v242, v28
	v_mov_b32_e32 v28, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v194
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v3, v1
	scratch_load_b32 v3, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v194, v194
	v_dual_mov_b32 v24, v86 :: v_dual_mov_b32 v103, v71
	v_max_f32_e32 v29, v1, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v194, v29 :: v_dual_mov_b32 v194, v29
	v_mov_b32_e32 v29, v81
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v87, v3, v1
	scratch_load_b32 v3, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v192, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v23, v87 :: v_dual_max_f32 v30, v1, v196
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v192, v30 :: v_dual_mov_b32 v192, v30
	v_mov_b32_e32 v30, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v190
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v3, v1
	scratch_load_b32 v3, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v1, v190, v190 :: v_dual_mov_b32 v22, v88
	v_max_f32_e32 v31, v1, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v190, v31 :: v_dual_mov_b32 v190, v31
	v_mov_b32_e32 v31, v79
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v188
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v89, v3, v1
	scratch_load_b32 v3, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v188, v188
	v_mov_b32_e32 v21, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v32, v1, v176
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v188, v32
	v_dual_mov_b32 v188, v32 :: v_dual_mov_b32 v9, v11
	v_dual_mov_b32 v11, v65 :: v_dual_mov_b32 v32, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v186
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v3, v1
	scratch_load_b32 v3, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v186, v186
	v_dual_mov_b32 v20, v90 :: v_dual_max_f32 v97, v1, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v186, v97 :: v_dual_mov_b32 v186, v97
	v_mov_b32_e32 v97, v77
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v184
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v91, v3, v1
	scratch_load_b32 v3, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v184, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v91 :: v_dual_max_f32 v98, v1, v205
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v184, v98 :: v_dual_mov_b32 v184, v98
	v_mov_b32_e32 v98, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v182
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v3, v1
	scratch_load_b32 v3, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v1, v182, v182 :: v_dual_mov_b32 v18, v92
	v_max_f32_e32 v99, v1, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v182, v99 :: v_dual_mov_b32 v182, v99
	v_mov_b32_e32 v99, v75
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v180
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v93, v3, v1
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v180, v180
	v_mov_b32_e32 v17, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v1, v251
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v180, v100
	v_mov_b32_e32 v180, v100
	v_mov_b32_e32 v100, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v178
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v3, v1
	scratch_load_b32 v3, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v178, v178
	v_dual_mov_b32 v16, v94 :: v_dual_max_f32 v101, v1, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v1, v178, v101 :: v_dual_mov_b32 v178, v101
	v_dual_mov_b32 v8, v67 :: v_dual_mov_b32 v101, v73
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v177
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v95, v3, v1
	scratch_load_b32 v3, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v1, v177, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v1, v213
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v1, v177, v102
	v_dual_mov_b32 v177, v102 :: v_dual_mov_b32 v102, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v1, v1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v96, v3, v1 :: v_dual_mov_b32 v3, v6
	v_mov_b32_e32 v1, v4
	v_mov_b32_e32 v6, v68
	v_mov_b32_e32 v4, v69
	v_dual_mov_b32 v0, v96 :: v_dual_mov_b32 v199, v15
	v_mov_b32_e32 v15, v95
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_78
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v103, off offset:132
	scratch_store_b32 off, v102, off offset:128
	scratch_store_b32 off, v101, off offset:124
	scratch_store_b32 off, v100, off offset:120
	scratch_store_b32 off, v99, off offset:116
	scratch_store_b32 off, v98, off offset:112
	scratch_store_b32 off, v97, off offset:108
	scratch_store_b32 off, v32, off offset:104
	scratch_store_b32 off, v31, off offset:100
	scratch_store_b32 off, v30, off offset:96
	scratch_store_b32 off, v29, off offset:92
	scratch_store_b32 off, v28, off offset:88
	scratch_store_b32 off, v27, off offset:84
	scratch_store_b32 off, v26, off offset:80
	scratch_store_b32 off, v25, off offset:76
	scratch_store_b32 off, v24, off offset:72
	scratch_store_b32 off, v23, off offset:68
	scratch_store_b32 off, v22, off offset:64
	scratch_store_b32 off, v21, off offset:60
	scratch_store_b32 off, v20, off offset:56
	scratch_store_b32 off, v19, off offset:52
	scratch_store_b32 off, v18, off offset:48
	scratch_store_b32 off, v17, off offset:44
	scratch_store_b32 off, v16, off offset:40
	scratch_store_b32 off, v15, off offset:36
	scratch_store_b32 off, v0, off offset:32
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:140
	scratch_load_b64 v[13:14], off, off offset:276
	v_readlane_b32 s4, v253, 8
	v_readlane_b32 s7, v253, 11
	.loc	1 657 32                        ; attention.py:657:32
	v_readlane_b32 s1, v253, 12
	v_readlane_b32 s6, v253, 10
	v_readlane_b32 s5, v253, 9
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v14, off, off offset:308
	scratch_load_b64 v[15:16], off, off offset:312
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s47, s27, s1
	v_readlane_b32 s1, v254, 29
	v_writelane_b32 v253, s47, 30
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:320
	scratch_load_b32 v16, off, off offset:284
	scratch_load_b64 v[18:19], off, off offset:328
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s1, s47, s1
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0xd                            ; 104-byte Folded Reload
	scratch_load_b64 v[19:20], off, off offset:336
	scratch_load_b64 v[21:22], off, off offset:344
	scratch_load_b32 v20, off, off offset:288
	scratch_load_b64 v[22:23], off, off offset:352
	scratch_load_b64 v[23:24], off, off offset:360
	scratch_load_b64 v[29:30], off, off offset:392
	scratch_load_b64 v[24:25], off, off offset:292
	scratch_load_b64 v[25:26], off, off offset:368
	scratch_load_b64 v[26:27], off, off offset:376
	scratch_load_b64 v[27:28], off, off offset:384
	scratch_load_b32 v28, off, off offset:300
	scratch_load_b64 v[30:31], off, off offset:400
	scratch_load_b64 v[31:32], off, off offset:408
	scratch_load_b64 v[65:66], off, off offset:416
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(20)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v14, s1, v14, 1
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v15, s1, v15, 1
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s3
	v_writelane_b32 v253, s3, 31
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v17, s1, v17, 1
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v16, s1, v16, 1
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v18, s1, v18, 1
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v19, s1, v19, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v21, s1, v21, 1
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v20, s1, v20, 1
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v22, s1, v22, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v23, s1, v23, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v29, s1, v29, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v24, s1, v24, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v25, s1, v25, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v26, s1, v26, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v27, s1, v27, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v28, s1, v28, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v30, s1, v30, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v31, s1, v31, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v32, s1, v65, 1
	s_clause 0xa                            ; 88-byte Folded Reload
	scratch_load_b64 v[65:66], off, off offset:424
	scratch_load_b64 v[66:67], off, off offset:432
	scratch_load_b64 v[67:68], off, off offset:448
	scratch_load_b64 v[68:69], off, off offset:464
	scratch_load_b64 v[69:70], off, off offset:440
	scratch_load_b64 v[70:71], off, off offset:456
	scratch_load_b64 v[71:72], off, off offset:472
	scratch_load_b64 v[72:73], off, off offset:480
	scratch_load_b64 v[73:74], off, off offset:488
	scratch_load_b64 v[74:75], off, off offset:496
	scratch_load_b64 v[75:76], off, off offset:504
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s26, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	v_writelane_b32 v255, s26, 0
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v65, s1, v65, 1
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v66, s1, v66, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v67, s1, v67, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v68, s1, v68, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v69, s1, v69, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v70, s1, v70, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v71, s1, v71, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v72, s1, v72, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v73, s1, v73, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v74, s1, v74, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v75, s1, v75, 1
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s30, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	v_writelane_b32 v255, s30, 1
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s44, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	v_writelane_b32 v255, s44, 2
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s45, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	v_writelane_b32 v255, s45, 3
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s38, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	v_writelane_b32 v255, s38, 4
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s46, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	v_writelane_b32 v255, s46, 5
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s39, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	v_writelane_b32 v255, s39, 6
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s24, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	v_writelane_b32 v255, s24, 7
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s19, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	v_writelane_b32 v255, s19, 8
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s22, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	v_writelane_b32 v255, s22, 9
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s20, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	v_writelane_b32 v255, s20, 10
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s23, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	v_writelane_b32 v255, s23, 11
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s31, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	v_writelane_b32 v255, s31, 12
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s33, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	v_writelane_b32 v255, s33, 13
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s28, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	v_writelane_b32 v255, s28, 14
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s11, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	v_writelane_b32 v255, s11, 15
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s9, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	v_writelane_b32 v255, s9, 16
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s21, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	v_writelane_b32 v255, s21, 17
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s14, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	v_writelane_b32 v255, s14, 18
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s17, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	v_writelane_b32 v255, s17, 19
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s15, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	v_writelane_b32 v255, s15, 20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s18, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	v_writelane_b32 v255, s18, 21
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s25, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s6, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	v_writelane_b32 v255, s6, 22
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s4, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s8, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s5, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s16, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	v_writelane_b32 v255, s16, 23
	v_writelane_b32 v255, s25, 24
	v_writelane_b32 v255, s4, 25
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s12, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	v_writelane_b32 v255, s12, 26
	v_writelane_b32 v255, s8, 27
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s13, s7, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	v_writelane_b32 v255, s13, 28
	v_writelane_b32 v255, s5, 29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s10, s7, v0
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v0, s1, v13, 1
	scratch_load_b32 v13, off, off offset:304 ; 4-byte Folded Reload
	v_writelane_b32 v255, s10, 30
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s1, v13, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s26
	.loc	1 665 25                        ; attention.py:665:25
	v_readlane_b32 s1, v254, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s30
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s44
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s45
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s38
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s46
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s39
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s24
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x7
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s19
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s22
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s20
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s23
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s31
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s33
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s28
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s11
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v25, v25, s[40:43], 0 offen
	buffer_load_u16 v26, v26, s[40:43], 0 offen
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s9
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s14
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s17
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s15
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s18
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s6
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s16
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x5
	buffer_load_u16 v28, v28, s[40:43], 0 offen
	buffer_load_u16 v29, v29, s[40:43], 0 offen
	buffer_load_u16 v30, v30, s[40:43], 0 offen
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s25
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s4
	.loc	1 665 25                        ; attention.py:665:25
	v_readlane_b32 s4, v253, 1
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s12
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s8
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_u16 v67, v67, s[40:43], 0 offen
	buffer_load_u16 v68, v68, s[40:43], 0 offen
	buffer_load_u16 v70, v70, s[40:43], 0 offen
	buffer_load_u16 v71, v71, s[40:43], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s13
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s5
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x1
	buffer_load_u16 v72, v72, s[40:43], 0 offen
	buffer_load_u16 v73, v73, s[40:43], 0 offen
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 vcc_lo, s2, s10
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s8, v253, 21
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	s_clause 0x5
	buffer_load_u16 v27, v27, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v69, v69, s[40:43], 0 offen
	buffer_load_u16 v31, v31, s[40:43], 0 offen
	buffer_load_u16 v75, v75, s[40:43], 0 offen
	buffer_load_u16 v74, v74, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_readlane_b32 s15, v253, 28
	v_readlane_b32 s14, v253, 27
	v_readlane_b32 s9, v253, 22
	v_readlane_b32 s10, v253, 23
	v_readlane_b32 s11, v253, 24
	v_readlane_b32 s12, v253, 25
	v_readlane_b32 s13, v253, 26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v112, s15 :: v_dual_mov_b32 v107, s10
	v_dual_mov_b32 v108, s11 :: v_dual_mov_b32 v105, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v110, s13 :: v_dual_mov_b32 v109, s12
	v_mov_b32_e32 v106, s9
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v216, v0
	s_waitcnt vmcnt(27)
	ds_store_b16 v216, v16 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v216, v20 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v216, v24 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v216, v28 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v216, v32 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v216, v67 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v216, v68 offset:7168
	ds_store_b16 v217, v13
	ds_store_b16 v217, v17 offset:1024
	ds_store_b16 v217, v21 offset:2048
	ds_store_b16 v217, v25 offset:3072
	ds_store_b16 v217, v29 offset:4096
	ds_store_b16 v217, v65 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v217, v70 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v217, v71 offset:7168
	ds_store_b16 v218, v14
	ds_store_b16 v218, v18 offset:1024
	ds_store_b16 v218, v22 offset:2048
	ds_store_b16 v218, v26 offset:3072
	ds_store_b16 v218, v30 offset:4096
	ds_store_b16 v218, v66 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v218, v72 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v218, v73 offset:7168
	ds_store_b16 v219, v15
	ds_store_b16 v219, v19 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v219, v23 offset:2048
	ds_store_b16 v219, v27 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v219, v31 offset:4096
	ds_store_b16 v219, v69 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v74 offset:6144
	ds_store_b16 v219, v75 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v0, off, off offset:648
	scratch_load_b32 v29, off, off offset:660
	scratch_load_b128 v[119:122], off, off offset:512
	scratch_load_b128 v[123:126], off, off offset:528
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v111, s14 :: v_dual_add_nc_u32 v0, 0, v0
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[17:20], v29
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[21:24], v0 offset:2048
	ds_load_b128 v[25:28], v29 offset:2048
	ds_load_b128 v[69:72], v29 offset:4096
	ds_load_b128 v[65:68], v0 offset:4096
	ds_load_b128 v[97:100], v0 offset:6144
	ds_load_b128 v[101:104], v29 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:668
	scratch_load_b32 v0, off, off offset:664
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt vmcnt(2) lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[13:20], v[119:126], v[105:112]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[21:28], v[119:126], v[105:112]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[119:126], v[105:112]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[119:126], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:544
	scratch_load_b128 v[101:104], off, off offset:560
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[21:24], v0 offset:2048
	ds_load_b128 v[25:28], v29 offset:2048
	ds_load_b128 v[17:20], v29
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[21:28], v[97:104], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[13:20], v[97:104], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[17:20], v29 offset:4096
	ds_load_b128 v[13:16], v0 offset:4096
	ds_load_b128 v[21:24], v0 offset:6144
	ds_load_b128 v[25:28], v29 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:676
	scratch_load_b32 v0, off, off offset:672
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[13:20], v[97:104], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[21:28], v[97:104], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:576
	scratch_load_b128 v[101:104], off, off offset:592
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[21:24], v0 offset:2048
	ds_load_b128 v[25:28], v29 offset:2048
	ds_load_b128 v[17:20], v29
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[21:28], v[97:104], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[13:20], v[97:104], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[17:20], v29 offset:4096
	ds_load_b128 v[13:16], v0 offset:4096
	ds_load_b128 v[21:24], v0 offset:6144
	ds_load_b128 v[25:28], v29 offset:6144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:684
	scratch_load_b32 v0, off, off offset:680
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[13:20], v[97:104], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[21:28], v[97:104], v[65:72]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[97:100], off, off offset:608
	scratch_load_b128 v[101:104], off, off offset:624
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(2)
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[21:24], v0 offset:2048
	ds_load_b128 v[25:28], v29 offset:2048
	ds_load_b128 v[17:20], v29
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[21:28], v[97:104], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[13:20], v[97:104], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[17:20], v29 offset:4096
	ds_load_b128 v[13:16], v0 offset:4096
	ds_load_b128 v[21:24], v0 offset:6144
	ds_load_b128 v[25:28], v29 offset:6144
	.loc	1 667 17                        ; attention.py:667:17
	scratch_load_b32 v0, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[13:20], v[97:104], v[73:80]
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b64 v[13:14], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[21:28], v[97:104], v[65:72]
	.loc	1 667 17                        ; attention.py:667:17
	s_waitcnt vmcnt(1)
	v_cmp_ne_u32_e32 vcc_lo, 1, v0
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s27, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_gt_i32_e64 s3, s7, v0
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s104, s1, s3
	v_readlane_b32 s1, v254, 6
	s_and_b32 s38, s4, s3
	s_and_b32 s66, s1, s3
	v_readlane_b32 s1, v254, 7
	s_and_b32 s31, s1, s3
	v_readlane_b32 s1, v254, 8
	s_and_b32 s65, s1, s3
	v_readlane_b32 s1, v254, 2
	s_and_b32 s30, s1, s3
	v_readlane_b32 s1, v254, 9
	s_and_b32 s64, s1, s3
	v_readlane_b32 s1, v254, 10
	s_and_b32 s33, s1, s3
	v_readlane_b32 s1, v254, 11
	s_and_b32 s63, s1, s3
	v_readlane_b32 s1, v254, 3
	s_and_b32 s28, s1, s3
	v_readlane_b32 s1, v254, 12
	s_and_b32 s62, s1, s3
	v_readlane_b32 s1, v254, 13
	s_and_b32 s39, s1, s3
	v_readlane_b32 s1, v254, 14
	s_and_b32 s61, s1, s3
	v_readlane_b32 s1, v254, 4
	s_and_b32 s60, s1, s3
	v_readlane_b32 s1, v254, 15
	s_and_b32 s59, s1, s3
	v_readlane_b32 s1, v254, 16
	s_and_b32 s58, s1, s3
	v_readlane_b32 s1, v254, 17
	s_and_b32 vcc_hi, s1, s3
	v_readlane_b32 s1, v254, 5
	s_and_b32 s57, s1, s3
	v_readlane_b32 s1, v254, 18
	s_and_b32 s56, s1, s3
	v_readlane_b32 s1, v254, 19
	s_and_b32 s55, s1, s3
	v_readlane_b32 s1, v254, 20
	s_and_b32 s54, s1, s3
	v_readlane_b32 s1, v254, 21
	s_and_b32 s53, s1, s3
	v_readlane_b32 s1, v254, 22
	s_and_b32 s52, s1, s3
	v_readlane_b32 s1, v254, 23
	s_and_b32 s51, s1, s3
	v_readlane_b32 s1, v254, 24
	s_and_b32 s49, s1, s3
	v_readlane_b32 s1, v254, 25
	s_and_b32 s50, s1, s3
	v_readlane_b32 s1, v254, 26
	s_and_b32 s48, s1, s3
	v_readlane_b32 s1, v254, 30
	s_and_b32 s47, s1, s3
	v_readlane_b32 s1, v253, 0
	s_and_b32 s46, s1, s3
	v_readlane_b32 s1, v254, 27
	s_and_b32 s45, s1, s3
	v_readlane_b32 s1, v254, 28
	s_and_b32 s44, s1, s3
	v_readlane_b32 s1, v254, 31
	s_and_b32 s1, s1, s3
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	scratch_load_b32 v13, off, off offset:876 ; 4-byte Folded Reload
	s_and_not1_b32 s75, s104, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v13
	scratch_load_b32 v13, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s74, vcc_lo, s104
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s74, s74, exec_lo
	s_or_b32 s104, s75, s74
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v13
	scratch_load_b32 v13, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s3, s3, s66
	s_and_not1_b32 s66, s66, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s66, s66, s3
	s_and_not1_b32 s3, s31, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s4, v0, v13
	scratch_load_b32 v13, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s4, s4, s31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, exec_lo
	s_or_b32 s31, s3, s4
	s_and_not1_b32 s3, s30, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s5, v0, v13
	scratch_load_b32 v13, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s5, s5, s65
	s_and_not1_b32 s65, s65, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s65, s65, s5
	s_and_not1_b32 s5, s64, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s6, v0, v13
	scratch_load_b32 v13, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s6, s6, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s6, exec_lo
	s_or_b32 s30, s3, s4
	s_and_not1_b32 s3, s33, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s7, v0, v13
	scratch_load_b32 v13, off, off offset:900 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s7, s7, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s7, exec_lo
	s_or_b32 s64, s5, s6
	s_and_not1_b32 s5, s63, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s8, v0, v13
	scratch_load_b32 v13, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s8, s8, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s8, exec_lo
	s_or_b32 s33, s3, s4
	s_and_not1_b32 s3, s28, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s9, v0, v13
	scratch_load_b32 v13, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s9, s9, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s9, exec_lo
	s_or_b32 s63, s5, s6
	s_and_not1_b32 s5, s62, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s10, v0, v13
	scratch_load_b32 v13, off, off offset:912 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s10, s10, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s10, exec_lo
	s_or_b32 s28, s3, s4
	s_and_not1_b32 s3, s39, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s11, v0, v13
	scratch_load_b32 v13, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s11, s11, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s11, exec_lo
	s_or_b32 s62, s5, s6
	s_and_not1_b32 s5, s61, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s12, v0, v13
	scratch_load_b32 v13, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s12, s12, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s12, exec_lo
	s_or_b32 s39, s3, s4
	s_and_not1_b32 s3, s60, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s13, v0, v13
	scratch_load_b32 v13, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s13, s13, s61
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s13, exec_lo
	s_or_b32 s61, s5, s6
	s_and_not1_b32 s5, s59, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s14, v0, v13
	scratch_load_b32 v13, off, off offset:928 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s14, s14, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s14, exec_lo
	s_or_b32 s60, s3, s4
	s_and_not1_b32 s3, s58, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s15, v0, v13
	scratch_load_b32 v13, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s15, s15, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s15, exec_lo
	s_or_b32 s59, s5, s6
	s_and_not1_b32 s5, vcc_hi, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s16, v0, v13
	scratch_load_b32 v13, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s16, s16, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s16, exec_lo
	s_or_b32 s58, s3, s4
	s_and_not1_b32 s3, s57, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v0, v13
	scratch_load_b32 v13, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s17, s17, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s17, exec_lo
	s_or_b32 vcc_hi, s5, s6
	s_and_not1_b32 s5, s56, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s18, v0, v13
	scratch_load_b32 v13, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s18, s18, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s18, exec_lo
	s_or_b32 s57, s3, s4
	s_and_not1_b32 s3, s55, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v0, v13
	scratch_load_b32 v13, off, off offset:948 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s19, s19, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s19, exec_lo
	s_or_b32 s56, s5, s6
	s_and_not1_b32 s5, s54, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v0, v13
	scratch_load_b32 v13, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s20, s20, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s20, exec_lo
	s_or_b32 s55, s3, s4
	s_and_not1_b32 s3, s53, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v0, v13
	scratch_load_b32 v13, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s21, s21, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s21, exec_lo
	s_or_b32 s54, s5, s6
	s_and_not1_b32 s5, s52, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v0, v13
	scratch_load_b32 v13, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s22, s22, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s22, exec_lo
	s_or_b32 s53, s3, s4
	s_and_not1_b32 s3, s51, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v0, v13
	scratch_load_b32 v13, off, off offset:964 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s23, s23, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s23, exec_lo
	s_or_b32 s52, s5, s6
	s_and_not1_b32 s5, s49, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v0, v13
	scratch_load_b32 v13, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s24, s24, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s24, exec_lo
	s_or_b32 s51, s3, s4
	s_and_not1_b32 s3, s50, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v0, v13
	scratch_load_b32 v13, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s25, s25, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s25, exec_lo
	s_or_b32 s49, s5, s6
	s_and_not1_b32 s5, s48, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v0, v13
	scratch_load_b32 v13, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s26, s26, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s26, exec_lo
	s_or_b32 s50, s3, s4
	s_and_not1_b32 s3, s47, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v0, v13
	scratch_load_b32 v13, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s67, s67, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s67, exec_lo
	s_or_b32 s48, s5, s6
	s_and_not1_b32 s5, s46, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v0, v13
	scratch_load_b32 v13, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s68, s68, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s68, exec_lo
	s_or_b32 s47, s3, s4
	s_and_not1_b32 s3, s45, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v0, v13
	scratch_load_b32 v13, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s69, s69, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s69, exec_lo
	s_or_b32 s46, s5, s6
	s_and_not1_b32 s5, s44, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v0, v13
	scratch_load_b32 v13, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s70, s70, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s70, exec_lo
	s_or_b32 s45, s3, s4
	s_and_not1_b32 s4, s38, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v0, v13
	scratch_load_b32 v13, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s71, s71, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s71, exec_lo
	s_or_b32 s44, s5, s6
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v0, v13
	scratch_load_b32 v13, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s72, s72, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s3, s72, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s1, s1, s3
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v0, v13
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s73, s73, s38
	s_and_b32 s5, s73, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s38, s4, s5
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s3, v254, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	scratch_load_b32 v13, off, off offset:1260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v0, v13
	scratch_load_b32 v13, off, off offset:1264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v0, v13
	scratch_load_b32 v13, off, off offset:1268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s4, v0, v13
	scratch_load_b32 v13, off, off offset:1272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s5, v0, v13
	scratch_load_b32 v13, off, off offset:1276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s6, v0, v13
	scratch_load_b32 v13, off, off offset:1280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s7, v0, v13
	scratch_load_b32 v13, off, off offset:1284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s8, v0, v13
	scratch_load_b32 v13, off, off offset:1288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s9, v0, v13
	scratch_load_b32 v13, off, off offset:1292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s10, v0, v13
	scratch_load_b32 v13, off, off offset:1296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s11, v0, v13
	scratch_load_b32 v13, off, off offset:1300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s12, v0, v13
	scratch_load_b32 v13, off, off offset:1304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s13, v0, v13
	scratch_load_b32 v13, off, off offset:1308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v0, v13
	scratch_load_b32 v13, off, off offset:1312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v0, v13
	scratch_load_b32 v13, off, off offset:1316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v0, v13
	scratch_load_b32 v13, off, off offset:1320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v0, v13
	scratch_load_b32 v13, off, off offset:1324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v0, v13
	scratch_load_b32 v13, off, off offset:1328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s19, v0, v13
	scratch_load_b32 v13, off, off offset:1332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v0, v13
	scratch_load_b32 v13, off, off offset:1336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v0, v13
	scratch_load_b32 v13, off, off offset:1340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v0, v13
	scratch_load_b32 v13, off, off offset:1344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v0, v13
	scratch_load_b32 v13, off, off offset:1348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v0, v13
	scratch_load_b32 v13, off, off offset:1352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v0, v13
	scratch_load_b32 v13, off, off offset:1356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v0, v13
	scratch_load_b32 v13, off, off offset:1360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s67, v0, v13
	scratch_load_b32 v13, off, off offset:1364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s68, v0, v13
	scratch_load_b32 v13, off, off offset:1368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s69, v0, v13
	scratch_load_b32 v13, off, off offset:1372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s70, v0, v13
	scratch_load_b32 v13, off, off offset:1376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s71, v0, v13
	scratch_load_b32 v13, off, off offset:1380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s72, v0, v13
	scratch_load_b32 v13, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s73, v0, v13
	.loc	1 671 30                        ; attention.py:671:30
	scratch_load_b32 v13, off, off offset:1388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v0, v13
	scratch_load_b32 v13, off, off offset:1392 ; 4-byte Folded Reload
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s74, vcc_lo, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s74, s74, s104
	s_and_b32 s74, s74, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v0, v13
	scratch_load_b32 v13, off, off offset:1396 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s3, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s75, s3, s66
	s_and_not1_b32 s66, s66, exec_lo
	s_and_b32 s75, s75, exec_lo
	s_or_b32 s66, s66, s75
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v0, v13
	scratch_load_b32 v13, off, off offset:1400 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s4, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, s31
	s_and_not1_b32 s31, s31, exec_lo
	s_and_b32 s4, s4, exec_lo
	s_or_b32 s31, s31, s4
	s_and_not1_b32 s4, s30, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v0, v13
	scratch_load_b32 v13, off, off offset:1404 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s5, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s5, s65
	s_and_not1_b32 s65, s65, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s65, s65, s5
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v0, v13
	scratch_load_b32 v13, off, off offset:1408 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s6, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s6, s30
	s_and_b32 s5, s6, exec_lo
	s_and_not1_b32 s6, s64, exec_lo
	s_or_b32 s30, s4, s5
	s_and_not1_b32 s4, s33, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v0, v13
	scratch_load_b32 v13, off, off offset:1412 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s7, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s7, s7, s64
	s_and_b32 s7, s7, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s64, s6, s7
	s_and_not1_b32 s6, s63, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v0, v13
	scratch_load_b32 v13, off, off offset:1416 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s8, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, s8, s33
	s_and_b32 s5, s8, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s33, s4, s5
	s_and_not1_b32 s4, s28, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v0, v13
	scratch_load_b32 v13, off, off offset:1420 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s9, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s9, s9, s63
	s_and_b32 s7, s9, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s63, s6, s7
	s_and_not1_b32 s6, s62, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v0, v13
	scratch_load_b32 v13, off, off offset:1424 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s10, s82
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s10, s10, s28
	s_and_b32 s5, s10, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s28, s4, s5
	s_and_not1_b32 s4, s39, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v0, v13
	scratch_load_b32 v13, off, off offset:1428 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s11, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, s62
	s_and_b32 s7, s11, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s62, s6, s7
	s_and_not1_b32 s6, s61, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v0, v13
	scratch_load_b32 v13, off, off offset:1432 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s12, s12, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, s39
	s_and_b32 s5, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s39, s4, s5
	s_and_not1_b32 s4, s60, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v0, v13
	scratch_load_b32 v13, off, off offset:1436 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, s13, s85
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, s13, s61
	s_and_b32 s7, s13, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s61, s6, s7
	s_and_not1_b32 s6, s59, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v0, v13
	scratch_load_b32 v13, off, off offset:1440 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s14, s86
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s60
	s_and_b32 s5, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s60, s4, s5
	s_and_not1_b32 s4, s58, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v0, v13
	scratch_load_b32 v13, off, off offset:1444 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s15, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s59
	s_and_b32 s7, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s59, s6, s7
	s_and_not1_b32 s6, vcc_hi, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v0, v13
	scratch_load_b32 v13, off, off offset:1448 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, s16, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s58
	s_and_b32 s5, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s58, s4, s5
	s_and_not1_b32 s4, s57, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v0, v13
	scratch_load_b32 v13, off, off offset:1452 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s17, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, vcc_hi
	s_and_b32 s7, s17, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 vcc_hi, s6, s7
	s_and_not1_b32 s6, s56, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v0, v13
	scratch_load_b32 v13, off, off offset:1456 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s18, s18, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, s18, s57
	s_and_b32 s5, s18, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s57, s4, s5
	s_and_not1_b32 s4, s55, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v0, v13
	scratch_load_b32 v13, off, off offset:1460 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s19, s19, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s56
	s_and_b32 s7, s19, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s56, s6, s7
	s_and_not1_b32 s6, s54, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v0, v13
	scratch_load_b32 v13, off, off offset:1464 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s20, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s55
	s_and_b32 s5, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s55, s4, s5
	s_and_not1_b32 s4, s53, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v0, v13
	scratch_load_b32 v13, off, off offset:1468 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s21, s21, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s54
	s_and_b32 s7, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s54, s6, s7
	s_and_not1_b32 s6, s52, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v0, v13
	scratch_load_b32 v13, off, off offset:1472 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s22, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s53
	s_and_b32 s5, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s53, s4, s5
	s_and_not1_b32 s4, s51, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s95, v0, v13
	scratch_load_b32 v13, off, off offset:1476 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, s23, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s52
	s_and_b32 s7, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s52, s6, s7
	s_and_not1_b32 s6, s49, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s96, v0, v13
	scratch_load_b32 v13, off, off offset:1480 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s24, s24, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s51
	s_and_b32 s5, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s51, s4, s5
	s_and_not1_b32 s4, s50, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s97, v0, v13
	scratch_load_b32 v13, off, off offset:1484 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s25, s25, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s49
	s_and_b32 s7, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s49, s6, s7
	s_and_not1_b32 s6, s48, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s98, v0, v13
	scratch_load_b32 v13, off, off offset:1488 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s26, s26, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s50
	s_and_b32 s5, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s50, s4, s5
	s_and_not1_b32 s4, s47, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s99, v0, v13
	scratch_load_b32 v13, off, off offset:1492 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s67, s67, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s67, s67, s48
	s_and_b32 s7, s67, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s48, s6, s7
	s_and_not1_b32 s6, s46, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s100, v0, v13
	scratch_load_b32 v13, off, off offset:1496 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s68, s68, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s68, s68, s47
	s_and_b32 s5, s68, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s47, s4, s5
	s_and_not1_b32 s4, s45, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s101, v0, v13
	scratch_load_b32 v13, off, off offset:1500 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s69, s69, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s69, s69, s46
	s_and_b32 s7, s69, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s46, s6, s7
	s_and_not1_b32 s6, s44, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s102, v0, v13
	scratch_load_b32 v13, off, off offset:1504 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s70, s70, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s70, s70, s45
	s_and_b32 s5, s70, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s45, s4, s5
	s_and_not1_b32 s5, s38, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s103, v0, v13
	scratch_load_b32 v13, off, off offset:1508 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s71, s71, s103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s71, s71, s44
	s_and_b32 s7, s71, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s44, s6, s7
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v13
	scratch_load_b32 v13, off, off offset:1512 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s72, s72, vcc_lo
	s_and_b32 s72, s72, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s4, s72, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s1, s1, s4
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v13
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s73, s3
	s_and_not1_b32 s73, s104, exec_lo
	s_and_b32 s3, s3, s38
	s_or_b32 s104, s73, s74
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s38, s5, s3
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v0.l, 0
	.loc	1 674 25 is_stmt 1              ; attention.py:674:25
	v_readlane_b32 s3, v253, 14
	v_readlane_b32 s4, v253, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v98.l, v0.l
	s_mul_i32 s3, s27, s3
	s_add_i32 s3, s4, s3
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s104
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1252 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v98, v[13:14], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s66
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1004 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v0
	v_add_co_u32 v13, vcc_lo, s34, v0
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v0, v[13:14], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v0.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v97.l, v0.h
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s31
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1012 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v97, v[13:14], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s65
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1020 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v0, v[13:14], off
.LBB0_22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v97.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v98.h, v97.h
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s30
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1028 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v98, v[13:14], off
.LBB0_24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s64
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1036 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v97, v[13:14], off
.LBB0_26:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v99.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.h, v99.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s33
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1044 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v99, v[13:14], off
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s63
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1052 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v99, v[13:14], off
.LBB0_30:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v100.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v100.h, v100.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s28
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1060 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v100, v[13:14], off
.LBB0_32:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s62
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1068 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v100, v[13:14], off
.LBB0_34:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v101.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v102.l, v101.h
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s39
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1076 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v102, v[13:14], off
.LBB0_36:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s61
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1084 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v101, v[13:14], off
.LBB0_38:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v104.l, v101.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s60
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1092 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v104, v[13:14], off
.LBB0_40:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s59
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1100 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v101, v[13:14], off
.LBB0_42:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v102.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v103.l, v102.h
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s58
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1108 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v103, v[13:14], off
.LBB0_44:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, vcc_hi
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1116 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v102, v[13:14], off
.LBB0_46:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v103.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v104.h, v103.h
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s57
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1124 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v104, v[13:14], off
.LBB0_48:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s56
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1132 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v103, v[13:14], off
.LBB0_50:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v105.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v105.h, v105.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s55
	s_cbranch_execz .LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1140 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v105, v[13:14], off
.LBB0_52:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s54
	s_cbranch_execz .LBB0_54
; %bb.53:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v105, v[13:14], off
.LBB0_54:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v106.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v106.h, v106.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s53
	s_cbranch_execz .LBB0_56
; %bb.55:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1156 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v106, v[13:14], off
.LBB0_56:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s52
	s_cbranch_execz .LBB0_58
; %bb.57:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1164 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v106, v[13:14], off
.LBB0_58:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v107.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v107.h, v107.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s51
	s_cbranch_execz .LBB0_60
; %bb.59:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1172 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v107, v[13:14], off
.LBB0_60:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s49
	s_cbranch_execz .LBB0_62
; %bb.61:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1180 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v107, v[13:14], off
.LBB0_62:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v108.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v108.h, v108.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s50
	s_cbranch_execz .LBB0_64
; %bb.63:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1188 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v108, v[13:14], off
.LBB0_64:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s48
	s_cbranch_execz .LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1196 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v108, v[13:14], off
.LBB0_66:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v109.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v109.h, v109.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s47
	s_cbranch_execz .LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1204 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v109, v[13:14], off
.LBB0_68:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s46
	s_cbranch_execz .LBB0_70
; %bb.69:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1212 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v109, v[13:14], off
.LBB0_70:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v110.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v110.h, v110.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s45
	s_cbranch_execz .LBB0_72
; %bb.71:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1220 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v110, v[13:14], off
.LBB0_72:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s44
	s_cbranch_execz .LBB0_74
; %bb.73:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1228 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v110, v[13:14], off
.LBB0_74:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_mov_b16_e32 v111.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v111.h, v111.l
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s1
	s_cbranch_execz .LBB0_76
; %bb.75:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1236 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_hi_u8 v111, v[13:14], off
.LBB0_76:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s38
	s_cbranch_execz .LBB0_9
; %bb.77:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[13:14], off, off offset:1244 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v14, 31, v13
	v_add_co_u32 v13, vcc_lo, s34, v13
	v_add_co_ci_u32_e64 v14, null, s35, v14, vcc_lo
	global_load_d16_u8 v111, v[13:14], off
	s_branch .LBB0_9
.LBB0_78:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v101, off, off offset:1516
	scratch_load_b32 v102, off, off offset:1520
	scratch_load_b32 v103, off, off offset:1524
	scratch_load_b32 v104, off, off offset:1528
	scratch_load_b32 v105, off, off offset:1532
	scratch_load_b32 v106, off, off offset:1536
	v_readlane_b32 s28, v253, 8
	v_readlane_b32 s17, v253, 7
	v_readlane_b32 s30, v253, 10
	v_readlane_b32 s22, v253, 13
	v_readlane_b32 s29, v253, 9
	v_readlane_b32 s31, v253, 11
.LBB0_79:                               ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v1, 0x80, v105
	v_lshrrev_b32_e32 v3, 1, v103
	v_add_nc_u32_e32 v0, 0, v103
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[69:72] offset:16
	s_waitcnt vmcnt(1)
	v_add3_u32 v1, 0, v106, v1
	ds_store_b128 v0, v[73:76] offset:128
	ds_store_b128 v0, v[77:80] offset:144
	ds_store_b128 v0, v[81:84] offset:32
	ds_store_b128 v0, v[85:88] offset:48
	ds_store_b128 v0, v[89:92] offset:160
	ds_store_b128 v0, v[93:96] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v102
	v_readlane_b32 s31, v253, 6
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v24, 4, v104
	v_readlane_b32 s36, v253, 2
	v_readlane_b32 s37, v253, 3
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v31, v0, v101
	v_readlane_b32 s38, v253, 4
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v32, 2, v24
	v_or_b32_e32 v0, 62, v24
	v_or_b32_e32 v4, 54, v24
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v28, s22, v31
	.loc	1 843 24                        ; attention.py:843:24
	v_add_nc_u32_e32 v31, s17, v31
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v5, 52, v24
	v_or_b32_e32 v6, 50, v24
	v_or_b32_e32 v7, 48, v24
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s30, v28
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v31, v31, s31
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v8, 46, v24
	v_or_b32_e32 v9, 44, v24
	v_or_b32_e32 v10, 42, v24
	v_or_b32_e32 v11, 40, v24
	v_or_b32_e32 v12, 38, v24
	v_or_b32_e32 v13, 36, v24
	v_or_b32_e32 v14, 34, v24
	v_or_b32_e32 v15, 32, v24
	v_or_b32_e32 v16, 30, v24
	v_or_b32_e32 v17, 28, v24
	v_or_b32_e32 v18, 26, v24
	v_or_b32_e32 v19, 24, v24
	v_or_b32_e32 v20, 22, v24
	v_or_b32_e32 v21, 20, v24
	v_or_b32_e32 v22, 18, v24
	v_or_b32_e32 v23, 16, v24
	v_or_b32_e32 v26, 12, v24
	v_or_b32_e32 v27, 10, v24
	v_or_b32_e32 v28, 8, v24
	v_readlane_b32 s39, v253, 5
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s31, v28
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v28, v31, v28, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s7, s31, v27
	v_cmp_gt_i32_e64 s8, s31, v26
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v31, v27, 2
	v_add_lshl_u32 v26, v31, v26, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s31, v23
	v_cmp_gt_i32_e64 s11, s31, v22
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v23, v31, v23, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s31, v21
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v22, v31, v22, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s31, v20
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v21, v31, v21, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s14, s31, v19
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v20, v31, v20, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s31, v18
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v31, v19, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s31, v17
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v18, v31, v18, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s31, v16
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v31, v17, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s18, s31, v15
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v16, v31, v16, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s31, v14
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v15, v31, v15, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s31, v13
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v14, v31, v14, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s31, v12
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v13, v31, v13, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s31, v11
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v12, v31, v12, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s31, v10
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v31, v11, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s31, v9
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v10, v31, v10, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s31, v8
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v31, v9, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s31, v7
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v8, v31, v8, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s31, v6
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v7, v31, v7, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s28, s31, v5
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v6, v31, v6, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s31, v4
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v5, v31, v5, 2
	v_add_lshl_u32 v4, v31, v4, 2
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 28, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v1, v3, v2
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v2, 58, v24
	v_or_b32_e32 v3, 56, v24
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v65, v1
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v1, 60, v24
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s31, v3
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v3, v31, v3, 2
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v25, 14, v24
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v71, v70, v67
	v_mul_f32_e32 v77, v75, v69
	v_fmac_f32_e32 v73, v78, v73
	v_div_scale_f32 v78, s2, v59, v65, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v66, v71, v70
	v_fmac_f32_e32 v76, v79, v76
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v29, 6, v24
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s31, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v71, v30, v67
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v30, 4, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v65
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v67, v68, v73
	v_rcp_f32_e32 v68, v80
	v_div_fmas_f32 v66, v66, v69, v77
	v_fma_f32 v69, -v74, v79, v71
	s_mov_b32 vcc_lo, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v57, 0, v57, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v58, 0, v58, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v78, -v77, v72, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v60, 0, v60, s1
	v_cndmask_b32_e64 v59, 0, v59, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v71, v69, v71
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v61, 0, v61, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v72, v78, v72 :: v_dual_fmac_f32 v75, v73, v81
	v_div_scale_f32 v73, null, v65, v65, v51
	v_div_scale_f32 v78, null, v65, v65, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v74, v75, v79
	v_rcp_f32_e32 v69, v73
	v_div_scale_f32 v74, s3, v50, v65, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v62, 0, v62, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v67, v67, v81, v75
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v75, v74, v71
	v_div_fmas_f32 v66, v66, v70, v68
	v_div_scale_f32 v70, s2, v52, v65, v52
	s_delay_alu instid0(TRANS32_DEP_1)
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v63, 0, v63, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v74, -v73, v67, v76
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v64, 0, v64, s1
	v_cndmask_b32_e64 v49, 0, v49, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v50, 0, v50, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v66, -v77, v78, v73
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v51, 0, v51, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v68, v80, v68 :: v_dual_mul_f32 v71, v67, v70
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v52, 0, v52, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v78, v66, v69
	v_div_scale_f32 v66, s4, v41, v65, v41
	v_fma_f32 v76, -v75, v71, v67
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v53, 0, v53, s1
	v_cndmask_b32_e64 v54, 0, v54, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v71, v76, v70
	v_fma_f32 v76, -v72, v74, 1.0
	v_fma_f32 v67, -v75, v71, v67
	v_div_scale_f32 v75, null, v65, v65, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v76, v74
	v_div_fmas_f32 v67, v67, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v70, -v77, v78, v73
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v73, s2, v42, v65, v42
	v_div_fixup_f32 v55, v67, v65, v55
	v_div_fmas_f32 v69, v70, v69, v78
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v73, v68
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v56, v69, v65, v56
	v_fma_f32 v69, -v81, v83, 1.0
	v_fma_f32 v70, -v79, v82, v73
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v55, 0, v55, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v75, v78, v77
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v56, 0, v56, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v71, v80, v74 :: v_dual_fmac_f32 v78, v67, v76
	v_rcp_f32_e32 v67, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v72, v71, v66
	v_mul_f32_e32 v72, v69, v83
	v_div_fmas_f32 v66, v66, v74, v71
	v_fma_f32 v71, -v79, v82, v73
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v73, null, v65, v65, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v70, v67, 1.0
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v41, 0, v41, s1
	v_cndmask_b32_e64 v42, 0, v42, s1
	v_cndmask_b32_e64 v43, 0, v43, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v44, 0, v44, s1
	v_cndmask_b32_e64 v45, 0, v45, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v79, -v67, v70, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v46, 0, v46, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v47, 0, v47, s1
	v_cndmask_b32_e64 v48, 0, v48, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v33, 0, v33, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v34, 0, v34, s1
	.loc	1 841 48                        ; attention.py:841:48
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v66, v69
	v_div_scale_f32 v66, s2, v37, v65, v37
	v_fma_f32 v80, -v73, v76, v71
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v35, 0, v35, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v82, v66, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v80, v75
	v_fma_f32 v80, -v67, v82, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v73, v76, v71
	v_fma_f32 v73, -v68, v84, v78
	v_fmac_f32_e32 v82, v80, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v71, v75, v76
	v_fmac_f32_e32 v84, v73, v72
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v66, -v67, v82, v66
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s31, v24
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v24, v31, v24, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v68, -v68, v84, v78
	v_div_fixup_f32 v36, v71, v65, v36
	v_div_fmas_f32 v66, v66, v69, v82
	s_mov_b32 vcc_lo, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s31, v32
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v68, v68, v72, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s31, v30
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v32, v31, v32, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v30, v31, v30, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s3
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v37, v66, v65, v37
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s2, s0, s4
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v57, v24, s[36:39], 0 offen
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s31, v0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v31, v0, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, s5, v40, v65, v40
	v_mul_f32_e32 v85, v81, v74
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v24, v31, v29, 2
	s_clause 0x1
	buffer_store_b32 v58, v32, s[36:39], 0 offen
	buffer_store_b32 v59, v30, s[36:39], 0 offen
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v86, v83, v79
	v_div_fixup_f32 v38, v68, v65, v38
	v_fma_f32 v80, -v70, v85, v81
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v36, 0, v36, s1
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v67, -v77, v86, v83
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v38, 0, v38, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v85, v80, v74 :: v_dual_fmac_f32 v86, v67, v79
	v_fma_f32 v67, -v70, v85, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v77, v86, v83
	v_div_fmas_f32 v67, v67, v74, v85
	s_mov_b32 vcc_lo, s5
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s31, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v69, v69, v79, v86
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v39, v67, v65, v39
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v1, v31, v1, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s5
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v40, v69, v65, v40
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v39, 0, v39, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s7
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v60, v24, s[36:39], 0 offen
	buffer_store_b32 v61, v28, s[36:39], 0 offen
	v_add_lshl_u32 v24, v31, v25, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v40, 0, v40, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s9
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s31, v2
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s10
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v2, v31, v2, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s11
	s_and_b32 s1, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s12
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s13
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s14
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s15
	s_and_b32 vcc_lo, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s16
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s17
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v62, v27, s[36:39], 0 offen
	buffer_store_b32 v63, v26, s[36:39], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s18
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v64, v24, s[36:39], 0 offen
	buffer_store_b32 v49, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s19
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v50, v22, s[36:39], 0 offen
	buffer_store_b32 v51, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s20
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v52, v20, s[36:39], 0 offen
	buffer_store_b32 v53, v19, s[36:39], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s21
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v54, v18, s[36:39], 0 offen
	buffer_store_b32 v55, v17, s[36:39], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s22
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v56, v16, s[36:39], 0 offen
	buffer_store_b32 v41, v15, s[36:39], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s23
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v42, v14, s[36:39], 0 offen
	buffer_store_b32 v43, v13, s[36:39], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s24
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v44, v12, s[36:39], 0 offen
	buffer_store_b32 v45, v11, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s25
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v46, v10, s[36:39], 0 offen
	buffer_store_b32 v47, v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s27
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v48, v8, s[36:39], 0 offen
	buffer_store_b32 v33, v7, s[36:39], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s29
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v34, v6, s[36:39], 0 offen
	buffer_store_b32 v35, v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s0, s30
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x4
	buffer_store_b32 v36, v4, s[36:39], 0 offen
	buffer_store_b32 v37, v3, s[36:39], 0 offen
	buffer_store_b32 v38, v2, s[36:39], 0 offen
	buffer_store_b32 v39, v1, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp761:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1544
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1544
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 45636
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1544
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
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
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
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
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
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
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
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
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1544
    .sgpr_count:     107
    .sgpr_spill_count: 95
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
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
