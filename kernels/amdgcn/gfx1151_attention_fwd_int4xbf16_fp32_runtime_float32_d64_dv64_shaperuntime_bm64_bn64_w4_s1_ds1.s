	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[20:23], s[0:1], 0x4c
	s_load_b32 s17, s[0:1], 0x60
                                        ; implicit-def: $vgpr253 : SGPR spill to VGPR lane
	v_mov_b32_e32 v207, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s103, 0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 5, v207
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v0, 31, v207
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v3, 4, v2
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v5, 12, v2
	v_or_b32_e32 v6, 16, v2
	v_or_b32_e32 v7, 20, v2
	v_or_b32_e32 v8, 24, v2
	v_or_b32_e32 v9, 28, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	v_or_b32_e32 v10, 32, v2
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v253, s5, 0
	s_cselect_b32 s18, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s4, s20
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s28, s2, 6
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v11, 36, v2
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v12, 40, v2
	v_or_b32_e32 v13, 44, v2
	v_or_b32_e32 v14, 48, v2
	v_or_b32_e32 v15, 52, v2
	v_or_b32_e32 v16, 56, v2
	v_or_b32_e32 v17, 60, v2
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off offset:116
	scratch_store_b32 off, v3, off offset:120
	scratch_store_b32 off, v4, off offset:124
	scratch_store_b32 off, v5, off offset:128
	scratch_store_b32 off, v6, off offset:132
	scratch_store_b32 off, v7, off offset:136
	scratch_store_b32 off, v8, off offset:140
	scratch_store_b32 off, v9, off offset:144
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s5, v1
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[18:19], null, s17, v2, v[0:1]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s28, v2
	v_or_b32_e32 v2, s28, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s28, v4
	v_or_b32_e32 v4, s28, v5
	v_or_b32_e32 v5, s28, v6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s28, v7
	v_or_b32_e32 v7, s28, v8
	v_or_b32_e32 v8, s28, v9
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[22:23], null, s17, 12, v[18:19]
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s19, s3, s22
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s5, s5, s6
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[28:29], null, s17, 36, v[18:19]
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s2, s7, s5
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v10, off offset:148
	scratch_store_b32 off, v11, off offset:152
	scratch_store_b32 off, v12, off offset:156
	scratch_store_b32 off, v13, off offset:160
	scratch_store_b32 off, v14, off offset:164
	scratch_store_b32 off, v15, off offset:168
	scratch_store_b32 off, v16, off offset:172
	scratch_store_b32 off, v17, off offset:176
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, s28, v10
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v20, s17, 2, v18
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[29:30], null, s17, 40, v[18:19]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s29, s6, s2
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s2, s21
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[30:31], null, s17, 44, v[18:19]
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[24:25], null, s17, 20, v[18:19]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v9, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[31:32], null, s17, 48, v[18:19]
	v_mad_u64_u32 v[25:26], null, s17, 24, v[18:19]
	v_mad_u64_u32 v[32:33], null, s17, 52, v[18:19]
	v_mad_u64_u32 v[26:27], null, s17, 28, v[18:19]
	v_mad_u64_u32 v[33:34], null, s17, 56, v[18:19]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s5, v9
	v_mov_b32_e32 v9, v18
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v21, s17, 3, v18
	v_lshl_add_u32 v23, s17, 4, v18
	v_lshl_add_u32 v27, s17, 5, v18
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[34:35], null, s17, 60, v[18:19]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[9:10], off offset:180
	scratch_store_b32 off, v20, off offset:188
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s5, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 587 61 is_stmt 0              ; attention.py:587:61
	v_cmp_gt_i32_e64 s33, s17, v0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s22, v7
	.loc	1 568 22 is_stmt 1              ; attention.py:568:22
	s_mul_i32 s6, s6, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, s28, v11
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s22, v8
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s20, s21
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s30, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v12, s28, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s10, s22, v10
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, s22, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s31, s6, s5
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s19, s19, s28
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s2, s19, s17
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v9, s2, v18
	v_add_nc_u32_e32 v18, s2, v20
	v_mov_b32_e32 v20, v22
	scratch_store_b32 off, v21, off offset:192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v19, s2, v21
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s22, v5
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[20:21], off offset:196 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v20, s2, v22
	v_mov_b32_e32 v22, v24
	scratch_store_b32 off, v23, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, s2, v23
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s22, v6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v14, s28, v14
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[22:23], off offset:208 ; 8-byte Folded Spill
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v22, s2, v24
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s11, s22, v11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, s28, v13
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[23:24], off offset:216 ; 8-byte Folded Spill
	v_dual_mov_b32 v24, v26 :: v_dual_add_nc_u32 v23, s2, v25
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s12, s22, v12
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v15, s28, v15
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s14, s22, v14
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[24:25], off offset:224 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v24, s2, v26
	v_mov_b32_e32 v26, v28
	scratch_store_b32 off, v27, off offset:232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v25, s2, v27
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s28, v16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s13, s22, v13
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[26:27], off offset:236 ; 8-byte Folded Spill
	v_dual_mov_b32 v27, v29 :: v_dual_add_nc_u32 v26, s2, v28
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s28, v17
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s22, v15
	v_cmp_gt_i32_e64 s16, s22, v16
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[27:28], off offset:244 ; 8-byte Folded Spill
	v_dual_mov_b32 v28, v30 :: v_dual_add_nc_u32 v27, s2, v29
	v_writelane_b32 v253, s17, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s22, v17
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v65, 15, v207
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[28:29], off offset:252 ; 8-byte Folded Spill
	v_dual_mov_b32 v29, v31 :: v_dual_add_nc_u32 v28, s2, v30
	v_writelane_b32 v253, s33, 2
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v210, 0, v207
	.loc	1 584 26                        ; attention.py:584:26
	scratch_store_b64 off, v[29:30], off offset:260 ; 8-byte Folded Spill
	v_dual_mov_b32 v30, v32 :: v_dual_add_nc_u32 v29, s2, v31
	scratch_store_b64 off, v[30:31], off offset:268 ; 8-byte Folded Spill
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v30, s2, v32
	scratch_store_b64 off, v[31:32], off offset:276 ; 8-byte Folded Spill
	v_dual_mov_b32 v32, v34 :: v_dual_add_nc_u32 v31, s2, v33
	scratch_store_b64 off, v[32:33], off offset:284 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v32, s2, v34
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s22, v2
	.loc	1 587 22 is_stmt 0              ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s33
	.loc	1 568 22 is_stmt 1              ; attention.py:568:22
	s_xor_b32 s2, s31, s30
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v18, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x88, v207
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s5, s33
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s4, s2, s30
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v18, 0, v18
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s33
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s2, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s8, s33
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s5, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s9, s33
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x5
	buffer_load_u8 v7, v0, s[24:27], 0 offen
	buffer_load_u8 v8, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v24, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s10, s33
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s6, s23, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v25, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s11, s33
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v21, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s12, s33
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s5, s6, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s33
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s5, s5, 26
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v11, 0x80000000, v29, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s13, s33
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v14, v1, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	v_cndmask_b32_e32 v12, 0x80000000, v28, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v19, 0x110, v207
	v_cndmask_b32_e32 v13, 0x80000000, v30, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s16, s33
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v31, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s17, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v20, 0x198, v207
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v16, v1, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v17, v0, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v0, 0x60, v207
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s5, s6, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v19, 0, v19
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s10, s5, 0xffffffc0
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s5, s36, 0x10008
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v20, 0, v20
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s5, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:292
	scratch_store_b32 off, v19, off offset:296
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v210, v7
	s_waitcnt vmcnt(12)
	ds_store_b8 v210, v4 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v210, v14 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v210, v11 offset:1536
	ds_store_b8 v18, v8
	ds_store_b8 v18, v5 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v18, v9 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v18, v13 offset:1536
	ds_store_b8 v19, v2
	ds_store_b8 v19, v6 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v19, v10 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v19, v16 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v20, v3
	s_waitcnt vmcnt(2)
	ds_store_b8 v20, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v20, v12 offset:1024
	scratch_store_b32 off, v20, off offset:300 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_store_b8 v20, v15 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s28, s38
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s28, s37
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s6, s39
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s39
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s6, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s23, s6
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s7, s8, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s103, s7, 0x7fffffc0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s10, s10, s6
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v2, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v1, v65
	.loc	1 620 9                         ; attention.py:620:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s6, 1, v2
	.loc	1 0 0                           ; attention.py:0
	v_writelane_b32 v253, s6, 3
	.loc	1 620 9                         ; attention.py:620:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s6, s28, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 64
	s_min_i32 s6, s23, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s7, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s10, s10, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_or_b32_e32 v2, s28, v1
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_bfe_u32 v3, v207, 4, 1
	v_lshlrev_b32_e32 v66, 6, v207
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s103, s10
	scratch_store_b32 off, v3, off offset:1316 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v71, 64, v66
	s_mov_b32 s6, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr71
.LBB0_7:                                ; %Flow607
	v_bfe_u32 v67, v207, 4, 1
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v69, 1, v207
	v_add_nc_u32_e32 v68, s19, v1
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s7, s[0:1], 0x64
	v_or_b32_e32 v1, 2, v67
	v_cmp_gt_i32_e64 s31, s22, v2
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v70, 64, v207
	v_mov_b32_e32 v7, v8
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 4, v67
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 6, v67
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 8, v67
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v253, s7, 4
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 10, v67
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 12, v67
	v_or_b32_e32 v67, 62, v67
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:92
	scratch_store_b32 off, v67, off offset:1312
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
	v_lshlrev_b32_e32 v67, 2, v207
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[52:59], s[0:1], 0x8
	v_lshlrev_b32_e32 v1, 1, v68
	v_lshlrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v9, 1, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v5, 16, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s31
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	v_dual_mov_b32 v11, 0x7632 :: v_dual_lshlrev_b32 v2, 5, v65
	v_lshrrev_b32_e32 v29, 2, v5
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_and_b32_e32 v45, 63, v207
	v_cndmask_b32_e64 v12, 0x404, 0, vcc_lo
	v_cndmask_b32_e64 v28, 0x108, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_and_b32_e32 v4, 24, v69
	v_lshrrev_b32_e32 v46, 6, v70
	v_and_b32_e32 v36, 64, v66
	v_lshl_or_b32 v26, v65, 10, v67
	v_cndmask_b32_e32 v5, 0x1054, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s57, 0xffff
	s_mov_b32 s24, s56
	v_or3_b32 v3, v2, v3, v4
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_xor_b32 s6, s3, s20
	s_mul_f32 s7, s5, 0x4f7ffffe
	s_clause 0x2
	s_load_b32 s11, s[0:1], 0x7c
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x6c
	v_add_nc_u32_e32 v0, 0, v3
	s_ashr_i32 s1, s6, 31
	s_ashr_i32 s0, s4, 31
	v_dual_cndmask_b32 v11, 0x3276, v11 :: v_dual_and_b32 v6, 60, v69
	v_lshlrev_b32_e32 v7, 4, v207
	v_lshlrev_b32_e32 v10, 1, v70
	s_xor_b32 s4, s29, s1
	s_cvt_u32_f32 s6, s7
	v_or_b32_e32 v31, 2, v46
	v_or_b32_e32 v41, 14, v46
	v_or_b32_e32 v42, 16, v46
	v_or_b32_e32 v43, 18, v46
	v_or_b32_e32 v44, 20, v46
	v_or_b32_e32 v47, v2, v4
	v_xor_b32_e32 v4, 4, v26
	v_lshlrev_b32_e32 v27, 2, v45
	v_add_nc_u32_e32 v30, 0, v36
	ds_load_b64 v[75:76], v0
	s_sub_i32 s5, 0, s2
	s_sub_i32 s4, s4, s1
	s_mul_i32 s5, s5, s6
	s_mul_i32 s7, s4, s20
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v68, off offset:1320
	scratch_store_b32 off, v69, off offset:1324
	scratch_store_b32 off, v70, off offset:1328
	v_lshlrev_b32_e32 v8, 3, v65
	v_and_b32_e32 v2, 0x200, v7
	v_xor_b32_e32 v7, 8, v26
	v_xor_b32_e32 v6, v12, v6
	v_or_b32_e32 v68, 60, v46
	v_or_b32_e32 v69, 62, v46
	v_xad_u32 v33, v3, 8, 0
	v_xad_u32 v34, v3, 16, 0
	v_xad_u32 v35, v3, 24, 0
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v3, s28, v31
	v_xor_b32_e32 v70, v28, v27
	v_lshl_or_b32 v28, v65, 8, v29
	v_add_nc_u32_e32 v232, v30, v10
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v41, off offset:348
	scratch_store_b32 off, v42, off offset:352
	scratch_store_b32 off, v43, off offset:356
	scratch_store_b32 off, v44, off offset:360
	scratch_store_b32 off, v47, off offset:364
	v_or_b32_e32 v10, s28, v41
	v_or_b32_e32 v30, s28, v44
	v_add_nc_u32_e32 v4, 0, v4
	v_xor_b32_e32 v41, 8, v47
	v_lshrrev_b32_e32 v44, 5, v207
	s_sub_i32 s3, s3, s7
	s_mul_hi_u32 s5, s6, s5
	v_lshl_add_u32 v198, v65, 1, 0
	s_add_i32 s6, s6, s5
	s_ashr_i32 s5, s3, 31
	v_xor_b32_e32 v14, 12, v26
	v_or3_b32 v65, v2, v6, v36
	v_or_b32_e32 v2, s28, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v68, off offset:444
	scratch_store_b32 off, v69, off offset:448
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[75:76], off offset:660
	scratch_store_b32 off, v70, off offset:452
	v_xor_b32_e32 v42, 16, v47
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_xor_b32 s0, s5, s0
	v_or3_b32 v28, v28, v8, v44
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v3
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v44, s39, v3
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_add_nc_u32 v3, 0, v41
	scratch_store_b32 off, v4, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, s28, v46
	v_xor_b32_e32 v15, 16, v26
	v_or_b32_e32 v6, s28, v43
	v_xor_b32_e32 v43, 24, v47
	scratch_store_b32 off, v3, off offset:524 ; 4-byte Folded Spill
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v3, 0, v42
	scratch_store_b32 off, v4, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v14
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v71, s39, v13
	ds_load_b64 v[75:76], v33
	scratch_store_b32 off, v3, off offset:528 ; 4-byte Folded Spill
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_add_nc_u32 v3, 0, v43
	scratch_store_b32 off, v4, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v15
	v_xor_b32_e32 v16, 20, v26
	v_subrev_nc_u32_e32 v0, s37, v71
	v_writelane_b32 v253, s40, 5
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v32, 4, v46
	v_xor_b32_e32 v17, 24, v26
	v_or_b32_e32 v48, 22, v46
	v_or_b32_e32 v49, 24, v46
	v_writelane_b32 v253, s41, 6
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v12, s28, v32
	v_xor_b32_e32 v18, 28, v26
	scratch_store_b32 off, v48, off offset:368 ; 4-byte Folded Spill
	v_xor_b32_e32 v19, 32, v26
	v_writelane_b32 v253, s42, 7
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_add_nc_u32_e32 v47, s39, v12
	v_xor_b32_e32 v20, 36, v26
	v_xor_b32_e32 v21, 40, v26
	v_mov_b16_e64 v199.l, 0
	v_writelane_b32 v253, s43, 8
	s_mov_b32 s40, 0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s22, v13
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	v_writelane_b32 v253, s31, 9
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_writelane_b32 v253, s40, 10
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v37, 6, v46
	v_xor_b32_e32 v22, 44, v26
	v_or_b32_e32 v38, 8, v46
	.loc	1 629 13                        ; attention.py:629:13
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v26, off offset:320
	scratch_store_b32 off, v31, off offset:324
	scratch_store_b32 off, v32, off offset:328
	scratch_store_b32 off, v37, off offset:332
	scratch_store_b32 off, v210, off offset:304
	v_writelane_b32 v253, s41, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v31, s28, v37
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v39, 10, v46
	v_xor_b32_e32 v23, 48, v26
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v32, s28, v38
	v_writelane_b32 v253, s42, 12
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v40, 12, v46
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v27, s28, v39
	v_xor_b32_e32 v24, 52, v26
	v_xor_b32_e32 v25, 56, v26
	v_writelane_b32 v253, s43, 13
	v_or_b32_e32 v29, s28, v40
	v_xor_b32_e32 v26, 60, v26
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v50, 26, v46
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, s28, v49
	v_writelane_b32 v253, s44, 14
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v51, 28, v46
	v_or_b32_e32 v52, 30, v46
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, s28, v50
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v53, 32, v46
	v_writelane_b32 v253, s45, 15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v14, s28, v51
	v_or_b32_e32 v15, s28, v52
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v54, 34, v46
	v_or_b32_e32 v55, 36, v46
	v_writelane_b32 v253, s46, 16
	v_or_b32_e32 v56, 38, v46
	v_or_b32_e32 v57, 40, v46
	v_or_b32_e32 v58, 42, v46
	v_or_b32_e32 v59, 44, v46
	v_writelane_b32 v253, s47, 17
	v_or_b32_e32 v60, 46, v46
	v_or_b32_e32 v61, 48, v46
	v_or_b32_e32 v62, 50, v46
	v_or_b32_e32 v63, 52, v46
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_writelane_b32 v253, s7, 18
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v64, 54, v46
	v_or_b32_e32 v66, 56, v46
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v38, off offset:336
	scratch_store_b32 off, v39, off offset:340
	scratch_store_b32 off, v40, off offset:344
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 19
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v12
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v37, s28, v66
	v_or_b32_e32 v39, s28, v68
	v_or_b32_e32 v40, s28, v69
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v59, off offset:412
	scratch_store_b32 off, v60, off offset:416
	scratch_store_b32 off, v61, off offset:420
	scratch_store_b32 off, v62, off offset:424
	scratch_store_b32 off, v63, off offset:428
	scratch_store_b32 off, v64, off offset:432
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 20
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v31
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v49, off offset:372
	scratch_store_b32 off, v50, off offset:376
	scratch_store_b32 off, v51, off offset:380
	scratch_store_b32 off, v52, off offset:384
	scratch_store_b32 off, v53, off offset:388
	scratch_store_b32 off, v54, off offset:392
	scratch_store_b32 off, v55, off offset:396
	scratch_store_b32 off, v56, off offset:400
	scratch_store_b32 off, v57, off offset:404
	scratch_store_b32 off, v58, off offset:408
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 21
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v32
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_add_nc_u32 v50, s39, v27
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_add_nc_u32 v52, s39, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 22
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v27
	ds_load_b64 v[33:34], v34
	v_xor_b32_e32 v12, 0x808, v65
	v_xor_b32_e32 v8, 0xa50, v70
	s_abs_i32 s7, s3
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 23
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v29
	s_mul_hi_u32 s6, s7, s6
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s1, s4, s21
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s9, s19, s28
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s4, s4, s17
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 24
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v10
	v_xor_b32_e32 v10, 0xc60, v70
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s3, s18
	v_mov_b32_e32 v84, 0xff800000
	v_mov_b32_e32 v82, 0xff800000
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 25
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v2
	v_mov_b32_e32 v80, 0xff800000
	v_mov_b32_e32 v78, 0xff800000
	v_mov_b32_e32 v164, 0xff800000
	v_mov_b32_e32 v162, 0xff800000
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 26
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v6
	v_mov_b32_e32 v160, 0xff800000
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s58
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 27
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v30
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v184, 0xff800000
	scratch_store_b32 off, v0, off offset:1056 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v44
	v_mov_b32_e32 v185, 0xff800000
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 28
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v212, 0xff800000
	scratch_store_b32 off, v0, off offset:1060 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v47
	v_mov_b32_e32 v214, 0xff800000
	v_mov_b32_e32 v216, 0xff800000
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_mov_b32 v81, 0xff800000
	scratch_store_b32 off, v0, off offset:1064 ; 4-byte Folded Spill
	v_dual_mov_b32 v176, 0xff800000 :: v_dual_mov_b32 v221, 0xff800000
	v_dual_mov_b32 v178, 0xff800000 :: v_dual_mov_b32 v225, 0xff800000
	v_dual_mov_b32 v83, 0xff800000 :: v_dual_mov_b32 v180, 0xff800000
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_mov_b32 v96, 0xff800000
	v_mov_b32_e32 v163, 0xff800000
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_mov_b32 v152, 0xff800000
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_mov_b32 v165, 0xff800000
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_mov_b32 v175, 0xff800000
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_mov_b32 v154, 0xff800000
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_mov_b32 v105, 0xff800000
	v_mov_b32_e32 v103, 0xff800000
	v_mov_b32_e32 v101, 0xff800000
	v_mov_b32_e32 v99, 0xff800000
	v_mov_b32_e32 v97, 0xff800000
	v_mov_b32_e32 v95, 0xff800000
	v_mov_b32_e32 v179, 0xff800000
	v_mov_b32_e32 v177, 0xff800000
	v_mov_b32_e32 v209, 0xff800000
	v_mov_b32_e32 v217, 0xff800000
	v_mov_b32_e32 v215, 0xff800000
	v_mov_b32_e32 v213, 0xff800000
	v_mov_b32_e32 v77, 0xff800000
	v_mov_b32_e32 v183, 0xff800000
	v_mov_b32_e32 v157, 0xff800000
	v_mov_b32_e32 v155, 0xff800000
	v_mov_b32_e32 v153, 0xff800000
	v_mov_b32_e32 v117, 0xff800000
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:676 ; 8-byte Folded Spill
	ds_load_b64 v[33:34], v35
	v_mov_b32_e32 v115, 0xff800000
	v_mov_b32_e32 v113, 0xff800000
	v_mov_b32_e32 v111, 0xff800000
	v_mov_b32_e32 v109, 0xff800000
	v_mov_b32_e32 v107, 0xff800000
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:684 ; 8-byte Folded Spill
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v199.h, v1.l
	v_xor_b32_e32 v1, 0x1818, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v181, v199
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v16
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s28, v53
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v196, v199
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x2020, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v182, v199 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v17
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s28, v54
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v54, s39, v6
	scratch_store_b32 off, v1, off offset:576 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x2828, v65
	v_xor_b32_e32 v6, 0x630, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v18
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v18, s28, v55
	scratch_store_b32 off, v1, off offset:580 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x3030, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:584
	scratch_store_b32 off, v65, off offset:456
	v_xor_b32_e32 v1, 0x3838, v65
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:484
	scratch_store_b32 off, v67, off offset:1332
	v_add_nc_u32_e32 v4, 0, v19
	v_or_b32_e32 v19, s28, v56
	.loc	1 569 19                        ; attention.py:569:19
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 8, v28
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v67, 58, v46
	scratch_store_b32 off, v66, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:488
	scratch_store_b32 off, v36, off offset:1336
	v_add_nc_u32_e32 v4, 0, v20
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v20, s28, v57
	scratch_store_b32 off, v1, off offset:592 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v28
	v_or_b32_e32 v36, s28, v64
	v_or_b32_e32 v38, s28, v67
	scratch_store_b32 off, v67, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v21
	v_or_b32_e32 v21, s28, v58
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_add_nc_u32_e32 v58, s39, v13
	scratch_store_b32 off, v1, off offset:596 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 24, v28
	v_add_nc_u32_e32 v67, s39, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v22
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v22, s28, v59
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v23
	v_or_b32_e32 v23, s28, v60
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v60, s39, v15
	scratch_store_b32 off, v1, off offset:604 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 40, v28
	v_add_nc_u32_e32 v69, s39, v23
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v24
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v24, s28, v61
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v25
	v_or_b32_e32 v25, s28, v62
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v62, s39, v17
	scratch_store_b32 off, v1, off offset:612 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 56, v28
	v_add_nc_u32_e32 v73, s39, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v26
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v26, s28, v63
	scratch_store_b32 off, v1, off offset:616 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:516 ; 4-byte Folded Spill
	v_lshl_or_b32 v4, v5, 8, v5
	v_or_b32_e32 v5, s28, v48
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v48, s39, v31
	s_mov_b32 s28, s54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v5
	v_subrev_nc_u32_e32 v0, s37, v48
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v56, s39, v5
	v_xor_b32_e32 v5, 0x420, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_writelane_b32 v253, s5, 29
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v7
	scratch_store_b32 off, v0, off offset:1068 ; 4-byte Folded Spill
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 30
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v13
	v_xor_b32_e32 v13, 0x1010, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v253, s5, 31
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v14
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v16
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v17
	v_mov_b32_e32 v17, 0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v49, s39, v32
	v_add_nc_u32_e32 v51, s39, v29
	v_add_nc_u32_e32 v53, s39, v2
	v_writelane_b32 v254, s5, 3
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v18
	v_mov_b32_e32 v114, v17
	v_subrev_nc_u32_e32 v0, s37, v49
	v_mov_b32_e32 v112, v17
	v_mov_b32_e32 v110, v17
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v19
	scratch_store_b32 off, v0, off offset:1072 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v50
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v59, s39, v14
	v_mov_b32_e32 v14, v17
	v_writelane_b32 v254, s5, 5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v20
	scratch_store_b32 off, v0, off offset:1076 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v51
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v55, s39, v30
	v_lshl_or_b32 v2, v11, 8, v11
	v_writelane_b32 v254, s5, 6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v21
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v61, s39, v16
	v_mov_b32_e32 v16, v17
	v_and_b32_e32 v2, 0x760076, v2
	v_add_nc_u32_e32 v57, s39, v7
	v_writelane_b32 v254, s5, 7
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v22
	v_dual_mov_b32 v93, v17 :: v_dual_add_nc_u32 v68, s39, v22
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v23
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v63, s39, v18
	v_and_b32_e32 v194, 0x7060706, v2
	v_dual_mov_b32 v121, v17 :: v_dual_add_nc_u32 v64, s39, v19
	v_writelane_b32 v254, s5, 9
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v24
	v_dual_mov_b32 v119, v17 :: v_dual_add_nc_u32 v66, s39, v20
	v_dual_mov_b32 v91, v17 :: v_dual_add_nc_u32 v72, s39, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v25
	v_dual_mov_b32 v89, v17 :: v_dual_add_nc_u32 v74, s39, v26
	v_mov_b32_e32 v87, v17
	v_mov_b32_e32 v85, v17
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 11
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v26
	v_mov_b32_e32 v30, v17
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v106, v17
	v_mov_b32_e32 v104, v17
	.loc	1 573 27                        ; attention.py:573:27
	v_writelane_b32 v254, s5, 12
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v36
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v36, s39, v36
	v_mov_b32_e32 v102, v17
	v_mov_b32_e32 v100, v17
	v_xor_b32_e32 v7, 0x840, v70
	v_writelane_b32 v254, s5, 13
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v37
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v37, s39, v37
	v_mov_b32_e32 v65, v17
	v_xor_b32_e32 v11, 0xe70, v70
	v_mov_b32_e32 v116, v17
	v_writelane_b32 v254, s5, 14
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v38
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v38, s39, v38
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_writelane_b32 v254, s5, 15
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v39
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v39, s39, v39
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v23, v17
	v_mov_b32_e32 v24, v17
	v_writelane_b32 v254, s5, 16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v40
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v40, s39, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:620
	scratch_store_b32 off, v0, off offset:1080
	v_xor_b32_e32 v1, 0x48, v28
	v_subrev_nc_u32_e32 v0, s37, v52
	v_writelane_b32 v254, s5, 17
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s5, s6, s2
	v_mov_b32_e32 v25, v17
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:532 ; 4-byte Folded Spill
	v_and_b32_e32 v3, 0x540054, v4
	v_xor_b32_e32 v4, 0x210, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1084
	scratch_store_b32 off, v1, off offset:624
	v_xor_b32_e32 v1, 0x50, v28
	v_subrev_nc_u32_e32 v0, s37, v53
	v_add_nc_u32_e32 v4, 0, v4
	s_sub_i32 s5, s7, s5
	s_add_i32 s7, s6, 1
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1088
	scratch_store_b32 off, v4, off offset:536
	v_add_nc_u32_e32 v4, 0, v5
	v_subrev_nc_u32_e32 v0, s37, v54
	scratch_store_b32 off, v1, off offset:628 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x58, v28
	s_sub_i32 s8, s5, s2
	s_cmp_ge_u32 s5, s2
	scratch_store_b32 off, v0, off offset:1092 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v55
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v4, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v6
	v_mov_b32_e32 v6, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1096
	scratch_store_b32 off, v1, off offset:632
	v_mul_lo_u32 v1, s19, v46
	v_subrev_nc_u32_e32 v0, s37, v56
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s5, s2
	scratch_store_b32 off, v0, off offset:1100 ; 4-byte Folded Spill
	s_cselect_b32 s2, s7, s6
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[41:42], null, s11, v45, v[1:2]
	v_mov_b32_e32 v2, v17
	v_subrev_nc_u32_e32 v0, s37, v57
	v_xor_b32_e32 v1, 0x60, v28
	v_writelane_b32 v254, s11, 18
	s_add_i32 s4, s4, s9
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s2, s2, s0
	scratch_store_b32 off, v0, off offset:1104 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v58
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[33:34], null, s19, 6, v[41:42]
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s0, s2, s0
	scratch_store_b32 off, v0, off offset:1108 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v59
	s_add_i32 s2, s4, s3
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s0, s0, s1
	v_writelane_b32 v254, s2, 19
	.loc	1 629 13                        ; attention.py:629:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:712
	scratch_store_b32 off, v0, off offset:1112
	v_subrev_nc_u32_e32 v0, s37, v60
	v_mad_u64_u32 v[33:34], null, s19, 10, v[41:42]
	.loc	1 632 32                        ; attention.py:632:32
	s_mul_i32 s0, s0, s23
	v_lshl_or_b32 v3, v3, 4, v3
	scratch_store_b32 off, v0, off offset:1116 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v61
	v_writelane_b32 v254, s0, 20
	v_readlane_b32 s0, v253, 4
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b64 off, v[33:34], off offset:720 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 12, v[41:42]
	scratch_store_b32 off, v0, off offset:1120 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v62
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s0, v45
	s_lshl_b32 s2, s0, 1
	v_dual_mov_b32 v108, v17 :: v_dual_and_b32 v187, 0x5040504, v3
	scratch_store_b32 off, v0, off offset:1124 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v63
	.loc	1 664 27                        ; attention.py:664:27
	v_writelane_b32 v254, s1, 21
	s_mul_f32 s1, s16, 0x3fb8aa3b
	v_dual_mov_b32 v26, v17 :: v_dual_add_nc_u32 v171, 0, v9
	v_mov_b32_e32 v120, v17
	scratch_store_b32 off, v0, off offset:1128 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v64
	v_writelane_b32 v254, s2, 22
	s_lshl_b32 s2, s0, 2
	v_mov_b32_e32 v27, v17
	v_mov_b32_e32 v29, v17
	scratch_store_b32 off, v0, off offset:1132 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v66
	v_writelane_b32 v254, s2, 23
	s_lshl_b32 s2, s0, 3
	v_mov_b32_e32 v31, v17
	v_mov_b32_e32 v9, v17
	scratch_store_b32 off, v0, off offset:1136 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v67
	v_writelane_b32 v254, s2, 24
	s_lshl_b32 s2, s0, 4
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v3, v17
	scratch_store_b32 off, v0, off offset:1140 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v68
	v_writelane_b32 v254, s2, 25
	s_lshl_b32 s2, s0, 5
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v118, v17
	scratch_store_b32 off, v0, off offset:1144 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v69
	v_writelane_b32 v254, s2, 26
	v_mov_b32_e32 v94, v17
	v_mov_b32_e32 v92, v17
	v_mov_b32_e32 v90, v17
	scratch_store_b32 off, v0, off offset:1148 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v72
	.loc	1 664 17 is_stmt 0              ; attention.py:664:17
	v_writelane_b32 v254, s1, 27
	v_mov_b32_e32 v88, v17
	v_mov_b32_e32 v86, v17
	v_mov_b32_e32 v70, v17
	scratch_store_b32 off, v0, off offset:1152 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v73
	v_writelane_b32 v254, s1, 28
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s13, s59, 0xffff
	s_and_b32 s25, s25, 0xffff
	scratch_store_b32 off, v0, off offset:1156 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v74
	v_writelane_b32 v254, s1, 29
	s_and_b32 s29, s55, 0xffff
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	scratch_store_b64 off, v[33:34], off offset:728 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 14, v[41:42]
	scratch_store_b32 off, v0, off offset:1160 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v36
	.loc	1 664 17                        ; attention.py:664:17
	v_writelane_b32 v254, s1, 30
	scratch_store_b32 off, v0, off offset:1164 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v37
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v254, s10, 31
	scratch_store_b64 off, v[33:34], off offset:736 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 18, v[41:42]
	scratch_store_b32 off, v0, off offset:1168 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v38
	scratch_store_b32 off, v0, off offset:1172 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v39
	scratch_store_b32 off, v0, off offset:1176 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1180
	scratch_store_b32 off, v71, off offset:928
	v_add_nc_u32_e32 v0, s38, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1184
	scratch_store_b32 off, v44, off offset:932
	v_add_nc_u32_e32 v0, s38, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1188
	scratch_store_b32 off, v47, off offset:936
	v_add_nc_u32_e32 v0, s38, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1192
	scratch_store_b32 off, v48, off offset:940
	v_add_nc_u32_e32 v0, s38, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1196
	scratch_store_b32 off, v49, off offset:944
	v_add_nc_u32_e32 v0, s38, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1200
	scratch_store_b32 off, v50, off offset:948
	v_add_nc_u32_e32 v0, s38, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1204
	scratch_store_b32 off, v51, off offset:952
	v_add_nc_u32_e32 v0, s38, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1208
	scratch_store_b32 off, v52, off offset:956
	v_add_nc_u32_e32 v0, s38, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1212
	scratch_store_b32 off, v53, off offset:960
	v_add_nc_u32_e32 v0, s38, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1216
	scratch_store_b32 off, v54, off offset:964
	v_add_nc_u32_e32 v0, s38, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1220
	scratch_store_b32 off, v55, off offset:968
	v_add_nc_u32_e32 v0, s38, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1224
	scratch_store_b32 off, v56, off offset:972
	v_add_nc_u32_e32 v0, s38, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1228
	scratch_store_b32 off, v57, off offset:976
	v_add_nc_u32_e32 v0, s38, v57
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1232
	scratch_store_b32 off, v58, off offset:980
	v_add_nc_u32_e32 v0, s38, v58
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1236
	scratch_store_b32 off, v59, off offset:984
	v_add_nc_u32_e32 v0, s38, v59
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1240
	scratch_store_b32 off, v60, off offset:988
	v_add_nc_u32_e32 v0, s38, v60
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1244
	scratch_store_b32 off, v61, off offset:992
	v_add_nc_u32_e32 v0, s38, v61
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1248
	scratch_store_b32 off, v62, off offset:996
	v_add_nc_u32_e32 v0, s38, v62
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1252
	scratch_store_b32 off, v63, off offset:1000
	v_add_nc_u32_e32 v0, s38, v63
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1256
	scratch_store_b32 off, v64, off offset:1004
	v_add_nc_u32_e32 v0, s38, v64
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1260
	scratch_store_b32 off, v66, off offset:1008
	v_add_nc_u32_e32 v0, s38, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1264
	scratch_store_b32 off, v67, off offset:1012
	v_add_nc_u32_e32 v0, s38, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1268
	scratch_store_b32 off, v68, off offset:1016
	v_add_nc_u32_e32 v0, s38, v68
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1272
	scratch_store_b32 off, v69, off offset:1020
	v_add_nc_u32_e32 v0, s38, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1276
	scratch_store_b32 off, v72, off offset:1024
	v_add_nc_u32_e32 v0, s38, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1280
	scratch_store_b32 off, v73, off offset:1028
	v_add_nc_u32_e32 v0, s38, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1284
	scratch_store_b32 off, v74, off offset:1032
	v_add_nc_u32_e32 v0, s38, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1288
	scratch_store_b32 off, v36, off offset:1036
	v_add_nc_u32_e32 v0, s38, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1292
	scratch_store_b32 off, v37, off offset:1040
	v_add_nc_u32_e32 v0, s38, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1296
	scratch_store_b32 off, v38, off offset:1044
	v_add_nc_u32_e32 v0, s38, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1300
	scratch_store_b32 off, v39, off offset:1048
	v_dual_mov_b32 v73, v17 :: v_dual_add_nc_u32 v0, s38, v39
	v_mov_b32_e32 v72, v17
	v_mov_b32_e32 v71, v17
	v_mov_b32_e32 v69, v17
	.loc	1 664 17                        ; attention.py:664:17
	scratch_store_b32 off, v0, off offset:1304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s38, v40
	v_mov_b32_e32 v68, v17
	v_mov_b32_e32 v67, v17
	v_mov_b32_e32 v66, v17
	v_mov_b32_e32 v74, 0xff800000
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v0, off offset:1308 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 1, v41
	scratch_store_b32 off, v1, off offset:644 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x68, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v40, off offset:1052
	scratch_store_b32 off, v0, off offset:692
	v_lshl_add_u32 v0, s19, 2, v41
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:696
	scratch_store_b32 off, v1, off offset:648
	v_xor_b32_e32 v1, 0x70, v28
	v_lshl_add_u32 v0, s19, 3, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:652
	scratch_store_b32 off, v28, off offset:520
	v_xor_b32_e32 v1, 0x78, v28
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 4, v41
	scratch_store_b64 off, v[75:76], off offset:668 ; 8-byte Folded Spill
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v76, 0xff800000
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 5, v41
	v_mov_b32_e32 v75, 0xff800000
	scratch_store_b32 off, v1, off offset:656 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v17
	.loc	1 654 30                        ; attention.py:654:30
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v41
	.loc	1 629 13                        ; attention.py:629:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:544
	scratch_store_b64 off, v[33:34], off offset:744
	v_add_nc_u32_e32 v4, 0, v7
	v_mad_u64_u32 v[33:34], null, s19, 20, v[41:42]
	v_mov_b32_e32 v7, v17
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:636
	scratch_store_b32 off, v4, off offset:548
	v_add_nc_u32_e32 v4, 0, v8
	v_mov_b32_e32 v8, v17
	v_mov_b32_e32 v0, v45
	scratch_store_b64 off, v[33:34], off offset:752 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 22, v[41:42]
	scratch_store_b32 off, v4, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v10
	v_mov_b32_e32 v10, v17
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:308
	scratch_store_b32 off, v46, off offset:316
	scratch_store_b32 off, v4, off offset:556
	v_add_nc_u32_e32 v4, 0, v11
	scratch_store_b64 off, v[33:34], off offset:760 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 24, v[41:42]
	v_mov_b32_e32 v11, v17
	scratch_store_b32 off, v4, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v12
	v_mov_b32_e32 v12, v17
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:768
	scratch_store_b32 off, v4, off offset:564
	v_add_nc_u32_e32 v4, 0, v13
	v_mad_u64_u32 v[33:34], null, s19, 26, v[41:42]
	v_mov_b32_e32 v13, v17
	scratch_store_b32 off, v4, off offset:568 ; 4-byte Folded Spill
	v_mov_b32_e32 v4, v17
	scratch_store_b64 off, v[33:34], off offset:776 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 28, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:784 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 30, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:792 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 34, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:800 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 36, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:808 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 38, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:816 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 40, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:824 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 42, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:832 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 44, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:840 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 46, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:848 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 48, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:856 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 50, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:864 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 52, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:872 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 54, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:880 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 56, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:888 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 58, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:896 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 60, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:904 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 62, v[41:42]
	scratch_store_b64 off, v[33:34], off offset:912 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s0, v46, v[45:46]
	scratch_store_b64 off, v[33:34], off offset:920 ; 8-byte Folded Spill
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v223, v50
	v_cvt_f32_i32_e32 v227, v51
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[50:51], off, off offset:824 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v220, v52
	v_cvt_f32_i32_e32 v244, v45
	v_cvt_f32_i32_e32 v243, v44
	v_cvt_f32_i32_e32 v229, v41
	v_cvt_f32_i32_e32 v231, v40
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[40:41], off, off offset:744
	scratch_load_b64 v[44:45], off, off offset:752
	scratch_load_b64 v[51:52], off, off offset:888
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v222, v53
	v_cvt_f32_i32_e32 v237, v46
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[52:53], off, off offset:768
	scratch_load_b64 v[45:46], off, off offset:816
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v239, v47
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[46:47], off, off offset:880 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v241, v42
	v_cvt_f32_i32_e32 v240, v48
	v_cvt_f32_i32_e32 v236, v38
	v_cvt_f32_i32_e32 v235, v37
	v_cvt_f32_i32_e32 v233, v35
	v_cvt_f32_i32_e32 v188, v34
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[34:35], off, off offset:856
	scratch_load_b64 v[37:38], off, off offset:800
	scratch_load_b64 v[47:48], off, off offset:712
	scratch_load_b64 v[41:42], off, off offset:808
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v219, v49
	v_cvt_f32_i32_e32 v242, v43
	v_cvt_f32_i32_e32 v234, v36
	v_cvt_f32_i32_e32 v230, v39
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:636
	scratch_load_b64 v[42:43], off, off offset:872
	scratch_load_b64 v[48:49], off, off offset:760
	scratch_load_b64 v[38:39], off, off offset:864
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v224, v54
	v_cvt_f32_i32_e32 v238, v33
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v33, off, off offset:708
	scratch_load_b32 v39, off, off offset:692
	scratch_load_b32 v43, off, off offset:696
	scratch_load_b32 v49, off, off offset:700
	scratch_load_b32 v36, off, off offset:704
	scratch_load_b64 v[53:54], off, off offset:720
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v226, v55
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[54:55], off, off offset:728 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v228, v56
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[55:56], off, off offset:736 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v190, v57
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[56:57], off, off offset:776 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v191, v58
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[57:58], off, off offset:784 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v192, v59
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[58:59], off, off offset:792 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v208, v60
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[59:60], off, off offset:832 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v193, v61
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[60:61], off, off offset:896 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v197, v62
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[61:62], off, off offset:840 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v210, v63
	.loc	1 683 36                        ; attention.py:683:36
	scratch_load_b64 v[62:63], off, off offset:848 ; 8-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v211, v64
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[63:64], off, off offset:904
	scratch_load_b64 v[64:65], off, off offset:912
	.loc	1 674 25                        ; attention.py:674:25
	v_readlane_b32 s3, v254, 18
	v_readlane_b32 s26, v254, 19
	.loc	1 683 36                        ; attention.py:683:36
	s_mov_b32 s27, s15
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(62)
	v_mov_b16_e32 v119.h, v119.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v119.l, 0
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s103, s3
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(57)
	v_mov_b16_e64 v133.h, v133.l
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s3, s26, s3
	.loc	1 683 36                        ; attention.py:683:36
	s_mov_b32 s26, s14
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v133.l, v119.l
	v_mov_b16_e64 v131.h, v131.l
	v_mov_b16_e64 v131.l, v119.l
	s_waitcnt vmcnt(52)
	v_mov_b16_e64 v129.h, v129.l
	v_mov_b16_e64 v129.l, v119.l
	s_waitcnt vmcnt(51)
	v_mov_b16_e64 v130.h, v132.l
	v_mov_b16_e32 v127.h, v127.l
	v_mov_b16_e32 v127.l, v119.l
	s_waitcnt vmcnt(42)
	v_mov_b16_e32 v122.h, v124.l
	v_mov_b16_e32 v126.h, v126.l
	v_mov_b16_e32 v126.l, v119.l
	v_mov_b16_e32 v125.h, v125.l
	v_mov_b16_e32 v125.l, v119.l
	v_mov_b16_e32 v123.h, v123.l
	v_mov_b16_e32 v123.l, v119.l
	v_mov_b16_e32 v120.h, v120.l
	v_mov_b16_e32 v120.l, v119.l
	s_waitcnt vmcnt(38)
	v_mov_b16_e32 v86.h, v118.l
	s_waitcnt vmcnt(35)
	v_mov_b16_e32 v69.h, v69.l
	v_mov_b16_e32 v69.l, v119.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v118, v182, v223
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v121.h, v121.l
	v_mov_b16_e32 v121.l, v119.l
	v_mov_b16_e32 v85.h, v85.l
	v_mov_b16_e32 v85.l, v119.l
	v_mov_b16_e32 v72.h, v72.l
	v_mov_b16_e32 v72.l, v119.l
	s_waitcnt vmcnt(33)
	v_mov_b16_e32 v71.h, v73.l
	v_mov_b16_e32 v67.h, v67.l
	v_mov_b16_e32 v67.l, v119.l
	v_mov_b16_e32 v70.h, v70.l
	v_mov_b16_e32 v70.l, v119.l
	s_waitcnt vmcnt(32)
	v_mov_b16_e32 v66.h, v68.l
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v135, v182, v211
	v_mul_f32_e32 v124, v182, v236
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(31)
	v_add_lshl_u32 v50, s3, v50, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v50, 0x80000000, v50, s9
	s_waitcnt vmcnt(30)
	v_add_lshl_u32 v40, s3, v40, 2
	s_waitcnt vmcnt(29)
	v_add_lshl_u32 v44, s3, v44, 2
	s_waitcnt vmcnt(28)
	v_add_lshl_u32 v51, s3, v51, 2
	s_waitcnt vmcnt(27)
	v_add_lshl_u32 v52, s3, v52, 2
	s_waitcnt vmcnt(26)
	v_add_lshl_u32 v45, s3, v45, 2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s21
	s_waitcnt vmcnt(25)
	v_add_lshl_u32 v46, s3, v46, 2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s102
	v_cndmask_b32_e64 v45, 0x80000000, v45, s104
	v_cndmask_b32_e64 v52, 0x80000000, v52, s17
	v_cndmask_b32_e64 v46, 0x80000000, v46, s1
	s_clause 0x1
	buffer_load_b32 v45, v45, s[24:27], 0 offen
	buffer_load_b32 v46, v46, s[24:27], 0 offen
	s_waitcnt vmcnt(25)
	v_add_lshl_u32 v37, s3, v37, 2
	s_waitcnt vmcnt(23)
	v_add_lshl_u32 v41, s3, v41, 2
	v_add_lshl_u32 v47, s3, v47, 2
	v_add_lshl_u32 v34, s3, v34, 2
	s_clause 0x1
	buffer_load_b32 v50, v50, s[24:27], 0 offen
	buffer_load_b32 v51, v51, s[24:27], 0 offen
	s_waitcnt vmcnt(24)
	v_add_lshl_u32 v35, s3, v35, 2
	s_waitcnt vmcnt(23)
	v_add_lshl_u32 v42, s3, v42, 2
	s_waitcnt vmcnt(22)
	v_add_lshl_u32 v48, s3, v48, 2
	s_waitcnt vmcnt(21)
	v_add_lshl_u32 v38, s3, v38, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, vcc_hi
	v_cndmask_b32_e64 v35, 0x80000000, v35, s16
	s_waitcnt vmcnt(20)
	v_add_lshl_u32 v33, s3, v33, 2
	s_waitcnt vmcnt(19)
	v_add_lshl_u32 v39, s3, v39, 2
	s_waitcnt vmcnt(18)
	v_add_lshl_u32 v43, s3, v43, 2
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v49, s3, v49, 2
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v36, s3, v36, 2
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v53, s3, v53, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v54, s3, v54, 2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s97
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v55, s3, v55, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s20
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v56, s3, v56, 2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s98
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v57, s3, v57, 2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s99
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v58, s3, v58, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s10
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v59, s3, v59, 2
	v_cndmask_b32_e64 v53, 0x80000000, v53, s33
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v60, s3, v60, 2
	v_cndmask_b32_e64 v54, 0x80000000, v54, s30
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v61, s3, v61, 2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s11
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v62, s3, v62, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s101
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v63, s3, v63, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v64, s3, v64, 2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s100
	v_cndmask_b32_e64 v38, 0x80000000, v38, s4
	v_cndmask_b32_e64 v42, 0x80000000, v42, s36
	v_cndmask_b32_e64 v48, 0x80000000, v48, s18
	v_cndmask_b32_e64 v55, 0x80000000, v55, s6
	v_cndmask_b32_e64 v56, 0x80000000, v56, s35
	v_cndmask_b32_e64 v60, 0x80000000, v60, s22
	v_cndmask_b32_e64 v57, 0x80000000, v57, s34
	v_cndmask_b32_e64 v58, 0x80000000, v58, s7
	v_cndmask_b32_e64 v61, 0x80000000, v61, s8
	v_cndmask_b32_e64 v62, 0x80000000, v62, s31
	v_cndmask_b32_e64 v63, 0x80000000, v63, s19
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	s_clause 0x1b
	buffer_load_b32 v33, v33, s[24:27], 0 offen
	buffer_load_b32 v34, v34, s[24:27], 0 offen
	buffer_load_b32 v35, v35, s[24:27], 0 offen
	buffer_load_b32 v36, v36, s[24:27], 0 offen
	buffer_load_b32 v37, v37, s[24:27], 0 offen
	buffer_load_b32 v38, v38, s[24:27], 0 offen
	buffer_load_b32 v39, v39, s[24:27], 0 offen
	buffer_load_b32 v40, v40, s[24:27], 0 offen
	buffer_load_b32 v41, v41, s[24:27], 0 offen
	buffer_load_b32 v42, v42, s[24:27], 0 offen
	buffer_load_b32 v43, v43, s[24:27], 0 offen
	buffer_load_b32 v44, v44, s[24:27], 0 offen
	buffer_load_b32 v47, v47, s[24:27], 0 offen
	buffer_load_b32 v48, v48, s[24:27], 0 offen
	buffer_load_b32 v49, v49, s[24:27], 0 offen
	buffer_load_b32 v52, v52, s[24:27], 0 offen
	buffer_load_b32 v59, v59, s[24:27], 0 offen
	buffer_load_b32 v60, v60, s[24:27], 0 offen
	buffer_load_b32 v53, v53, s[24:27], 0 offen
	buffer_load_b32 v56, v56, s[24:27], 0 offen
	buffer_load_b32 v54, v54, s[24:27], 0 offen
	buffer_load_b32 v55, v55, s[24:27], 0 offen
	buffer_load_b32 v57, v57, s[24:27], 0 offen
	buffer_load_b32 v58, v58, s[24:27], 0 offen
	buffer_load_b32 v61, v61, s[24:27], 0 offen
	buffer_load_b32 v62, v62, s[24:27], 0 offen
	buffer_load_b32 v63, v63, s[24:27], 0 offen
	buffer_load_b32 v64, v64, s[24:27], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v65, off, off offset:456
	scratch_load_b32 v201, off, off offset:564
	scratch_load_b32 v202, off, off offset:568
	scratch_load_b32 v203, off, off offset:572
	scratch_load_b32 v204, off, off offset:576
	scratch_load_b32 v205, off, off offset:580
	scratch_load_b32 v206, off, off offset:584
	scratch_load_b32 v251, off, off offset:588
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(35)
	v_cndmask_b32_e64 v33, 0xff800000, v33, s5
	s_waitcnt vmcnt(34)
	v_cndmask_b32_e64 v34, 0xff800000, v34, s101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s86, s5, s3
	s_and_b32 s79, s101, vcc_lo
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v65, 0, v65
	ds_store_2addr_b32 v65, v33, v34 offset0:64 offset1:96
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v36, s100
	v_cndmask_b32_e64 v33, 0xff800000, v35, s16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b32 v65, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s79
	v_cndmask_b32_e64 v34, 0, 1, s86
	s_and_b32 s92, s100, s38
	s_and_b32 s95, s16, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s92
	v_or_b16 v87.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v37, vcc_hi
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v87.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v38, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(6)
	ds_store_2addr_b32 v201, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v40, s21
	v_cndmask_b32_e64 v33, 0xff800000, v39, s97
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s88, vcc_hi, s3
	s_and_b32 s83, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v201, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s83
	v_cndmask_b32_e64 v34, 0, 1, s88
	s_and_b32 s93, s21, s38
	s_and_b32 s97, s97, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s93
	v_or_b16 v88.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v41, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v88.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v42, s36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(5)
	ds_store_2addr_b32 v202, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v44, s2
	v_cndmask_b32_e64 v33, 0xff800000, v43, s98
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s89, s20, s3
	s_and_b32 s85, s36, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v202, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s85
	v_cndmask_b32_e64 v34, 0, 1, s89
	s_and_b32 s94, s2, s38
	v_readlane_b32 s2, v254, 30
	s_and_b32 s98, s98, s37
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v89.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s98
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v45, s104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v89.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v46, s1
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(4)
	ds_store_2addr_b32 v203, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v48, s18
	v_cndmask_b32_e64 v33, 0xff800000, v47, s99
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s90, s104, s3
	s_and_b32 s87, s1, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v203, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s87
	v_cndmask_b32_e64 v34, 0, 1, s90
	s_and_b32 s96, s18, s38
	v_readlane_b32 s1, v254, 27
	s_and_b32 s99, s99, s37
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v90.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s99
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v50, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v90.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v51, s102
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(3)
	ds_store_2addr_b32 v204, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v52, s17
	v_cndmask_b32_e64 v33, 0xff800000, v49, s10
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s63, s9, s3
	s_and_b32 s60, s102, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v204, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s60
	v_cndmask_b32_e64 v34, 0, 1, s63
	s_and_b32 s73, s17, s38
	s_and_b32 s77, s10, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s73
	v_readlane_b32 s10, v254, 31
	v_or_b16 v91.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v59, s11
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v91.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v60, s22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(2)
	ds_store_2addr_b32 v205, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v56, s35
	v_cndmask_b32_e64 v33, 0xff800000, v53, s33
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s66, s11, s3
	s_and_b32 s61, s22, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v205, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s61
	v_cndmask_b32_e64 v34, 0, 1, s66
	s_and_b32 s74, s35, s38
	s_and_b32 s80, s33, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s74
	v_or_b16 v92.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v61, s8
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v92.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v63, s19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_b32 v206, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v57, s34
	v_cndmask_b32_e64 v33, 0xff800000, v54, s30
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s68, s8, s3
	s_and_b32 s62, s19, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v206, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s62
	v_cndmask_b32_e64 v34, 0, 1, s68
	s_and_b32 s76, s34, s38
	s_and_b32 s82, s30, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s76
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_mov_b32 s30, s14
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v93.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v33, 0xff800000, v62, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v93.l, v34.l, v0.h
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v64, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v251, v33, v34 offset0:64 offset1:96
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0xff800000, v58, s7
	v_cndmask_b32_e64 v33, 0xff800000, v55, s6
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s69, s31, s3
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s31, s15
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s67, s0, vcc_lo
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_store_2addr_b32 v251, v33, v34 offset1:32
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s67
	v_cndmask_b32_e64 v34, 0, 1, s69
	s_and_b32 s81, s7, s38
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s81
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v136, off, off offset:460
	scratch_load_b32 v137, off, off offset:464
	scratch_load_b32 v138, off, off offset:468
	scratch_load_b32 v139, off, off offset:472
	scratch_load_b32 v140, off, off offset:476
	scratch_load_b32 v141, off, off offset:480
	scratch_load_b32 v142, off, off offset:484
	v_or_b16 v94.h, v34.l, v0.h
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v33, off, off offset:320
	scratch_load_b32 v143, off, off offset:488
	scratch_load_b32 v144, off, off offset:492
	scratch_load_b32 v145, off, off offset:496
	scratch_load_b32 v146, off, off offset:500
	scratch_load_b32 v147, off, off offset:504
	scratch_load_b32 v148, off, off offset:508
	scratch_load_b32 v149, off, off offset:512
	scratch_load_b32 v200, off, off offset:516
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s84, s6, s37
	v_readlane_b32 s0, v254, 29
	v_cndmask_b32_e64 v34, 0, 1, s84
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v94.l, v34.l, v0.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v0.h, v0.l
	v_mov_b16_e32 v0.l, v119.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt vmcnt(15)
	ds_load_2addr_stride64_b32 v[63:64], v136 offset1:2
	s_waitcnt vmcnt(14)
	ds_load_2addr_stride64_b32 v[61:62], v137 offset1:2
	s_waitcnt vmcnt(13)
	ds_load_2addr_stride64_b32 v[35:36], v138 offset1:2
	s_waitcnt vmcnt(12)
	ds_load_2addr_stride64_b32 v[51:52], v139 offset1:2
	s_waitcnt vmcnt(11)
	ds_load_2addr_stride64_b32 v[49:50], v140 offset1:2
	s_waitcnt vmcnt(10)
	ds_load_2addr_stride64_b32 v[59:60], v141 offset1:2
	s_waitcnt vmcnt(9)
	ds_load_2addr_stride64_b32 v[57:58], v142 offset1:2
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v189, 0, v33
	s_waitcnt vmcnt(7)
	ds_load_2addr_stride64_b32 v[47:48], v143 offset1:2
	s_waitcnt vmcnt(6)
	ds_load_2addr_stride64_b32 v[45:46], v144 offset1:2
	s_waitcnt vmcnt(5)
	ds_load_2addr_stride64_b32 v[43:44], v145 offset1:2
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b32 v[55:56], v146 offset1:2
	ds_load_2addr_stride64_b32 v[33:34], v189 offset1:2
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b32 v[53:54], v147 offset1:2
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b32 v[41:42], v148 offset1:2
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b32 v[39:40], v149 offset1:2
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[37:38], v200 offset1:2
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v134, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v68, v182, v228
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	v_mul_f32_e32 v50, 0x3fb8aa3b, v50
	v_dual_mul_f32 v60, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v61
	v_mul_f32_e32 v57, 0x3fb8aa3b, v57
	v_mul_f32_e32 v59, 0x3fb8aa3b, v59
	v_dual_mul_f32 v35, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v48, 0x3fb8aa3b, v48
	v_mul_f32_e32 v44, 0x3fb8aa3b, v44
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v55
	v_mul_f32_e32 v41, 0x3fb8aa3b, v41
	v_mul_f32_e32 v39, 0x3fb8aa3b, v39
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v42
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, 0, v134
	ds_store_b32 v134, v87
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v87.h, v170.l
	v_mov_b16_e32 v87.l, v119.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v134, v182, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v170, v134, v87
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v87.h, v169.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v134, v181, v192 :: v_dual_fmac_f32 v35, s2, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v169, v134, v87
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v87.h, v168.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v134, v196, v191
	v_dual_mul_f32 v87, v134, v87 :: v_dual_mul_f32 v134, v199, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v168, v134, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v134.h, v166.l
	v_mov_b16_e64 v134.l, v119.l
	v_mov_b16_e64 v119.h, v159.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v159, v135, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v134, v181, v210 :: v_dual_fmac_f32 v57, s2, v159
	v_mul_f32_e32 v133, v134, v133
	v_mul_f32_e32 v134, v196, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v166, v134, v131 :: v_dual_mul_f32 v131, v199, v193
	v_mul_f32_e32 v190, v131, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v119.h, v130.l
	v_mov_b16_e64 v130.l, v119.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v131, v182, v244
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v130, v131, v130 :: v_dual_mul_f32 v131, v181, v243
	v_mul_f32_e32 v129, v131, v129
	v_mul_f32_e32 v131, v196, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v131, v127
	v_mul_f32_e32 v127, v199, v241
	v_dual_mul_f32 v132, v127, v119 :: v_dual_mul_f32 v127, v181, v240
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v119.h, v128.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v126, v127, v126 :: v_dual_mul_f32 v127, v196, v239
	v_mul_f32_e32 v125, v127, v125
	v_mul_f32_e32 v127, v199, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v127, v127, v123
	v_mul_f32_e32 v123, v182, v238
	v_mul_f32_e32 v123, v123, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v119.h, v122.l
	v_mov_b16_e32 v122.l, v119.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v122, v124, v122
	v_dual_mul_f32 v124, v181, v235 :: v_dual_fmac_f32 v39, s1, v125
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v50, s2, v122 :: v_dual_mul_f32 v121, v124, v121
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v124, v196, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v124, v124, v120
	v_dual_mul_f32 v120, v199, v233 :: v_dual_fmac_f32 v41, s0, v127
	v_mul_f32_e32 v128, v120, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v119.h, v86.l
	v_mov_b16_e32 v86.l, v119.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v86, v118, v86
	v_mul_f32_e32 v118, v181, v219
	v_dual_mul_f32 v85, v118, v85 :: v_dual_mul_f32 v118, v196, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v118, v118, v72
	v_mul_f32_e32 v72, v199, v230
	v_mul_f32_e32 v120, v72, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v119.h, v71.l
	v_mov_b16_e32 v71.l, v119.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v72, v182, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v71, v72, v71 :: v_dual_mul_f32 v72, v181, v224
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v40, s2, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v70, v72, v70
	v_mul_f32_e32 v72, v196, v222
	v_dual_mul_f32 v69, v72, v69 :: v_dual_mul_f32 v72, v199, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v72, v119
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v119.h, v66.l
	v_mov_b16_e32 v66.l, v119.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v56, s0, v72
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v66, v68, v66
	v_mul_f32_e32 v68, v181, v227
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v72, s1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v38, s2, v66 :: v_dual_mul_f32 v67, v68, v67
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v68, v199, v229
	v_mul_f32_e32 v68, v68, v0
	.loc	1 685 25                        ; attention.py:685:25
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v88
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v89
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v89, v196, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v89, v119
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v64, s1, v89 :: v_dual_mul_f32 v89, 0x3fb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v89, s0, v190
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v90
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v91
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v92
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v93
	scratch_load_b32 v0, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v94
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v0, 0x3fb8aa3b, v63
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v91, off, off offset:600
	scratch_load_b32 v51, off, off offset:604
	scratch_load_b32 v92, off, off offset:616
	scratch_load_b32 v54, off, off offset:648
	scratch_load_b32 v90, off, off offset:596
	scratch_load_b32 v73, off, off offset:520
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v0, s1, v87
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v87, off, off offset:592
	scratch_load_b32 v93, off, off offset:628
	scratch_load_b32 v69, off, off offset:644
	scratch_load_b32 v94, off, off offset:656
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v88, 0, v73
	ds_load_u8_d16 v73, v91
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v63, v87
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v63, v87 offset:128
	ds_load_u8_d16_hi v73, v90
	ds_load_u8_d16 v87, v88 offset:128
	s_waitcnt lgkmcnt(2)
	v_and_b16 v63.l, 1, v63.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s75, 1, v63.l
	v_and_b16 v63.l, 1, v63.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v159, 0xff800000, v0, s75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s39, 1, v63.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v62
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u8_d16 v62, v90 offset:128
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v49
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v242, 0xff800000, v64, s39
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v63, s0, v128
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v62.l, 1, v62.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s38, 1, v62.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v36
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u8_d16 v36, v91 offset:128
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v240, 0xff800000, v63, s38
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v62, s1, v124
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s42, 1, v36.l
	ds_load_u8_d16 v36, v51
	scratch_load_b32 v91, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v36, v91 offset:128
	ds_load_u8_d16 v51, v51 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s64, 1, v36.l
	ds_load_u8_d16 v36, v91
	scratch_load_b32 v91, off, off offset:612 ; 4-byte Folded Reload
	ds_load_u8_d16 v49, v92
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v49, v91
	v_and_b16 v36.l, 1, v36.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v211, 0xff800000, v89, s64
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s65, 1, v36.l
	ds_load_u8_d16 v36, v91 offset:128
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v91, 0x3fb8aa3b, v47
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u8_d16 v47, v93 offset:128
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v91, s0, v68
	scratch_load_b32 v68, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s40, 1, v36.l
	ds_load_u8_d16 v36, v92 offset:128
	scratch_load_b32 v92, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	ds_load_u8_d16_hi v47, v92 offset:128
	ds_load_u8_d16_hi v51, v68 offset:128
	s_waitcnt lgkmcnt(2)
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v36.l
	ds_load_u8_d16 v36, v68
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v68, 0x3fb8aa3b, v45
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u8_d16 v45, v94 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s53, 1, v36.l
	ds_load_u8_d16 v36, v92
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v92, 0x3fb8aa3b, v43
	scratch_load_b32 v43, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v92, s1, v131
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s55, 1, v36.l
	ds_load_u8_d16 v36, v93
	scratch_load_b32 v93, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v36.l, 1, v36.l
	v_cmp_eq_u16_e64 s52, 1, v36.l
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v36, v43 offset:128
	ds_load_u8_d16 v43, v43
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v43, v54
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v45, v93 offset:128
	ds_load_u8_d16 v54, v54 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v54, v69
	v_and_b16 v36.l, 1, v36.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v247, 0xff800000, v92, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s37, 1, v36.l
	ds_load_u8_d16 v36, v69 offset:128
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v250, 0xff800000, v56, s37
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v36.l, 1, v36.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v36.l
	v_and_b16 v36.l, 1, v43.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e32 v231, 0xff800000, v72, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s56, 1, v36.l
	ds_load_u8_d16 v36, v93
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v246, 0xff800000, v41, s56
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v36.l, 1, v36.l
	v_cmp_eq_u16_e64 s54, 1, v36.l
	v_and_b16 v36.l, 1, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v243, 0xff800000, v39, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s72, 1, v36.l
	v_and_b16 v36.l, 1, v49.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s70, 1, v36.l
	v_and_b16 v36.l, 1, v49.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v49, 0x3fb8aa3b, v53
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v241, 0xff800000, v62, s42
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s71, 1, v36.l
	v_and_b16 v36.l, 1, v43.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v34.h, 1, v87.l
	ds_load_u8_d16 v34, v88
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v58
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s58, 1, v36.l
	v_and_b16 v36.l, 1, v54.h
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s51, 1, v34.h
	v_and_b16 v34.h, 1, v51.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v49, s2, v130
	v_fmac_f32_e32 v90, s1, v166
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s57, 1, v36.l
	ds_load_u8_d16 v36, v94
	v_cmp_eq_u16_e64 s49, 1, v34.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v34.h, 1, v36.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v43, s2, v123 :: v_dual_fmac_f32 v58, s1, v118
	v_readlane_b32 s1, v254, 28
	v_fmac_f32_e32 v68, s0, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s50, 1, v34.h
	v_and_b16 v34.h, 1, v51.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v60, s0, v120 :: v_dual_fmac_f32 v37, s1, v126
	v_fmac_f32_e32 v61, s1, v169
	v_fmac_f32_e32 v52, s1, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s47, 1, v34.h
	v_and_b16 v34.h, 1, v47.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v59, s1, v133
	v_fmac_f32_e32 v55, s1, v129
	v_fmac_f32_e32 v48, s1, v85
	v_fmac_f32_e32 v44, s1, v67
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s48, 1, v34.h
	v_and_b16 v36.l, 1, v36.l
	v_and_b16 v34.h, 1, v47.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v42, s1, v70
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v239, 0xff800000, v43, s51
	v_cndmask_b32_e64 v227, 0xff800000, v61, s72
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s59, 1, v36.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v46
	v_mul_f32_e32 v46, 0x3fb8aa3b, v33
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v33.l, 1, v45.l
	v_cmp_eq_u16_e64 s46, 1, v34.h
	v_and_b16 v34.h, 1, v54.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v36, s2, v86
	v_fmac_f32_e32 v46, s0, v168
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s43, 1, v33.l
	v_and_b16 v33.l, 1, v34.l
	v_cmp_eq_u16_e64 s44, 1, v34.h
	v_and_b16 v34.h, 1, v45.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v237, 0xff800000, v52, s49
	v_cndmask_b32_e64 v226, 0xff800000, v90, s65
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s91, 1, v33.l
	v_and_b16 v33.l, 1, v73.l
	v_cmp_eq_u16_e64 s41, 1, v34.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v238, 0xff800000, v50, s50
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v234, 0xff800000, v46, s91
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s78, 1, v33.l
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	v_cndmask_b32_e64 v210, 0xff800000, v57, s71
	v_cndmask_b32_e64 v208, 0xff800000, v59, s70
	ds_store_2addr_stride64_b32 v189, v234, v239 offset1:2
	v_cndmask_b32_e64 v228, 0xff800000, v35, s78
	v_cndmask_b32_e64 v245, 0xff800000, v49, s57
	v_cndmask_b32_e64 v248, 0xff800000, v55, s58
	v_cndmask_b32_e64 v249, 0xff800000, v68, s55
	v_cndmask_b32_e64 v244, 0xff800000, v37, s59
	v_cndmask_b32_e64 v235, 0xff800000, v36, s48
	v_cndmask_b32_e64 v73, 0xff800000, v48, s47
	v_cndmask_b32_e64 v236, 0xff800000, v58, s45
	v_cndmask_b32_e64 v0, 0xff800000, v60, s40
	v_cndmask_b32_e64 v120, 0xff800000, v40, s41
	v_cndmask_b32_e64 v233, 0xff800000, v42, s44
	v_cndmask_b32_e64 v121, 0xff800000, v38, s43
	v_cndmask_b32_e64 v197, 0xff800000, v44, s46
	v_cndmask_b32_e64 v86, 0xff800000, v91, s53
	ds_store_2addr_stride64_b32 v136, v159, v242 offset1:2
	ds_store_2addr_stride64_b32 v137, v227, v240 offset1:2
	ds_store_2addr_stride64_b32 v138, v228, v241 offset1:2
	ds_store_2addr_stride64_b32 v139, v211, v237 offset1:2
	ds_store_2addr_stride64_b32 v140, v226, v238 offset1:2
	ds_store_2addr_stride64_b32 v141, v208, v0 offset1:2
	ds_store_2addr_stride64_b32 v142, v210, v236 offset1:2
	ds_store_2addr_stride64_b32 v143, v86, v73 offset1:2
	ds_store_2addr_stride64_b32 v144, v249, v235 offset1:2
	ds_store_2addr_stride64_b32 v145, v247, v197 offset1:2
	ds_store_2addr_stride64_b32 v146, v248, v250 offset1:2
	ds_store_2addr_stride64_b32 v147, v245, v231 offset1:2
	ds_store_2addr_stride64_b32 v148, v246, v233 offset1:2
	ds_store_2addr_stride64_b32 v149, v243, v120 offset1:2
	ds_store_2addr_stride64_b32 v200, v244, v121 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[45:46], v65 offset1:32
	ds_load_2addr_b32 v[47:48], v201 offset1:32
	ds_load_2addr_b32 v[49:50], v202 offset1:32
	ds_load_2addr_b32 v[51:52], v203 offset1:32
	ds_load_2addr_b32 v[132:133], v65 offset0:64 offset1:96
	ds_load_2addr_b32 v[130:131], v201 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v202 offset0:64 offset1:96
	ds_load_2addr_b32 v[126:127], v203 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v204 offset1:32
	ds_load_2addr_b32 v[71:72], v204 offset0:64 offset1:96
	ds_load_2addr_b32 v[122:123], v205 offset1:32
	ds_load_2addr_b32 v[69:70], v205 offset0:64 offset1:96
	ds_load_2addr_b32 v[55:56], v206 offset1:32
	ds_load_2addr_b32 v[67:68], v206 offset0:64 offset1:96
	ds_load_2addr_b32 v[53:54], v251 offset1:32
	ds_load_2addr_b32 v[65:66], v251 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v33, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v34, v45, v45 :: v_dual_max_f32 v35, v47, v47
	v_max_f32_e32 v36, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v38, v52, v52 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v37, v51, v51
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v33, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v46, v46
	v_max_f32_e32 v33, v34, v33
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v36, v33, -1, -1 op_sel:[1,0]
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v33, v36
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v33, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v36, v48, v48
	v_max_f32_e32 v33, v37, v33
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v37
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v37
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v37
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v34, 31
	v_mov_b32_dpp v34, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v33, v33, v37
	v_max_f32_e32 v37, v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s3, v33, 31
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v34, s1 :: v_dual_max_f32 v35, v35, v36
	v_mov_b32_dpp v36, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s5, v35, 31
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_mov_b32 v35, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v38, v37
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v36, s3 :: v_dual_mov_b32 v39, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s7, v37, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v171, v[33:36]
	ds_store_b128 v171, v[37:40] offset:16
	v_mov_b32_dpp v33, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v34, v132, v132 :: v_dual_max_f32 v35, v130, v130
	v_max_f32_e32 v37, v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v33, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v127, v127
	v_max_f32_e32 v34, v34, v35
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v36, v128, v128
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v133, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v33, v34, v33 :: v_dual_max_f32 v36, v36, v36
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s2, v35, 31
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v131, v131
	v_max_f32_e32 v34, v35, v34
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v34, v34, v35 :: v_dual_max_f32 v37, v37, v37
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v37, v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s3, v36, 31
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v36, s3 :: v_dual_max_f32 v35, v35, v35
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v33, 31
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v33, s0 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v37, v35
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v38, v37
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v39, s6
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s7, v37, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v171, v[33:36] offset:32
	ds_store_b128 v171, v[37:40] offset:48
	v_mov_b32_dpp v33, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v34, v124, v124 :: v_dual_max_f32 v35, v122, v122
	v_dual_max_f32 v36, v55, v55 :: v_dual_max_f32 v37, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v54, v54
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v36, v35
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s1, v34, 31
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v125, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v58, s1
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	v_mov_b32_dpp v33, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v57, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v37
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s2, v35, 31
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v123, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v59, s2 :: v_dual_max_f32 v34, v35, v34
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v33, 31
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v61, s4 :: v_dual_max_f32 v34, v34, v35
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v35, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_dual_max_f32 v35, v35, v35 :: v_dual_mov_b32 v62, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v56, v56
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v37, v35
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v38, v37
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v35, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_mov_b32 v63, s6
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s7, v37, 31
	ds_load_b128 v[87:90], v232
	ds_load_b128 v[41:44], v232 offset:16
	ds_load_b128 v[37:40], v232 offset:32
	ds_load_b128 v[33:36], v232 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v64, s7
	ds_store_b128 v171, v[57:60]
	ds_store_b128 v171, v[61:64] offset:16
	v_mov_b32_dpp v57, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v58, v71, v71 :: v_dual_max_f32 v59, v69, v69
	v_dual_max_f32 v60, v67, v67 :: v_dual_max_f32 v61, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v62, v66, v66
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v85, v41
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v58, v57
	v_max_f32_e32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp255:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v58, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v57, v57, v58
.Ltmp257:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v58, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v58, v59, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v59
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v59
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v59
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s0, v57, 31
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v57, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v59, v60, v59
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v60, v58, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v58, v58, v60
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v60, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s1, v58, 31
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v58, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v60, v61, v60
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v58, v57
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v58, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v58, v58
	v_max_f32_e32 v59, v59, v61
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v61
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v61
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v61, v59, -1, -1 op_sel:[1,0]
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v61
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v61, v60, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s2, v59, 31
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v70, v70
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v59, v58
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v61
	v_max_f32_e32 v61, v68, v68
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s3, v60, 31
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v59
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v59, v59, v59
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v59
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v59
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v58, v58, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v59
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v59, v58, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v57, 31
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v57, s0 :: v_dual_max_f32 v58, v58, v59
	v_mov_b32_dpp v59, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v58, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v59, v59, v59 :: v_dual_mov_b32 v58, s1
	v_max_f32_e32 v59, v61, v59
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v61, v62, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v62
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v62
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v62
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v62, v59, -1, -1 op_sel:[1,0]
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v59, v59, v62
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v62, v61, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v59, 31
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v62, v62, v62 :: v_dual_mov_b32 v59, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v63, s6
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v61, v61, v62 :: v_dual_mov_b32 v62, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp337:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s7, v61, 31
	v_dual_mov_b32 v61, s4 :: v_dual_mov_b32 v64, s7
	ds_store_b128 v171, v[57:60] offset:32
	ds_store_b128 v171, v[61:64] offset:48
	v_mov_b32_e32 v63, v87
.Ltmp338:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v90, v90
.Ltmp339:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp340:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v64, v87, v87 :: v_dual_mov_b32 v61, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp341:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v62, v88, v88
	v_max_f32_e32 v60, v90, v90
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v58, v89
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v63, v63, v63
	v_max_f32_e32 v59, v89, v89
	v_max_f32_e32 v252, v57, v60
.Ltmp345:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v57, v225, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v188, v64, v63
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v88, v42 :: v_dual_mov_b32 v89, v43
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v193, v62, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp349:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v225, v57, v188 :: v_dual_max_f32 v58, v58, v58
.Ltmp350:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp351:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp352:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp353:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v45, v45, v225 :: v_dual_max_f32 v166, v59, v58
.Ltmp354:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v87, v44, v44
.Ltmp355:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp356:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
.Ltmp357:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp358:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v44, v44, v44
	v_max_f32_e32 v229, v87, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp359:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s95
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v44, v175, v175
.Ltmp360:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp361:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v175, v44, v229
.Ltmp362:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp363:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v52, v175
.Ltmp364:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp365:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
.Ltmp366:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp367:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v57, v45, -1, -1 op_sel:[1,0]
.Ltmp368:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp369:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v45, v57
.Ltmp370:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v57, v152, v152
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp372:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s0, v45, 31
.Ltmp373:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v152, v57, v193
.Ltmp374:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v45, v85, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp375:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp376:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v47, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp377:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v251, v41, v45
	v_max_f32_e32 v41, v88, v88
.Ltmp378:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp379:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
.Ltmp380:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v85, v42, v41
	v_max_f32_e32 v41, v89, v89
.Ltmp381:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v42, v173, v173
.Ltmp382:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp383:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v230, v43, v41 :: v_dual_max_f32 v41, v172, v172
.Ltmp384:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v173, v42, v85
	v_dual_max_f32 v43, v174, v174 :: v_dual_max_f32 v172, v41, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp385:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp386:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v48, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v174, v43, v230 :: v_dual_sub_f32 v41, v46, v172
.Ltmp387:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp388:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v43, v50, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
.Ltmp389:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp390:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
.Ltmp391:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp392:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s93
	v_cndmask_b32_e64 v41, 0, v41, s92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp393:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v57, v47, -1, -1 op_sel:[1,0]
.Ltmp394:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp395:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s94
.Ltmp396:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v47, v47, v57
.Ltmp397:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v57, v154, v154
.Ltmp398:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp399:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v47, 31
.Ltmp400:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v154, v57, v166
.Ltmp401:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp402:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v49, v154
.Ltmp403:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp404:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
.Ltmp405:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp406:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v45, v41, -1, -1 op_sel:[1,0]
.Ltmp407:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp408:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v45, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp409:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v49, s98
.Ltmp410:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s4, v41, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp411:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v42, v45
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp412:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v41, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s5, v42, 31
.Ltmp413:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v43, v43, v45
.Ltmp414:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s1
	v_mov_b32_e32 v46, s5
.Ltmp415:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp416:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s6, v43, 31
.Ltmp417:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v44, v44, v45 :: v_dual_mov_b32 v45, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp418:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v47, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s7, v44, 31
	v_permlanex16_b32 v57, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v48, s7 :: v_dual_add_f32 v49, v49, v57
.Ltmp419:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v57, v156, v156
.Ltmp420:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s2, v49, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp421:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v156, v57, v252 :: v_dual_mov_b32 v43, s2
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v51, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v51, 0, v51, s99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp422:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp423:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v57, v51, -1, -1 op_sel:[1,0]
.Ltmp424:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v51, v51, v57
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp425:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s3, v51, 31
.Ltmp426:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	ds_load_b128 v[49:52], v232
	ds_load_b128 v[87:90], v232 offset:16
	ds_load_b128 v[61:64], v232 offset:32
	ds_load_b128 v[57:60], v232 offset:48
.Ltmp427:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v44, s3
	ds_store_b128 v171, v[41:44]
	ds_store_b128 v171, v[45:48] offset:16
.Ltmp428:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v42, v37 :: v_dual_mov_b32 v43, v38
.Ltmp429:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_mov_b32 v44, v39
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp430:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp431:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp432:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v46, v33
.Ltmp433:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp434:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v47, v34
.Ltmp435:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_mov_b32 v48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp436:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp437:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v189, v37, v42
	v_max_f32_e32 v37, v43, v43
.Ltmp438:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp439:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v41, v40, v40
.Ltmp440:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp441:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_dual_max_f32 v170, v38, v37 :: v_dual_max_f32 v37, v44, v44
.Ltmp442:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp443:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v45, v36, v36
	v_max_f32_e32 v169, v39, v37
.Ltmp444:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp445:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v168, v41, v40
.Ltmp446:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v42, v87
	v_mov_b32_e32 v44, v88
.Ltmp447:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v76, v37, v189 :: v_dual_max_f32 v43, v87, v87
.Ltmp448:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp449:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp450:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v132, v76
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s86
.Ltmp451:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp452:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp453:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp454:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v38, v186, v186
.Ltmp455:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s0, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp456:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v186, v38, v170
.Ltmp457:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v37, v46, v46 :: v_dual_mov_b32 v46, v89
.Ltmp458:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v130, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp459:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v132, v33, v37 :: v_dual_max_f32 v33, v47, v47
.Ltmp460:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp461:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v47, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp462:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
.Ltmp463:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v130, v34, v33 :: v_dual_max_f32 v33, v48, v48
.Ltmp464:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v176, v34, v130
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v34, v131, v176
.Ltmp465:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp466:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
.Ltmp467:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp468:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp469:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp470:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
.Ltmp471:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v38, v38, v39
.Ltmp472:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v39, v79, v79
.Ltmp473:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp474:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v38, 31
.Ltmp475:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v79, v39, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp476:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp477:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v39, v128, v79 :: v_dual_max_f32 v128, v35, v33
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v33, v218, v218
	v_max_f32_e32 v35, v178, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v218, v33, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v178, v35, v128 :: v_dual_sub_f32 v33, v133, v218
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v129, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s89
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v35, v35
.Ltmp478:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp479:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s85
.Ltmp480:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp481:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v40, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp482:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v39, v39, v40 :: v_dual_max_f32 v40, v81, v81
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp483:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s2, v39, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp484:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v81, v40, v168
.Ltmp485:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp486:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v126, v81
.Ltmp487:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v126, v45, v36
.Ltmp488:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v36, v180, v180 :: v_dual_add_f32 v33, v33, v37
.Ltmp489:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp490:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
.Ltmp491:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v45, v88, v88
.Ltmp492:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v180, v36, v126
.Ltmp493:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s4, v33, 31
.Ltmp494:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp495:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v33, s0 :: v_dual_sub_f32 v36, v127, v180
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp496:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s90
.Ltmp497:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp498:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
.Ltmp499:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v34, s1
	v_mov_b32_e32 v38, s5
.Ltmp500:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp501:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp502:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp503:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v39, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp504:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s87
.Ltmp505:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp506:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v41, v40, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp507:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v40, v40, v41 :: v_dual_max_f32 v41, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp508:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp509:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s3, v40, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp510:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v48, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp511:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_mov_b32 v37, s4
.Ltmp512:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s7, v36, 31
	v_mov_b32_e32 v36, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v40, s7
	ds_store_b128 v171, v[33:36] offset:32
	ds_store_b128 v171, v[37:40] offset:48
.Ltmp513:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v34, v49 :: v_dual_max_f32 v33, v52, v52
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp514:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v35, v49, v49 :: v_dual_mov_b32 v36, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp515:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v51
.Ltmp516:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v40, v52, v52 :: v_dual_max_f32 v37, v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp517:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp518:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp519:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp520:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v131, v33, v40
.Ltmp521:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v33, v158, v158
.Ltmp522:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v39, v51, v51
	v_dual_max_f32 v191, v35, v34 :: v_dual_max_f32 v34, v36, v36
.Ltmp523:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp524:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v158, v33, v191
.Ltmp525:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v190, v37, v34
	v_max_f32_e32 v34, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp526:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v124, v158
.Ltmp527:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v133, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp528:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp529:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp530:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
.Ltmp531:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp532:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v161, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp533:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s0, v33, 31
.Ltmp534:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v161, v34, v190
.Ltmp535:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp536:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v122, v161
.Ltmp537:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v129, v43, v33
	v_max_f32_e32 v33, v44, v44
	v_max_f32_e32 v122, v41, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp538:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
.Ltmp539:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v127, v45, v33
	v_max_f32_e32 v33, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v124, v47, v33
.Ltmp540:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v33, v167, v167
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v167, v33, v129
.Ltmp541:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp542:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v125, v167
.Ltmp543:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp544:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
.Ltmp545:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp546:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp547:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
.Ltmp548:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v34, v34, v35
.Ltmp549:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v35, v163, v163
.Ltmp550:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp551:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v34, 31
.Ltmp552:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v163, v35, v133
	v_max_f32_e32 v34, v195, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp553:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp554:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v55, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v195, v34, v127
.Ltmp555:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp556:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v34, v123, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp557:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp558:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp559:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp560:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp561:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s4, v33, 31
	v_mov_b32_e32 v33, s0
.Ltmp562:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp563:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s74
.Ltmp564:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp565:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp566:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v165, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp567:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v35, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp568:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v165, v36, v131
	v_dual_max_f32 v35, v184, v184 :: v_dual_add_f32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v53, v165
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v184, v35, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp569:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
.Ltmp570:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v35, v56, v184
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s84
.Ltmp571:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp572:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s76
.Ltmp573:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp574:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp575:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v36, v36, v37
.Ltmp576:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v37, v185, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp577:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp578:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v185, v37, v122
.Ltmp579:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v35, v35, v38 :: v_dual_mov_b32 v36, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp580:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v54, v185
.Ltmp581:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
	ds_load_b128 v[53:56], v232
	ds_load_b128 v[49:52], v232 offset:16
	ds_load_b128 v[45:48], v232 offset:32
	ds_load_b128 v[41:44], v232 offset:48
	s_waitcnt lgkmcnt(0)
.Ltmp582:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
.Ltmp583:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v39, s6
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp584:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s81
.Ltmp585:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp586:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp587:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp588:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s7, v37, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v171, v[33:36]
	ds_store_b128 v171, v[37:40] offset:16
.Ltmp589:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v34, v61 :: v_dual_max_f32 v33, v64, v64
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp590:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v35, v61, v61 :: v_dual_mov_b32 v36, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp591:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v63
.Ltmp592:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v40, v64, v64 :: v_dual_max_f32 v37, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp593:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp594:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp595:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp596:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v220, v33, v40 :: v_dual_max_f32 v33, v83, v83
	v_max_f32_e32 v39, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v224, v35, v34
	v_max_f32_e32 v34, v36, v36
.Ltmp597:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v62, v57 :: v_dual_mov_b32 v63, v58
.Ltmp598:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v57
.Ltmp599:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v83, v33, v224
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp600:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v223, v37, v34
	v_max_f32_e32 v34, v38, v38
.Ltmp601:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v64, v59
.Ltmp602:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v71, v83
.Ltmp603:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp604:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v222, v39, v34
	v_max_f32_e32 v58, v58, v58
.Ltmp605:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp606:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
.Ltmp607:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v61, v60, v60
.Ltmp608:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp609:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v60, v60, v60
.Ltmp610:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp611:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v123, v61, v60
.Ltmp612:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp613:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp614:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_max_f32 v34, v212, v212
.Ltmp615:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp616:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v212, v34, v223
.Ltmp617:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v33, v62, v62 :: v_dual_sub_f32 v34, v69, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v219, v57, v33
	v_max_f32_e32 v33, v63, v63
.Ltmp618:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v57.h, v119.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp619:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v192, v58, v33 :: v_dual_max_f32 v33, v64, v64
	v_max_f32_e32 v125, v59, v33
.Ltmp620:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v33, v96, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s66
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v96, v33, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp621:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp622:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v72, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp623:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp624:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp625:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp626:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s60
.Ltmp627:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp628:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v34, v34, v35
.Ltmp629:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v35, v214, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp630:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp631:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp632:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v214, v35, v222
	v_max_f32_e32 v34, v98, v98
.Ltmp633:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp634:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v35, v67, v214 :: v_dual_max_f32 v98, v34, v192
.Ltmp635:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp636:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v34, v70, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp637:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp638:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp639:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp640:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp641:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s4, v33, 31
	v_mov_b32_e32 v33, s0
.Ltmp642:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp643:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s61
	v_readlane_b32 s0, v255, 8
.Ltmp644:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp645:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp646:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v35, v35, v36
.Ltmp647:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v36, v216, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp648:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v35, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp649:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v216, v36, v220 :: v_dual_max_f32 v35, v150, v150
.Ltmp650:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp651:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v65, v216
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v150, v35, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp652:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
	v_readlane_b32 s1, v253, 4
.Ltmp653:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v35, v68, v150
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s69
.Ltmp654:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp655:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s62
.Ltmp656:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp657:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp658:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v36, v36, v37 :: v_dual_max_f32 v37, v151, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp659:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp660:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v151, v37, v123
.Ltmp661:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v35, v35, v38 :: v_dual_mov_b32 v36, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp662:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v66, v151
.Ltmp663:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
	s_mov_b32 s2, 0x76543210
.Ltmp664:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
.Ltmp665:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v39, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp666:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s67
.Ltmp667:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp668:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp669:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp670:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s7, v37, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v171, v[33:36] offset:32
	ds_store_b128 v171, v[37:40] offset:48
.Ltmp671:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v249, v247, v248
	v_max3_f32 v34, v245, v246, v243
	v_max3_f32 v35, v244, v239, v242
	v_max3_f32 v36, v73, v235, v197
.Ltmp672:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v37.h, v119.l
	v_mov_b16_e32 v38.h, v119.l
	v_mov_b16_e32 v39.h, v119.l
.Ltmp673:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v33, v34, v35
	v_max3_f32 v34, v240, v241, v237
	v_max3_f32 v35, v238, v0, v236
.Ltmp674:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v40.h, v119.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp675:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v34, v34, v35, v36
	v_max_f32_e32 v35, v234, v159
	v_max3_f32 v36, v228, v211, v226
	v_max3_f32 v35, v35, v227, v36
	v_max3_f32 v36, v208, v210, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v35, v36, v33
	v_dual_max_f32 v35, v250, v231 :: v_dual_max_f32 v36, v120, v121
	v_max3_f32 v35, v35, v233, v36
.Ltmp676:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v36.h, v119.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp677:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v33, v34, v35
.Ltmp678:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v35.h, v119.l
.Ltmp679:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v34, v33, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp680:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v118, v221, v33, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.h, v119.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v159, v118
	v_sub_f32_e32 v0, v0, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s75
	v_cndmask_b32_e64 v0, 0, v0, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v234, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s91
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v187
	v_perm_b32 v34, v35, v34, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v228, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v227, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s72
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v187
	v_perm_b32 v36, v37, v36, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v226, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v211, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v187
	v_perm_b32 v38, v39, v38, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v210, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v39, v208, v118 :: v_dual_mov_b32 v208, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s70
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v57.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v39, v39
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v57, v39, v57, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v57.h, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v57, v40, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v57, v40, v187
	v_perm_b32 v40, v57, v40, v194
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s78, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s79, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s80, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s81, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s82, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s83, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s84, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s85, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s86, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s87, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s88, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s89, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s90, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s76, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s77, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s75, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s74, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s72, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s73, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s70, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s71, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s68, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s69, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s67, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s66, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s64, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s65, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s62, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s63, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s60, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s61, s23, v57
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v57, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s103, v57
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s103, s103, 64
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s3, s23, v57
	scratch_load_b64 v[57:58], off, off offset:920 ; 8-byte Folded Reload
.Ltmp681:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[57:58], null, s0, s1, v[57:58]
.Ltmp682:
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s0, v254, 22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v59, v57, s0, 1
	v_readlane_b32 s0, v254, 23
	v_lshlrev_b32_e32 v58, 1, v57
	v_add_lshl_u32 v60, v57, s0, 1
	s_mul_i32 s0, s1, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v61, v57, s0, 1
	v_readlane_b32 s0, v254, 24
	v_add_lshl_u32 v62, v57, s0, 1
	s_mul_i32 s0, s1, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v63, v57, s0, 1
	s_mul_i32 s0, s1, 12
	v_add_lshl_u32 v64, v57, s0, 1
	s_mul_i32 s0, s1, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, v57, s0, 1
	v_readlane_b32 s0, v254, 25
	v_add_lshl_u32 v66, v57, s0, 1
	s_mul_i32 s0, s1, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v67, v57, s0, 1
	s_mul_i32 s0, s1, 20
	v_add_lshl_u32 v68, v57, s0, 1
	s_mul_i32 s0, s1, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v69, v57, s0, 1
	s_mul_i32 s0, s1, 24
	v_add_lshl_u32 v70, v57, s0, 1
	s_mul_i32 s0, s1, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v71, v57, s0, 1
	s_mul_i32 s0, s1, 28
	v_add_lshl_u32 v72, v57, s0, 1
	s_mul_i32 s0, s1, 30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v87, v57, s0, 1
	v_readlane_b32 s0, v254, 26
	v_add_lshl_u32 v88, v57, s0, 1
	s_mul_i32 s0, s1, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v89, v57, s0, 1
	s_mul_i32 s0, s1, 36
	v_add_lshl_u32 v90, v57, s0, 1
	s_mul_i32 s0, s1, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v91, v57, s0, 1
	s_mul_i32 s0, s1, 40
	v_add_lshl_u32 v92, v57, s0, 1
	s_mul_i32 s0, s1, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v93, v57, s0, 1
	s_mul_i32 s0, s1, 44
	v_add_lshl_u32 v94, v57, s0, 1
	s_mul_i32 s0, s1, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v134, v57, s0, 1
	s_mul_i32 s0, s1, 48
	v_add_lshl_u32 v135, v57, s0, 1
	s_mul_i32 s0, s1, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v136, v57, s0, 1
	s_mul_i32 s0, s1, 52
	v_add_lshl_u32 v137, v57, s0, 1
	s_mul_i32 s0, s1, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v138, v57, s0, 1
	s_mul_i32 s0, s1, 56
	v_add_lshl_u32 v139, v57, s0, 1
	s_mul_i32 s0, s1, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v140, v57, s0, 1
	s_mul_i32 s0, s1, 60
	v_add_lshl_u32 v141, v57, s0, 1
	s_mul_i32 s0, s1, 62
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v57, v57, s0, 1
	v_readlane_b32 s0, v254, 21
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s78
	s_and_b32 s76, s0, s76
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v58, 0x80000000, v58, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s79
	s_and_b32 s75, s0, s75
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v59, 0x80000000, v59, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s80
	s_and_b32 s74, s0, s74
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v60, 0x80000000, v60, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s81
	s_and_b32 s72, s0, s72
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v61, 0x80000000, v61, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s82
	s_and_b32 s70, s0, s70
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v62, 0x80000000, v62, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s83
	s_and_b32 s68, s0, s68
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v63, 0x80000000, v63, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s84
	s_and_b32 s67, s0, s67
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v64, 0x80000000, v64, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s85
	s_and_b32 s66, s0, s66
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s86
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v142, v58, s[28:31], 0 offen
	buffer_load_u16 v143, v59, s[28:31], 0 offen
	buffer_load_u16 v144, v60, s[28:31], 0 offen
	buffer_load_u16 v145, v61, s[28:31], 0 offen
	buffer_load_u16 v146, v62, s[28:31], 0 offen
	buffer_load_u16 v147, v63, s[28:31], 0 offen
	buffer_load_u16 v148, v64, s[28:31], 0 offen
	buffer_load_u16 v149, v65, s[28:31], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v66, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s87
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v63, 0x80000000, v71, s76
	v_cndmask_b32_e64 v59, 0x80000000, v67, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s88
	s_and_b32 s76, s0, s77
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v60, 0x80000000, v68, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s89
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v64, 0x80000000, v72, s76
	v_cndmask_b32_e64 v61, 0x80000000, v69, s78
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s78, s0, s90
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v87, s75
	v_cndmask_b32_e64 v62, 0x80000000, v70, s78
	s_clause 0x7
	buffer_load_u16 v87, v58, s[28:31], 0 offen
	buffer_load_u16 v159, v59, s[28:31], 0 offen
	buffer_load_u16 v200, v60, s[28:31], 0 offen
	buffer_load_u16 v201, v61, s[28:31], 0 offen
	buffer_load_u16 v202, v62, s[28:31], 0 offen
	buffer_load_u16 v203, v63, s[28:31], 0 offen
	buffer_load_u16 v204, v64, s[28:31], 0 offen
	buffer_load_u16 v205, v65, s[28:31], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v88, s74
	v_cndmask_b32_e64 v59, 0x80000000, v89, s72
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s72, s0, s73
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v61, 0x80000000, v91, s70
	v_cndmask_b32_e64 v60, 0x80000000, v90, s72
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s70, s0, s71
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v63, 0x80000000, v93, s68
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s68, s0, s69
	s_and_b32 s64, s0, s64
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v62, 0x80000000, v92, s70
	v_cndmask_b32_e64 v64, 0x80000000, v94, s68
	v_cndmask_b32_e64 v65, 0x80000000, v134, s67
	s_clause 0x7
	buffer_load_u16 v88, v58, s[28:31], 0 offen
	buffer_load_u16 v89, v59, s[28:31], 0 offen
	buffer_load_u16 v90, v60, s[28:31], 0 offen
	buffer_load_u16 v91, v61, s[28:31], 0 offen
	buffer_load_u16 v92, v62, s[28:31], 0 offen
	buffer_load_u16 v93, v63, s[28:31], 0 offen
	buffer_load_u16 v94, v64, s[28:31], 0 offen
	buffer_load_u16 v134, v65, s[28:31], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v135, s66
	v_cndmask_b32_e64 v59, 0x80000000, v136, s64
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s64, s0, s65
	s_and_b32 s62, s0, s62
	s_and_b32 s60, s0, s60
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v60, 0x80000000, v137, s64
	v_cndmask_b32_e64 v61, 0x80000000, v138, s62
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s62, s0, s63
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v63, 0x80000000, v140, s60
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s60, s0, s61
	s_and_b32 s3, s0, s3
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v62, 0x80000000, v139, s62
	v_cndmask_b32_e64 v64, 0x80000000, v141, s60
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x7
	buffer_load_u16 v135, v58, s[28:31], 0 offen
	buffer_load_u16 v136, v59, s[28:31], 0 offen
	buffer_load_u16 v137, v60, s[28:31], 0 offen
	buffer_load_u16 v138, v61, s[28:31], 0 offen
	buffer_load_u16 v139, v62, s[28:31], 0 offen
	buffer_load_u16 v140, v63, s[28:31], 0 offen
	buffer_load_u16 v141, v64, s[28:31], 0 offen
	buffer_load_u16 v206, v57, s[28:31], 0 offen
.Ltmp683:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_load_b128 v[69:72], v232
	ds_load_b128 v[65:68], v232 offset:16
	ds_load_b128 v[61:64], v232 offset:32
	ds_load_b128 v[57:60], v232 offset:48
.Ltmp684:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v210, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v221
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s103, s10
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v207, v210, v208
	ds_store_b16 v207, v142
	ds_store_b16 v207, v143 offset:256
	ds_store_b16 v207, v144 offset:512
	ds_store_b16 v207, v145 offset:768
	ds_store_b16 v207, v146 offset:1024
	ds_store_b16 v207, v147 offset:1280
	ds_store_b16 v207, v148 offset:1536
	ds_store_b16 v207, v149 offset:1792
	ds_store_b16 v207, v87 offset:2048
	ds_store_b16 v207, v159 offset:2304
	ds_store_b16 v207, v200 offset:2560
	ds_store_b16 v207, v201 offset:2816
	ds_store_b16 v207, v202 offset:3072
	ds_store_b16 v207, v203 offset:3328
	ds_store_b16 v207, v204 offset:3584
	ds_store_b16 v207, v205 offset:3840
	ds_store_b16 v207, v88 offset:4096
	ds_store_b16 v207, v89 offset:4352
	ds_store_b16 v207, v90 offset:4608
	ds_store_b16 v207, v91 offset:4864
	ds_store_b16 v207, v92 offset:5120
	ds_store_b16 v207, v93 offset:5376
	ds_store_b16 v207, v94 offset:5632
	ds_store_b16 v207, v134 offset:5888
	ds_store_b16 v207, v135 offset:6144
	ds_store_b16 v207, v136 offset:6400
	ds_store_b16 v207, v137 offset:6656
	ds_store_b16 v207, v138 offset:6912
	ds_store_b16 v207, v139 offset:7168
	ds_store_b16 v207, v140 offset:7424
	ds_store_b16 v207, v141 offset:7680
	ds_store_b16 v207, v206 offset:7936
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v87, v221, v118
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v221, v118
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v159, v87
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v87, v198
	ds_load_u16_d16 v88, v198 offset:256
	ds_load_u16_d16 v89, v198 offset:512
	ds_load_u16_d16 v90, v198 offset:768
	ds_load_u16_d16 v91, v198 offset:1024
	ds_load_u16_d16 v92, v198 offset:1280
	ds_load_u16_d16 v93, v198 offset:1536
	ds_load_u16_d16 v94, v198 offset:1792
	ds_load_u16_d16 v200, v198 offset:32
	ds_load_u16_d16 v201, v198 offset:288
	ds_load_u16_d16 v134, v198 offset:64
	ds_load_u16_d16 v135, v198 offset:320
	ds_load_u16_d16 v143, v198 offset:352
	ds_load_u16_d16 v142, v198 offset:96
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v198 offset:128
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v88, v198 offset:384
	ds_load_u16_d16 v202, v198 offset:544
	ds_load_u16_d16 v203, v198 offset:800
	ds_load_u16_d16 v136, v198 offset:576
	ds_load_u16_d16 v137, v198 offset:832
	ds_load_u16_d16 v145, v198 offset:864
	ds_load_u16_d16 v144, v198 offset:608
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v198 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v90, v198 offset:896
	ds_load_u16_d16 v204, v198 offset:1056
	ds_load_u16_d16 v205, v198 offset:1312
	ds_load_u16_d16 v138, v198 offset:1088
	ds_load_u16_d16 v139, v198 offset:1344
	ds_load_u16_d16 v147, v198 offset:1376
	ds_load_u16_d16 v146, v198 offset:1120
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v198 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v92, v198 offset:1408
	ds_load_u16_d16 v206, v198 offset:1568
	ds_load_u16_d16 v207, v198 offset:1824
	ds_load_u16_d16 v140, v198 offset:1600
	ds_load_u16_d16 v141, v198 offset:1856
	ds_load_u16_d16 v149, v198 offset:1888
	ds_load_u16_d16 v148, v198 offset:1632
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v198 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v94, v198 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v200, v198 offset:160
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v201, v198 offset:416
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v202, v198 offset:672
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v203, v198 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v204, v198 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v205, v198 offset:1440
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v206, v198 offset:1696
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v207, v198 offset:1952
	ds_load_u16_d16_hi v134, v198 offset:192
	ds_load_u16_d16_hi v135, v198 offset:448
	ds_load_u16_d16_hi v136, v198 offset:704
	ds_load_u16_d16_hi v137, v198 offset:960
	ds_load_u16_d16_hi v138, v198 offset:1216
	ds_load_u16_d16_hi v139, v198 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v140, v198 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v141, v198 offset:1984
	ds_load_u16_d16_hi v142, v198 offset:224
	ds_load_u16_d16_hi v143, v198 offset:480
	ds_load_u16_d16_hi v144, v198 offset:736
	ds_load_u16_d16_hi v145, v198 offset:992
	ds_load_u16_d16_hi v146, v198 offset:1248
	ds_load_u16_d16_hi v147, v198 offset:1504
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v148, v198 offset:1760
	ds_load_u16_d16_hi v149, v198 offset:2016
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v159, 0, v159, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v159
	v_mul_f32_e32 v18, v18, v159
	v_mul_f32_e32 v19, v19, v159
	v_mul_f32_e32 v20, v20, v159
	v_mul_f32_e32 v21, v21, v159
	v_mul_f32_e32 v22, v22, v159
	v_mul_f32_e32 v23, v23, v159
	v_mul_f32_e32 v24, v24, v159
	v_mul_f32_e32 v25, v25, v159
	v_mul_f32_e32 v26, v26, v159
	v_mul_f32_e32 v27, v27, v159
	v_mul_f32_e32 v28, v28, v159
	v_mul_f32_e32 v29, v29, v159
	v_mul_f32_e32 v30, v30, v159
	v_mul_f32_e32 v31, v31, v159
	v_mul_f32_e32 v32, v32, v159
	v_mul_f32_e32 v9, v9, v159
	v_mul_f32_e32 v10, v10, v159
	v_mul_f32_e32 v11, v11, v159
	v_mul_f32_e32 v12, v12, v159
	v_mul_f32_e32 v13, v13, v159
	v_mul_f32_e32 v14, v14, v159
	v_mul_f32_e32 v15, v15, v159
	v_mul_f32_e32 v16, v16, v159
	v_mul_f32_e32 v1, v1, v159
	v_mul_f32_e32 v2, v2, v159
	v_mul_f32_e32 v3, v3, v159
	v_mul_f32_e32 v4, v4, v159
	v_mul_f32_e32 v5, v5, v159
	v_mul_f32_e32 v6, v6, v159
	v_mul_f32_e32 v7, v7, v159
	v_mul_f32_e32 v8, v8, v159
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[87:94], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[200:207], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[134:141], v[33:40], v[9:16]
	.loc	1 701 23                        ; attention.py:701:23
	scratch_load_b32 v94, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[142:149], v[33:40], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v249, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.h, v119.l
	v_mov_b16_e32 v35.h, v119.l
	v_mov_b16_e32 v36.h, v119.l
	v_mov_b16_e32 v37.h, v119.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v38.h, v119.l
	v_mov_b16_e32 v39.h, v119.l
	v_mov_b16_e32 v40.h, v119.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s55
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v86, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v86.h, v119.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s53, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s53
	v_permlanex16_b32 v35, v34, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v187
	v_perm_b32 v34, v35, v34, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v248, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s58
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v247, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s52, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s52
	v_permlanex16_b32 v37, v36, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v187
	v_perm_b32 v36, v37, v36, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v246, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s56
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v245, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s52, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s52
	v_permlanex16_b32 v39, v38, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v187
	v_perm_b32 v38, v39, v38, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v244, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s59
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v243, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v86.l, v39.h
	v_cmp_o_f32_e64 s52, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v86, v39, v86, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v86.h, s52
	v_readlane_b32 s52, v255, 0
	v_readlane_b32 s53, v255, 1
	v_readlane_b32 s54, v255, 2
	v_readlane_b32 s55, v255, 3
	v_permlanex16_b32 v86, v40, s2, 0xfedcba98 op_sel:[1,0]
	v_readlane_b32 s56, v255, 4
	v_readlane_b32 s57, v255, 5
	v_readlane_b32 s58, v255, 6
	v_readlane_b32 s59, v255, 7
	v_perm_b32 v39, v86, v40, v187
	v_perm_b32 v40, v86, v40, v194
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v86, v198 offset:2048
	ds_load_u16_d16 v87, v198 offset:2304
	ds_load_u16_d16 v88, v198 offset:2560
	ds_load_u16_d16 v89, v198 offset:2816
	ds_load_u16_d16 v90, v198 offset:3072
	ds_load_u16_d16 v91, v198 offset:3328
	ds_load_u16_d16 v92, v198 offset:3584
	ds_load_u16_d16 v93, v198 offset:3840
	ds_load_u16_d16 v134, v198 offset:2080
	ds_load_u16_d16 v135, v198 offset:2336
	ds_load_u16_d16 v142, v198 offset:2112
	ds_load_u16_d16 v143, v198 offset:2368
	ds_load_u16_d16 v201, v198 offset:2400
	ds_load_u16_d16 v200, v198 offset:2144
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v198 offset:2176
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v198 offset:2432
	ds_load_u16_d16 v136, v198 offset:2592
	ds_load_u16_d16 v137, v198 offset:2848
	ds_load_u16_d16 v144, v198 offset:2624
	ds_load_u16_d16 v145, v198 offset:2880
	ds_load_u16_d16 v203, v198 offset:2912
	ds_load_u16_d16 v202, v198 offset:2656
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v198 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v198 offset:2944
	ds_load_u16_d16 v138, v198 offset:3104
	ds_load_u16_d16 v139, v198 offset:3360
	ds_load_u16_d16 v146, v198 offset:3136
	ds_load_u16_d16 v147, v198 offset:3392
	ds_load_u16_d16 v205, v198 offset:3424
	ds_load_u16_d16 v204, v198 offset:3168
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v198 offset:3200
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v198 offset:3456
	ds_load_u16_d16 v140, v198 offset:3616
	ds_load_u16_d16 v141, v198 offset:3872
	ds_load_u16_d16 v148, v198 offset:3648
	ds_load_u16_d16 v149, v198 offset:3904
	ds_load_u16_d16 v207, v198 offset:3936
	ds_load_u16_d16 v206, v198 offset:3680
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v198 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v198 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v134, v198 offset:2208
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v135, v198 offset:2464
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v136, v198 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v137, v198 offset:2976
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v138, v198 offset:3232
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v139, v198 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v140, v198 offset:3744
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v141, v198 offset:4000
	ds_load_u16_d16_hi v142, v198 offset:2240
	ds_load_u16_d16_hi v143, v198 offset:2496
	ds_load_u16_d16_hi v144, v198 offset:2752
	ds_load_u16_d16_hi v145, v198 offset:3008
	ds_load_u16_d16_hi v146, v198 offset:3264
	ds_load_u16_d16_hi v147, v198 offset:3520
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v198 offset:3776
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v149, v198 offset:4032
	ds_load_u16_d16_hi v200, v198 offset:2272
	ds_load_u16_d16_hi v201, v198 offset:2528
	ds_load_u16_d16_hi v202, v198 offset:2784
	ds_load_u16_d16_hi v203, v198 offset:3040
	ds_load_u16_d16_hi v204, v198 offset:3296
	ds_load_u16_d16_hi v205, v198 offset:3552
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v206, v198 offset:3808
	ds_load_u16_d16_hi v207, v198 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[86:93], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[134:141], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[142:149], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[200:207], v[33:40], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v242, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.h, v119.l
	v_mov_b16_e32 v35.h, v119.l
	v_mov_b16_e32 v36.h, v119.l
	v_mov_b16_e32 v37.h, v119.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v38.h, v119.l
	v_mov_b16_e32 v39.h, v119.l
	v_mov_b16_e32 v40.h, v119.l
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v86, v198 offset:4096
	ds_load_u16_d16 v87, v198 offset:4352
	ds_load_u16_d16 v88, v198 offset:4608
	ds_load_u16_d16 v89, v198 offset:4864
	ds_load_u16_d16 v90, v198 offset:5120
	ds_load_u16_d16 v91, v198 offset:5376
	ds_load_u16_d16 v92, v198 offset:5632
	ds_load_u16_d16 v93, v198 offset:5888
	ds_load_u16_d16 v134, v198 offset:4128
	ds_load_u16_d16 v135, v198 offset:4384
	ds_load_u16_d16 v142, v198 offset:4160
	ds_load_u16_d16 v143, v198 offset:4416
	ds_load_u16_d16 v201, v198 offset:4448
	ds_load_u16_d16 v200, v198 offset:4192
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v198 offset:4224
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v198 offset:4480
	ds_load_u16_d16 v136, v198 offset:4640
	ds_load_u16_d16 v137, v198 offset:4896
	ds_load_u16_d16 v144, v198 offset:4672
	ds_load_u16_d16 v145, v198 offset:4928
	ds_load_u16_d16 v203, v198 offset:4960
	ds_load_u16_d16 v202, v198 offset:4704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v198 offset:4736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v198 offset:4992
	ds_load_u16_d16 v138, v198 offset:5152
	ds_load_u16_d16 v139, v198 offset:5408
	ds_load_u16_d16 v146, v198 offset:5184
	ds_load_u16_d16 v147, v198 offset:5440
	ds_load_u16_d16 v205, v198 offset:5472
	ds_load_u16_d16 v204, v198 offset:5216
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v198 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v198 offset:5504
	ds_load_u16_d16 v140, v198 offset:5664
	ds_load_u16_d16 v141, v198 offset:5920
	ds_load_u16_d16 v148, v198 offset:5696
	ds_load_u16_d16 v149, v198 offset:5952
	ds_load_u16_d16 v207, v198 offset:5984
	ds_load_u16_d16 v206, v198 offset:5728
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v198 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v198 offset:6016
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s39
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v134, v198 offset:4256
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v135, v198 offset:4512
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v136, v198 offset:4768
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v137, v198 offset:5024
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v138, v198 offset:5280
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v139, v198 offset:5536
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v140, v198 offset:5792
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v141, v198 offset:6048
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v142, v198 offset:4288
	ds_load_u16_d16_hi v143, v198 offset:4544
	ds_load_u16_d16_hi v144, v198 offset:4800
	ds_load_u16_d16_hi v145, v198 offset:5056
	ds_load_u16_d16_hi v146, v198 offset:5312
	ds_load_u16_d16_hi v147, v198 offset:5568
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v198 offset:5824
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v149, v198 offset:6080
	ds_load_u16_d16_hi v200, v198 offset:4320
	ds_load_u16_d16_hi v201, v198 offset:4576
	ds_load_u16_d16_hi v202, v198 offset:4832
	ds_load_u16_d16_hi v203, v198 offset:5088
	ds_load_u16_d16_hi v204, v198 offset:5344
	ds_load_u16_d16_hi v205, v198 offset:5600
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v206, v198 offset:5856
	ds_load_u16_d16_hi v207, v198 offset:6112
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v239, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s39, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s39
	v_permlanex16_b32 v35, v34, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v187
	v_perm_b32 v34, v35, v34, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v241, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s42
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v240, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s38, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s38
	v_permlanex16_b32 v37, v36, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v187
	v_perm_b32 v36, v37, v36, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v238, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s50
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v237, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s38, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s38
	v_cmp_o_f32_e64 s38, v0, v0
	v_permlanex16_b32 v39, v38, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v187
	v_perm_b32 v38, v39, v38, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v236, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s45
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	v_mov_b16_e32 v39.l, v0.h
	v_mov_b16_e32 v39.h, v119.l
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v0, v39, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v187
	v_perm_b32 v40, v40, v0, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v235, v118
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[86:93], v[33:40], v[17:24]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[134:141], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[142:149], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[200:207], v[33:40], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e32 v33.h, v119.l
	v_mov_b16_e32 v34.h, v119.l
	v_mov_b16_e32 v35.h, v119.l
	v_mov_b16_e32 v36.h, v119.l
	v_mov_b16_e32 v37.h, v119.l
	v_mov_b16_e32 v38.h, v119.l
	.loc	1 690 33 is_stmt 1              ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s48
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v39.h, v119.l
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v86, v198 offset:6144
	ds_load_u16_d16 v87, v198 offset:6400
	ds_load_u16_d16 v88, v198 offset:6656
	ds_load_u16_d16 v89, v198 offset:6912
	ds_load_u16_d16 v90, v198 offset:7168
	ds_load_u16_d16 v91, v198 offset:7424
	ds_load_u16_d16 v92, v198 offset:7680
	ds_load_u16_d16 v93, v198 offset:7936
	ds_load_u16_d16 v134, v198 offset:6176
	ds_load_u16_d16 v135, v198 offset:6432
	ds_load_u16_d16 v142, v198 offset:6208
	ds_load_u16_d16 v143, v198 offset:6464
	ds_load_u16_d16 v201, v198 offset:6496
	ds_load_u16_d16 v200, v198 offset:6240
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v198 offset:6272
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v198 offset:6528
	ds_load_u16_d16 v136, v198 offset:6688
	ds_load_u16_d16 v137, v198 offset:6944
	ds_load_u16_d16 v144, v198 offset:6720
	ds_load_u16_d16 v145, v198 offset:6976
	ds_load_u16_d16 v203, v198 offset:7008
	ds_load_u16_d16 v202, v198 offset:6752
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v198 offset:6784
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v198 offset:7040
	ds_load_u16_d16 v138, v198 offset:7200
	ds_load_u16_d16 v139, v198 offset:7456
	ds_load_u16_d16 v146, v198 offset:7232
	ds_load_u16_d16 v147, v198 offset:7488
	ds_load_u16_d16 v205, v198 offset:7520
	ds_load_u16_d16 v204, v198 offset:7264
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v198 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v198 offset:7552
	ds_load_u16_d16 v140, v198 offset:7712
	ds_load_u16_d16 v141, v198 offset:7968
	ds_load_u16_d16 v148, v198 offset:7744
	ds_load_u16_d16 v149, v198 offset:8000
	ds_load_u16_d16 v207, v198 offset:8032
	ds_load_u16_d16 v206, v198 offset:7776
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v198 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v198 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v33.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e32 v40.h, v119.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v134, v198 offset:6304
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v135, v198 offset:6560
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v136, v198 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v137, v198 offset:7072
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v138, v198 offset:7328
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v139, v198 offset:7584
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v140, v198 offset:7840
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v141, v198 offset:8096
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v33, 1, v33
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v142, v198 offset:6336
	ds_load_u16_d16_hi v143, v198 offset:6592
	ds_load_u16_d16_hi v144, v198 offset:6848
	ds_load_u16_d16_hi v145, v198 offset:7104
	ds_load_u16_d16_hi v146, v198 offset:7360
	ds_load_u16_d16_hi v147, v198 offset:7616
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v198 offset:7872
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v149, v198 offset:8128
	ds_load_u16_d16_hi v200, v198 offset:6368
	ds_load_u16_d16_hi v201, v198 offset:6624
	ds_load_u16_d16_hi v202, v198 offset:6880
	ds_load_u16_d16_hi v203, v198 offset:7136
	ds_load_u16_d16_hi v204, v198 offset:7392
	ds_load_u16_d16_hi v205, v198 offset:7648
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v206, v198 offset:7904
	ds_load_u16_d16_hi v207, v198 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v73, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v34.l, v0.h
	v_cmp_o_f32_e64 s38, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v0, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s38
	v_permlanex16_b32 v34, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v0, v187
	v_perm_b32 v34, v34, v0, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v250, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s37
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v0, v35, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v197, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s46
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v36.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v0, v0
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v0, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v187
	v_perm_b32 v36, v36, v0, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v233, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v37.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v231, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v38.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v0, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v38.h, vcc_lo
	v_permlanex16_b32 v38, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v0, v187
	v_perm_b32 v38, v38, v0, v194
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v121, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s43
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v0, v120, v118
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v0, 0, v0, s41
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v40.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v0, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, vcc_lo
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v117
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v187
	v_perm_b32 v40, v40, v0, v194
.Ltmp685:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v53
.Ltmp686:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[86:93], v[33:40], v[17:24]
.Ltmp687:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp688:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[134:141], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[142:149], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[200:207], v[33:40], v[1:8]
.Ltmp689:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v34, v54 :: v_dual_add_f32 v33, v53, v0
	v_dual_mov_b32 v0, v55 :: v_dual_mov_b32 v53, v50
.Ltmp690:
	.loc	1 701 23                        ; attention.py:701:23
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v86, off, off offset:88
	scratch_load_b32 v87, off, off offset:84
	scratch_load_b32 v88, off, off offset:80
	scratch_load_b32 v89, off, off offset:76
	scratch_load_b32 v90, off, off offset:72
	scratch_load_b32 v91, off, off offset:68
	scratch_load_b32 v92, off, off offset:64
	scratch_load_b32 v93, off, off offset:60
.Ltmp691:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v38, v70 :: v_dual_add_f32 v35, v55, v0
	v_mov_b32_e32 v0, v56
.Ltmp692:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v50, v50, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_e32 v34, v54, v34
.Ltmp693:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v54, v66
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp694:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v38, v70, v38
	v_add_f32_e32 v36, v56, v0
.Ltmp695:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp696:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v54, v66, v54
.Ltmp697:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp698:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v37, v69, v0 :: v_dual_mov_b32 v0, v71
.Ltmp699:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp700:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v39, v71, v0 :: v_dual_mov_b32 v0, v72
.Ltmp701:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp702:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v72, v0
.Ltmp703:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v49
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp704:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v49, v49, v0 :: v_dual_mov_b32 v0, v51
.Ltmp705:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp706:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v51, v51, v0 :: v_dual_mov_b32 v0, v52
.Ltmp707:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp708:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v52, v52, v0
.Ltmp709:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v65
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp710:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v53, v65, v0 :: v_dual_mov_b32 v0, v67
.Ltmp711:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v65, v46
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp712:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v55, v67, v0 :: v_dual_mov_b32 v0, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v46, v46, v65
.Ltmp713:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v65, v62
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp714:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v56, v68, v0
.Ltmp715:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp716:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v62, v62, v65
.Ltmp717:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v65, v42
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp718:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v45, v45, v0 :: v_dual_mov_b32 v0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v42, v42, v65
.Ltmp719:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v65, v58
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp720:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v47, v47, v0 :: v_dual_mov_b32 v0, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v58, v58, v65
.Ltmp721:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp722:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v48, v0
.Ltmp723:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v61
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp724:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v61, v61, v0 :: v_dual_mov_b32 v0, v63
.Ltmp725:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp726:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v63, v63, v0 :: v_dual_mov_b32 v0, v64
.Ltmp727:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp728:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v64, v64, v0
.Ltmp729:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v41
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp730:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v41, v41, v0 :: v_dual_mov_b32 v0, v43
.Ltmp731:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp732:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v43, v43, v0 :: v_dual_mov_b32 v0, v44
.Ltmp733:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp734:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v44, v44, v0
.Ltmp735:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v0, v57
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp736:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v57, v57, v0 :: v_dual_mov_b32 v0, v59
.Ltmp737:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp738:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v59, v59, v0 :: v_dual_mov_b32 v0, v60
.Ltmp739:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp740:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v0
.Ltmp741:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v0, v117, v117
	v_max_f32_e32 v0, v0, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v65, v117, v0
	v_mov_b32_e32 v117, v0
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v115
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v33, v116, v65
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v115, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v193
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v66, v115, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v66, v66
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v34, v114, v66
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v66, v113, v113
	v_max_f32_e32 v66, v66, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v67, v113, v66
	v_mov_b32_e32 v113, v66
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v111
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v35, v112, v67
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v67, v111, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v252
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v68, v111, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v68, v68
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v36, v110, v68
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v68, v109, v109
	v_max_f32_e32 v68, v68, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v69, v109, v68
	v_mov_b32_e32 v109, v68
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v107
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v37, v108, v69
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v69, v107, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v69, v190
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v70, v107, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v70, v70
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v38, v106, v70
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v70, v105, v105
	v_max_f32_e32 v70, v70, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v71, v105, v70
	v_mov_b32_e32 v105, v70
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v39, v104, v71
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v71, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v131
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v72, v103, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v72, v72
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v40, v102, v72
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v72, v101, v101
	v_max_f32_e32 v72, v72, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v101, v72
	v_mov_b32_e32 v101, v72
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v49, v100, v73
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v73, v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, v73, v85
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v85, v99, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v85, v85
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v85, 0, v85, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v86, v85
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v85, v97, v97
	v_max_f32_e32 v85, v85, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v86, v97, v85
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v86, 0, v86, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v95
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v51, v87, v86
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v86, v95, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v86, v86, v229
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v87, v95, v86
	v_mov_b32_e32 v95, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v87, v87
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v87, 0, v87, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v179
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v88, v87
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v87, v179, v179
	v_max_f32_e32 v87, v87, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v88, v179, v87
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v88, 0, v88, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v177
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v53, v89, v88
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v88, v177, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v88, v88, v127
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v89, v177, v88
	v_mov_b32_e32 v177, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v89, v89
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v89, 0, v89, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v209
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v90, v89
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v89, v209, v209
	v_max_f32_e32 v89, v89, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v90, v209, v89
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v90, 0, v90, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v217
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v55, v91, v90 :: v_dual_max_f32 v90, v217, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v90, v90, v122
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v91, v217, v90
	v_mov_b32_e32 v217, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v91, v91
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v91, 0, v91, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v215
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v92, v91
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v91, v215, v215
	v_max_f32_e32 v91, v91, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v92, v215, v91
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v92, 0, v92, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v213
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v93, v92
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v92, v213, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v170
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v93, v213, v92
	v_mov_b32_e32 v213, v92
	v_mov_b32_e32 v92, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v93, v93
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v93, 0, v93, vcc_lo
	v_mov_b32_e32 v207, v208
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_dual_fmac_f32 v46, v94, v93 :: v_dual_max_f32 v93, v84, v84
	v_dual_mov_b32 v90, v46 :: v_dual_max_f32 v93, v93, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v94, v84, v93
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v84, 0, v94, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v94, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v47, v94, v84
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v84, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v94, v84, v168
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v84, v82, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v84, v84
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v82, 0, v84, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v84, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v80
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v48, v84, v82
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v82, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v88, v48
	v_max_f32_e32 v100, v82, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v82, v80, v100
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v80, 0, v82, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v82, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v78
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v61, v82, v80
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v80, v78, v78
	v_mov_b32_e32 v82, v94
	v_dual_mov_b32 v94, v54 :: v_dual_mov_b32 v179, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v102, v80, v223
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v80, v78, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v80, v80
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v78, 0, v80, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v80, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v77
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v62, v80, v78
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v78, v77, v77
	v_mov_b32_e32 v80, v100
	v_mov_b32_e32 v118, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v87, v61 :: v_dual_mov_b32 v86, v62
	v_max_f32_e32 v104, v78, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v78, v77, v104
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v77, 0, v78, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v78, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v75
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v63, v78, v77
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v77, v75, v75 :: v_dual_mov_b32 v78, v102
	v_mov_b32_e32 v102, v40
	v_mov_b32_e32 v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v106, v77, v220
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v77, v75, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v77, v77
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v75, 0, v77, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v77, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v74
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v64, v77, v75 :: v_dual_max_f32 v75, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v77, v104 :: v_dual_max_f32 v108, v75, v132
	v_mov_b32_e32 v115, v65
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v75, v74, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v75, v75
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v75, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	scratch_load_b32 v75, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v183
	.loc	1 701 23                        ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v75, v74
	scratch_load_b32 v75, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v74, v183, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v110, v74, v130
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v74, v183, v110 :: v_dual_mov_b32 v183, v110
	v_mov_b32_e32 v110, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v164
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v75, v74
	scratch_load_b32 v75, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v74, v164, v164
	v_max_f32_e32 v112, v74, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v74, v164, v112
	v_mov_b32_e32 v164, v112
	v_mov_b32_e32 v112, v35
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	v_mov_b32_e32 v111, v67
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v75, v74
	scratch_load_b32 v75, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v74, v162, v162
	v_mov_b32_e32 v70, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v114, v74, v126
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v74, v162, v114
	v_dual_mov_b32 v162, v114 :: v_dual_mov_b32 v209, v89
	v_mov_b32_e32 v114, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v160
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v75, v74
	scratch_load_b32 v75, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v74, v160, v160 :: v_dual_mov_b32 v107, v69
	v_dual_mov_b32 v104, v39 :: v_dual_mov_b32 v69, v44
	v_max_f32_e32 v116, v74, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v74, v160, v116
	v_mov_b32_e32 v160, v116
	v_dual_mov_b32 v116, v33 :: v_dual_mov_b32 v93, v55
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v157
	v_mov_b32_e32 v103, v71
	v_mov_b32_e32 v71, v42
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v57, v75, v74
	scratch_load_b32 v75, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v74, v157, v157
	v_mov_b32_e32 v68, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v72, v41 :: v_dual_max_f32 v119, v74, v192
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v74, v157, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v155
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v75, v74
	scratch_load_b32 v75, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v74, v155, v155 :: v_dual_mov_b32 v99, v73
	v_dual_mov_b32 v100, v49 :: v_dual_mov_b32 v73, v64
	v_mov_b32_e32 v67, v58
	v_dual_max_f32 v120, v74, v125 :: v_dual_mov_b32 v97, v85
	v_mov_b32_e32 v85, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v74, v155, v120 :: v_dual_mov_b32 v155, v120
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v59, v75, v74
	scratch_load_b32 v75, off, off          ; 4-byte Folded Reload
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v74, v153, v153
	v_mov_b32_e32 v120, v51
	v_mov_b32_e32 v89, v47
	v_mov_b32_e32 v66, v59
	v_mov_b32_e32 v157, v119
	v_max_f32_e32 v121, v74, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v119, v52 :: v_dual_sub_f32 v74, v153, v121
	v_mov_b32_e32 v153, v121
	v_mov_b32_e32 v121, v50
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v60, v75, v74 :: v_dual_mov_b32 v75, v106
	v_mov_b32_e32 v74, v108
	v_dual_mov_b32 v108, v37 :: v_dual_mov_b32 v215, v91
	v_dual_mov_b32 v106, v38 :: v_dual_mov_b32 v91, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v65, v60
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v33, off, off offset:120
	scratch_load_b32 v34, off, off offset:124
	scratch_load_b32 v35, off, off offset:128
	scratch_load_b32 v36, off, off offset:140
	scratch_load_b64 v[41:42], off, off offset:236
	.loc	1 633 32                        ; attention.py:633:32
	v_readlane_b32 s0, v254, 20
	v_readlane_b32 s1, v253, 2
	.loc	1 634 32                        ; attention.py:634:32
	s_mov_b32 s54, s14
	s_mov_b32 s55, s15
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v121, off offset:88
	scratch_store_b32 off, v120, off offset:84
	scratch_store_b32 off, v119, off offset:80
	scratch_store_b32 off, v118, off offset:76
	scratch_store_b32 off, v94, off offset:72
	scratch_store_b32 off, v93, off offset:68
	scratch_store_b32 off, v92, off offset:64
	scratch_store_b32 off, v91, off offset:60
	scratch_store_b32 off, v90, off offset:56
	scratch_store_b32 off, v89, off offset:52
	scratch_store_b32 off, v88, off offset:48
	scratch_store_b32 off, v87, off offset:44
	scratch_store_b32 off, v86, off offset:40
	scratch_store_b32 off, v85, off offset:36
	scratch_store_b32 off, v73, off offset:32
	scratch_store_b32 off, v72, off offset:28
	scratch_store_b32 off, v71, off offset:24
	scratch_store_b32 off, v70, off offset:20
	scratch_store_b32 off, v69, off offset:16
	scratch_store_b32 off, v68, off offset:12
	scratch_store_b32 off, v67, off offset:8
	scratch_store_b32 off, v66, off offset:4
	scratch_store_b32 off, v65, off
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s8, s103, s0
	v_readlane_b32 s0, v253, 1
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[42:43], off, off offset:244
	scratch_load_b64 v[43:44], off, off offset:260
	scratch_load_b64 v[44:45], off, off offset:252
	scratch_load_b64 v[45:46], off, off offset:268
	s_mul_i32 s0, s8, s0
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[46:47], off, off offset:276
	scratch_load_b64 v[47:48], off, off offset:284
	scratch_load_b32 v48, off, off offset:364
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v33, s103, v33
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v34, s103, v34
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v35, s103, v35
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v36, s103, v36
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s23, v0
	v_cmp_gt_i32_e64 s3, s23, v33
	.loc	1 630 31                        ; attention.py:630:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v33, off, off offset:136
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s37, s23, v34
	v_cmp_gt_i32_e64 s41, s23, v36
	.loc	1 630 31                        ; attention.py:630:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:152
	scratch_load_b32 v36, off, off offset:160
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s38, s23, v35
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v35, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 633 32                        ; attention.py:633:32
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v41, s0, v41
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v42, s0, v42
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v43, s0, v43
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v44, s0, v44
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v45, s0, v45
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v46, s0, v46
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v47, s0, v47
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v48, 0, v48
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v33, s103, v33
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v34, s103, v34
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s39, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s40, s23, v33
	.loc	1 630 31                        ; attention.py:630:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:144
	scratch_load_b32 v33, off, off offset:148
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v36, s103, v36
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s44, s23, v34
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v34, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s46, s23, v36
	.loc	1 633 32                        ; attention.py:633:32
	scratch_load_b64 v[36:37], off, off offset:180 ; 8-byte Folded Reload
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v35, s103, v35
	.loc	1 633 32                        ; attention.py:633:32
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[37:38], off, off offset:208
	scratch_load_b64 v[38:39], off, off offset:216
	scratch_load_b64 v[39:40], off, off offset:224
	scratch_load_b32 v40, off, off offset:232
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s45, s23, v35
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v35, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v33, s103, v33
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v34, s103, v34
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s42, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s43, s23, v33
	.loc	1 630 31                        ; attention.py:630:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:164
	scratch_load_b32 v33, off, off offset:168
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s49, s23, v34
	.loc	1 633 32                        ; attention.py:633:32
	scratch_load_b32 v34, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v37, s0, v37
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, s0, v38
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v39, s0, v39
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s0, v40
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v35, s103, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s50, s23, v35
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v33, s103, v33
	.loc	1 633 32                        ; attention.py:633:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s47, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s48, s23, v33
	.loc	1 633 32                        ; attention.py:633:32
	scratch_load_b32 v33, off, off offset:188 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s0, v36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:196
	scratch_load_b32 v36, off, off offset:204
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s3
	.loc	1 633 32                        ; attention.py:633:32
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s0, v35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s0, v36
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s37
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s38
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s39
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s40
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s41
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s42
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s43
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x5
	buffer_load_u8 v0, v0, s[52:55], 0 offen
	buffer_load_u8 v33, v33, s[52:55], 0 offen
	buffer_load_u8 v34, v34, s[52:55], 0 offen
	buffer_load_u8 v36, v36, s[52:55], 0 offen
	buffer_load_u8 v37, v37, s[52:55], 0 offen
	buffer_load_u8 v38, v38, s[52:55], 0 offen
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s44
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s45
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s47
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	s_clause 0x1
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	buffer_load_u8 v43, v43, s[52:55], 0 offen
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s46
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s48
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s49
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x1
	buffer_load_u8 v41, v41, s[52:55], 0 offen
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s1, s50
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_u8 v44, v44, s[52:55], 0 offen
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	s_clause 0x4
	buffer_load_u8 v42, v42, s[52:55], 0 offen
	buffer_load_u8 v46, v46, s[52:55], 0 offen
	buffer_load_u8 v39, v39, s[52:55], 0 offen
	buffer_load_u8 v35, v35, s[52:55], 0 offen
	buffer_load_u8 v47, v47, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b64 s[0:1], s[52:53]
	s_waitcnt vmcnt(15)
	ds_store_b8 v210, v0
	s_waitcnt vmcnt(12)
	ds_store_b8 v210, v36 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v210, v40 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v210, v43 offset:1536
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	v_writelane_b32 v255, s0, 0
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v33
	ds_store_b8 v0, v37 offset:512
	ds_store_b8 v0, v41 offset:1024
	ds_store_b8 v0, v45 offset:1536
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	v_writelane_b32 v255, s1, 1
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v34
	ds_store_b8 v0, v38 offset:512
	ds_store_b8 v0, v42 offset:1024
	ds_store_b8 v0, v46 offset:1536
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	v_writelane_b32 v255, s2, 2
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v35
	ds_store_b8 v0, v39 offset:512
	ds_store_b8 v0, v44 offset:1024
	ds_store_b8 v0, v47 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[89:90], off, off offset:660
	scratch_load_b32 v0, off, off offset:524
	v_writelane_b32 v255, s3, 3
	ds_load_2addr_stride64_b64 v[33:36], v48 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v48 offset0:2 offset1:3
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b64 v[120:121], off, off offset:308 ; 8-byte Folded Reload
	.loc	1 634 32                        ; attention.py:634:32
	v_writelane_b32 v255, s4, 4
	v_writelane_b32 v255, s5, 5
	v_writelane_b32 v255, s6, 6
	v_writelane_b32 v255, s7, 7
	.loc	1 639 33                        ; attention.py:639:33
	v_readlane_b32 s0, v253, 10
	v_readlane_b32 s7, v253, 17
	v_readlane_b32 s1, v253, 11
	v_readlane_b32 s2, v253, 12
	v_readlane_b32 s3, v253, 13
	v_readlane_b32 s4, v253, 14
	v_readlane_b32 s5, v253, 15
	v_readlane_b32 s6, v253, 16
	v_mov_b32_e32 v72, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v68, s3 :: v_dual_mov_b32 v69, s4
	v_dual_mov_b32 v70, s5 :: v_dual_mov_b32 v71, s6
	v_dual_mov_b32 v67, s2 :: v_dual_mov_b32 v66, s1
	v_mov_b32_e32 v65, s0
	.loc	1 665 25                        ; attention.py:665:25
	v_readlane_b32 s0, v253, 18
	v_writelane_b32 v255, s8, 8
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt vmcnt(2) lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[89:90], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[35:36], v[89:90], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[89:90], v[65:72] neg_lo:[1,1,0]
	scratch_load_b64 v[85:86], off, off offset:668 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[89:90], v[65:72] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[85:86], v[49:56] neg_lo:[1,1,0]
	scratch_load_b64 v[85:86], off, off offset:676 ; 8-byte Folded Reload
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[85:86], v[49:56] neg_lo:[1,1,0]
	scratch_load_b64 v[85:86], off, off offset:684 ; 8-byte Folded Reload
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_bfe_u32 v65, v207, 4, 1
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[85:86], v[49:56] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v65
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v66, s8, v65, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s3, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v137, 0x7c, v66
	v_add_nc_u32_e32 v68, 8, v66
	v_add_nc_u32_e32 v69, 12, v66
	v_add_nc_u32_e32 v70, 16, v66
	v_add_nc_u32_e32 v71, 20, v66
	v_add_nc_u32_e32 v72, 24, v66
	v_add_nc_u32_e32 v73, 28, v66
	v_add_nc_u32_e32 v85, 32, v66
	v_add_nc_u32_e32 v86, 36, v66
	v_add_nc_u32_e32 v87, 40, v66
	v_add_nc_u32_e32 v88, 44, v66
	v_add_nc_u32_e32 v89, 48, v66
	v_add_nc_u32_e32 v90, 52, v66
	v_add_nc_u32_e32 v91, 56, v66
	v_add_nc_u32_e32 v92, 60, v66
	v_add_nc_u32_e32 v93, 64, v66
	v_add_nc_u32_e32 v94, 0x44, v66
	v_add_nc_u32_e32 v119, 0x48, v66
	v_add_nc_u32_e32 v123, 0x4c, v66
	v_add_nc_u32_e32 v125, 0x50, v66
	v_add_nc_u32_e32 v126, 0x54, v66
	v_add_nc_u32_e32 v127, 0x58, v66
	v_add_nc_u32_e32 v129, 0x5c, v66
	v_add_nc_u32_e32 v130, 0x60, v66
	v_add_nc_u32_e32 v131, 0x64, v66
	v_add_nc_u32_e32 v132, 0x68, v66
	v_add_nc_u32_e32 v133, 0x6c, v66
	v_add_nc_u32_e32 v134, 0x70, v66
	v_add_nc_u32_e32 v135, 0x74, v66
	v_add_nc_u32_e32 v136, 0x78, v66
	.loc	1 630 31                        ; attention.py:630:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s45, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s46, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s47, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s48, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s49, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s50, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 14, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s51, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 16, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s52, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 18, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s53, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 20, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s54, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 22, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s55, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 24, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v118, 0x80000000, v88, s55
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s56, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 26, v65
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s57, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 28, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v121, 0x80000000, v90, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s58, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 30, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v122, 0x80000000, v91, s58
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s59, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 32, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v124, 0x80000000, v92, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s60, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 34, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v128, 0x80000000, v93, s60
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s61, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 36, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v188, 0x80000000, v94, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s62, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 38, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v189, 0x80000000, v119, s62
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s63, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 40, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v190, 0x80000000, v123, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s64, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 42, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v191, 0x80000000, v125, s64
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s65, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 44, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v192, 0x80000000, v126, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s66, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 46, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v193, 0x80000000, v127, s66
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s67, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 48, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v197, 0x80000000, v129, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s39, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 50, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v208, 0x80000000, v130, s39
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s41, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 52, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v210, 0x80000000, v131, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s42, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 54, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v211, 0x80000000, v132, s42
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s44, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 56, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v219, 0x80000000, v133, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s40, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 58, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v220, 0x80000000, v134, s40
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s38, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 60, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v222, 0x80000000, v135, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s37, s23, v0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, 62, v65
	v_or_b32_e32 v65, s103, v120
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v120, 0x80000000, v89, s56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v223, 0x80000000, v136, s37
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s43, s23, v65
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v0
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s16, s0, s43
	v_readlane_b32 s0, v253, 19
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v67, 4, v66
	v_cndmask_b32_e64 v0, 0x80000000, v66, s3
	v_cndmask_b32_e32 v224, 0x80000000, v137, vcc_lo
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s97, s0, s43
	v_readlane_b32 s0, v253, 20
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v66, 0x80000000, v67, s45
	v_cndmask_b32_e64 v67, 0x80000000, v68, s46
	v_cndmask_b32_e64 v68, 0x80000000, v69, s47
	v_cndmask_b32_e64 v69, 0x80000000, v70, s48
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s98, s0, s43
	v_readlane_b32 s0, v253, 21
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v70, 0x80000000, v71, s49
	v_cndmask_b32_e64 v71, 0x80000000, v72, s50
	v_cndmask_b32_e64 v72, 0x80000000, v73, s51
	v_cndmask_b32_e64 v73, 0x80000000, v85, s52
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s99, s0, s43
	v_readlane_b32 s0, v253, 22
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v85, 0x80000000, v86, s53
	v_cndmask_b32_e64 v86, 0x80000000, v87, s54
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s10, s0, s43
	v_readlane_b32 s0, v253, 23
	s_and_b32 s33, s0, s43
	v_readlane_b32 s0, v253, 24
	s_and_b32 s30, s0, s43
	v_readlane_b32 s0, v253, 25
	s_and_b32 s6, s0, s43
	v_readlane_b32 s0, v253, 26
	s_and_b32 s100, s0, s43
	v_readlane_b32 s0, v253, 27
	s_and_b32 s21, s0, s43
	v_readlane_b32 s0, v253, 28
	s_and_b32 s2, s0, s43
	v_readlane_b32 s0, v253, 29
	s_and_b32 s18, s0, s43
	v_readlane_b32 s0, v253, 30
	s_and_b32 s17, s0, s43
	v_readlane_b32 s0, v253, 31
	s_and_b32 s35, s0, s43
	v_readlane_b32 s0, v254, 0
	s_and_b32 s34, s0, s43
	v_readlane_b32 s0, v254, 1
	s_and_b32 s7, s0, s43
	v_readlane_b32 s0, v254, 2
	s_and_b32 s5, s0, s43
	v_readlane_b32 s0, v254, 3
	s_and_b32 vcc_hi, s0, s43
	v_readlane_b32 s0, v254, 4
	s_and_b32 s20, s0, s43
	v_readlane_b32 s0, v254, 5
	s_and_b32 s104, s0, s43
	v_readlane_b32 s0, v254, 6
	s_and_b32 s9, s0, s43
	v_readlane_b32 s0, v254, 7
	s_and_b32 s11, s0, s43
	v_readlane_b32 s0, v254, 8
	s_and_b32 s8, s0, s43
	v_readlane_b32 s0, v254, 9
	s_and_b32 s31, s0, s43
	v_readlane_b32 s0, v254, 10
	s_and_b32 s101, s0, s43
	v_readlane_b32 s0, v254, 11
	s_and_b32 s4, s0, s43
	v_readlane_b32 s0, v254, 12
	s_and_b32 s36, s0, s43
	v_readlane_b32 s0, v254, 13
	s_and_b32 s1, s0, s43
	v_readlane_b32 s0, v254, 14
	s_and_b32 s102, s0, s43
	v_readlane_b32 s0, v254, 15
	s_and_b32 s22, s0, s43
	v_readlane_b32 s0, v254, 16
	s_and_b32 s19, s0, s43
	.loc	1 667 17                        ; attention.py:667:17
	v_readlane_b32 s0, v253, 3
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 665 25                        ; attention.py:665:25
	v_readlane_b32 s0, v254, 17
	s_and_b32 s0, s0, s43
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	scratch_load_b32 v87, off, off offset:928 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v65, v87
	scratch_load_b32 v87, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s26, vcc_lo, s16
	s_and_not1_b32 s16, s16, exec_lo
	s_and_b32 s26, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s16, s16, s26
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v65, v87
	scratch_load_b32 v87, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s3, s3, s97
	s_and_b32 s3, s3, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v65, v87
	scratch_load_b32 v87, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s27, s37, s98
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s26, s27, exec_lo
	s_and_not1_b32 s27, s99, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v65, v87
	scratch_load_b32 v87, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s37, s38, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s37, exec_lo
	s_or_b32 s99, s27, s37
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v65, v87
	scratch_load_b32 v87, off, off offset:948 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s38, s39, s10
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v65, v87
	scratch_load_b32 v87, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s39, s40, s33
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s27, s39, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v65, v87
	scratch_load_b32 v87, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s40, s41, s30
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v65, v87
	scratch_load_b32 v87, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s41, s42, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v65, v87
	scratch_load_b32 v87, off, off offset:964 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s42, s43, s100
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v65, v87
	scratch_load_b32 v87, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s43, s44, s21
	s_and_not1_b32 s21, s21, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v65, v87
	scratch_load_b32 v87, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s44, s45, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v65, v87
	scratch_load_b32 v87, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s45, s46, s18
	s_and_not1_b32 s18, s18, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v65, v87
	scratch_load_b32 v87, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s46, s47, s17
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v65, v87
	scratch_load_b32 v87, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s47, s48, s35
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v65, v87
	scratch_load_b32 v87, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s48, s49, s34
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v65, v87
	scratch_load_b32 v87, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s49, s50, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v65, v87
	scratch_load_b32 v87, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s50, s51, s5
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v65, v87
	scratch_load_b32 v87, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s51, s52, vcc_hi
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v65, v87
	scratch_load_b32 v87, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s52, s53, s20
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v65, v87
	scratch_load_b32 v87, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s53, s54, s104
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v65, v87
	scratch_load_b32 v87, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s54, s55, s9
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v65, v87
	scratch_load_b32 v87, off, off offset:1016 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s55, s56, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v65, v87
	scratch_load_b32 v87, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s56, s57, s8
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v65, v87
	scratch_load_b32 v87, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s57, s58, s31
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v65, v87
	scratch_load_b32 v87, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s58, s59, s101
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v65, v87
	scratch_load_b32 v87, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s59, s60, s4
	s_and_not1_b32 s4, s4, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v65, v87
	scratch_load_b32 v87, off, off offset:1036 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s60, s61, s36
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v65, v87
	scratch_load_b32 v87, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s61, s62, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v65, v87
	scratch_load_b32 v87, off, off offset:1044 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s62, s63, s102
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v65, v87
	scratch_load_b32 v87, off, off offset:1048 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s63, s64, s22
	s_and_not1_b32 s22, s22, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v65, v87
	scratch_load_b32 v87, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s64, s65, s19
	.loc	1 668 30                        ; attention.py:668:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v65, v87
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s65, s66, s0
	s_and_not1_b32 s66, s97, exec_lo
	s_and_not1_b32 s0, s0, exec_lo
	s_or_b32 s97, s66, s3
	s_and_not1_b32 s3, s98, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s98, s3, s26
	s_and_not1_b32 s3, s10, exec_lo
	s_and_b32 s10, s38, exec_lo
	s_and_not1_b32 s26, s33, exec_lo
	s_or_b32 s10, s3, s10
	s_or_b32 s33, s26, s27
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s26, s40, exec_lo
	s_and_b32 s27, s41, exec_lo
	s_or_b32 s30, s3, s26
	s_and_not1_b32 s3, s100, exec_lo
	s_and_b32 s26, s42, exec_lo
	s_or_b32 s6, s6, s27
	s_and_b32 s27, s43, exec_lo
	s_or_b32 s100, s3, s26
	s_and_b32 s3, s44, exec_lo
	s_and_b32 s26, s45, exec_lo
	s_or_b32 s21, s21, s27
	s_or_b32 s2, s2, s3
	s_or_b32 s18, s18, s26
	s_and_not1_b32 s3, s17, exec_lo
	s_and_b32 s17, s46, exec_lo
	s_and_not1_b32 s26, s35, exec_lo
	s_and_b32 s27, s47, exec_lo
	s_or_b32 s17, s3, s17
	s_or_b32 s35, s26, s27
	s_and_not1_b32 s3, s34, exec_lo
	s_and_b32 s26, s48, exec_lo
	s_and_b32 s27, s49, exec_lo
	s_or_b32 s34, s3, s26
	s_or_b32 s7, s7, s27
	s_and_not1_b32 s3, s5, exec_lo
	s_and_b32 s5, s50, exec_lo
	s_and_not1_b32 s26, vcc_hi, exec_lo
	s_and_b32 s27, s51, exec_lo
	s_or_b32 s5, s3, s5
	s_or_b32 vcc_hi, s26, s27
	s_and_not1_b32 s3, s20, exec_lo
	s_and_b32 s20, s52, exec_lo
	s_and_not1_b32 s26, s104, exec_lo
	s_and_b32 s27, s53, exec_lo
	s_or_b32 s20, s3, s20
	s_or_b32 s104, s26, s27
	s_and_not1_b32 s3, s9, exec_lo
	s_and_b32 s9, s54, exec_lo
	s_and_b32 s26, s55, exec_lo
	s_or_b32 s9, s3, s9
	s_or_b32 s11, s11, s26
	s_and_not1_b32 s3, s8, exec_lo
	s_and_b32 s8, s56, exec_lo
	s_and_not1_b32 s26, s31, exec_lo
	s_and_b32 s27, s57, exec_lo
	s_or_b32 s8, s3, s8
	s_or_b32 s31, s26, s27
	s_and_not1_b32 s3, s101, exec_lo
	s_and_b32 s26, s58, exec_lo
	s_and_b32 s27, s59, exec_lo
	s_or_b32 s101, s3, s26
	s_and_not1_b32 s3, s36, exec_lo
	s_and_b32 s26, s60, exec_lo
	s_or_b32 s4, s4, s27
	s_and_b32 s27, s61, exec_lo
	s_or_b32 s36, s3, s26
	s_and_not1_b32 s3, s102, exec_lo
	s_and_b32 s26, s62, exec_lo
	s_or_b32 s1, s1, s27
	s_and_b32 s27, s63, exec_lo
	s_or_b32 s102, s3, s26
	s_and_not1_b32 s3, s19, exec_lo
	s_and_b32 s19, s64, exec_lo
	s_and_b32 s26, s65, exec_lo
	s_or_b32 s22, s22, s27
	s_or_b32 s19, s3, s19
	s_or_b32 s0, s0, s26
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v119, v0, s[12:15], 0 offen
	buffer_load_u16 v168, v66, s[12:15], 0 offen
	buffer_load_u16 v169, v67, s[12:15], 0 offen
	buffer_load_u16 v170, v68, s[12:15], 0 offen
	buffer_load_u16 v159, v69, s[12:15], 0 offen
	buffer_load_u16 v131, v70, s[12:15], 0 offen
	buffer_load_u16 v133, v71, s[12:15], 0 offen
	buffer_load_u16 v166, v72, s[12:15], 0 offen
	buffer_load_u16 v0, v73, s[12:15], 0 offen
	buffer_load_u16 v130, v85, s[12:15], 0 offen
	buffer_load_u16 v127, v86, s[12:15], 0 offen
	buffer_load_u16 v129, v118, s[12:15], 0 offen
	buffer_load_u16 v132, v120, s[12:15], 0 offen
	buffer_load_u16 v123, v121, s[12:15], 0 offen
	buffer_load_u16 v125, v122, s[12:15], 0 offen
	buffer_load_u16 v126, v124, s[12:15], 0 offen
	buffer_load_u16 v128, v128, s[12:15], 0 offen
	buffer_load_u16 v66, v188, s[12:15], 0 offen
	buffer_load_u16 v122, v189, s[12:15], 0 offen
	buffer_load_u16 v120, v190, s[12:15], 0 offen
	buffer_load_u16 v121, v191, s[12:15], 0 offen
	buffer_load_u16 v124, v192, s[12:15], 0 offen
	buffer_load_u16 v86, v193, s[12:15], 0 offen
	buffer_load_u16 v72, v197, s[12:15], 0 offen
	buffer_load_u16 v85, v208, s[12:15], 0 offen
	buffer_load_u16 v118, v210, s[12:15], 0 offen
	buffer_load_u16 v67, v211, s[12:15], 0 offen
	buffer_load_u16 v71, v219, s[12:15], 0 offen
	buffer_load_u16 v69, v220, s[12:15], 0 offen
	buffer_load_u16 v70, v222, s[12:15], 0 offen
	buffer_load_u16 v73, v223, s[12:15], 0 offen
	buffer_load_u16 v68, v224, s[12:15], 0 offen
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s3, v253, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	scratch_load_b32 v87, off, off offset:1056 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v65, v87
	scratch_load_b32 v87, off, off offset:1060 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v65, v87
	scratch_load_b32 v87, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s37, v65, v87
	scratch_load_b32 v87, off, off offset:1068 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s38, v65, v87
	scratch_load_b32 v87, off, off offset:1072 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s39, v65, v87
	scratch_load_b32 v87, off, off offset:1076 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s40, v65, v87
	scratch_load_b32 v87, off, off offset:1080 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s41, v65, v87
	scratch_load_b32 v87, off, off offset:1084 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s42, v65, v87
	scratch_load_b32 v87, off, off offset:1088 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s43, v65, v87
	scratch_load_b32 v87, off, off offset:1092 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s44, v65, v87
	scratch_load_b32 v87, off, off offset:1096 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s45, v65, v87
	scratch_load_b32 v87, off, off offset:1100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s46, v65, v87
	scratch_load_b32 v87, off, off offset:1104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s47, v65, v87
	scratch_load_b32 v87, off, off offset:1108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s48, v65, v87
	scratch_load_b32 v87, off, off offset:1112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s49, v65, v87
	scratch_load_b32 v87, off, off offset:1116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s50, v65, v87
	scratch_load_b32 v87, off, off offset:1120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s51, v65, v87
	scratch_load_b32 v87, off, off offset:1124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s52, v65, v87
	scratch_load_b32 v87, off, off offset:1128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s53, v65, v87
	scratch_load_b32 v87, off, off offset:1132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s54, v65, v87
	scratch_load_b32 v87, off, off offset:1136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s55, v65, v87
	scratch_load_b32 v87, off, off offset:1140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s56, v65, v87
	scratch_load_b32 v87, off, off offset:1144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s57, v65, v87
	scratch_load_b32 v87, off, off offset:1148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s58, v65, v87
	scratch_load_b32 v87, off, off offset:1152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s59, v65, v87
	scratch_load_b32 v87, off, off offset:1156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s60, v65, v87
	scratch_load_b32 v87, off, off offset:1160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s61, v65, v87
	scratch_load_b32 v87, off, off offset:1164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s62, v65, v87
	scratch_load_b32 v87, off, off offset:1168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s63, v65, v87
	scratch_load_b32 v87, off, off offset:1172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s64, v65, v87
	scratch_load_b32 v87, off, off offset:1176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s65, v65, v87
	scratch_load_b32 v87, off, off offset:1180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s66, v65, v87
	.loc	1 671 30                        ; attention.py:671:30
	scratch_load_b32 v87, off, off offset:1184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v65, v87
	scratch_load_b32 v87, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s26, vcc_lo, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s16
	s_and_not1_b32 s16, s16, exec_lo
	s_and_b32 s26, s26, exec_lo
	s_or_b32 s16, s16, s26
	s_and_not1_b32 s26, s98, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v65, v87
	scratch_load_b32 v87, off, off offset:1192 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s3, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s3, s97
	s_and_b32 s27, s27, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v65, v87
	scratch_load_b32 v87, off, off offset:1196 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s37, s37, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s37, s98
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v65, v87
	scratch_load_b32 v87, off, off offset:1200 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s38, s38, s70
	s_and_b32 s38, s38, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s38, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v65, v87
	scratch_load_b32 v87, off, off offset:1204 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s39, s39, s71
	s_and_b32 s39, s39, s10
	s_and_not1_b32 s10, s10, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v65, v87
	scratch_load_b32 v87, off, off offset:1208 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s40, s40, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s40, s40, s33
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v65, v87
	scratch_load_b32 v87, off, off offset:1212 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s41, s41, s73
	s_and_b32 s41, s41, s30
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v65, v87
	scratch_load_b32 v87, off, off offset:1216 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s42, s42, s74
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s42, s42, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v65, v87
	scratch_load_b32 v87, off, off offset:1220 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s43, s43, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s43, s43, s100
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v65, v87
	scratch_load_b32 v87, off, off offset:1224 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s44, s44, s76
	s_and_b32 s44, s44, s21
	s_and_not1_b32 s21, s21, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v65, v87
	scratch_load_b32 v87, off, off offset:1228 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s45, s45, s77
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s45, s45, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v65, v87
	scratch_load_b32 v87, off, off offset:1232 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s46, s46, s78
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s46, s46, s18
	s_and_not1_b32 s18, s18, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v65, v87
	scratch_load_b32 v87, off, off offset:1236 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s47, s47, s79
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s47, s47, s17
	s_and_not1_b32 s17, s17, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v65, v87
	scratch_load_b32 v87, off, off offset:1240 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s48, s48, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s48, s48, s35
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v65, v87
	scratch_load_b32 v87, off, off offset:1244 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s49, s49, s81
	s_and_b32 s49, s49, s34
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v65, v87
	scratch_load_b32 v87, off, off offset:1248 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s50, s50, s82
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s50, s50, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v65, v87
	scratch_load_b32 v87, off, off offset:1252 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s51, s51, s83
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s51, s51, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v65, v87
	scratch_load_b32 v87, off, off offset:1256 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s52, s52, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s52, s52, vcc_hi
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v65, v87
	scratch_load_b32 v87, off, off offset:1260 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s53, s53, s85
	s_and_b32 s53, s53, s20
	s_and_not1_b32 s20, s20, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v65, v87
	scratch_load_b32 v87, off, off offset:1264 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s54, s54, s86
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s54, s54, s104
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v65, v87
	scratch_load_b32 v87, off, off offset:1268 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s55, s55, s87
	s_and_b32 s55, s55, s9
	s_and_not1_b32 s9, s9, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v65, v87
	scratch_load_b32 v87, off, off offset:1272 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s56, s56, s88
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s56, s56, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v65, v87
	scratch_load_b32 v87, off, off offset:1276 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s57, s57, s89
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s57, s57, s8
	s_and_not1_b32 s8, s8, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v65, v87
	scratch_load_b32 v87, off, off offset:1280 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s58, s58, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s58, s58, s31
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v65, v87
	scratch_load_b32 v87, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s59, s59, s91
	s_and_b32 s59, s59, s101
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v65, v87
	scratch_load_b32 v87, off, off offset:1288 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s60, s60, s92
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s60, s60, s4
	s_and_not1_b32 s4, s4, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v65, v87
	scratch_load_b32 v87, off, off offset:1292 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s61, s61, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s61, s61, s36
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v65, v87
	scratch_load_b32 v87, off, off offset:1296 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s62, s62, s94
	s_and_b32 s62, s62, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s95, v65, v87
	scratch_load_b32 v87, off, off offset:1300 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s63, s63, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s63, s63, s102
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s96, v65, v87
	scratch_load_b32 v87, off, off offset:1304 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s64, s64, s96
	s_and_b32 s64, s64, s22
	s_and_not1_b32 s22, s22, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v65, v87
	scratch_load_b32 v87, off, off offset:1308 ; 4-byte Folded Reload
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s65, s65, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s65, s65, s19
	s_and_not1_b32 s19, s19, exec_lo
	.loc	1 671 30                        ; attention.py:671:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v65, v87
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s66, s3
	s_and_not1_b32 s66, s97, exec_lo
	s_and_b32 s3, s3, s0
	s_or_b32 s97, s66, s27
	s_and_b32 s27, s37, exec_lo
	s_and_not1_b32 s37, s99, exec_lo
	s_or_b32 s98, s26, s27
	s_and_b32 s26, s39, exec_lo
	s_and_not1_b32 s27, s33, exec_lo
	s_and_b32 s33, s40, exec_lo
	s_or_b32 s10, s10, s26
	s_or_b32 s33, s27, s33
	s_and_not1_b32 s26, s30, exec_lo
	s_and_b32 s27, s41, exec_lo
	s_or_b32 s99, s37, s38
	s_or_b32 s30, s26, s27
	s_and_not1_b32 s26, s100, exec_lo
	s_and_b32 s27, s43, exec_lo
	s_and_b32 s37, s42, exec_lo
	s_or_b32 s100, s26, s27
	s_and_b32 s26, s45, exec_lo
	s_and_b32 s27, s46, exec_lo
	s_or_b32 s6, s6, s37
	s_and_b32 s37, s44, exec_lo
	s_or_b32 s2, s2, s26
	s_or_b32 s18, s18, s27
	s_and_b32 s26, s47, exec_lo
	s_and_not1_b32 s27, s35, exec_lo
	s_and_b32 s35, s48, exec_lo
	s_or_b32 s21, s21, s37
	s_or_b32 s17, s17, s26
	s_or_b32 s35, s27, s35
	s_and_not1_b32 s26, s34, exec_lo
	s_and_b32 s27, s49, exec_lo
	s_and_b32 s37, s50, exec_lo
	s_or_b32 s34, s26, s27
	s_or_b32 s7, s7, s37
	s_and_b32 s26, s51, exec_lo
	s_and_not1_b32 s27, vcc_hi, exec_lo
	s_and_b32 s37, s52, exec_lo
	s_or_b32 s5, s5, s26
	s_or_b32 vcc_hi, s27, s37
	s_and_b32 s26, s53, exec_lo
	s_and_not1_b32 s27, s104, exec_lo
	s_and_b32 s37, s54, exec_lo
	s_or_b32 s20, s20, s26
	s_or_b32 s104, s27, s37
	s_and_b32 s26, s55, exec_lo
	s_and_b32 s27, s56, exec_lo
	s_or_b32 s9, s9, s26
	s_or_b32 s11, s11, s27
	s_and_b32 s26, s57, exec_lo
	s_and_not1_b32 s27, s31, exec_lo
	s_and_b32 s31, s58, exec_lo
	s_or_b32 s8, s8, s26
	s_or_b32 s31, s27, s31
	s_and_not1_b32 s26, s101, exec_lo
	s_and_b32 s27, s59, exec_lo
	s_and_b32 s37, s60, exec_lo
	s_or_b32 s101, s26, s27
	s_and_not1_b32 s26, s36, exec_lo
	s_and_b32 s27, s61, exec_lo
	s_or_b32 s4, s4, s37
	s_and_b32 s37, s62, exec_lo
	s_or_b32 s36, s26, s27
	s_and_not1_b32 s26, s102, exec_lo
	s_and_b32 s27, s63, exec_lo
	s_or_b32 s1, s1, s37
	s_and_b32 s37, s64, exec_lo
	s_or_b32 s102, s26, s27
	s_and_b32 s26, s65, exec_lo
	s_and_not1_b32 s0, s0, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s22, s22, s37
	s_or_b32 s19, s19, s26
	s_or_b32 s0, s0, s3
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v68, off, off offset:1320
	scratch_load_b32 v69, off, off offset:1324
	scratch_load_b32 v70, off, off offset:1328
	scratch_load_b32 v67, off, off offset:1332
	scratch_load_b32 v71, off, off offset:1336
	v_readlane_b32 s40, v253, 5
	v_readlane_b32 s41, v253, 6
	v_readlane_b32 s31, v253, 9
	v_readlane_b32 s42, v253, 7
	v_readlane_b32 s43, v253, 8
.LBB0_15:                               ; %._crit_edge
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, 0, v70
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v65, 0x80, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s2, v253, 4
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[37:40] offset:16
	v_and_b32_e32 v33, 28, v69
	v_lshrrev_b32_e32 v34, 1, v70
	s_waitcnt vmcnt(0)
	v_add3_u32 v35, 0, v71, v65
	ds_store_b128 v0, v[49:52] offset:128
	ds_store_b128 v0, v[53:56] offset:144
	ds_store_b128 v0, v[45:48] offset:32
	ds_store_b128 v0, v[61:64] offset:48
	ds_store_b128 v0, v[41:44] offset:160
	ds_store_b128 v0, v[57:60] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v33, v35, v34, v33
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v64, off, off offset:104
	scratch_load_b32 v63, off, off offset:100
	scratch_load_b32 v62, off, off offset:96
	scratch_load_b32 v61, off, off offset:92
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v0, v33
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	v_div_scale_f32 v39, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v33
	v_rcp_f32_e32 v43, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v37
	v_rcp_f32_e32 v45, v39
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_div_scale_f32 v36, s0, v18, v0, v18
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_fma_f32 v49, -v33, v42, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v35, v43, 1.0
	v_fma_f32 v51, -v37, v44, 1.0
	v_div_scale_f32 v41, null, v0, v0, v21
	v_div_scale_f32 v47, null, v0, v0, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v45, 1.0
	v_dual_fmac_f32 v42, v49, v42 :: v_dual_fmac_f32 v43, v50, v43
	v_fmac_f32_e32 v44, v51, v44
	v_rcp_f32_e32 v53, v41
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_mul_f32 v50, v34, v42
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v36, v43 :: v_dual_mul_f32 v52, v38, v44
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v56, -v33, v50, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v35, v51, v36
	v_fma_f32 v58, -v37, v52, v38
	v_div_scale_f32 v48, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v54, v40, v45 :: v_dual_fmac_f32 v51, v57, v43
	v_fma_f32 v55, -v41, v53, 1.0
	v_fma_f32 v60, -v47, v49, 1.0
	v_fmac_f32_e32 v50, v56, v42
	v_fmac_f32_e32 v52, v58, v44
	v_div_scale_f32 v46, s4, v21, v0, v21
	v_fmac_f32_e32 v53, v55, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v50, v34
	v_fma_f32 v34, -v35, v51, v36
	v_fmac_f32_e32 v49, v60, v49
	v_fma_f32 v35, -v37, v52, v38
	v_rcp_f32_e32 v38, v48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v59, -v39, v54, v40
	v_div_fmas_f32 v34, v34, v43, v51
	v_mul_f32_e32 v37, v46, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_scale_f32 v33, s1, v22, v0, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v48, v38, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_div_scale_f32 v34, null, v0, v0, v24
	v_div_fmas_f32 v35, v35, v44, v52
	v_fmac_f32_e32 v38, v42, v38
	v_fmac_f32_e32 v54, v59, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v34
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v35, v0, v19
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v39, v54, v40
	v_fma_f32 v39, -v41, v37, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v45, v54
	v_fmac_f32_e32 v37, v39, v53
	v_div_scale_f32 v39, null, v0, v0, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v34, v43, 1.0
	v_mul_f32_e32 v40, v33, v49
	v_div_fixup_f32 v20, v36, v0, v20
	v_rcp_f32_e32 v44, v39
	v_div_scale_f32 v36, s3, v23, v0, v23
	v_fmac_f32_e32 v43, v42, v43
	v_fma_f32 v35, -v47, v40, v33
	v_fma_f32 v41, -v41, v37, v46
	v_div_scale_f32 v42, s5, v24, v0, v24
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v40, v35, v49 :: v_dual_mul_f32 v35, v36, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v39, v44, 1.0
	v_mul_f32_e32 v45, v42, v43
	v_fma_f32 v33, -v47, v40, v33
	v_div_scale_f32 v47, null, v0, v0, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v44, v46, v44
	v_div_fmas_f32 v37, v41, v53, v37
	v_fma_f32 v41, -v48, v35, v36
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s1, v25, v0, v25
	v_div_fmas_f32 v33, v33, v49, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v38
	v_fma_f32 v41, -v34, v45, v42
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v47
	v_div_fixup_f32 v22, v33, v0, v22
	v_fma_f32 v33, -v48, v35, v36
	v_dual_mul_f32 v36, v46, v44 :: v_dual_fmac_f32 v45, v41, v43
	v_div_fixup_f32 v21, v37, v0, v21
	v_div_scale_f32 v41, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v38, v35
	v_fma_f32 v35, -v39, v36, v46
	v_fma_f32 v34, -v34, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v47, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v23, v33, v0, v23
	v_fmac_f32_e32 v36, v35, v44
	v_div_fmas_f32 v34, v34, v43, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, s3, v26, v0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v39, v36, v46
	v_div_scale_f32 v46, null, v0, v0, v29
	v_div_scale_f32 v42, null, v0, v0, v28
	v_div_fmas_f32 v33, v33, v44, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v44, s1, v28, v0, v28
	v_fmac_f32_e32 v40, v37, v40
	v_rcp_f32_e32 v37, v41
	v_rcp_f32_e32 v35, v42
	v_div_scale_f32 v39, s4, v27, v0, v27
	v_div_fixup_f32 v24, v34, v0, v24
	v_div_fixup_f32 v25, v33, v0, v25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v41, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v49, v36
	v_fmac_f32_e32 v37, v45, v37
	v_mul_f32_e32 v43, v38, v40
	v_fma_f32 v45, -v42, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v47, v43, v38
	v_dual_fmac_f32 v43, v34, v40 :: v_dual_mul_f32 v34, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v43, v38
	v_fma_f32 v38, -v41, v34, v39
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v38, v37 :: v_dual_mul_f32 v47, v44, v35
	v_div_fmas_f32 v33, v33, v40, v43
	v_rcp_f32_e32 v48, v45
	v_div_scale_f32 v40, s3, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v42, v47, v44
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v41, v34, v39
	v_div_scale_f32 v41, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v38, v35
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v40, v36
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v43, -v45, v48, 1.0
	v_fma_f32 v34, -v42, v47, v44
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v37, -v46, v38, v40
	v_div_scale_f32 v44, null, v0, v0, v32
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, s5, v30, v0, v30
	v_div_fmas_f32 v34, v34, v35, v47
	v_fmac_f32_e32 v38, v37, v36
	v_rcp_f32_e32 v35, v44
	v_fmac_f32_e32 v48, v43, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v41, v42, 1.0
	v_div_fixup_f32 v27, v33, v0, v27
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v33, -v46, v38, v40
	v_div_scale_f32 v34, s1, v31, v0, v31
	v_fmac_f32_e32 v42, v47, v42
	v_mul_f32_e32 v43, v39, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v36, v38
	v_mul_f32_e32 v38, v34, v42
	v_fma_f32 v37, -v45, v43, v39
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v33, v0, v29
	v_fmac_f32_e32 v43, v37, v48
	v_fma_f32 v37, -v44, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v45, v43, v39
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v9
	v_div_scale_f32 v39, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v48, v43
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v43, -v41, v38, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v36, v0, v30
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v33, -v44, v45, v39
	v_fmac_f32_e32 v38, v43, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v37, v40, 1.0
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v33, v35
	v_fma_f32 v34, -v41, v38, v34
	v_div_scale_f32 v41, null, v0, v0, v11
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v41
	v_div_fmas_f32 v34, v34, v42, v38
	v_fma_f32 v38, -v44, v45, v39
	v_fma_f32 v47, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v10, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v38, v35, v45
	v_div_fixup_f32 v31, v34, v0, v31
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v32, v35, v0, v32
	v_fma_f32 v35, -v48, v50, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_mul_f32_e32 v39, v33, v40
	v_div_scale_f32 v44, s5, v11, v0, v11
	v_fmac_f32_e32 v36, v47, v36
	v_fmac_f32_e32 v50, v35, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v37, v39, v33
	v_mul_f32_e32 v45, v44, v43
	v_div_scale_f32 v35, s3, v12, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v47, v40
	v_fma_f32 v34, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v37, v39, v33
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fmac_f32_e32 v45, v34, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v40, v39
	v_rcp_f32_e32 v34, v37
	v_mul_f32_e32 v49, v42, v36
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v39, v35, v50
	v_fma_f32 v38, -v46, v49, v42
	v_div_fixup_f32 v9, v33, v0, v9
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	s_waitcnt vmcnt(2)
	v_cmp_gt_i32_e64 s6, s2, v63
	s_waitcnt vmcnt(1)
	v_cmp_gt_i32_e64 s7, s2, v62
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s8, s2, v61
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v38, v36
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v46, v49, v42
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v41, v45, v44
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v36, v0, v10
	v_div_fmas_f32 v38, v38, v43, v45
	v_fma_f32 v43, -v48, v39, v35
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v36, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_div_scale_f32 v38, null, v0, v0, v15
	v_fma_f32 v35, -v48, v39, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v36, v42
	v_fma_f32 v43, -v37, v33, v41
	v_div_scale_f32 v36, s4, v14, v0, v14
	v_rcp_f32_e32 v44, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v33, v43, v34
	v_div_fmas_f32 v35, v35, v50, v39
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v0, v0, v16
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v35, v0, v12
	v_fma_f32 v35, -v37, v33, v41
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v40, v39, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_fmac_f32_e32 v37, v46, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v43, v42, v33
	v_div_scale_f32 v46, null, v0, v0, v3
	v_fma_f32 v35, -v38, v40, v35
	v_div_fixup_f32 v14, v36, v0, v14
	v_fmac_f32_e32 v42, v39, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v46
	v_fma_f32 v49, -v41, v47, 1.0
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	v_fma_f32 v33, -v43, v42, v33
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v16, v33, v0, v16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_mul_f32_e32 v51, v48, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v40, v42, 1.0
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fma_f32 v36, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	v_dual_mul_f32 v38, v49, v47 :: v_dual_fmac_f32 v51, v36, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v41, v38, v49
	v_fma_f32 v34, -v34, v51, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v41, v38, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v36, v39
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_div_fixup_f32 v3, v33, v0, v3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v34, v36, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v43, v47, v42
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fma_f32 v38, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v51, v45
	v_div_fmas_f32 v33, v33, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	scratch_load_b32 v48, off, off offset:112 ; 4-byte Folded Reload
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v41, v52
	v_div_fixup_f32 v6, v35, v0, v6
	scratch_load_b32 v35, off, off offset:108 ; 4-byte Folded Reload
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fixup_f32 v7, v34, v0, v7
	scratch_load_b32 v34, off, off offset:1316 ; 4-byte Folded Reload
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v5, v33, v0, v5
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s2, v64
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v17, s0
	v_cndmask_b32_e64 v17, 0, v18, s0
	v_cndmask_b32_e64 v18, 0, v19, s0
	v_cndmask_b32_e64 v19, 0, v20, s0
	v_cndmask_b32_e64 v20, 0, v21, s0
	v_cndmask_b32_e64 v21, 0, v22, s0
	v_cndmask_b32_e64 v22, 0, v23, s0
	v_cndmask_b32_e64 v23, 0, v24, s0
	v_cndmask_b32_e64 v24, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v32, v68, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 844 63                        ; attention.py:844:63
	s_waitcnt vmcnt(2)
	v_cmp_gt_i32_e64 s3, s2, v48
	s_waitcnt vmcnt(1)
	v_cmp_gt_i32_e64 s4, s2, v35
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v35, v32, v35, 2
	.loc	1 844 63                        ; attention.py:844:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s1, s2, v34
	v_or_b32_e32 v57, 14, v34
	v_or_b32_e32 v56, 16, v34
	v_or_b32_e32 v54, 18, v34
	v_or_b32_e32 v53, 20, v34
	v_or_b32_e32 v50, 22, v34
	v_or_b32_e32 v47, 24, v34
	v_or_b32_e32 v46, 26, v34
	v_or_b32_e32 v44, 28, v34
	v_or_b32_e32 v42, 30, v34
	v_or_b32_e32 v40, 32, v34
	v_or_b32_e32 v45, 34, v34
	v_or_b32_e32 v43, 36, v34
	v_or_b32_e32 v41, 38, v34
	v_or_b32_e32 v39, 40, v34
	v_or_b32_e32 v38, 42, v34
	v_or_b32_e32 v37, 44, v34
	v_or_b32_e32 v36, 46, v34
	v_or_b32_e32 v60, 48, v34
	v_or_b32_e32 v59, 50, v34
	v_or_b32_e32 v58, 52, v34
	v_or_b32_e32 v55, 54, v34
	v_or_b32_e32 v52, 56, v34
	v_or_b32_e32 v51, 58, v34
	v_or_b32_e32 v49, 60, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v34, 2
	v_add_lshl_u32 v34, v32, v48, 2
	scratch_load_b32 v48, off, off offset:1312 ; 4-byte Folded Reload
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s31, s1
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s2, v57
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s31, s3
	s_and_b32 s3, s31, s5
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s31, s4
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v8, v33, s[40:43], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_add_lshl_u32 v8, v32, v64, 2
	s_clause 0x1
	buffer_store_b32 v17, v34, s[40:43], 0 offen
	buffer_store_b32 v18, v35, s[40:43], 0 offen
	v_add_lshl_u32 v17, v32, v63, 2
	v_add_lshl_u32 v18, v32, v62, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s6
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v61, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s7
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s2, v56
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s8
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v19, v8, s[40:43], 0 offen
	buffer_store_b32 v20, v17, s[40:43], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_add_lshl_u32 v8, v32, v57, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s11, s2, v54
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v32, v56, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s9
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s2, v53
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v21, v18, s[40:43], 0 offen
	buffer_store_b32 v22, v33, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v54, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s10
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v53, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s11
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s2, v50
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s12
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s14, s2, v47
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v23, v8, s[40:43], 0 offen
	buffer_store_b32 v24, v17, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v50, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s2, v46
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v32, v47, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s13
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s2, v44
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v25, v18, s[40:43], 0 offen
	buffer_store_b32 v26, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v46, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s14
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v44, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s15
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s2, v42
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s16
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s18, s2, v40
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[40:43], 0 offen
	buffer_store_b32 v28, v17, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v42, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s2, v45
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v32, v40, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s17
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s2, v43
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v29, v18, s[40:43], 0 offen
	buffer_store_b32 v30, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v45, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s18
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v43, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s19
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s2, v41
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s20
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s2, v39
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[40:43], 0 offen
	buffer_store_b32 v9, v17, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v41, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s2, v38
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v32, v39, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s21
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s2, v37
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[40:43], 0 offen
	buffer_store_b32 v11, v19, s[40:43], 0 offen
	v_add_lshl_u32 v10, v32, v38, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s22
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v32, v37, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s23
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s2, v36
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s24
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s2, v60
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[40:43], 0 offen
	buffer_store_b32 v13, v9, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v36, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s2, v59
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v32, v60, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s25
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s28, s2, v58
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[40:43], 0 offen
	buffer_store_b32 v15, v11, s[40:43], 0 offen
	v_add_lshl_u32 v10, v32, v59, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s26
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v32, v58, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s27
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s2, v55
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s28
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s2, v52
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v16, v8, s[40:43], 0 offen
	buffer_store_b32 v1, v9, s[40:43], 0 offen
	v_add_lshl_u32 v1, v32, v55, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s2, v51
	v_cmp_gt_i32_e32 vcc_lo, s2, v49
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[40:43], 0 offen
	buffer_store_b32 v3, v11, s[40:43], 0 offen
	v_add_lshl_u32 v2, v32, v52, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s29
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v3, v32, v51, 2
	v_add_lshl_u32 v8, v32, v49, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s31, s30
	s_and_b32 s0, s31, s0
	s_and_b32 vcc_lo, s31, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s1, s2, v48
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v32, v48, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s31, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[40:43], 0 offen
	buffer_store_b32 v5, v2, s[40:43], 0 offen
	buffer_store_b32 v6, v3, s[40:43], 0 offen
	buffer_store_b32 v7, v8, s[40:43], 0 offen
	buffer_store_b32 v0, v9, s[40:43], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp742:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1344
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1344
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 45480
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1344
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
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
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
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
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
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
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
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
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
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
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
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1344
    .sgpr_count:     107
    .sgpr_spill_count: 73
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 335
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
