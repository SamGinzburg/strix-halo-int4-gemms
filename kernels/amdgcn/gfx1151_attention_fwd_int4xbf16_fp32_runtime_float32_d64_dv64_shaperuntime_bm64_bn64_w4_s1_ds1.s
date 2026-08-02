	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[36:39], s[0:1], 0x80
	s_load_b128 s[20:23], s[0:1], 0x4c
	s_load_b32 s17, s[0:1], 0x60
                                        ; implicit-def: $vgpr253 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	s_load_b64 s[28:29], s[0:1], 0x0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, 4, v3
	v_or_b32_e32 v5, 8, v3
	v_or_b32_e32 v6, 12, v3
	v_or_b32_e32 v7, 16, v3
	v_or_b32_e32 v8, 20, v3
	v_or_b32_e32 v9, 24, v3
	v_or_b32_e32 v10, 28, v3
	v_or_b32_e32 v11, 32, v3
	v_or_b32_e32 v12, 36, v3
	v_or_b32_e32 v13, 40, v3
	v_or_b32_e32 v14, 44, v3
	v_or_b32_e32 v15, 48, v3
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	v_or_b32_e32 v16, 52, v3
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v253, s5, 0
	s_cselect_b32 s18, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s20
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s26, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, 56, v3
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v2, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 60, v3
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v3, off offset:196
	scratch_store_b32 off, v4, off offset:200
	scratch_store_b32 off, v5, off offset:204
	scratch_store_b32 off, v6, off offset:208
	scratch_store_b32 off, v7, off offset:212
	scratch_store_b32 off, v8, off offset:216
	scratch_store_b32 off, v9, off offset:220
	scratch_store_b32 off, v10, off offset:224
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[19:20], null, s17, v3, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s26, v3
	v_or_b32_e32 v3, s26, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s26, v5
	v_or_b32_e32 v5, s26, v6
	v_or_b32_e32 v6, s26, v7
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s26, v8
	v_or_b32_e32 v8, s26, v9
	v_or_b32_e32 v9, s26, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[23:24], null, s17, 12, v[19:20]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s19, s3, s22
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[29:30], null, s17, 36, v[19:20]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s5
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v11, off offset:228
	scratch_store_b32 off, v12, off offset:232
	scratch_store_b32 off, v13, off offset:236
	scratch_store_b32 off, v14, off offset:240
	scratch_store_b32 off, v15, off offset:244
	scratch_store_b32 off, v16, off offset:248
	scratch_store_b32 off, v17, off offset:252
	scratch_store_b32 off, v18, off offset:256
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s26, v11
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v21, s17, 2, v19
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[30:31], null, s17, 40, v[19:20]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s27, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s21
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[31:32], null, s17, 44, v[19:20]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[25:26], null, s17, 20, v[19:20]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[32:33], null, s17, 48, v[19:20]
	v_mad_u64_u32 v[26:27], null, s17, 24, v[19:20]
	v_mad_u64_u32 v[33:34], null, s17, 52, v[19:20]
	v_mad_u64_u32 v[27:28], null, s17, 28, v[19:20]
	v_mad_u64_u32 v[34:35], null, s17, 56, v[19:20]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	v_mov_b32_e32 v10, v19
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v22, s17, 3, v19
	v_lshl_add_u32 v24, s17, 4, v19
	v_lshl_add_u32 v28, s17, 5, v19
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[35:36], null, s17, 60, v[19:20]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[10:11], off offset:260
	scratch_store_b32 off, v21, off offset:268
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s26, v18
	v_writelane_b32 v253, s17, 1
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s33, s17, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s22, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s20, s21
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s24, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s26, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s22, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s22, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s25, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s19, s19, s26
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s19, s17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s22, v18
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v10, s2, v19
	v_add_nc_u32_e32 v19, s2, v21
	v_mov_b32_e32 v21, v23
	scratch_store_b32 off, v22, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v20, s2, v22
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x88, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s22, v5
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[21:22], off offset:276 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v21, s2, v23
	v_mov_b32_e32 v23, v25
	scratch_store_b32 off, v24, off offset:284 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v22, s2, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v18, 0, v18
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s22, v6
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[23:24], off offset:288 ; 8-byte Folded Spill
	v_dual_mov_b32 v24, v26 :: v_dual_add_nc_u32 v23, s2, v25
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v10, vcc_lo
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s22, v7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s26, v13
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[24:25], off offset:296 ; 8-byte Folded Spill
	v_dual_mov_b32 v25, v27 :: v_dual_add_nc_u32 v24, s2, v26
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s22, v11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s26, v15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s22, v12
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[25:26], off offset:304 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v25, s2, v27
	v_mov_b32_e32 v27, v29
	scratch_store_b32 off, v28, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v26, s2, v28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s26, v14
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[27:28], off offset:316 ; 8-byte Folded Spill
	v_dual_mov_b32 v28, v30 :: v_dual_add_nc_u32 v27, s2, v29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s22, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s26, v16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s22, v15
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[28:29], off offset:324 ; 8-byte Folded Spill
	v_dual_mov_b32 v29, v31 :: v_dual_add_nc_u32 v28, s2, v30
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s26, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s22, v14
	v_cmp_gt_i32_e64 s15, s22, v16
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[29:30], off offset:332 ; 8-byte Folded Spill
	v_dual_mov_b32 v30, v32 :: v_dual_add_nc_u32 v29, s2, v31
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s22, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 0x60, v0
	v_writelane_b32 v253, s33, 2
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[30:31], off offset:340 ; 8-byte Folded Spill
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v30, s2, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v65, 15, v0
	s_mov_b32 s103, 0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[31:32], off offset:348 ; 8-byte Folded Spill
	v_dual_mov_b32 v32, v34 :: v_dual_add_nc_u32 v31, s2, v33
	scratch_store_b64 off, v[32:33], off offset:356 ; 8-byte Folded Spill
	v_dual_mov_b32 v33, v35 :: v_dual_add_nc_u32 v32, s2, v34
	scratch_store_b64 off, v[33:34], off offset:364 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v33, s2, v35
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v3
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s33
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	s_xor_b32 s2, s25, s24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s33
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s4, s23, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 0x110, v0
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s33
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v22, 0, v0
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v7, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v8, v1, s[28:31], 0 offen
	buffer_load_u8 v2, v2, s[28:31], 0 offen
	buffer_load_u8 v3, v3, s[28:31], 0 offen
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v19, 0, v19
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v20, 0, v20
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v22, off offset:372
	scratch_store_b32 off, v19, off offset:380
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:376
	scratch_store_b32 off, v20, off offset:384
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s13, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s13
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v9, v9, s[28:31], 0 offen
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v10, v10, s[28:31], 0 offen
	buffer_load_u8 v14, v14, s[28:31], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v33, vcc_lo
	s_clause 0x5
	buffer_load_u8 v11, v11, s[28:31], 0 offen
	buffer_load_u8 v15, v15, s[28:31], 0 offen
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v17, v1, s[28:31], 0 offen
	buffer_load_u8 v13, v13, s[28:31], 0 offen
	buffer_load_u8 v16, v16, s[28:31], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s4, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v66
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 26
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v22, v8
	s_waitcnt vmcnt(12)
	ds_store_b8 v22, v5 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v22, v9 offset:1024
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s4, s2
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(8)
	ds_store_b8 v22, v12 offset:1536
	ds_store_b8 v18, v2
	ds_store_b8 v18, v6 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v18, v10 offset:1024
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s9, s2, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s36, 0x10008
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s2, v21
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(6)
	ds_store_b8 v18, v14 offset:1536
	ds_store_b8 v19, v3
	ds_store_b8 v19, v7 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v19, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v19, v15 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v20, v4
	s_waitcnt vmcnt(2)
	ds_store_b8 v20, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v20, v13 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v20, v16 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s26, s38
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s7, s26, s37
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s39
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s7, s7, s39
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s23, s4
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s7, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s103, s5, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s9, s9, s4
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s18
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v1, v65
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v2
	.loc	1 0 0                           ; attention.py:0
	v_writelane_b32 v253, s4, 3
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s4, s26, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 64
	s_min_i32 s4, s23, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 26
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s9, s9, s4
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_or_b32_e32 v2, s26, v1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v3, v0, 4, 1
	v_lshlrev_b32_e32 v67, 6, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s103, s9
	scratch_store_b32 off, v3, off offset:172 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v72, 64, v67
	s_mov_b32 s4, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr72
.LBB0_7:                                ; %Flow336
	v_bfe_u32 v68, v0, 4, 1
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v69, s19, v1
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s101, s[0:1], 0x64
	v_lshlrev_b32_e32 v70, 1, v0
	v_or_b32_e32 v1, 2, v68
	v_cmp_gt_i32_e64 s33, s22, v2
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v71, 64, v0
	v_mov_b32_e32 v7, v8
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 4, v68
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 6, v68
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 8, v68
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 10, v68
	v_or_b32_e32 v68, 62, v68
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:176
	scratch_store_b32 off, v68, off offset:1404
	v_mov_b32_e32 v1, v8
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
	v_dual_mov_b32 v33, v8 :: v_dual_lshlrev_b32 v68, 2, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[52:59], s[0:1], 0x8
	v_dual_mov_b32 v16, 0x5410 :: v_dual_lshlrev_b32 v3, 1, v69
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v253, s40, 4
	v_dual_mov_b32 v13, 0x7632 :: v_dual_and_b32 v6, 24, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s33
	v_and_b32_e32 v4, 16, v0
	v_writelane_b32 v253, s41, 5
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	s_xor_b32 s5, s3, s20
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 6, v71
	v_mov_b16_e32 v1.l, 0
	v_writelane_b32 v253, s42, 6
	v_cndmask_b32_e64 v18, 0x404, 0, vcc_lo
	v_cndmask_b32_e64 v23, 0x108, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_lshlrev_b32_e32 v5, 5, v65
	v_writelane_b32 v253, s43, 7
	s_mov_b32 s40, 0
	s_and_b32 s29, s57, 0xffff
	s_mov_b32 s28, s56
	s_mov_b32 s41, s40
	buffer_load_u16 v3, v3, s[28:31], 0 offen
	v_writelane_b32 v253, s33, 8
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_writelane_b32 v253, s40, 9
	s_mul_f32 s4, s2, 0x4f7ffffe
	s_clause 0x2
	s_load_b32 s10, s[0:1], 0x7c
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x6c
	s_ashr_i32 s1, s5, 31
	v_and_b32_e32 v184, 63, v0
	v_writelane_b32 v253, s41, 10
	s_xor_b32 s5, s27, s1
	v_and_b32_e32 v9, 60, v70
	v_lshlrev_b32_e32 v11, 4, v0
	v_lshl_or_b32 v33, v65, 10, v68
	v_writelane_b32 v253, s42, 11
	v_lshlrev_b32_e32 v14, 1, v66
	v_and_b32_e32 v17, 7, v0
	v_bfe_i32 v0, v0, 3, 1
	s_cvt_u32_f32 s4, s4
	v_writelane_b32 v253, s43, 12
	v_or_b32_e32 v19, s26, v2
	v_cndmask_b32_e32 v13, 0x3276, v13, vcc_lo
	v_lshrrev_b32_e32 v24, 2, v4
	v_cndmask_b32_e32 v4, 0x1054, v16, vcc_lo
	v_writelane_b32 v253, s44, 13
	s_sub_i32 s5, s5, s1
	s_sub_i32 s2, 0, s13
	s_ashr_i32 s0, s6, 31
	s_mul_i32 s6, s5, s20
	v_writelane_b32 v253, s45, 14
	s_mul_i32 s2, s2, s4
	v_or_b32_e32 v63, v5, v6
	v_xor_b32_e32 v20, 12, v33
	v_xor_b32_e32 v21, 16, v33
	v_writelane_b32 v253, s46, 15
	v_and_b32_e32 v28, 0x410, v0
	v_add_nc_u32_e32 v198, 0, v14
	v_xor_b32_e32 v9, v18, v9
	v_xor_b32_e32 v14, 20, v33
	v_writelane_b32 v253, s47, 16
	v_xor_b32_e32 v16, 24, v33
	v_xor_b32_e32 v18, 28, v33
	v_xor_b32_e32 v29, 32, v33
	v_xor_b32_e32 v30, 36, v33
	v_xor_b32_e32 v31, 40, v33
	v_xor_b32_e32 v32, 44, v33
	v_xor_b32_e32 v36, 48, v33
	v_xor_b32_e32 v37, 52, v33
	v_xor_b32_e32 v38, 56, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:388
	scratch_store_b32 off, v63, off offset:392
	v_xor_b32_e32 v39, 60, v33
	s_sub_i32 s3, s3, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s22, v19
	s_mul_hi_u32 s2, s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v40, 4, v19
	s_add_i32 s4, s4, s2
	s_ashr_i32 s2, s3, 31
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s6, 17
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s0, s2, s0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v41, 6, v19
	v_or_b32_e32 v42, 8, v19
	v_or_b32_e32 v43, 10, v19
	v_or_b32_e32 v44, 12, v19
	v_or_b32_e32 v45, 14, v19
	v_or_b32_e32 v46, 16, v19
	v_or_b32_e32 v47, 18, v19
	v_or_b32_e32 v48, 20, v19
	v_or_b32_e32 v49, 22, v19
	v_or_b32_e32 v50, 24, v19
	v_or_b32_e32 v51, 26, v19
	v_or_b32_e32 v52, 28, v19
	v_or_b32_e32 v53, 30, v19
	v_or_b32_e32 v54, 32, v19
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	v_or_b32_e32 v55, 34, v19
	v_and_b32_e32 v15, 0x70, v70
	v_lshlrev_b32_e32 v27, 4, v17
	v_or_b32_e32 v56, 36, v19
	v_lshlrev_b32_e32 v10, 1, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v70, off offset:1412
	scratch_store_b32 off, v71, off offset:1416
	v_xor_b32_e32 v15, v27, v15
	v_or_b32_e32 v27, 38, v19
	v_lshrrev_b32_e32 v12, 3, v71
	v_or_b32_e32 v57, 40, v19
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_lshrrev_b32_e32 v152, 4, v71
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v58, 42, v19
	v_or_b32_e32 v59, 44, v19
	v_or_b32_e32 v60, 46, v19
	v_lshlrev_b32_e32 v22, 2, v184
	v_or_b32_e32 v61, 48, v19
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s19, v2
	v_and_b32_e32 v62, 64, v67
	v_mul_u32_u24_e32 v17, 0x90, v17
	v_xor_b32_e32 v64, v23, v22
	v_or_b32_e32 v22, 50, v19
	v_lshl_or_b32 v23, v65, 8, v24
	v_or_b32_e32 v24, 52, v19
	v_add_nc_u32_e32 v25, 0, v62
	v_xor_b32_e32 v28, v17, v28
	v_or_b32_e32 v17, 54, v19
	s_abs_i32 s6, s3
	v_lshlrev_b32_e32 v26, 7, v184
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_add_nc_u32 v201, v25, v10
	v_or_b32_e32 v10, 56, v19
	v_or_b32_e32 v25, 62, v19
	s_mul_hi_u32 s4, s6, s4
	v_lshlrev_b32_e32 v8, 3, v65
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v65, s39, v19
	v_lshl_or_b32 v4, v4, 8, v4
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s5, s21
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s8, s19, s26
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s5, s5, s17
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s18
	v_and_b32_e32 v4, 0x540054, v4
	v_mov_b32_e32 v156, 0xff800000
	v_mov_b32_e32 v154, 0xff800000
	v_mov_b32_e32 v162, 0xff800000
	v_mov_b32_e32 v120, 0xff800000
	v_lshl_or_b32 v4, v4, 4, v4
	v_mov_b32_e32 v118, 0xff800000
	v_mov_b32_e32 v108, 0xff800000
	v_mov_b32_e32 v106, 0xff800000
	v_mov_b32_e32 v104, 0xff800000
	v_and_b32_e32 v239, 0x5040504, v4
	v_xor_b32_e32 v4, 64, v28
	v_mov_b32_e32 v102, 0xff800000
	v_mov_b32_e32 v250, 0xff800000
	v_mov_b32_e32 v248, 0xff800000
	v_mov_b32_e32 v246, 0xff800000
	v_mov_b32_e32 v244, 0xff800000
	v_mov_b32_e32 v242, 0xff800000
	v_mov_b16_e64 v219.l, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s58
	s_mov_b32 s28, s54
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v247, 0xff800000
	v_mov_b32_e32 v165, 0xff800000
	v_mov_b32_e32 v155, 0xff800000
	v_mov_b32_e32 v83, 0xff800000
	v_mov_b32_e32 v169, 0xff800000
	v_mov_b32_e32 v195, 0xff800000
	v_mov_b32_e32 v173, 0xff800000
	v_mov_b32_e32 v157, 0xff800000
	v_mov_b32_e32 v171, 0xff800000
	v_mov_b32_e32 v235, 0xff800000
	v_mov_b32_e32 v189, 0xff800000
	v_dual_mov_b32 v233, 0xff800000 :: v_dual_mov_b32 v166, 0xff800000
	v_mov_b32_e32 v110, 0xff800000
	v_mov_b32_e32 v114, 0xff800000
	v_mov_b32_e32 v116, 0xff800000
	v_mov_b32_e32 v82, 0xff800000
	v_mov_b32_e32 v84, 0xff800000
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_mov_b32 v199, 0xff800000
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_mov_b32 v119, 0xff800000
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_mov_b32 v117, 0xff800000
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_mov_b32 v115, 0xff800000
	v_mov_b32_e32 v113, 0xff800000
	v_mov_b32_e32 v111, 0xff800000
	v_mov_b32_e32 v109, 0xff800000
	v_mov_b32_e32 v107, 0xff800000
	v_mov_b32_e32 v105, 0xff800000
	v_mov_b32_e32 v103, 0xff800000
	v_mov_b32_e32 v251, 0xff800000
	v_mov_b32_e32 v153, 0xff800000
	v_mov_b32_e32 v249, 0xff800000
	v_mov_b32_e32 v197, 0xff800000
	v_mov_b32_e32 v151, 0xff800000
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_mov_b32 v112, 0xff800000
	v_mov_b32_e32 v237, 0xff800000
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v1.h, v3.l
	v_lshlrev_b32_e32 v7, 4, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[72:73], null, s10, v184, v[2:3]
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v66, s39, v10
	v_xor_b32_e32 v2, 32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v7, v5, v7, v6
	v_and_b32_e32 v5, 0x200, v11
	v_xor_b32_e32 v6, 4, v33
	v_xor_b32_e32 v11, 8, v33
	v_xor_b32_e32 v3, 48, v28
	v_add_nc_u32_e32 v0, 0, v7
	v_xad_u32 v33, v7, 8, 0
	v_xad_u32 v34, v7, 16, 0
	v_xad_u32 v35, v7, 24, 0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, 2, v19
	ds_load_b64 v[70:71], v0
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v0, s19, 5, v72
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:408
	scratch_store_b32 off, v69, off offset:1408
	v_add_nc_u32_e32 v6, 0, v11
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 18
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v40
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 4, v72
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v69, s39, v25
	v_xor_b32_e32 v11, 16, v63
	v_writelane_b32 v253, s2, 19
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v41
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 3, v72
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[70:71], off offset:752 ; 8-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 20
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v42
	ds_load_b64 v[70:71], v33
	ds_load_b64 v[33:34], v34
	scratch_store_b32 off, v6, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v20
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v43
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 2, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:416
	scratch_store_b32 off, v68, off offset:1420
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 22
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v44
	v_add_nc_u32_e32 v6, 0, v21
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s19, 1, v72
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 23
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v45
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s38, v69
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:768 ; 8-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 24
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v46
	ds_load_b64 v[33:34], v35
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:420
	scratch_store_b32 off, v0, off offset:1148
	v_add_nc_u32_e32 v6, 0, v14
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v47
	v_xor_b32_e32 v14, 24, v63
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:424
	scratch_store_b32 off, v62, off offset:1424
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 26
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v48
	v_or3_b32 v62, v5, v9, v62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 58, v19
	v_or_b32_e32 v9, 60, v19
	v_add_nc_u32_e32 v6, 0, v16
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 27
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v49
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v67, s39, v5
	v_add_nc_u32_e32 v68, s39, v9
	scratch_store_b32 off, v6, off offset:428 ; 4-byte Folded Spill
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:776 ; 8-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 28
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 26, v[72:73]
	v_add_nc_u32_e32 v0, s38, v68
	v_xor_b32_e32 v16, 0x1818, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v51
	v_xor_b32_e32 v19, 0x3030, v62
	v_xor_b32_e32 v20, 0x3838, v62
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:804 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 28, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s2, 31
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v53
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:812 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 30, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v54
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:820 ; 8-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v55
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 34, v[72:73]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v56
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:828 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 36, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v57
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:836 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 38, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v58
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:844 ; 8-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v59
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 40, v[72:73]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v60
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:852 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 42, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v22
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:860 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 62, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v24
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:868 ; 8-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v17
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 60, v[72:73]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 12
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v10
	v_xor_b32_e32 v10, 0xa50, v64
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:876 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 58, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v5
	v_lshl_or_b32 v5, v13, 8, v13
	v_xor_b32_e32 v13, 16, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v9
	v_xor_b32_e32 v9, 0x840, v64
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:884 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s19, 56, v[72:73]
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s2, 16
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s2, s4, s13
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[33:34], off offset:892 ; 8-byte Folded Spill
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s2, s6, s2
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s2, s13
	s_cmp_ge_u32 s2, s13
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 54, v[72:73]
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s4, s6, s4
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s6, s16, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s2, s7, s2
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s2, s13
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v160, s6, v1
	v_add_nc_u32_e32 v6, 0, v18
	v_add_nc_u32_e32 v1, 0, v2
	v_xor_b32_e32 v18, 0x2828, v62
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s2, s7, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v241, v160
	scratch_store_b32 off, v6, off offset:432 ; 4-byte Folded Spill
	v_dual_mov_b32 v159, v160 :: v_dual_add_nc_u32 v6, 0, v29
	v_or3_b32 v29, v26, v12, v15
	scratch_load_b32 v12, off, off offset:196 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:644
	scratch_store_b32 off, v6, off offset:436
	v_add_nc_u32_e32 v6, 0, v30
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v15, 0x1010, v62
	v_xor_b32_e32 v25, 0x50, v29
	v_xor_b32_e32 v26, 0x60, v29
	scratch_store_b32 off, v6, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v31
	scratch_store_b32 off, v1, off offset:648 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	v_writelane_b32 v254, s10, 17
	s_add_i32 s4, s5, s8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:444
	scratch_store_b32 off, v0, off offset:1152
	v_add_nc_u32_e32 v6, 0, v32
	v_add_nc_u32_e32 v0, s38, v67
	scratch_store_b32 off, v1, off offset:652 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v28
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s2, s2, s0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:448
	scratch_store_b32 off, v0, off offset:1156
	v_add_nc_u32_e32 v6, 0, v36
	v_add_nc_u32_e32 v0, s38, v66
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v36, s39, v7
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v7, 0x420, v64
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:452
	scratch_store_b32 off, v0, off offset:1160
	v_add_nc_u32_e32 v6, 0, v37
	v_add_nc_u32_e32 v37, s39, v40
	v_add_nc_u32_e32 v40, s39, v43
	v_add_nc_u32_e32 v43, s39, v46
	v_add_nc_u32_e32 v46, s39, v49
	scratch_store_b32 off, v6, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v38
	v_add_nc_u32_e32 v49, s39, v52
	v_add_nc_u32_e32 v52, s39, v55
	v_add_nc_u32_e32 v55, s39, v57
	v_add_nc_u32_e32 v57, s39, v59
	scratch_store_b32 off, v6, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v39
	v_add_nc_u32_e32 v59, s39, v61
	v_add_nc_u32_e32 v61, s39, v24
	v_add_nc_u32_e32 v38, s39, v41
	v_add_nc_u32_e32 v41, s39, v44
	scratch_store_b32 off, v6, off offset:464 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 8, v63
	v_add_nc_u32_e32 v63, s39, v17
	v_add_nc_u32_e32 v44, s39, v47
	v_add_nc_u32_e32 v47, s39, v50
	v_add_nc_u32_e32 v50, s39, v53
	v_add_nc_u32_e32 v53, s39, v56
	v_add_nc_u32_e32 v0, s38, v63
	v_add_nc_u32_e32 v56, s39, v58
	v_add_nc_u32_e32 v58, s39, v60
	v_add_nc_u32_e32 v60, s39, v22
	v_add_nc_u32_e32 v39, s39, v42
	scratch_store_b32 off, v0, off offset:1164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s38, v61
	v_add_nc_u32_e32 v42, s39, v45
	v_add_nc_u32_e32 v45, s39, v48
	v_add_nc_u32_e32 v48, s39, v51
	v_add_nc_u32_e32 v51, s39, v54
	scratch_store_b32 off, v0, off offset:1168 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s38, v60
	v_add_nc_u32_e32 v54, s39, v27
	scratch_store_b32 off, v1, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v28
	v_add_nc_u32_e32 v6, 0, v6
	scratch_store_b32 off, v0, off offset:1172 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v65
	v_xor_b32_e32 v17, 0x2020, v62
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v22, 32, v29
	v_xor_b32_e32 v24, 64, v29
	scratch_store_b32 off, v0, off offset:1176 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v36
	scratch_store_b32 off, v1, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v28
	v_xor_b32_e32 v27, 0x70, v29
	s_add_i32 s3, s4, s3
	scratch_store_b32 off, v0, off offset:1180 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v37
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s2, s0
	v_writelane_b32 v254, s3, 18
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s0, s0, s1
	scratch_store_b32 off, v0, off offset:1184 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v38
	scratch_store_b32 off, v1, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x820, v28
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s0, s0, s23
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mov_b32_e32 v158, v160
	scratch_store_b32 off, v0, off offset:1188 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v39
	v_add_nc_u32_e32 v1, 0, v1
	v_writelane_b32 v254, s0, 19
	s_lshl_b32 s0, s101, 1
	s_and_b32 s53, s53, 0xffff
	scratch_store_b32 off, v0, off offset:1192 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v40
	scratch_store_b32 off, v1, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x830, v28
	v_writelane_b32 v254, s0, 20
	s_lshl_b32 s0, s101, 3
	scratch_store_b32 off, v0, off offset:1196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v41
	v_add_nc_u32_e32 v1, 0, v1
	v_writelane_b32 v254, s0, 21
	s_lshl_b32 s0, s101, 4
	s_and_b32 s13, s59, 0xffff
	scratch_store_b32 off, v0, off offset:1200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v42
	scratch_store_b32 off, v1, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x810, v28
	v_writelane_b32 v254, s0, 22
	s_lshl_b32 s0, s101, 5
	scratch_store_b32 off, v0, off offset:1204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v43
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_writelane_b32 v254, s0, 23
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s55, 0xffff
	scratch_store_b32 off, v0, off offset:1208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v44
	scratch_store_b32 off, v1, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x860, v28
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v254, s9, 24
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:900
	scratch_store_b32 off, v0, off offset:1212
	v_subrev_nc_u32_e32 v0, s37, v45
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 52, v[72:73]
	scratch_store_b32 off, v0, off offset:1216 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v46
	scratch_store_b32 off, v1, off offset:680 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x870, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:908
	scratch_store_b32 off, v0, off offset:1220
	v_subrev_nc_u32_e32 v0, s37, v47
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 50, v[72:73]
	scratch_store_b32 off, v0, off offset:1224 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v48
	scratch_store_b32 off, v1, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x840, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:916
	scratch_store_b32 off, v0, off offset:1228
	v_subrev_nc_u32_e32 v0, s37, v49
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 48, v[72:73]
	scratch_store_b32 off, v0, off offset:1232 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v50
	scratch_store_b32 off, v1, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x850, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:924
	scratch_store_b32 off, v0, off offset:1236
	v_subrev_nc_u32_e32 v0, s37, v51
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 46, v[72:73]
	scratch_store_b32 off, v0, off offset:1240 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v52
	scratch_store_b32 off, v1, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1040, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:932
	scratch_store_b32 off, v0, off offset:1244
	v_subrev_nc_u32_e32 v0, s37, v53
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 44, v[72:73]
	scratch_store_b32 off, v0, off offset:1248 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v54
	scratch_store_b32 off, v1, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1050, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:940
	scratch_store_b32 off, v0, off offset:1252
	v_subrev_nc_u32_e32 v0, s37, v55
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 24, v[72:73]
	scratch_store_b32 off, v0, off offset:1256 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v56
	scratch_store_b32 off, v1, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1060, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:948
	scratch_store_b32 off, v0, off offset:1260
	v_subrev_nc_u32_e32 v0, s37, v57
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 22, v[72:73]
	scratch_store_b32 off, v0, off offset:1264 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s37, v58
	scratch_store_b32 off, v1, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1070, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:956
	scratch_store_b32 off, v0, off offset:1268
	v_add_nc_u32_e32 v0, s38, v59
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1272
	scratch_store_b32 off, v58, off offset:1112
	v_add_nc_u32_e32 v0, s38, v58
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1276
	scratch_store_b32 off, v57, off offset:1108
	v_add_nc_u32_e32 v0, s38, v57
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1280
	scratch_store_b32 off, v56, off offset:1104
	v_add_nc_u32_e32 v0, s38, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1284
	scratch_store_b32 off, v55, off offset:1100
	v_add_nc_u32_e32 v0, s38, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1288
	scratch_store_b32 off, v54, off offset:1096
	v_add_nc_u32_e32 v0, s38, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1292
	scratch_store_b32 off, v53, off offset:1092
	v_add_nc_u32_e32 v0, s38, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1296
	scratch_store_b32 off, v52, off offset:1088
	v_add_nc_u32_e32 v0, s38, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1300
	scratch_store_b32 off, v51, off offset:1084
	v_add_nc_u32_e32 v0, s38, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1304
	scratch_store_b32 off, v50, off offset:1080
	v_add_nc_u32_e32 v0, s38, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1308
	scratch_store_b32 off, v49, off offset:1076
	v_add_nc_u32_e32 v0, s38, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1312
	scratch_store_b32 off, v48, off offset:1072
	v_add_nc_u32_e32 v0, s38, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1316
	scratch_store_b32 off, v47, off offset:1068
	v_add_nc_u32_e32 v0, s38, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1320
	scratch_store_b32 off, v46, off offset:1064
	v_add_nc_u32_e32 v0, s38, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1324
	scratch_store_b32 off, v45, off offset:1060
	v_add_nc_u32_e32 v0, s38, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1328
	scratch_store_b32 off, v44, off offset:1056
	v_add_nc_u32_e32 v0, s38, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1332
	scratch_store_b32 off, v43, off offset:1052
	v_add_nc_u32_e32 v0, s38, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1336
	scratch_store_b32 off, v42, off offset:1048
	v_add_nc_u32_e32 v0, s38, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1340
	scratch_store_b32 off, v41, off offset:1044
	v_add_nc_u32_e32 v0, s38, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1344
	scratch_store_b32 off, v40, off offset:1040
	v_add_nc_u32_e32 v0, s38, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1348
	scratch_store_b32 off, v39, off offset:1036
	v_add_nc_u32_e32 v0, s38, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1352
	scratch_store_b32 off, v38, off offset:1032
	v_add_nc_u32_e32 v0, s38, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1356
	scratch_store_b32 off, v37, off offset:1028
	v_add_nc_u32_e32 v0, s38, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1360
	scratch_store_b32 off, v36, off offset:1024
	v_add_nc_u32_e32 v0, s38, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1364
	scratch_store_b32 off, v65, off offset:1020
	v_add_nc_u32_e32 v0, s38, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1368
	scratch_store_b32 off, v69, off offset:1144
	v_subrev_nc_u32_e32 v0, s37, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1372
	scratch_store_b32 off, v68, off offset:1140
	v_subrev_nc_u32_e32 v0, s37, v68
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1376
	scratch_store_b32 off, v67, off offset:1136
	v_subrev_nc_u32_e32 v0, s37, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1380
	scratch_store_b32 off, v66, off offset:1132
	v_subrev_nc_u32_e32 v0, s37, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1384
	scratch_store_b32 off, v63, off offset:1128
	v_subrev_nc_u32_e32 v0, s37, v63
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1388
	scratch_store_b32 off, v61, off offset:1124
	v_subrev_nc_u32_e32 v0, s37, v61
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1392
	scratch_store_b32 off, v60, off offset:1120
	v_subrev_nc_u32_e32 v0, s37, v60
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1396
	scratch_store_b32 off, v59, off offset:1116
	v_subrev_nc_u32_e32 v0, s37, v59
	s_waitcnt vmcnt(0)
	v_or3_b32 v21, v23, v8, v12
	v_xor_b32_e32 v8, 0x630, v64
	v_xor_b32_e32 v12, 0xe70, v64
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 847 25                        ; attention.py:847:25
	scratch_store_b32 off, v0, off offset:1400 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v64, off offset:396 ; 4-byte Folded Spill
	v_xor_b32_e32 v23, 48, v29
	scratch_store_b32 off, v1, off offset:708 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1010, v28
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v62, off offset:404 ; 4-byte Folded Spill
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 20, v[72:73]
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v29, off offset:468
	scratch_store_b32 off, v1, off offset:712
	v_xor_b32_e32 v1, 0x1020, v28
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v21, off offset:472
	scratch_store_b64 off, v[33:34], off offset:964
	v_add_nc_u32_e32 v1, 0, v1
	v_mad_u64_u32 v[33:34], null, s19, 18, v[72:73]
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v6, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v11
	v_xor_b32_e32 v11, 0xc60, v64
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:716
	scratch_store_b32 off, v0, off offset:16
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v6, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v14
	v_xor_b32_e32 v14, 0x808, v62
	v_xor_b32_e32 v1, 0x1030, v28
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v6, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 0x210, v64
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:972
	scratch_store_b32 off, v0, off offset:24
	v_mov_b32_e32 v0, 0xff800000
	v_add_nc_u32_e32 v6, 0, v6
	scratch_store_b32 off, v1, off offset:720 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1860, v28
	v_mad_u64_u32 v[33:34], null, s19, 14, v[72:73]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:488
	scratch_store_b32 off, v0, off offset:28
	v_add_nc_u32_e32 v6, 0, v7
	v_dual_mov_b32 v0, 0xff800000 :: v_dual_add_nc_u32 v1, 0, v1
	v_xor_b32_e32 v7, 16, v21
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:980
	scratch_store_b32 off, v6, off offset:492
	scratch_store_b32 off, v0, off offset:32
	v_add_nc_u32_e32 v6, 0, v8
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v1, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1870, v28
	v_xor_b32_e32 v8, 24, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:496
	scratch_store_b32 off, v0, off offset:36
	v_add_nc_u32_e32 v6, 0, v9
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v9, 32, v21
	v_mov_b32_e32 v0, v72
	v_mad_u64_u32 v[33:34], null, s19, 12, v[72:73]
	scratch_store_b32 off, v6, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v10
	scratch_store_b32 off, v1, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1840, v28
	v_xor_b32_e32 v10, 40, v21
	scratch_store_b32 off, v6, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v11
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v11, 48, v21
	scratch_store_b32 off, v6, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v12
	scratch_store_b32 off, v1, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1850, v28
	v_xor_b32_e32 v12, 56, v21
	scratch_store_b32 off, v6, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v13
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v13, 64, v21
	scratch_store_b32 off, v6, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v14
	scratch_store_b32 off, v1, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1820, v28
	v_xor_b32_e32 v14, 0x48, v21
	scratch_store_b32 off, v6, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v15
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v15, 0x50, v21
	scratch_store_b32 off, v6, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v16
	scratch_store_b32 off, v1, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1830, v28
	v_xor_b32_e32 v16, 0x58, v21
	scratch_store_b32 off, v6, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v17
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:744
	scratch_store_b32 off, v28, off offset:400
	scratch_store_b32 off, v6, off offset:532
	v_add_nc_u32_e32 v6, 0, v18
	v_xor_b32_e32 v1, 0x1810, v28
	v_xor_b32_e32 v17, 0x60, v21
	v_xor_b32_e32 v18, 0x68, v21
	scratch_store_b32 off, v6, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v19
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v19, 0x70, v21
	scratch_store_b32 off, v6, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v20
	v_xor_b32_e32 v20, 0x78, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:748
	scratch_store_b32 off, v6, off offset:544
	v_xor_b32_e32 v6, 8, v21
	v_xor_b32_e32 v21, 16, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v6, 0, v6
	scratch_store_b32 off, v6, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v7
	scratch_store_b32 off, v6, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v8
	scratch_store_b32 off, v6, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v9
	scratch_store_b32 off, v6, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v10
	scratch_store_b32 off, v6, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v11
	scratch_store_b32 off, v6, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v12
	scratch_store_b32 off, v6, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v13
	scratch_store_b32 off, v6, off offset:576 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v14
	scratch_store_b32 off, v6, off offset:580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v15
	scratch_store_b32 off, v6, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v16
	scratch_store_b32 off, v6, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v17
	scratch_store_b32 off, v6, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v18
	scratch_store_b32 off, v6, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v19
	scratch_store_b32 off, v6, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v20
	scratch_store_b32 off, v6, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v21
	scratch_store_b32 off, v6, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v22
	scratch_store_b32 off, v6, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v23
	scratch_store_b32 off, v6, off offset:616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v24
	scratch_store_b32 off, v6, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v25
	v_mov_b32_e32 v25, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v100, v25 :: v_dual_and_b32 v5, 0x760076, v5
	v_mov_b32_e32 v1, v25
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v6, off offset:624
	scratch_store_b64 off, v[33:34], off offset:988
	v_add_nc_u32_e32 v6, 0, v26
	v_mad_u64_u32 v[33:34], null, s19, 10, v[72:73]
	scratch_store_b64 off, v[70:71], off offset:760 ; 8-byte Folded Spill
	v_lshl_or_b32 v5, v5, 4, v5
	scratch_store_b32 off, v6, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v27
	v_mov_b32_e32 v26, v25
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v240, 0x7060706, v5
	v_mov_b32_e32 v28, v25
	.loc	1 758 19                        ; attention.py:758:19
	scratch_store_b32 off, v6, off offset:632 ; 4-byte Folded Spill
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	scratch_store_b64 off, v[33:34], off offset:996 ; 8-byte Folded Spill
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s19, 6, v[72:73]
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	scratch_store_b64 off, v[33:34], off offset:1004 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s101, v152, v[184:185]
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v101, v25
	v_mov_b32_e32 v99, v25
	v_mov_b32_e32 v98, v25
	v_mov_b32_e32 v97, v25
	v_mov_b32_e32 v96, v25
	v_mov_b32_e32 v95, v25
	v_mov_b32_e32 v94, v25
	v_mov_b32_e32 v93, v25
	v_mov_b32_e32 v92, v25
	v_mov_b32_e32 v91, v25
	v_mov_b32_e32 v90, v25
	v_mov_b32_e32 v89, v25
	v_mov_b32_e32 v88, v25
	v_mov_b32_e32 v87, v25
	v_mov_b32_e32 v86, v25
	v_mov_b32_e32 v85, v25
	v_mov_b32_e32 v81, v25
	v_mov_b32_e32 v80, v25
	v_mov_b32_e32 v79, v25
	v_mov_b32_e32 v78, v25
	v_mov_b32_e32 v77, v25
	v_mov_b32_e32 v76, v25
	v_mov_b32_e32 v75, v25
	v_mov_b32_e32 v74, v25
	v_mov_b32_e32 v71, v25
	v_mov_b32_e32 v70, v25
	v_mov_b32_e32 v69, v25
	v_mov_b32_e32 v68, v25
	v_mov_b32_e32 v67, v25
	v_mov_b32_e32 v66, v25
	v_mov_b32_e32 v65, v25
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:636
	scratch_store_b64 off, v[33:34], off offset:1012
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v175, v57
	v_cvt_f32_i32_e32 v167, v58
	v_cvt_f32_i32_e32 v161, v59
	v_cvt_f32_i32_e32 v57, v60
	v_cvt_f32_i32_e32 v134, v62
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v60, v51
	v_cvt_f32_i32_e32 v59, v52
	v_cvt_f32_i32_e32 v58, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v174, v42
	v_cvt_f32_i32_e32 v64, v43
	v_cvt_f32_i32_e32 v56, v44
	v_cvt_f32_i32_e32 v55, v45
	v_cvt_f32_i32_e32 v54, v46
	v_cvt_f32_i32_e32 v46, v33
	v_cvt_f32_i32_e32 v45, v34
	v_cvt_f32_i32_e32 v44, v36
	v_cvt_f32_i32_e32 v43, v37
	v_cvt_f32_i32_e32 v42, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v37, v35
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b32 v33, off, off offset:784
	scratch_load_b64 v[34:35], off, off offset:924
	scratch_load_b64 v[74:75], off, off offset:828
	scratch_load_b64 v[39:40], off, off offset:636
	.loc	1 870 25                        ; attention.py:870:25
	v_readlane_b32 s3, v254, 17
	v_readlane_b32 s26, v254, 18
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b64 v[76:77], off, off offset:972 ; 8-byte Folded Reload
	s_mov_b32 s27, s15
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v168, v61
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s103, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v49
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s26, s3
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s26, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v47
	v_cvt_f32_i32_e32 v47, v48
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(33)
	v_mov_b16_e64 v219.h, v0.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v63, v63
	v_dual_mul_f32 v60, v160, v60 :: v_dual_mul_f32 v51, v241, v51
	v_dual_mul_f32 v58, v158, v58 :: v_dual_mul_f32 v43, v241, v43
	v_mul_f32_e32 v38, v159, v38
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v36, v159, v36
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x8                            ; 72-byte Folded Reload
	scratch_load_b64 v[77:78], off, off offset:836
	scratch_load_b64 v[80:81], off, off offset:964
	scratch_load_b64 v[96:97], off, off offset:956
	scratch_load_b64 v[94:95], off, off offset:844
	scratch_load_b64 v[135:136], off, off offset:988
	scratch_load_b64 v[97:98], off, off offset:852
	scratch_load_b64 v[98:99], off, off offset:892
	scratch_load_b64 v[99:100], off, off offset:948
	scratch_load_b64 v[100:101], off, off offset:996
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v175, v160, v175
	v_mul_f32_e32 v61, v159, v61
	v_mul_f32_e32 v47, v158, v47
	v_mul_f32_e32 v59, v241, v59
	v_mul_f32_e32 v53, v160, v53
	v_mul_f32_e32 v45, v159, v45
	v_mul_f32_e32 v37, v158, v37
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v33, s3, v33, 2
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v34, s3, v34, 2
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v35, s3, v39, 2
	scratch_load_b32 v39, off, off offset:788 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	s_clause 0x1
	buffer_load_b32 v33, v33, s[24:27], 0 offen
	buffer_load_b32 v34, v34, s[24:27], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s102
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v97, s3, v97, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v98, s3, v98, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v99, s3, v99, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v100, s3, v100, 2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s35
	v_cndmask_b32_e64 v98, 0x80000000, v98, s17
	v_cndmask_b32_e64 v99, 0x80000000, v99, s33
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v100, 0x80000000, v100, s9
	s_clause 0x1
	buffer_load_b32 v97, v97, s[24:27], 0 offen
	buffer_load_b32 v98, v98, s[24:27], 0 offen
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v39, s3, v39, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0x80000000, v39, s8
	s_clause 0x1
	buffer_load_b32 v40, v35, s[24:27], 0 offen
	buffer_load_b32 v39, v39, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v74, 2
	scratch_load_b64 v[74:75], off, off offset:916 ; 8-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v33, 0xff800000, v33, s4
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v34, 0xff800000, v34, s5
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s80, s5, vcc_lo
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s3, v74, 2
	scratch_load_b32 v74, off, off offset:800 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v48, 0x80000000, v48, s36
	s_clause 0x1
	buffer_load_b32 v75, v35, s[24:27], 0 offen
	buffer_load_b32 v48, v48, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v76, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v74, s3, v74, 2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s97
	s_clause 0x1
	buffer_load_b32 v74, v74, s[24:27], 0 offen
	buffer_load_b32 v76, v35, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v77, 2
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[77:78], off, off offset:908
	scratch_load_b32 v78, off, off offset:796
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v77, s3, v77, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v78, s3, v78, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v77, 0x80000000, v77, s100
	s_clause 0x1
	buffer_load_b32 v79, v35, s[24:27], 0 offen
	buffer_load_b32 v77, v77, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v80, 2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s98
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s16
	s_clause 0x1
	buffer_load_b32 v78, v78, s[24:27], 0 offen
	buffer_load_b32 v80, v35, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v94, 2
	scratch_load_b64 v[94:95], off, off offset:900 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v35, 0x80000000, v35, s11
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v81, s3, v94, 2
	scratch_load_b64 v[94:95], off, off offset:1004 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v81, 0x80000000, v81, s104
	s_clause 0x1
	buffer_load_b32 v95, v35, s[24:27], 0 offen
	buffer_load_b32 v81, v81, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v96, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s96
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v94, s3, v94, 2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s99
	s_clause 0x1
	buffer_load_b32 v94, v94, s[24:27], 0 offen
	buffer_load_b32 v96, v35, s[24:27], 0 offen
	scratch_load_b32 v35, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v35, s3, v35, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, vcc_hi
	s_clause 0x1
	buffer_load_b32 v101, v35, s[24:27], 0 offen
	buffer_load_b32 v99, v99, s[24:27], 0 offen
	v_add_lshl_u32 v35, s3, v135, 2
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[135:136], off, off offset:980
	scratch_load_b64 v[136:137], off, off offset:804
	scratch_load_b64 v[137:138], off, off offset:812
	scratch_load_b64 v[138:139], off, off offset:820
	scratch_load_b64 v[139:140], off, off offset:860
	scratch_load_b64 v[140:141], off, off offset:884
	scratch_load_b64 v[141:142], off, off offset:940
	scratch_load_b64 v[142:143], off, off offset:932
	scratch_load_b64 v[143:144], off, off offset:876
	scratch_load_b64 v[144:145], off, off offset:868
	v_cndmask_b32_e64 v35, 0x80000000, v35, s30
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v135, s3, v135, 2
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v136, s3, v136, 2
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v137, s3, v137, 2
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v138, s3, v138, 2
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v139, s3, v139, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v140, s3, v140, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v141, s3, v141, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v142, s3, v142, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v143, s3, v143, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v144, s3, v144, 2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s20
	v_cndmask_b32_e64 v135, 0x80000000, v135, s6
	v_cndmask_b32_e64 v136, 0x80000000, v136, s21
	v_cndmask_b32_e64 v140, 0x80000000, v140, s34
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	v_cndmask_b32_e64 v138, 0x80000000, v138, s7
	v_cndmask_b32_e64 v141, 0x80000000, v141, s1
	v_cndmask_b32_e64 v142, 0x80000000, v142, s31
	v_cndmask_b32_e64 v143, 0x80000000, v143, s18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s10
	s_clause 0xb
	buffer_load_b32 v139, v139, s[24:27], 0 offen
	buffer_load_b32 v140, v140, s[24:27], 0 offen
	buffer_load_b32 v100, v100, s[24:27], 0 offen
	buffer_load_b32 v136, v136, s[24:27], 0 offen
	buffer_load_b32 v145, v35, s[24:27], 0 offen
	buffer_load_b32 v135, v135, s[24:27], 0 offen
	buffer_load_b32 v137, v137, s[24:27], 0 offen
	buffer_load_b32 v138, v138, s[24:27], 0 offen
	buffer_load_b32 v141, v141, s[24:27], 0 offen
	buffer_load_b32 v142, v142, s[24:27], 0 offen
	buffer_load_b32 v143, v143, s[24:27], 0 offen
	buffer_load_b32 v144, v144, s[24:27], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v35, off, off offset:404
	scratch_load_b32 v230, off, off offset:520
	scratch_load_b32 v231, off, off offset:524
	scratch_load_b32 v236, off, off offset:528
	scratch_load_b32 v238, off, off offset:532
	scratch_load_b32 v243, off, off offset:536
	scratch_load_b32 v245, off, off offset:540
	scratch_load_b32 v164, off, off offset:544
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s87, s4, s3
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v35, 0, v35
	ds_store_2addr_b32 v35, v33, v34 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v39, s8
	v_cndmask_b32_e64 v33, 0xff800000, v40, s102
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v35, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s80
	v_cndmask_b32_e64 v34, 0, 1, s87
	s_and_b32 s92, s8, s38
	s_and_b32 s95, s102, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s92
	v_or_b16 v149.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v75, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v149.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v48, s36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(6)
	ds_store_2addr_b32 v230, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v76, s22
	v_cndmask_b32_e64 v33, 0xff800000, v74, s97
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s89, s19, s3
	s_and_b32 s84, s36, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v230, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s84
	v_cndmask_b32_e64 v34, 0, 1, s89
	s_and_b32 s93, s22, s38
	s_and_b32 s97, s97, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s93
	v_or_b16 v40.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v79, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v40.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v77, s100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(5)
	ds_store_2addr_b32 v231, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v80, s16
	v_cndmask_b32_e64 v33, 0xff800000, v78, s98
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s90, s2, s3
	s_and_b32 s86, s100, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v231, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s86
	v_cndmask_b32_e64 v34, 0, 1, s90
	s_and_b32 s94, s16, s38
	s_and_b32 s98, s98, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s94
	v_or_b16 v48.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v95, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v48.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v81, s104
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(4)
	ds_store_2addr_b32 v236, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v96, s96
	v_cndmask_b32_e64 v33, 0xff800000, v94, s99
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s91, s11, s3
	s_and_b32 s88, s104, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v236, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s88
	v_cndmask_b32_e64 v34, 0, 1, s91
	s_and_b32 s96, s96, s38
	s_and_b32 s99, s99, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s96
	v_or_b16 v176.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v97, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v176.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v98, s17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(3)
	ds_store_2addr_b32 v238, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v99, s33
	v_cndmask_b32_e64 v33, 0xff800000, v101, vcc_hi
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s71, s35, s3
	s_and_b32 s68, s17, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v238, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s68
	v_cndmask_b32_e64 v34, 0, 1, s71
	s_and_b32 s76, s33, s38
	s_and_b32 s79, vcc_hi, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s76
	v_or_b16 v177.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v139, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v177.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v140, s34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(2)
	ds_store_2addr_b32 v243, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v136, s21
	v_cndmask_b32_e64 v33, 0xff800000, v100, s9
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s72, s20, s3
	s_and_b32 s69, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v243, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s69
	v_cndmask_b32_e64 v34, 0, 1, s72
	s_and_b32 s77, s21, s38
	s_and_b32 s81, s9, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s77
	v_readlane_b32 s9, v254, 24
	v_or_b16 v150.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v141, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v150.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v143, s18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_b32 v245, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v137, s0
	v_cndmask_b32_e64 v33, 0xff800000, v145, s30
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s74, s1, s3
	s_and_b32 s70, s18, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v245, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s70
	v_cndmask_b32_e64 v34, 0, 1, s74
	s_and_b32 s78, s0, s38
	s_and_b32 s83, s30, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s78
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s30, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v178.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v142, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v178.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v144, s10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v164, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v138, s7
	v_cndmask_b32_e64 v33, 0xff800000, v135, s6
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s75, s31, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s31, s15
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s73, s10, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v164, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s73
	v_cndmask_b32_e64 v34, 0, 1, s75
	s_and_b32 s82, s7, s38
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s82
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v185, off, off offset:408
	scratch_load_b32 v186, off, off offset:412
	scratch_load_b32 v187, off, off offset:416
	scratch_load_b32 v188, off, off offset:420
	scratch_load_b32 v190, off, off offset:424
	scratch_load_b32 v191, off, off offset:428
	scratch_load_b32 v192, off, off offset:432
	v_or_b16 v179.h, v34.l, v0.h
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v33, off, off offset:388
	scratch_load_b32 v193, off, off offset:436
	scratch_load_b32 v202, off, off offset:440
	scratch_load_b32 v224, off, off offset:444
	scratch_load_b32 v225, off, off offset:448
	scratch_load_b32 v226, off, off offset:452
	scratch_load_b32 v227, off, off offset:456
	scratch_load_b32 v228, off, off offset:460
	scratch_load_b32 v229, off, off offset:464
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s85, s6, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v34, 0, 1, s85
	v_or_b16 v179.l, v34.l, v0.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(15)
	ds_load_2addr_stride64_b32 v[76:77], v185 offset1:2
	s_waitcnt vmcnt(14)
	ds_load_2addr_stride64_b32 v[78:79], v186 offset1:2
	s_waitcnt vmcnt(12)
	ds_load_2addr_stride64_b32 v[80:81], v188 offset1:2
	s_waitcnt vmcnt(11)
	ds_load_2addr_stride64_b32 v[94:95], v190 offset1:2
	s_waitcnt vmcnt(10)
	ds_load_2addr_stride64_b32 v[96:97], v191 offset1:2
	s_waitcnt vmcnt(9)
	ds_load_2addr_stride64_b32 v[98:99], v192 offset1:2
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v39, 0, v33
	ds_load_2addr_stride64_b32 v[33:34], v187 offset1:2
	s_waitcnt vmcnt(7)
	ds_load_2addr_stride64_b32 v[100:101], v193 offset1:2
	s_waitcnt vmcnt(6)
	ds_load_2addr_stride64_b32 v[135:136], v202 offset1:2
	s_waitcnt vmcnt(5)
	ds_load_2addr_stride64_b32 v[137:138], v224 offset1:2
	ds_load_2addr_stride64_b32 v[74:75], v39 offset1:2
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b32 v[139:140], v225 offset1:2
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b32 v[141:142], v226 offset1:2
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b32 v[143:144], v227 offset1:2
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b32 v[145:146], v228 offset1:2
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[147:148], v229 offset1:2
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:396
	scratch_load_b32 v0, off, off offset:488
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v241, v50
	v_dual_mul_f32 v46, v158, v46 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v33
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v180, 0, v180
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v40
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	ds_store_b32 v180, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v149.h, v133.l
	v_mov_b16_e64 v149.l, v219.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v133, 0x3fb8aa3b, v74
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v74.h, v132.l
	v_mov_b16_e64 v74.l, v219.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v132, 0x3fb8aa3b, v76
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v158, v161
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v133, v175, v149
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v149, v241, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v132, v149, v74
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v74.h, v131.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v131, 0x3fb8aa3b, v78
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v131, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v74.h, v130.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v160, v168
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v130, 0x3fb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v130, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v74.h, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v241, v134
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v129, 0x3fb8aa3b, v94
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v129, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v74.h, v128.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v76, v158, v63 :: v_dual_mul_f32 v63, 0x3fb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v63, v76, v74
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v74.h, v127.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v159, v62
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v98
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v62, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v74.h, v126.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v160, v174
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v126, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v74.h, v125.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v241, v64
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v137
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v64, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v74.h, v124.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, v158, v56
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v56, v76, v74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v74.h, v123.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v76, v159, v55 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v141
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v55, v76, v74 :: v_dual_mul_f32 v74, 0x3fb8aa3b, v75
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v75.h, v122.l
	v_mov_b16_e64 v75.l, v219.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v74, v61, v75
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v61.h, v121.l
	v_mov_b16_e64 v61.l, v219.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v75, v160, v54 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v143
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v54, v75, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v61.h, v93.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v75, v50, v61
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v50.h, v92.l
	v_mov_b16_e64 v50.l, v219.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v147
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v61, v47, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v79
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v50.h, v91.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v60, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v50.h, v90.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v89.l
	v_mov_b16_e64 v34.l, v219.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v44, v160, v44
	v_mul_f32_e32 v52, v159, v52
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v60, v59, v50
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v81 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v144
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v42, v158, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v50, v58, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v95
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v88.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v58, v52, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v97
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v87.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v52, v53, v34 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v99
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v86.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v53, v51, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v85.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v51, v46, v34 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v136
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v73.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, v45, v34 :: v_dual_mul_f32 v45, 0x3fb8aa3b, v140
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v72.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, v44, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v142
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v71.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v43, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v70.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v70, 0x3fb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v59, v42, v34
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v69.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v69, 0x3fb8aa3b, v77 :: v_dual_fmac_f32 v70, v38, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v68.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v241, v49 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v100.h, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, v38, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v65, 0x3fb8aa3b, v138 :: v_dual_mul_f32 v38, v160, v41
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v49, v38, v34
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v67.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v65, v37, v34
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v66.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v67, v36, v34
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v48
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v176
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v177
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v150
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v178
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v34, off, off offset:548
	scratch_load_b32 v38, off, off offset:556
	scratch_load_b32 v41, off, off offset:580
	scratch_load_b32 v71, off, off offset:604
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v0, v34
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v0, v34 offset:128
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v34, off, off offset:472
	scratch_load_b32 v37, off, off offset:552
	scratch_load_b32 v40, off, off offset:572
	scratch_load_b32 v66, off, off offset:596
	scratch_load_b32 v42, off, off offset:584
	scratch_load_b32 v43, off, off offset:592
	scratch_load_b32 v68, off, off offset:600
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s60, 1, v0.l
	v_and_b16 v0.l, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v223, 0xff800000, v132, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v213, 0xff800000, v69, s37
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v48, 0, v34
	ds_load_u8_d16 v34, v38
	s_waitcnt vmcnt(5)
	ds_load_u8_d16 v0, v37 offset:128
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v34, v37
	ds_load_u8_d16 v36, v48 offset:128
	scratch_load_b32 v37, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(2)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	ds_load_u8_d16 v0, v38 offset:128
	scratch_load_b32 v38, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v0, v38 offset:128
	ds_load_u8_d16_hi v36, v37 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v211, 0xff800000, v47, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v0.l
	ds_load_u8_d16 v0, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v212, 0xff800000, v60, s42
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v0.h
	v_cmp_eq_u16_e64 s50, 1, v0.h
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, 0xff800000, v58, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s61, 1, v0.l
	ds_load_u8_d16 v0, v38
	scratch_load_b32 v38, off, off offset:568 ; 4-byte Folded Reload
	ds_load_u8_d16 v37, v40
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v37, v38
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v130, s61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s62, 1, v0.l
	ds_load_u8_d16 v0, v38 offset:128
	ds_load_u8_d16 v38, v42 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v183, 0xff800000, v129, s62
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s39, 1, v0.l
	ds_load_u8_d16 v0, v40 offset:128
	scratch_load_b32 v40, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v206, 0xff800000, v52, s39
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s41, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v207, 0xff800000, v53, s41
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v0, v40
	ds_load_u8_d16_hi v38, v41 offset:128
	ds_load_u8_d16 v40, v40 offset:128
	s_waitcnt lgkmcnt(2)
	v_and_b16 v0.l, 1, v0.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v40.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s53, 1, v0.l
	ds_load_u8_d16 v0, v41
	scratch_load_b32 v41, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s47, 1, v0.h
	v_and_b16 v0.h, 1, v38.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v49, s53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v204, 0xff800000, v51, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s48, 1, v0.h
	v_and_b16 v0.h, 1, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v205, 0xff800000, v46, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s46, 1, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v200, 0xff800000, v65, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s56, 1, v0.l
	ds_load_u8_d16 v0, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v252, 0xff800000, v126, s56
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s52, 1, v0.l
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v0, v41 offset:128
	ds_load_u8_d16_hi v40, v41
	ds_load_u8_d16 v41, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v41, v71 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v64, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s40, 1, v0.l
	ds_load_u8_d16 v0, v43 offset:128
	ds_load_u8_d16 v42, v68 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v42, v66 offset:128
	ds_load_u8_d16 v43, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v45, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.h, 1, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s38, 1, v0.l
	v_and_b16 v0.l, 1, v41.l
	v_cmp_eq_u16_e64 s45, 1, v0.h
	v_and_b16 v0.h, 1, v42.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s55, 1, v0.l
	ds_load_u8_d16 v0, v68
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s43, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v59, s45
	v_cndmask_b32_e64 v217, 0xff800000, v54, s55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v196, 0xff800000, v70, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s51, 1, v0.l
	v_and_b16 v0.l, 1, v34.h
	v_and_b16 v34.h, 1, v36.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v214, 0xff800000, v75, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s65, 1, v0.l
	v_and_b16 v0.l, 1, v37.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s54, 1, v34.h
	v_and_b16 v34.h, 1, v36.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v159, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v203, 0xff800000, v131, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s63, 1, v0.l
	v_and_b16 v0.l, 1, v37.l
	v_cmp_eq_u16_e64 s49, 1, v34.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v36, v219
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v210, 0xff800000, v74, s54
	v_cndmask_b32_e64 v194, 0xff800000, v63, s63
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s64, 1, v0.l
	v_and_b16 v0.l, 1, v40.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v208, 0xff800000, v50, s49
	v_cndmask_b32_e64 v73, 0xff800000, v44, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v181, 0xff800000, v62, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v0.l
	v_and_b16 v0.l, 1, v43.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s57, 1, v0.l
	ds_load_u8_d16 v0, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v216, 0xff800000, v55, s57
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s59, 1, v0.l
	ds_load_u8_d16 v0, v48
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v215, 0xff800000, v61, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v220, 0xff800000, v67, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s66, 1, v0.l
	v_and_b16 v0.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v222, 0xff800000, v133, s66
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s67, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v0, 0xff800000, v56, s58
	ds_store_2addr_stride64_b32 v39, v222, v210 offset1:2
	v_cndmask_b32_e64 v221, 0xff800000, v33, s67
	ds_store_2addr_stride64_b32 v185, v223, v213 offset1:2
	ds_store_2addr_stride64_b32 v186, v203, v211 offset1:2
	ds_store_2addr_stride64_b32 v187, v221, v212 offset1:2
	ds_store_2addr_stride64_b32 v188, v182, v208 offset1:2
	ds_store_2addr_stride64_b32 v190, v183, v209 offset1:2
	ds_store_2addr_stride64_b32 v191, v194, v206 offset1:2
	ds_store_2addr_stride64_b32 v192, v181, v207 offset1:2
	ds_store_2addr_stride64_b32 v193, v167, v204 offset1:2
	ds_store_2addr_stride64_b32 v202, v252, v205 offset1:2
	ds_store_2addr_stride64_b32 v224, v218, v200 offset1:2
	ds_store_2addr_stride64_b32 v225, v0, v85 offset1:2
	ds_store_2addr_stride64_b32 v226, v216, v73 offset1:2
	ds_store_2addr_stride64_b32 v227, v217, v168 offset1:2
	ds_store_2addr_stride64_b32 v228, v214, v196 offset1:2
	ds_store_2addr_stride64_b32 v229, v215, v220 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[45:46], v35 offset1:32
	ds_load_2addr_b32 v[47:48], v230 offset1:32
	ds_load_2addr_b32 v[49:50], v231 offset1:32
	ds_load_2addr_b32 v[51:52], v236 offset1:32
	ds_load_2addr_b32 v[131:132], v35 offset0:64 offset1:96
	ds_load_2addr_b32 v[129:130], v230 offset0:64 offset1:96
	ds_load_2addr_b32 v[127:128], v231 offset0:64 offset1:96
	ds_load_2addr_b32 v[125:126], v236 offset0:64 offset1:96
	ds_load_2addr_b32 v[123:124], v238 offset1:32
	ds_load_2addr_b32 v[71:72], v238 offset0:64 offset1:96
	ds_load_2addr_b32 v[121:122], v243 offset1:32
	ds_load_2addr_b32 v[69:70], v243 offset0:64 offset1:96
	ds_load_2addr_b32 v[55:56], v245 offset1:32
	ds_load_2addr_b32 v[67:68], v245 offset0:64 offset1:96
	ds_load_2addr_b32 v[53:54], v164 offset1:32
	ds_load_2addr_b32 v[65:66], v164 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v129, v129
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v45, v45
	v_dual_max_f32 v36, v47, v47 :: v_dual_max_f32 v37, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v38, v51, v51 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v39, v52, v52
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v36, v34
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v33, v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v33, v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v36, v46, v46
	v_max_f32_e32 v33, v34, v33
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v37, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v37, v33, v37
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v37, v48, v48
	v_max_f32_e32 v33, v38, v33
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v38
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v38
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v38
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v34, 31
	v_mov_b32_dpp v34, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
	v_max_f32_e32 v34, v36, v34
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v33, 31
	v_mov_b32_dpp v33, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v50, v50
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v37
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v37
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v37
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v37
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v34, 31
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v131, v131 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v40, s4 :: v_dual_max_f32 v33, v34, v33
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v36, v36, v37
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v34
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v36, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v37, v38, v37
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v41, s5 :: v_dual_max_f32 v34, v35, v34
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v38, v39, v38
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_mov_b32 v36, s0
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v37, v37, v39
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v38, v38, v39
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v37, v37, v39
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v38, v38, v39
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v37, v37, v39
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v33, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v37, -1, -1 op_sel:[1,0]
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v39
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v37, 31
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v37, s1 :: v_dual_mov_b32 v42, s6
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v39 :: v_dual_mov_b32 v39, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v38, 31
	v_dual_mov_b32 v38, s2 :: v_dual_mov_b32 v43, s7
	ds_store_b128 v198, v[36:39]
	ds_store_b128 v198, v[40:43] offset:16
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v127, v127 :: v_dual_max_f32 v37, v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v38, v126, v126 :: v_dual_max_f32 v35, v36, v35
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v132, v132
	v_max_f32_e32 v36, v37, v36
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v35, 31
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v130, v130
	v_max_f32_e32 v34, v35, v34
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v35
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v35, v35, v35
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v36, s3 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
	v_mov_b32_dpp v35, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v37, v35
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v35, 31
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v33, 31
	v_mov_b32_e32 v33, s0
	v_mov_b32_e32 v35, s2
	v_mov_b32_e32 v39, s6
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v37, 31
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v198, v[33:36] offset:32
	ds_store_b128 v198, v[37:40] offset:48
	v_mov_b32_dpp v33, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v123, v123 :: v_dual_max_f32 v37, v53, v53
	v_dual_max_f32 v35, v121, v121 :: v_dual_max_f32 v38, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v36, v55, v55
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v57, s0 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v124, v124
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v35, v35, v37
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s2, v35, 31
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v122, v122
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v59, s2 :: v_dual_max_f32 v34, v35, v34
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v35, v35, v35
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v61, s4 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s5, v34, 31
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_mov_b32 v62, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v37, v35
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v38, v37
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v35, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_mov_b32 v63, s6
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v37, 31
	ds_load_b128 v[74:77], v201
	ds_load_b128 v[41:44], v201 offset:16
	ds_load_b128 v[37:40], v201 offset:32
	ds_load_b128 v[33:36], v201 offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v64, s7
	ds_store_b128 v198, v[57:60]
	ds_store_b128 v198, v[61:64] offset:16
	v_mov_b32_dpp v57, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v58, v71, v71 :: v_dual_max_f32 v59, v69, v69
	v_dual_max_f32 v60, v67, v67 :: v_dual_max_f32 v61, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v62, v66, v66
	v_max_f32_e32 v57, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v57, v58
.Ltmp255:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v59, v58
.Ltmp257:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp259:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v60, v59
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v58, -1, -1 op_sel:[1,0]
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v58, v58, v60
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v58, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v58, v72, v72
	v_max_f32_e32 v60, v61, v60
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v58, v57
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v59, v61
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v59, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v60, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v59, 31
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v59, v58
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	v_max_f32_e32 v61, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v59, v59, v59
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v60, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v59
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v58, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v57, s0 :: v_dual_max_f32 v58, v58, v59
	v_mov_b32_dpp v59, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s5, v58, 31
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v59, v59, v59 :: v_dual_mov_b32 v58, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v61, v59
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v62, v61
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v62, v59, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v62, v61, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v59, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v62, v62, v62 :: v_dual_mov_b32 v59, s2
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v63, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v62 :: v_dual_mov_b32 v62, s5
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v61, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v61, s4 :: v_dual_mov_b32 v64, s7
	ds_store_b128 v198, v[57:60] offset:32
	ds_store_b128 v198, v[61:64] offset:48
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v77, v77
.Ltmp337:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v63, v74
.Ltmp338:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v64, v74, v74 :: v_dual_mov_b32 v61, v75
	v_max_f32_e32 v62, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v77, v77
.Ltmp339:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v75, v41 :: v_dual_mov_b32 v58, v76
.Ltmp340:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v76, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v228, v57, v60
.Ltmp341:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v57, off, off offset:40 ; 4-byte Folded Reload
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v63, v63, v63 :: v_dual_mov_b32 v76, v42
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp345:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v77, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v231, v64, v63
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v43, v43, v43
.Ltmp349:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp350:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v74, v44, v44
.Ltmp351:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp352:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v58, v58
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v230, v62, v61 :: v_dual_max_f32 v229, v59, v58
	v_max_f32_e32 v224, v74, v44
.Ltmp353:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v165, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v165, v44, v224
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v52, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp354:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp355:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v164, v57, v231
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp356:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp357:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v45, -1, -1 op_sel:[1,0]
.Ltmp358:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v57
.Ltmp359:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v57, off, off          ; 4-byte Folded Reload
.Ltmp360:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v45, 31
.Ltmp361:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v227, v41, v45
	v_max_f32_e32 v41, v76, v76
	v_max_f32_e32 v226, v42, v41
	v_max_f32_e32 v41, v77, v77
.Ltmp362:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v42, off, off offset:32 ; 4-byte Folded Reload
.Ltmp363:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v225, v43, v41
.Ltmp364:
	.loc	1 884 24                        ; attention.py:884:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:28
	scratch_load_b32 v43, off, off offset:36
	s_waitcnt vmcnt(3)
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v57, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	s_waitcnt vmcnt(1)
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v41, v41, v41
	v_max_f32_e32 v42, v42, v226
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s97
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v41, v41, v227
	scratch_store_b32 off, v57, off         ; 4-byte Folded Spill
.Ltmp365:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	scratch_store_b32 off, v42, off offset:32 ; 4-byte Folded Spill
.Ltmp366:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v48, v42
	scratch_store_b32 off, v41, off offset:28 ; 4-byte Folded Spill
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v43, v225
.Ltmp367:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp368:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	scratch_store_b32 off, v43, off offset:36 ; 4-byte Folded Spill
.Ltmp369:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp370:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v50, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp372:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp373:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v47, -1, -1 op_sel:[1,0]
.Ltmp374:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_f32_e32 v47, v47, v57
.Ltmp375:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v57, off, off offset:4 ; 4-byte Folded Reload
.Ltmp376:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp377:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s94
.Ltmp378:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v47, 31
.Ltmp379:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp380:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v57, v57, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v49, v57
	scratch_store_b32 off, v57, off offset:4 ; 4-byte Folded Spill
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp381:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp382:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v49, -1, -1 op_sel:[1,0]
.Ltmp383:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v57
.Ltmp384:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v57, off, off offset:8 ; 4-byte Folded Reload
.Ltmp385:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v49, 31
.Ltmp386:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v57, v228
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v57
	scratch_store_b32 off, v57, off offset:8 ; 4-byte Folded Spill
.Ltmp387:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp388:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s99
.Ltmp389:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp390:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp391:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v57
.Ltmp392:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v51, 31
.Ltmp393:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	ds_load_b128 v[49:52], v201
	ds_load_b128 v[74:77], v201 offset:16
	ds_load_b128 v[61:64], v201 offset:32
	ds_load_b128 v[57:60], v201 offset:48
.Ltmp394:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v46, v41
.Ltmp395:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp396:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp397:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp398:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v41, -1, -1 op_sel:[1,0]
.Ltmp399:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp400:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v41, 31
.Ltmp401:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v45
.Ltmp402:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v41, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v42, 31
.Ltmp403:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v45
.Ltmp404:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v46, s5
	v_readlane_b32 s6, v43, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp405:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v44, v44, v45 :: v_dual_mov_b32 v43, s2
.Ltmp406:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v45, s4
	v_mov_b32_e32 v47, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s7, v44, 31
	v_mov_b32_e32 v44, s3
	v_mov_b32_e32 v48, s7
	ds_store_b128 v198, v[41:44]
	ds_store_b128 v198, v[45:48] offset:16
.Ltmp407:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v42, v37 :: v_dual_mov_b32 v43, v38
.Ltmp408:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_mov_b32 v44, v39
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp409:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp410:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp411:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v46, v33
.Ltmp412:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp413:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, v34
.Ltmp414:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_mov_b32 v48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp415:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp416:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v176, v37, v42 :: v_dual_max_f32 v37, v43, v43
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp417:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp418:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
.Ltmp419:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp420:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v175, v38, v37
	v_max_f32_e32 v37, v44, v44
	v_max_f32_e32 v41, v40, v40
.Ltmp421:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp422:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v36, v36
.Ltmp423:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp424:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v174, v39, v37 :: v_dual_max_f32 v37, v116, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v40, v40, v40
.Ltmp425:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v42, v74
.Ltmp426:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp427:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v44, v75
.Ltmp428:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v116, v37, v176
.Ltmp429:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v193, v41, v40
.Ltmp430:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp431:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v161, v45, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp432:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v36, v173, v173 :: v_dual_sub_f32 v37, v131, v116
.Ltmp433:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v74, v74
.Ltmp434:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp435:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v75, v75
.Ltmp436:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v173, v36, v161
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v36, v126, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s87
.Ltmp437:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp438:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s88
.Ltmp439:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp440:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp441:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v37, v37, v38
.Ltmp442:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp443:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v37, 31
.Ltmp444:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v82, v38, v175
.Ltmp445:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v46, v46 :: v_dual_mov_b32 v46, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp446:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v129, v82
.Ltmp447:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v192, v33, v37 :: v_dual_max_f32 v33, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp448:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp449:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v76, v76
.Ltmp450:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp451:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v191, v34, v33
	v_dual_max_f32 v33, v48, v48 :: v_dual_max_f32 v34, v171, v171
	v_dual_max_f32 v190, v35, v33 :: v_dual_max_f32 v33, v170, v170
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp452:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s89
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v171, v34, v191
	v_max_f32_e32 v35, v172, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v170, v33, v192
.Ltmp453:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp454:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v130, v171
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v172, v35, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v132, v170
.Ltmp455:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp456:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v128, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp457:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp458:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
.Ltmp459:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp460:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s84
	v_cndmask_b32_e64 v33, 0, v33, s80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp461:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
.Ltmp462:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp463:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s86
.Ltmp464:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v38, v38, v39
.Ltmp465:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v83, v83
.Ltmp466:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp467:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v38, 31
.Ltmp468:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v83, v39, v174
.Ltmp469:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp470:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v127, v83
.Ltmp471:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp472:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
.Ltmp473:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp474:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp475:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v37
.Ltmp476:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp477:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s90
.Ltmp478:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp479:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp480:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s5, v34, 31
.Ltmp481:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v35, v35, v37
.Ltmp482:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v34, s1
	v_mov_b32_e32 v38, s5
.Ltmp483:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp484:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v35, 31
.Ltmp485:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_mov_b32 v37, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp486:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v39, -1, -1 op_sel:[1,0]
.Ltmp487:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp488:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp489:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v39, 31
.Ltmp490:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v84, v40, v193 :: v_dual_mov_b32 v39, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp491:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, s2 :: v_dual_sub_f32 v40, v125, v84
.Ltmp492:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s91
.Ltmp493:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v40, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp494:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v41, v40, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp495:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp496:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v77, v77
.Ltmp497:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp498:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v40, 31
	v_mov_b32_e32 v40, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp499:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v77, v77
.Ltmp500:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, s3
	ds_store_b128 v198, v[33:36] offset:32
	ds_store_b128 v198, v[37:40] offset:48
.Ltmp501:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v52, v52
.Ltmp502:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v49
.Ltmp503:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v49, v49 :: v_dual_mov_b32 v36, v50
.Ltmp504:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v38, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp505:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v52, v52
.Ltmp506:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp507:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v50, v50
.Ltmp508:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp509:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v86, v33, v40
.Ltmp510:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
.Ltmp511:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v39, v51, v51
	v_max_f32_e32 v177, v41, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v89, v35, v34 :: v_dual_max_f32 v34, v36, v36
	v_max_f32_e32 v88, v37, v34
	v_max_f32_e32 v34, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v87, v39, v34
.Ltmp512:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v33, v33, v89
	scratch_store_b32 off, v33, off offset:12 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v123, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp513:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp514:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
.Ltmp515:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp516:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v34, off, off offset:16 ; 4-byte Folded Reload
.Ltmp517:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v33, 31
.Ltmp518:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v180, v43, v33 :: v_dual_max_f32 v33, v44, v44
	v_max_f32_e32 v179, v45, v33
	v_max_f32_e32 v33, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v178, v47, v33
.Ltmp519:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v155, v155
	v_max_f32_e32 v155, v33, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v124, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s76
.Ltmp520:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp521:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp522:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v88
	scratch_store_b32 off, v34, off offset:16 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v121, v34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s81
.Ltmp523:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp524:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp525:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp526:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v35, off, off offset:20 ; 4-byte Folded Reload
.Ltmp527:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v34, 31
.Ltmp528:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v166, v166
	v_max_f32_e32 v166, v34, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v122, v166
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s77
.Ltmp529:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp530:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v35, v87
	scratch_store_b32 off, v35, off offset:20 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v55, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp531:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp532:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
.Ltmp533:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp534:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v36, off, off offset:24 ; 4-byte Folded Reload
.Ltmp535:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v35, 31
.Ltmp536:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v110, v35, v178
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v56, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp537:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp538:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v86
	scratch_store_b32 off, v36, off offset:24 ; 4-byte Folded Spill
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v53, v36
.Ltmp539:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp540:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s85
.Ltmp541:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp542:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp543:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_max_f32 v37, v114, v114
.Ltmp544:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp545:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v114, v37, v177
.Ltmp546:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v36, s3 :: v_dual_sub_f32 v37, v54, v114
	ds_load_b128 v[53:56], v201
	ds_load_b128 v[49:52], v201 offset:16
	ds_load_b128 v[45:48], v201 offset:32
	ds_load_b128 v[41:44], v201 offset:48
.Ltmp547:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp548:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp549:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
.Ltmp550:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	v_readlane_b32 s4, v33, 31
.Ltmp551:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp552:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v34, 31
.Ltmp553:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp554:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s82
.Ltmp555:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, s1
	v_readlane_b32 s6, v35, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp556:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp557:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, s2
	v_mov_b32_e32 v39, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp558:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp559:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp560:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp561:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v37, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v198, v[33:36]
	ds_store_b128 v198, v[37:40] offset:16
.Ltmp562:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v61 :: v_dual_max_f32 v33, v64, v64
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp563:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v61, v61 :: v_dual_mov_b32 v36, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp564:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v63
.Ltmp565:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v40, v64, v64 :: v_dual_max_f32 v37, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp566:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp567:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp568:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp569:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v236, v33, v40 :: v_dual_max_f32 v33, v195, v195
	v_max_f32_e32 v39, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v245, v35, v34 :: v_dual_max_f32 v34, v36, v36
.Ltmp570:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v62, v57 :: v_dual_mov_b32 v63, v58
.Ltmp571:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
.Ltmp572:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v195, v33, v245
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp573:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v243, v37, v34
	v_max_f32_e32 v34, v38, v38
.Ltmp574:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v64, v59
.Ltmp575:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v71, v195
.Ltmp576:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp577:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v238, v39, v34
	v_max_f32_e32 v58, v58, v58
.Ltmp578:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp579:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp580:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v61, v60, v60
.Ltmp581:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp582:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
.Ltmp583:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp584:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v90, v61, v60
.Ltmp585:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp586:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp587:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp588:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v157, v157
.Ltmp589:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp590:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v157, v34, v243
.Ltmp591:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v62, v62 :: v_dual_sub_f32 v34, v69, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v93, v57, v33
	v_max_f32_e32 v33, v63, v63
.Ltmp592:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp593:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v92, v58, v33 :: v_dual_max_f32 v33, v64, v64
	v_max_f32_e32 v91, v59, v33
.Ltmp594:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v232, v232
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s72
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v232, v33, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp595:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp596:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v72, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp597:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp598:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp599:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp600:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s68
.Ltmp601:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp602:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v34, v34, v35 :: v_dual_max_f32 v35, v189, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp603:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp604:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v189, v35, v238 :: v_dual_max_f32 v34, v233, v233
.Ltmp605:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp606:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v67, v189
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v233, v34, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp607:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp608:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v70, v233
.Ltmp609:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp610:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp611:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp612:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s74
.Ltmp613:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v33, 31
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp614:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp615:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s69
	v_readlane_b32 s0, v255, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp616:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp617:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
.Ltmp618:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v169, v169
.Ltmp619:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s2, v35, 31
.Ltmp620:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v169, v36, v236
	v_max_f32_e32 v35, v234, v234
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp621:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp622:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v65, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v234, v35, v91
.Ltmp623:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
	v_cmp_gt_i32_e64 s1, s101, v184
.Ltmp624:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v68, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp625:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp626:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp627:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp628:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp629:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v36, v36, v37 :: v_dual_max_f32 v37, v235, v235
.Ltmp630:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s3, v36, 31
.Ltmp631:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v235, v37, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp632:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v35, v38 :: v_dual_mov_b32 v36, s3
.Ltmp633:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v66, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp634:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
.Ltmp635:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp636:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v39, s6
.Ltmp637:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp638:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp639:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp640:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp641:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v37, 31
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v198, v[33:36] offset:32
	ds_store_b128 v198, v[37:40] offset:48
.Ltmp642:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v152
.Ltmp643:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp644:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s88, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 1, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s88
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s68, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 2, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s68, s1, s68
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s89, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 3, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s82, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 8, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s82, s1, s82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s90, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 9, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s71, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 10, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s71, s1, s71
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s91, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 11, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s76, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 16, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s76, s1, s76
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s92, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 17, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 18, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s93, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 19, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s69, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 24, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s94, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 25, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s70, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 26, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s95, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 27, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s75, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 32, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s96, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 33, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s72, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 34, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s97, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 35, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s73, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 40, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s98, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 41, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s74, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 42, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s86, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 43, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s1, s86
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s77, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 48, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s87, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 49, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s78, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 50, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s84, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 51, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s84, s1, s84
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s79, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 56, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s85, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 57, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s80, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 58, v152
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s83, s23, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 59, v152
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s83, s1, s83
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s103, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s103, s103, 64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s81, s23, v33
	scratch_load_b64 v[33:34], off, off offset:1012 ; 8-byte Folded Reload
.Ltmp645:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[35:36], null, s0, s101, v[33:34]
.Ltmp646:
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v254, 20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v34, v35, s0, 1
	v_readlane_b32 s0, v254, 21
	v_lshlrev_b32_e32 v33, 1, v35
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s88
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s89
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s88
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v254, 22
	v_cndmask_b32_e64 v36, 0x80000000, v36, s88
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s91
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	v_cndmask_b32_e64 v37, 0x80000000, v37, s88
	s_clause 0x1
	buffer_load_u16 v121, v36, s[28:31], 0 offen
	buffer_load_u16 v122, v37, s[28:31], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s92
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s101, 24
	v_cndmask_b32_e64 v36, 0x80000000, v36, s88
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s93
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s88
	s_clause 0x1
	buffer_load_u16 v123, v36, s[28:31], 0 offen
	buffer_load_u16 v124, v37, s[28:31], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 26
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	v_readlane_b32 s0, v254, 23
	v_cndmask_b32_e64 v36, 0x80000000, v36, s88
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s95
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s88
	s_clause 0x1
	buffer_load_u16 v125, v36, s[28:31], 0 offen
	buffer_load_u16 v126, v37, s[28:31], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 34
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s101, 40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s88
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s97
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s88
	s_clause 0x1
	buffer_load_u16 v127, v36, s[28:31], 0 offen
	buffer_load_u16 v128, v37, s[28:31], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s88, s1, s98
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s101, 48
	v_cndmask_b32_e64 v36, 0x80000000, v36, s88
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s86
	s_clause 0x1
	buffer_load_u16 v129, v36, s[28:31], 0 offen
	buffer_load_u16 v130, v37, s[28:31], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s86, s1, s87
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s101, 56
	v_cndmask_b32_e64 v36, 0x80000000, v36, s86
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s84
	s_clause 0x1
	buffer_load_u16 v131, v36, s[28:31], 0 offen
	buffer_load_u16 v132, v37, s[28:31], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s101, 58
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s84, s1, s85
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s101, 3
	v_cndmask_b32_e64 v36, 0x80000000, v36, s84
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s83
	s_clause 0x1
	buffer_load_u16 v133, v36, s[28:31], 0 offen
	buffer_load_u16 v134, v37, s[28:31], 0 offen
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s101, 9
	v_add_lshl_u32 v36, v35, s101, 1
	v_add_lshl_u32 v38, v35, s0, 1
	s_mul_i32 s0, s101, 11
	v_cndmask_b32_e64 v37, 0x80000000, v37, s82
	v_add_lshl_u32 v39, v35, s0, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s68
	v_cndmask_b32_e64 v38, 0x80000000, v38, s71
	s_mul_i32 s0, s101, 17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s68, s1, s69
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v39, s76
	s_clause 0x3
	buffer_load_u16 v74, v39, s[28:31], 0 offen
	buffer_load_u16 v75, v38, s[28:31], 0 offen
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	v_add_lshl_u32 v40, v35, s0, 1
	s_mul_i32 s0, s101, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v57, v35, s0, 1
	s_mul_i32 s0, s101, 25
	v_cndmask_b32_e64 v39, 0x80000000, v40, s3
	v_add_lshl_u32 v58, v35, s0, 1
	s_mul_i32 s0, s101, 27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s72
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v59, v35, s0, 1
	s_mul_i32 s0, s101, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v60, v35, s0, 1
	s_mul_i32 s0, s101, 35
	v_add_lshl_u32 v61, v35, s0, 1
	s_mul_i32 s0, s101, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v62, v35, s0, 1
	s_mul_i32 s0, s101, 43
	v_add_lshl_u32 v63, v35, s0, 1
	s_mul_i32 s0, s101, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v64, v35, s0, 1
	s_mul_i32 s0, s101, 51
	v_add_lshl_u32 v65, v35, s0, 1
	s_mul_i32 s0, s101, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v66, v35, s0, 1
	s_mul_i32 s0, s101, 59
	v_add_lshl_u32 v35, v35, s0, 1
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v122.h, v74.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v121.h, v75.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v34.h, v37.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v36.l
	v_cndmask_b32_e64 v36, 0x80000000, v57, s68
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s68, s1, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v59, s68
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s68, s1, s70
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v58, s68
	s_clause 0x3
	buffer_load_u16 v76, v37, s[28:31], 0 offen
	buffer_load_u16 v77, v38, s[28:31], 0 offen
	buffer_load_u16 v78, v36, s[28:31], 0 offen
	buffer_load_u16 v79, v39, s[28:31], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v60, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v61, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v62, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v63, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s78
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v64, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s80
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v58, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s81
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s103, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	s_clause 0x7
	buffer_load_u16 v80, v39, s[28:31], 0 offen
	buffer_load_u16 v81, v38, s[28:31], 0 offen
	buffer_load_u16 v94, v37, s[28:31], 0 offen
	buffer_load_u16 v95, v36, s[28:31], 0 offen
	buffer_load_u16 v96, v35, s[28:31], 0 offen
	buffer_load_u16 v97, v58, s[28:31], 0 offen
	buffer_load_u16 v98, v57, s[28:31], 0 offen
	buffer_load_u16 v99, v40, s[28:31], 0 offen
.Ltmp647:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[69:72], v201
	ds_load_b128 v[65:68], v201 offset:16
	ds_load_b128 v[61:64], v201 offset:32
	ds_load_b128 v[57:60], v201 offset:48
.Ltmp648:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:468
	scratch_load_b32 v74, off, off offset:608
.Ltmp649:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v204, v205, v200
.Ltmp650:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v219.l
	v_mov_b16_e64 v38.h, v219.l
	v_mov_b16_e64 v39.h, v219.l
	v_mov_b16_e64 v40.h, v219.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v126.h, v76.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v125.h, v77.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v124.h, v78.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v123.h, v79.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v130.h, v80.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v129.h, v81.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v128.h, v94.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v127.h, v95.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v134.h, v96.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v133.h, v97.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v132.h, v98.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v131.h, v99.l
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v98, v184 :: v_dual_add_nc_u32 v35, 0, v35
	ds_store_b64 v35, v[33:34]
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[121:122]
	scratch_load_b32 v74, off, off offset:612 ; 4-byte Folded Reload
.Ltmp651:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v252, v218, v0
	v_max3_f32 v34, v216, v217, v214
	v_max3_f32 v35, v215, v210, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v33, v34, v35
	v_max3_f32 v34, v211, v212, v208
	v_max3_f32 v35, v209, v206, v207
	v_max3_f32 v34, v34, v35, v36
	v_max_f32_e32 v35, v222, v223
	v_max3_f32 v36, v221, v182, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v35, v203, v36
	v_max3_f32 v36, v194, v181, v167
	v_max3_f32 v33, v35, v36, v33
	v_dual_max_f32 v35, v85, v73 :: v_dual_max_f32 v36, v196, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v35, v35, v168, v36
.Ltmp652:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v219.l
.Ltmp653:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v34, v35
.Ltmp654:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp655:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp656:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v202, v247, v33, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v219.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v223, v202
	v_sub_f32_e32 v0, v0, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0, v0, s58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v222, v202
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s60, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s60
	v_permlanex16_b32 v35, v34, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v239
	v_perm_b32 v34, v35, v34, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v221, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v203, v202
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s60, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s60
	v_permlanex16_b32 v37, v36, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v239
	v_perm_b32 v36, v37, v36, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v183, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v182, v202
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s60, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s60
	v_permlanex16_b32 v39, v38, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v239
	v_perm_b32 v38, v39, v38, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v181, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[123:124]
	scratch_load_b32 v74, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v194, v202
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v100.l, v39.h
	v_cmp_o_f32_e64 s60, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v100, 1, v100
	v_add3_u32 v100, v39, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v100.h, s60
	v_permlanex16_b32 v100, v40, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v100, v40, v239
	v_perm_b32 v40, v100, v40, v240
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[125:126]
	scratch_load_b32 v74, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[127:128]
	scratch_load_b32 v74, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[129:130]
	scratch_load_b32 v74, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[131:132]
	scratch_load_b32 v74, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v74, v[133:134]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v75, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v247, v202
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v78, off, off offset:668 ; 4-byte Folded Reload
	v_mov_b32_e32 v247, v202
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v122, 0, v74, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	scratch_load_b32 v74, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v122
	v_mul_f32_e32 v26, v26, v122
	v_mul_f32_e32 v27, v27, v122
	v_mul_f32_e32 v28, v28, v122
	v_mul_f32_e32 v29, v29, v122
	v_mul_f32_e32 v30, v30, v122
	v_mul_f32_e32 v31, v31, v122
	v_mul_f32_e32 v32, v32, v122
	v_mul_f32_e32 v17, v17, v122
	v_mul_f32_e32 v18, v18, v122
	v_mul_f32_e32 v19, v19, v122
	v_mul_f32_e32 v20, v20, v122
	v_mul_f32_e32 v21, v21, v122
	v_mul_f32_e32 v22, v22, v122
	v_mul_f32_e32 v23, v23, v122
	v_mul_f32_e32 v24, v24, v122
	v_mul_f32_e32 v9, v9, v122
	v_mul_f32_e32 v10, v10, v122
	v_mul_f32_e32 v11, v11, v122
	v_mul_f32_e32 v12, v12, v122
	v_mul_f32_e32 v13, v13, v122
	v_mul_f32_e32 v14, v14, v122
	v_mul_f32_e32 v15, v15, v122
	v_mul_f32_e32 v16, v16, v122
	v_mul_f32_e32 v1, v1, v122
	v_mul_f32_e32 v2, v2, v122
	v_mul_f32_e32 v3, v3, v122
	v_mul_f32_e32 v4, v4, v122
	v_mul_f32_e32 v5, v5, v122
	v_mul_f32_e32 v6, v6, v122
	v_mul_f32_e32 v7, v7, v122
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v8, v8, v122 :: v_dual_add_nc_u32 v121, 0, v75
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v75, off, off offset:516 ; 4-byte Folded Reload
	ds_load_b128 v[123:126], v121
	ds_load_b128 v[181:184], v121 offset:2048
	s_waitcnt vmcnt(0)
	ds_load_b128 v[127:130], v75
	ds_load_b128 v[74:77], v74
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[123:130], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[123:126], v78
	scratch_load_b32 v78, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[127:130], v78
	scratch_load_b32 v78, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[123:130], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[185:188], v78
	scratch_load_b32 v78, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[131:134], v78
	scratch_load_b32 v78, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[123:126], v78
	scratch_load_b32 v78, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[127:130], v78
	scratch_load_b32 v78, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[123:130], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[122:125], v78
	scratch_load_b32 v78, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v78
	scratch_load_b32 v78, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v252, v202
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v219.l
	v_mov_b16_e64 v35.h, v219.l
	v_mov_b16_e64 v36.h, v219.l
	v_mov_b16_e64 v37.h, v219.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v38.h, v219.l
	v_mov_b16_e64 v39.h, v219.l
	v_mov_b16_e64 v40.h, v219.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v167, v202
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s53, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s53
	v_permlanex16_b32 v35, v34, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v239
	v_perm_b32 v34, v35, v34, v240
	v_mov_b16_e32 v35.l, v0.h
	v_mov_b16_e64 v35.h, v219.l
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v0, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v218, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s52
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v0, v0
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v0, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v239
	v_perm_b32 v36, v36, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v217, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v216, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v0.h
	v_cmp_o_f32_e64 s52, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v0, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v38.h, s52
	v_permlanex16_b32 v38, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v0, v239
	v_perm_b32 v38, v38, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v215, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v214, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s51, v0, v0
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v0, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v239
	v_perm_b32 v40, v40, v0, v240
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[135:138], v78
	scratch_load_b32 v78, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[147:150], v78
	ds_load_b128 v[78:81], v0
	scratch_load_b32 v0, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[74:81], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[94:97], v0
	scratch_load_b32 v0, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[181:188], v[33:40], v[17:24]
	v_mov_b32_e32 v184, v98
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[74:77], v0
	scratch_load_b32 v0, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v0
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[74:81], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[139:142], v0
	scratch_load_b32 v0, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[33:40], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v33.h, v219.l
	v_mov_b16_e64 v34.h, v219.l
	v_mov_b16_e64 v35.h, v219.l
	v_mov_b16_e64 v36.h, v219.l
	v_mov_b16_e64 v37.h, v219.l
	v_mov_b16_e64 v38.h, v219.l
	v_mov_b16_e64 v39.h, v219.l
	v_mov_b16_e64 v40.h, v219.l
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[74:77], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v213, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v210, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s54
	v_readlane_b32 s52, v254, 25
	v_readlane_b32 s53, v254, 26
	v_readlane_b32 s54, v254, 27
	v_readlane_b32 s55, v254, 28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	v_cmp_o_f32_e64 s37, v0, v0
	v_readlane_b32 s56, v254, 29
	v_readlane_b32 s57, v254, 30
	v_readlane_b32 s58, v254, 31
	v_and_b32_e32 v34, 1, v34
	v_readlane_b32 s59, v255, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v0, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v0, v239
	v_perm_b32 v34, v34, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v212, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v0, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v211, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v0, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v36.h, vcc_lo
	v_permlanex16_b32 v36, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v36, v0, v239
	v_perm_b32 v36, v36, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v209, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v208, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s49
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v0, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v239
	v_perm_b32 v38, v38, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v207, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v206, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v0, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s3
	v_permlanex16_b32 v40, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v40, v0, v239
	v_perm_b32 v40, v40, v0, v240
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v0
	scratch_load_b32 v0, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[94:101], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[127:130], v0
	scratch_load_b32 v0, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[94:97], v0
	scratch_load_b32 v0, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v0
	scratch_load_b32 v0, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[94:101], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[94:97], v121 offset:4096
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v0
	scratch_load_b32 v0, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[143:146], v0
	ds_load_b128 v[135:138], v121 offset:6144
	scratch_load_b32 v0, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[94:101], v[33:40], v[9:16]
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v94, off, off offset:84
	scratch_load_b32 v95, off, off offset:80
	scratch_load_b32 v96, off, off offset:76
	scratch_load_b32 v97, off, off offset:72
	scratch_load_b32 v98, off, off offset:68
	scratch_load_b32 v99, off, off offset:64
	scratch_load_b32 v100, off, off offset:60
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(7)
	ds_load_b128 v[78:81], v0
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[74:81], v[33:40], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v33.h, v219.l
	v_mov_b16_e64 v34.h, v219.l
	v_mov_b16_e64 v35.h, v219.l
	v_mov_b16_e64 v36.h, v219.l
	v_mov_b16_e64 v37.h, v219.l
	v_mov_b16_e64 v38.h, v219.l
	v_mov_b16_e64 v39.h, v219.l
	v_mov_b16_e64 v40.h, v219.l
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v81, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[139:142], v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v205, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v204, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v0, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s3
	v_permlanex16_b32 v34, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v33, v34, v0, v239
	v_perm_b32 v34, v34, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v85, v202
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v85, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v0, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v200, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v0, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s3
	v_permlanex16_b32 v36, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v36, v0, v239
	v_perm_b32 v36, v36, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v168, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v73, v202
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v0, v38, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v0, v239
	v_perm_b32 v38, v38, v0, v240
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v220, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v196, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v0, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s3
	v_permlanex16_b32 v40, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v40, v0, v239
	v_perm_b32 v40, v40, v0, v240
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[127:134], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[143:150], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	scratch_load_b32 v0, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v0
.Ltmp657:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp658:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[33:40], v[17:24]
.Ltmp659:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v53, v0 :: v_dual_mov_b32 v0, v55
.Ltmp660:
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v78, off, off offset:120
	scratch_load_b32 v79, off, off offset:116
	scratch_load_b32 v80, off, off offset:112
.Ltmp661:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v54
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v50
	v_mov_b32_e32 v38, v70
.Ltmp662:
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v73, off, off offset:140
	scratch_load_b32 v74, off, off offset:136
	scratch_load_b32 v75, off, off offset:132
	scratch_load_b32 v76, off, off offset:128
	scratch_load_b32 v77, off, off offset:124
.Ltmp663:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v55, v0 :: v_dual_mov_b32 v0, v56
.Ltmp664:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp665:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v54, v34
.Ltmp666:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v54, v66
.Ltmp667:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v53
	v_add_f32_e32 v38, v70, v38
	v_add_f32_e32 v36, v56, v0
.Ltmp668:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v69
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp669:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v70, off, off offset:152 ; 4-byte Folded Reload
.Ltmp670:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp671:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v54, v66, v54
.Ltmp672:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v66, off, off offset:168 ; 4-byte Folded Reload
.Ltmp673:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v69, v0 :: v_dual_mov_b32 v0, v71
.Ltmp674:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v69, off, off offset:156 ; 4-byte Folded Reload
.Ltmp675:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp676:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v71, v0 :: v_dual_mov_b32 v0, v72
.Ltmp677:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v71, off, off offset:148 ; 4-byte Folded Reload
.Ltmp678:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp679:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v72, v0
.Ltmp680:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v49
.Ltmp681:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v72, off, off offset:144 ; 4-byte Folded Reload
.Ltmp682:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp683:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v49, v49, v0 :: v_dual_mov_b32 v0, v51
.Ltmp684:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp685:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v51, v51, v0 :: v_dual_mov_b32 v0, v52
.Ltmp686:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp687:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v0
.Ltmp688:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v65
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp689:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v65, v0 :: v_dual_mov_b32 v0, v67
.Ltmp690:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v46
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp691:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v67, v0
.Ltmp692:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v67, off, off offset:164 ; 4-byte Folded Reload
.Ltmp693:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v68
.Ltmp694:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v46, v65
.Ltmp695:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp696:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v68, v0
.Ltmp697:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v68, off, off offset:160 ; 4-byte Folded Reload
.Ltmp698:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v45
.Ltmp699:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v62, v65
.Ltmp700:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v42
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp701:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v0 :: v_dual_mov_b32 v0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v42, v42, v65
.Ltmp702:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp703:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v47, v47, v0 :: v_dual_mov_b32 v0, v48
.Ltmp704:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp705:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v48, v0
.Ltmp706:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v61
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp707:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v61, v61, v0 :: v_dual_mov_b32 v0, v63
.Ltmp708:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp709:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v63, v63, v0 :: v_dual_mov_b32 v0, v64
.Ltmp710:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp711:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v64, v0
.Ltmp712:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v0, v41 :: v_dual_mov_b32 v65, v58
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp713:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v0 :: v_dual_mov_b32 v0, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v58, v58, v65
.Ltmp714:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp715:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v43, v43, v0 :: v_dual_mov_b32 v0, v44
.Ltmp716:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp717:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v0
.Ltmp718:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v57
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp719:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v0 :: v_dual_mov_b32 v0, v59
.Ltmp720:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp721:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v59, v0 :: v_dual_mov_b32 v0, v60
.Ltmp722:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp723:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v0
.Ltmp724:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v199, v199
	v_max_f32_e32 v0, v0, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v199, v0
	v_mov_b32_e32 v199, v0
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v119
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v33, v66, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v119, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v230
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v66, v119, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v117
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v67, v66
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v117, v117
	v_max_f32_e32 v66, v66, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v117, v66
	v_mov_b32_e32 v117, v66
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v115
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v35, v68, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v115, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v228
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v115, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v36, v69, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v113, v113
	v_max_f32_e32 v68, v68, v89
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v89, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v113, v68
	v_mov_b32_e32 v113, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v37, v70, v69
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v111, v111
	v_max_f32_e32 v69, v69, v88
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v88, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v70, v111, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v70, v70
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v38, v71, v70
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v70, v109, v109
	v_max_f32_e32 v70, v70, v87
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v87, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v71, v109, v70
	v_mov_b32_e32 v109, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v71, v71
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v39, v72, v71
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v71, v107, v107
	v_max_f32_e32 v71, v71, v86
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v86, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v72, v107, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v40, v73, v72
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v72, v105, v105
	v_max_f32_e32 v72, v72, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v105, v72
	v_mov_b32_e32 v105, v72
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v49, v74, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v103, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v73, v73, v226
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v103, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v50, v75, v74
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v251, v251
	v_max_f32_e32 v74, v74, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v75, v251, v74
	v_mov_b32_e32 v251, v74
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v75, 0, v75, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v51, v76, v75
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v75, v153, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v75, v75, v224
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v76, v153, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v76, v76
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v76, 0, v76, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v52, v77, v76
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v76, v249, v249
	v_max_f32_e32 v76, v76, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v77, v249, v76
	v_mov_b32_e32 v249, v76
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v77, 0, v77, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v112
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v53, v78, v77
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v77, v112, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v77, v77, v179
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v78, v112, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v78, v78
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v78, 0, v78, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v54, v79, v78
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v78, v197, v197
	v_max_f32_e32 v78, v78, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v79, v197, v78
	v_mov_b32_e32 v197, v78
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v79, 0, v79, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v156
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v55, v80, v79
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v79, v156, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v79, v79, v177
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v80, v156, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v80, v80
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v80, 0, v80, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v56, v81, v80
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v80, v154, v154
	v_max_f32_e32 v80, v80, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v81, v154, v80 :: v_dual_mov_b32 v154, v80
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v81, 0, v81, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v151
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v45, v85, v81
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v81, v151, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v81, v81, v175
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v85, v151, v81
	v_mov_b32_e32 v151, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v85, v85
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v85, 0, v85, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v163
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v46, v86, v85 :: v_dual_max_f32 v85, v163, v163
	v_mov_b32_e32 v81, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v85, v85, v174
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v86, v163, v85 :: v_dual_mov_b32 v163, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v86, v86
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v86, 0, v86, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v47, v87, v86
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v86, v162, v162
	v_mov_b32_e32 v80, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v86, v86, v193
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v87, v162, v86
	v_mov_b32_e32 v162, v86
	v_mov_b32_e32 v86, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v87, v87
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v87, 0, v87, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v48, v88, v87
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v87, v120, v120
	v_max_f32_e32 v87, v87, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v88, v120, v87
	v_mov_b32_e32 v120, v87
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v88, 0, v88, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v61, v89, v88 :: v_dual_max_f32 v88, v118, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v78, v61
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v88, v88, v243 :: v_dual_mov_b32 v87, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v89, v118, v88 :: v_dual_mov_b32 v118, v88
	v_mov_b32_e32 v88, v54
	v_mov_b32_e32 v112, v77
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v89, 0, v89, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v108
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v62, v94, v89 :: v_dual_max_f32 v89, v108, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v77, v62
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v89, v89, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v94, v108, v89
	v_dual_mov_b32 v108, v89 :: v_dual_mov_b32 v107, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v94, 0, v94, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v106
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v63, v95, v94
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v94, v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v76, v63
	v_max_f32_e32 v94, v94, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v95, v106, v94
	v_mov_b32_e32 v106, v94
	v_mov_b32_e32 v94, v40
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v95, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v95, 0, v95, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v104
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v64, v96, v95
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v95, v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v95, v95, v192
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v96, v104, v95
	v_mov_b32_e32 v104, v95
	v_mov_b32_e32 v95, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v96, v96
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v96, 0, v96, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
	v_mov_b32_e32 v101, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v41, v97, v96 :: v_dual_max_f32 v96, v102, v102
	v_mov_b32_e32 v74, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v96, v96, v191
	v_dual_mov_b32 v156, v79 :: v_dual_mov_b32 v79, v48
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v97, v102, v96 :: v_dual_mov_b32 v102, v96
	v_mov_b32_e32 v96, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v97, v97
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v42, v98, v97
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v97, v250, v250
	v_mov_b32_e32 v71, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v97, v97, v190
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v98, v250, v97 :: v_dual_mov_b32 v119, v65
	v_mov_b32_e32 v250, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v98, v98
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v98, 0, v98, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v43, v99, v98 :: v_dual_max_f32 v98, v248, v248
	v_mov_b32_e32 v70, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v98, v98, v161
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v99, v248, v98 :: v_dual_mov_b32 v248, v98
	v_dual_mov_b32 v103, v73 :: v_dual_mov_b32 v98, v36
	v_mov_b32_e32 v153, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v99, v99
	v_mov_b32_e32 v75, v64
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v99, 0, v99, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v44, v100, v99
	scratch_load_b32 v100, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v246, v246
	v_mov_b32_e32 v115, v67
	v_max_f32_e32 v93, v99, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v99, v246, v93 :: v_dual_mov_b32 v246, v93
	v_mov_b32_e32 v93, v49
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v99, 0, v99, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v244
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v57, v100, v99
	scratch_load_b32 v100, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v99, v244, v244 :: v_dual_mov_b32 v68, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v99, v92
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v99, v244, v92
	v_mov_b32_e32 v244, v92
	v_mov_b32_e32 v92, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v99, v99
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v99, 0, v99, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v242
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v100, v99
	scratch_load_b32 v100, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v242, v242
	v_mov_b32_e32 v67, v58
	v_max_f32_e32 v91, v99, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v99, v242, v91 :: v_dual_mov_b32 v242, v91
	v_mov_b32_e32 v91, v51
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v99, 0, v99, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v237
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v59, v100, v99
	scratch_load_b32 v100, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v99, v237, v237 :: v_dual_mov_b32 v66, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v85, v45 :: v_dual_max_f32 v90, v99, v90
	v_mov_b32_e32 v97, v37
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v99, v237, v90
	v_dual_mov_b32 v237, v90 :: v_dual_mov_b32 v90, v52
	v_mov_b32_e32 v89, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v99, v99
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v99, 0, v99, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v60, v100, v99 :: v_dual_mov_b32 v111, v69
	v_dual_mov_b32 v100, v34 :: v_dual_mov_b32 v99, v35
	v_mov_b32_e32 v69, v44
	v_mov_b32_e32 v65, v60
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:196
	scratch_load_b32 v33, off, off offset:200
	scratch_load_b32 v34, off, off offset:204
	scratch_load_b32 v35, off, off offset:208
	scratch_load_b32 v36, off, off offset:220
	scratch_load_b64 v[41:42], off, off offset:316
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s0, v254, 19
	v_readlane_b32 s1, v253, 2
	.loc	1 823 32                        ; attention.py:823:32
	s_mov_b32 s54, s14
	s_mov_b32 s55, s15
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v101, off offset:168
	scratch_store_b32 off, v100, off offset:164
	scratch_store_b32 off, v99, off offset:160
	scratch_store_b32 off, v98, off offset:156
	scratch_store_b32 off, v97, off offset:152
	scratch_store_b32 off, v96, off offset:148
	scratch_store_b32 off, v95, off offset:144
	scratch_store_b32 off, v94, off offset:140
	scratch_store_b32 off, v93, off offset:136
	scratch_store_b32 off, v92, off offset:132
	scratch_store_b32 off, v91, off offset:128
	scratch_store_b32 off, v90, off offset:124
	scratch_store_b32 off, v89, off offset:120
	scratch_store_b32 off, v88, off offset:116
	scratch_store_b32 off, v87, off offset:112
	scratch_store_b32 off, v86, off offset:108
	scratch_store_b32 off, v85, off offset:104
	scratch_store_b32 off, v81, off offset:100
	scratch_store_b32 off, v80, off offset:96
	scratch_store_b32 off, v79, off offset:92
	scratch_store_b32 off, v78, off offset:88
	scratch_store_b32 off, v77, off offset:84
	scratch_store_b32 off, v76, off offset:80
	scratch_store_b32 off, v75, off offset:76
	scratch_store_b32 off, v74, off offset:72
	scratch_store_b32 off, v71, off offset:68
	scratch_store_b32 off, v70, off offset:64
	scratch_store_b32 off, v69, off offset:60
	scratch_store_b32 off, v68, off offset:56
	scratch_store_b32 off, v67, off offset:52
	scratch_store_b32 off, v66, off offset:48
	scratch_store_b32 off, v65, off offset:44
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s8, s103, s0
	v_readlane_b32 s0, v253, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v134, s103, v184
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[42:43], off, off offset:324
	scratch_load_b64 v[43:44], off, off offset:340
	scratch_load_b64 v[44:45], off, off offset:332
	s_mul_i32 s0, s8, s0
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[45:46], off, off offset:348
	scratch_load_b64 v[46:47], off, off offset:356
	scratch_load_b64 v[47:48], off, off offset:364
	scratch_load_b32 v48, off, off offset:392
	.loc	1 819 31                        ; attention.py:819:31
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
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s23, v0
	v_cmp_gt_i32_e64 s3, s23, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:212
	scratch_load_b32 v33, off, off offset:216
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s37, s23, v34
	v_cmp_gt_i32_e64 s41, s23, v36
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:232
	scratch_load_b32 v36, off, off offset:240
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s38, s23, v35
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v35, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 822 32                        ; attention.py:822:32
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
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v48, 0, v48
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v33, s103, v33
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v34, s103, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s39, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s40, s23, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:224
	scratch_load_b32 v33, off, off offset:228
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v36, s103, v36
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s44, s23, v34
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v34, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s46, s23, v36
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[36:37], off, off offset:260 ; 8-byte Folded Reload
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v35, s103, v35
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[37:38], off, off offset:288
	scratch_load_b64 v[38:39], off, off offset:296
	scratch_load_b64 v[39:40], off, off offset:304
	scratch_load_b32 v40, off, off offset:312
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s45, s23, v35
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v35, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v33, s103, v33
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v34, s103, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s42, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s43, s23, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b32 v33, off, off offset:248
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s49, s23, v34
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v34, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v37, s0, v37
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, s0, v38
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v39, s0, v39
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s0, v40
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v35, s103, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s50, s23, v35
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s103, v0
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v33, s103, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s47, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s48, s23, v33
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v33, off, off offset:268 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s0, v36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:276
	scratch_load_b32 v36, off, off offset:284
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s3
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s0, v35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s0, v36
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s37
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s38
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s39
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s40
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s41
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s42
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s43
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v0, v0, s[52:55], 0 offen
	buffer_load_u8 v33, v33, s[52:55], 0 offen
	buffer_load_u8 v34, v34, s[52:55], 0 offen
	buffer_load_u8 v36, v36, s[52:55], 0 offen
	buffer_load_u8 v37, v37, s[52:55], 0 offen
	buffer_load_u8 v38, v38, s[52:55], 0 offen
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s44
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s43, s23, v134
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s45
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s47
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s46
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	buffer_load_u8 v43, v43, s[52:55], 0 offen
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s48
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s49
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v41, v41, s[52:55], 0 offen
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s50
	.loc	1 823 32                        ; attention.py:823:32
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
	scratch_load_b32 v49, off, off offset:372 ; 4-byte Folded Reload
	s_mov_b64 s[0:1], s[52:53]
	s_waitcnt vmcnt(0)
	ds_store_b8 v49, v0
	ds_store_b8 v49, v36 offset:512
	ds_store_b8 v49, v40 offset:1024
	ds_store_b8 v49, v43 offset:1536
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	v_writelane_b32 v254, s0, 25
	v_writelane_b32 v255, s7, 0
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v33
	ds_store_b8 v0, v37 offset:512
	ds_store_b8 v0, v41 offset:1024
	ds_store_b8 v0, v45 offset:1536
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	v_writelane_b32 v254, s1, 26
	v_writelane_b32 v255, s8, 1
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v34
	ds_store_b8 v0, v38 offset:512
	ds_store_b8 v0, v42 offset:1024
	ds_store_b8 v0, v46 offset:1536
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	v_writelane_b32 v254, s2, 27
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v35
	ds_store_b8 v0, v39 offset:512
	ds_store_b8 v0, v44 offset:1024
	ds_store_b8 v0, v47 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b64 v[77:78], off, off offset:752
	scratch_load_b32 v0, off, off offset:476
	scratch_load_b32 v85, off, off offset:172
	v_writelane_b32 v254, s3, 28
	ds_load_2addr_stride64_b64 v[33:36], v48 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v48 offset0:2 offset1:3
	v_writelane_b32 v254, s4, 29
	v_writelane_b32 v254, s5, 30
	v_writelane_b32 v254, s6, 31
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s0, v253, 9
	v_readlane_b32 s7, v253, 16
	v_readlane_b32 s1, v253, 10
	v_readlane_b32 s2, v253, 11
	v_readlane_b32 s3, v253, 12
	v_readlane_b32 s4, v253, 13
	v_readlane_b32 s5, v253, 14
	v_readlane_b32 s6, v253, 15
	v_mov_b32_e32 v72, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v68, s3 :: v_dual_mov_b32 v69, s4
	v_dual_mov_b32 v70, s5 :: v_dual_mov_b32 v71, s6
	v_dual_mov_b32 v67, s2 :: v_dual_mov_b32 v66, s1
	v_mov_b32_e32 v65, s0
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s0, v253, 17
	v_readlane_b32 s1, v254, 0
	s_and_b32 s102, s0, s43
	v_readlane_b32 s0, v253, 18
	s_and_b32 s7, s1, s43
	v_readlane_b32 s1, v254, 1
	s_and_b32 s97, s0, s43
	v_readlane_b32 s0, v253, 19
	s_and_b32 s4, s1, s43
	v_readlane_b32 s1, v254, 2
	s_and_b32 s98, s0, s43
	v_readlane_b32 s0, v253, 20
	s_and_b32 s19, s1, s43
	v_readlane_b32 s1, v254, 3
	s_and_b32 s99, s0, s43
	v_readlane_b32 s0, v253, 21
	s_and_b32 s2, s1, s43
	v_readlane_b32 s1, v254, 4
	s_and_b32 vcc_hi, s0, s43
	v_readlane_b32 s0, v253, 22
	s_and_b32 s11, s1, s43
	v_readlane_b32 s1, v254, 5
	s_and_b32 s9, s0, s43
	v_readlane_b32 s0, v253, 23
	s_and_b32 s35, s1, s43
	v_readlane_b32 s1, v254, 6
	s_and_b32 s30, s0, s43
	v_readlane_b32 s0, v253, 24
	s_and_b32 s20, s1, s43
	v_readlane_b32 s1, v254, 7
	s_and_b32 s6, s0, s43
	v_readlane_b32 s0, v253, 25
	s_and_b32 s1, s1, s43
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(2) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[77:78], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[35:36], v[77:78], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[77:78], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[77:78], v[65:72] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[73:74], off, off offset:760
	scratch_load_b32 v0, off, off offset:480
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[73:74], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[73:74], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[73:74], off, off offset:768
	scratch_load_b32 v0, off, off offset:484
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[73:74], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[73:74], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v85
	scratch_load_b64 v[73:74], off, off offset:776 ; 8-byte Folded Reload
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s3, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s45, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s46, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s47, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s48, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[73:74], v[57:64] neg_lo:[1,1,0]
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v65, s8, v85, 1
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s8, s0, s43
	v_readlane_b32 s0, v253, 26
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[73:74], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[73:74], v[49:56] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v125, 0x7c, v65
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[73:74], v[33:40] neg_lo:[1,1,0]
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s22, s0, s43
	v_readlane_b32 s0, v253, 27
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v66, 4, v65
	v_add_nc_u32_e32 v67, 8, v65
	v_add_nc_u32_e32 v68, 12, v65
	v_add_nc_u32_e32 v69, 16, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s16, s0, s43
	v_readlane_b32 s0, v253, 28
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v70, 20, v65
	v_add_nc_u32_e32 v71, 24, v65
	v_add_nc_u32_e32 v72, 28, v65
	v_add_nc_u32_e32 v73, 32, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s96, s0, s43
	v_readlane_b32 s0, v253, 29
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v74, 36, v65
	v_add_nc_u32_e32 v75, 40, v65
	v_add_nc_u32_e32 v76, 44, v65
	v_add_nc_u32_e32 v77, 48, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s33, s0, s43
	v_readlane_b32 s0, v253, 30
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v78, 52, v65
	v_add_nc_u32_e32 v79, 56, v65
	v_add_nc_u32_e32 v80, 60, v65
	v_add_nc_u32_e32 v81, 64, v65
	v_add_nc_u32_e32 v92, 0x44, v65
	v_add_nc_u32_e32 v93, 0x48, v65
	v_add_nc_u32_e32 v94, 0x4c, v65
	v_add_nc_u32_e32 v95, 0x50, v65
	v_add_nc_u32_e32 v96, 0x54, v65
	v_add_nc_u32_e32 v97, 0x58, v65
	v_add_nc_u32_e32 v98, 0x5c, v65
	v_add_nc_u32_e32 v99, 0x60, v65
	v_add_nc_u32_e32 v100, 0x64, v65
	v_add_nc_u32_e32 v101, 0x68, v65
	v_add_nc_u32_e32 v121, 0x6c, v65
	v_add_nc_u32_e32 v122, 0x70, v65
	v_add_nc_u32_e32 v123, 0x74, v65
	v_add_nc_u32_e32 v124, 0x78, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s21, s0, s43
	v_readlane_b32 s0, v253, 31
	s_and_b32 s0, s0, s43
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s49, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 12, v85
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s50, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 14, v85
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s51, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 16, v85
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s52, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 18, v85
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s53, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 20, v85
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s54, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 22, v85
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s55, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 24, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v86, 0x80000000, v76, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s56, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 26, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v87, 0x80000000, v77, s56
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s57, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 28, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v88, 0x80000000, v78, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s58, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 30, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v89, 0x80000000, v79, s58
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s59, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 32, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v90, 0x80000000, v80, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s60, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 34, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v91, 0x80000000, v81, s60
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s61, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 36, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v161, 0x80000000, v92, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s62, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 38, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v167, 0x80000000, v93, s62
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s63, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 40, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v168, 0x80000000, v94, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s64, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 42, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v174, 0x80000000, v95, s64
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s65, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 44, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v175, 0x80000000, v96, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s66, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 46, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v176, 0x80000000, v97, s66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s67, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 48, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v177, 0x80000000, v98, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 50, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v178, 0x80000000, v99, s39
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s41, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 52, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v179, 0x80000000, v100, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s42, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 54, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v180, 0x80000000, v101, s42
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s44, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 56, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v181, 0x80000000, v121, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s40, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 58, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v182, 0x80000000, v122, s40
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 60, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v183, 0x80000000, v123, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s37, s23, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 62, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v85, 0x80000000, v75, s54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v190, 0x80000000, v124, s37
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s103, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v0, 0x80000000, v65, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 8
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v65, 0x80000000, v66, s45
	v_cndmask_b32_e64 v66, 0x80000000, v67, s46
	v_cndmask_b32_e32 v191, 0x80000000, v125, vcc_lo
	v_cndmask_b32_e64 v67, 0x80000000, v68, s47
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s31, s3, s43
	v_readlane_b32 s3, v254, 9
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v68, 0x80000000, v69, s48
	v_cndmask_b32_e64 v69, 0x80000000, v70, s49
	v_cndmask_b32_e64 v70, 0x80000000, v71, s50
	v_cndmask_b32_e64 v71, 0x80000000, v72, s51
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s5, s3, s43
	v_readlane_b32 s3, v254, 10
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v72, 0x80000000, v73, s52
	v_cndmask_b32_e64 v73, 0x80000000, v74, s53
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s36, s3, s43
	v_readlane_b32 s3, v254, 11
	s_and_b32 s100, s3, s43
	v_readlane_b32 s3, v254, 12
	s_and_b32 s104, s3, s43
	v_readlane_b32 s3, v254, 13
	s_and_b32 s17, s3, s43
	v_readlane_b32 s3, v254, 14
	s_and_b32 s34, s3, s43
	v_readlane_b32 s3, v254, 15
	s_and_b32 s18, s3, s43
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v253, 3
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 16
	s_and_b32 s10, s3, s43
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v74, off, off offset:1020 ; 4-byte Folded Reload
	s_and_not1_b32 s67, s97, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v134, v74
	scratch_load_b32 v74, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s26, vcc_lo, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v134, v74
	scratch_load_b32 v74, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s97
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s67, s3
	s_and_not1_b32 s3, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v134, v74
	scratch_load_b32 v74, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s37, s98
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v134, v74
	scratch_load_b32 v74, off, off offset:1036 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s37, s38, s99
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s37, s37, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v134, v74
	scratch_load_b32 v74, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s39, vcc_hi
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v134, v74
	scratch_load_b32 v74, off, off offset:1044 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s40, s9
	s_and_not1_b32 s9, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v134, v74
	scratch_load_b32 v74, off, off offset:1048 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s40, s41, s30
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v134, v74
	scratch_load_b32 v74, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s42, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v134, v74
	scratch_load_b32 v74, off, off offset:1056 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s42, s43, s8
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v134, v74
	scratch_load_b32 v74, off, off offset:1060 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s43, s44, s22
	s_and_not1_b32 s22, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v134, v74
	scratch_load_b32 v74, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s44, s45, s16
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v134, v74
	scratch_load_b32 v74, off, off offset:1068 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s45, s46, s96
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v134, v74
	scratch_load_b32 v74, off, off offset:1072 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s46, s47, s33
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v134, v74
	scratch_load_b32 v74, off, off offset:1076 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s47, s48, s21
	s_and_not1_b32 s21, s21, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v134, v74
	scratch_load_b32 v74, off, off offset:1080 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s48, s49, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v134, v74
	scratch_load_b32 v74, off, off offset:1084 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s49, s50, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v134, v74
	scratch_load_b32 v74, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s50, s51, s4
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v134, v74
	scratch_load_b32 v74, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s51, s52, s19
	s_and_not1_b32 s19, s19, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v134, v74
	scratch_load_b32 v74, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s52, s53, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v134, v74
	scratch_load_b32 v74, off, off offset:1100 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s53, s54, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v134, v74
	scratch_load_b32 v74, off, off offset:1104 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s54, s55, s35
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v134, v74
	scratch_load_b32 v74, off, off offset:1108 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s55, s56, s20
	s_and_not1_b32 s20, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v134, v74
	scratch_load_b32 v74, off, off offset:1112 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s56, s57, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v134, v74
	scratch_load_b32 v74, off, off offset:1116 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s57, s58, s31
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v134, v74
	scratch_load_b32 v74, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s58, s59, s5
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v134, v74
	scratch_load_b32 v74, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s59, s60, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v134, v74
	scratch_load_b32 v74, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s60, s61, s100
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v134, v74
	scratch_load_b32 v74, off, off offset:1132 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s61, s62, s104
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v134, v74
	scratch_load_b32 v74, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s62, s63, s17
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v134, v74
	scratch_load_b32 v74, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s63, s64, s34
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v134, v74
	scratch_load_b32 v74, off, off offset:1144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s64, s65, s18
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v134, v74
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s65, s66, s10
	s_and_not1_b32 s66, s102, exec_lo
	s_and_not1_b32 s10, s10, exec_lo
	s_or_b32 s102, s66, s26
	s_and_b32 s26, s27, exec_lo
	s_and_not1_b32 s27, s99, exec_lo
	s_or_b32 s98, s3, s26
	s_and_not1_b32 s3, vcc_hi, exec_lo
	s_and_b32 s26, s38, exec_lo
	s_or_b32 s99, s27, s37
	s_and_b32 s27, s39, exec_lo
	s_or_b32 vcc_hi, s3, s26
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s26, s40, exec_lo
	s_or_b32 s9, s9, s27
	s_and_b32 s27, s41, exec_lo
	s_or_b32 s30, s3, s26
	s_and_not1_b32 s3, s8, exec_lo
	s_and_b32 s8, s42, exec_lo
	s_and_b32 s26, s43, exec_lo
	s_or_b32 s6, s6, s27
	s_or_b32 s8, s3, s8
	s_or_b32 s22, s22, s26
	s_and_not1_b32 s3, s16, exec_lo
	s_and_b32 s16, s44, exec_lo
	s_and_not1_b32 s26, s96, exec_lo
	s_and_b32 s27, s45, exec_lo
	s_or_b32 s16, s3, s16
	s_or_b32 s96, s26, s27
	s_and_not1_b32 s3, s33, exec_lo
	s_and_b32 s26, s46, exec_lo
	s_and_b32 s27, s47, exec_lo
	s_or_b32 s33, s3, s26
	s_and_b32 s3, s48, exec_lo
	s_and_b32 s26, s49, exec_lo
	s_or_b32 s0, s0, s3
	s_or_b32 s7, s7, s26
	s_and_not1_b32 s3, s4, exec_lo
	s_and_b32 s4, s50, exec_lo
	s_and_b32 s26, s51, exec_lo
	s_or_b32 s4, s3, s4
	s_or_b32 s19, s19, s26
	s_and_b32 s3, s52, exec_lo
	s_and_b32 s26, s53, exec_lo
	s_or_b32 s21, s21, s27
	s_or_b32 s2, s2, s3
	s_or_b32 s11, s11, s26
	s_and_not1_b32 s3, s35, exec_lo
	s_and_b32 s26, s54, exec_lo
	s_and_b32 s27, s55, exec_lo
	s_or_b32 s35, s3, s26
	s_or_b32 s20, s20, s27
	s_and_b32 s3, s56, exec_lo
	s_and_not1_b32 s26, s31, exec_lo
	s_and_b32 s27, s57, exec_lo
	s_or_b32 s1, s1, s3
	s_or_b32 s31, s26, s27
	s_and_not1_b32 s3, s5, exec_lo
	s_and_b32 s5, s58, exec_lo
	s_and_not1_b32 s26, s36, exec_lo
	s_and_b32 s27, s59, exec_lo
	s_or_b32 s5, s3, s5
	s_or_b32 s36, s26, s27
	s_and_not1_b32 s3, s100, exec_lo
	s_and_b32 s26, s60, exec_lo
	s_and_not1_b32 s27, s104, exec_lo
	s_and_b32 s37, s61, exec_lo
	s_or_b32 s100, s3, s26
	s_or_b32 s104, s27, s37
	s_and_not1_b32 s3, s17, exec_lo
	s_and_b32 s17, s62, exec_lo
	s_and_not1_b32 s26, s34, exec_lo
	s_and_b32 s27, s63, exec_lo
	s_or_b32 s17, s3, s17
	s_or_b32 s34, s26, s27
	s_and_not1_b32 s3, s18, exec_lo
	s_and_b32 s18, s64, exec_lo
	s_and_b32 s26, s65, exec_lo
	s_or_b32 s18, s3, s18
	s_or_b32 s10, s10, s26
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v133, v0, s[12:15], 0 offen
	buffer_load_u16 v132, v65, s[12:15], 0 offen
	buffer_load_u16 v131, v66, s[12:15], 0 offen
	buffer_load_u16 v0, v67, s[12:15], 0 offen
	buffer_load_u16 v130, v68, s[12:15], 0 offen
	buffer_load_u16 v129, v69, s[12:15], 0 offen
	buffer_load_u16 v128, v70, s[12:15], 0 offen
	buffer_load_u16 v127, v71, s[12:15], 0 offen
	buffer_load_u16 v65, v72, s[12:15], 0 offen
	buffer_load_u16 v126, v73, s[12:15], 0 offen
	buffer_load_u16 v125, v85, s[12:15], 0 offen
	buffer_load_u16 v124, v86, s[12:15], 0 offen
	buffer_load_u16 v123, v87, s[12:15], 0 offen
	buffer_load_u16 v121, v88, s[12:15], 0 offen
	buffer_load_u16 v93, v89, s[12:15], 0 offen
	buffer_load_u16 v92, v90, s[12:15], 0 offen
	buffer_load_u16 v122, v91, s[12:15], 0 offen
	buffer_load_u16 v68, v161, s[12:15], 0 offen
	buffer_load_u16 v91, v167, s[12:15], 0 offen
	buffer_load_u16 v90, v168, s[12:15], 0 offen
	buffer_load_u16 v89, v174, s[12:15], 0 offen
	buffer_load_u16 v88, v175, s[12:15], 0 offen
	buffer_load_u16 v87, v176, s[12:15], 0 offen
	buffer_load_u16 v86, v177, s[12:15], 0 offen
	buffer_load_u16 v85, v178, s[12:15], 0 offen
	buffer_load_u16 v73, v179, s[12:15], 0 offen
	buffer_load_u16 v67, v180, s[12:15], 0 offen
	buffer_load_u16 v72, v181, s[12:15], 0 offen
	buffer_load_u16 v71, v182, s[12:15], 0 offen
	buffer_load_u16 v70, v183, s[12:15], 0 offen
	buffer_load_u16 v69, v190, s[12:15], 0 offen
	buffer_load_u16 v66, v191, s[12:15], 0 offen
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s3, v253, 0
	scratch_store_b32 off, v164, off offset:40 ; 4-byte Folded Spill
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v74, off, off offset:1176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v134, v74
	scratch_load_b32 v74, off, off offset:1180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v134, v74
	scratch_load_b32 v74, off, off offset:1184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s37, v134, v74
	scratch_load_b32 v74, off, off offset:1188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s38, v134, v74
	scratch_load_b32 v74, off, off offset:1192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s39, v134, v74
	scratch_load_b32 v74, off, off offset:1196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s40, v134, v74
	scratch_load_b32 v74, off, off offset:1200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s41, v134, v74
	scratch_load_b32 v74, off, off offset:1204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s42, v134, v74
	scratch_load_b32 v74, off, off offset:1208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s43, v134, v74
	scratch_load_b32 v74, off, off offset:1212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s44, v134, v74
	scratch_load_b32 v74, off, off offset:1216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s45, v134, v74
	scratch_load_b32 v74, off, off offset:1220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s46, v134, v74
	scratch_load_b32 v74, off, off offset:1224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s47, v134, v74
	scratch_load_b32 v74, off, off offset:1228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s48, v134, v74
	scratch_load_b32 v74, off, off offset:1232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s49, v134, v74
	scratch_load_b32 v74, off, off offset:1236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s50, v134, v74
	scratch_load_b32 v74, off, off offset:1240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s51, v134, v74
	scratch_load_b32 v74, off, off offset:1244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s52, v134, v74
	scratch_load_b32 v74, off, off offset:1248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s53, v134, v74
	scratch_load_b32 v74, off, off offset:1252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s54, v134, v74
	scratch_load_b32 v74, off, off offset:1256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s55, v134, v74
	scratch_load_b32 v74, off, off offset:1260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s56, v134, v74
	scratch_load_b32 v74, off, off offset:1264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s57, v134, v74
	scratch_load_b32 v74, off, off offset:1268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s58, v134, v74
	scratch_load_b32 v74, off, off offset:1400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s59, v134, v74
	scratch_load_b32 v74, off, off offset:1396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s60, v134, v74
	scratch_load_b32 v74, off, off offset:1392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s61, v134, v74
	scratch_load_b32 v74, off, off offset:1388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s62, v134, v74
	scratch_load_b32 v74, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s63, v134, v74
	scratch_load_b32 v74, off, off offset:1380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s64, v134, v74
	scratch_load_b32 v74, off, off offset:1376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s65, v134, v74
	scratch_load_b32 v74, off, off offset:1372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s66, v134, v74
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v74, off, off offset:1368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v134, v74
	scratch_load_b32 v74, off, off offset:1364 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s26, vcc_lo, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s102
	s_and_b32 s26, s26, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v134, v74
	scratch_load_b32 v74, off, off offset:1360 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s3, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s97
	s_and_b32 s27, s27, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v134, v74
	scratch_load_b32 v74, off, off offset:1356 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s67, s37, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s67, s67, s98
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v134, v74
	scratch_load_b32 v74, off, off offset:1352 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s38, s70
	s_and_b32 s38, s38, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s38, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v134, v74
	scratch_load_b32 v74, off, off offset:1348 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s39, s71
	s_and_b32 s39, s39, vcc_hi
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v134, v74
	scratch_load_b32 v74, off, off offset:1344 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s40, s72
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s40, s40, s9
	s_and_not1_b32 s9, s9, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v134, v74
	scratch_load_b32 v74, off, off offset:1340 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s41, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s41, s41, s30
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v134, v74
	scratch_load_b32 v74, off, off offset:1336 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s42, s74
	s_and_b32 s42, s42, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v134, v74
	scratch_load_b32 v74, off, off offset:1332 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s43, s75
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s43, s43, s8
	s_and_not1_b32 s8, s8, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v134, v74
	scratch_load_b32 v74, off, off offset:1328 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s44, s76
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s44, s44, s22
	s_and_not1_b32 s22, s22, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v134, v74
	scratch_load_b32 v74, off, off offset:1324 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s45, s45, s77
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s45, s45, s16
	s_and_not1_b32 s16, s16, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v134, v74
	scratch_load_b32 v74, off, off offset:1320 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s46, s46, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s46, s46, s96
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v134, v74
	scratch_load_b32 v74, off, off offset:1316 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s47, s47, s79
	s_and_b32 s47, s47, s33
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v134, v74
	scratch_load_b32 v74, off, off offset:1312 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s48, s48, s80
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s48, s48, s21
	s_and_not1_b32 s21, s21, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v134, v74
	scratch_load_b32 v74, off, off offset:1308 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s49, s49, s81
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s49, s49, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v134, v74
	scratch_load_b32 v74, off, off offset:1304 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s50, s50, s82
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s50, s50, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v134, v74
	scratch_load_b32 v74, off, off offset:1300 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s51, s51, s83
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s51, s51, s4
	s_and_not1_b32 s4, s4, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v134, v74
	scratch_load_b32 v74, off, off offset:1296 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s52, s52, s84
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s52, s52, s19
	s_and_not1_b32 s19, s19, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v134, v74
	scratch_load_b32 v74, off, off offset:1292 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s53, s53, s85
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s53, s53, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v134, v74
	scratch_load_b32 v74, off, off offset:1288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s54, s54, s86
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s54, s54, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v134, v74
	scratch_load_b32 v74, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s55, s55, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s55, s55, s35
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v134, v74
	scratch_load_b32 v74, off, off offset:1280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s56, s56, s88
	s_and_b32 s56, s56, s20
	s_and_not1_b32 s20, s20, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v134, v74
	scratch_load_b32 v74, off, off offset:1276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s57, s57, s89
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s57, s57, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v134, v74
	scratch_load_b32 v74, off, off offset:1272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s58, s58, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s58, s58, s31
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v134, v74
	scratch_load_b32 v74, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s59, s59, s91
	s_and_b32 s59, s59, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v134, v74
	scratch_load_b32 v74, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s60, s60, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s60, s60, s36
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v134, v74
	scratch_load_b32 v74, off, off offset:1164 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s61, s61, s93
	s_and_b32 s61, s61, s100
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v134, v74
	scratch_load_b32 v74, off, off offset:1160 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s62, s62, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s62, s62, s104
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s95, v134, v74
	scratch_load_b32 v74, off, off offset:1156 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s63, s63, s95
	s_and_b32 s63, s63, s17
	s_and_not1_b32 s17, s17, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v134, v74
	scratch_load_b32 v74, off, off offset:1152 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s64, s64, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s64, s64, s34
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v134, v74
	scratch_load_b32 v74, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s65, s3
	s_and_not1_b32 s65, s102, exec_lo
	s_and_b32 s3, s3, s18
	s_or_b32 s102, s65, s26
	s_and_not1_b32 s26, s98, exec_lo
	s_and_not1_b32 s65, s99, exec_lo
	s_and_not1_b32 s18, s18, exec_lo
	s_or_b32 s99, s65, s38
	s_and_b32 s38, s40, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s9, s9, s38
	s_and_b32 s38, s42, exec_lo
	s_or_b32 s18, s18, s3
	s_or_b32 s6, s6, s38
	s_and_b32 s38, s46, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v134, v74
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s66, s37
	s_and_not1_b32 s66, s97, exec_lo
	s_and_b32 s37, s37, s10
	s_or_b32 s97, s66, s27
	s_and_b32 s27, s67, exec_lo
	s_and_not1_b32 s10, s10, exec_lo
	s_or_b32 s98, s26, s27
	s_and_not1_b32 s26, vcc_hi, exec_lo
	s_and_b32 s27, s39, exec_lo
	s_and_b32 s39, s62, exec_lo
	s_or_b32 vcc_hi, s26, s27
	s_and_not1_b32 s26, s30, exec_lo
	s_and_b32 s27, s41, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s30, s26, s27
	s_and_b32 s26, s43, exec_lo
	s_and_b32 s27, s44, exec_lo
	s_or_b32 s8, s8, s26
	s_or_b32 s22, s22, s27
	s_and_b32 s26, s45, exec_lo
	s_and_not1_b32 s27, s96, exec_lo
	s_or_b32 s16, s16, s26
	s_or_b32 s96, s27, s38
	s_and_not1_b32 s26, s33, exec_lo
	s_and_b32 s27, s47, exec_lo
	s_and_b32 s38, s48, exec_lo
	s_or_b32 s33, s26, s27
	s_and_b32 s26, s49, exec_lo
	s_and_b32 s27, s50, exec_lo
	s_or_b32 s0, s0, s26
	s_or_b32 s7, s7, s27
	s_and_b32 s26, s51, exec_lo
	s_and_b32 s27, s52, exec_lo
	s_or_b32 s4, s4, s26
	s_or_b32 s19, s19, s27
	s_and_b32 s26, s53, exec_lo
	s_and_b32 s27, s54, exec_lo
	s_or_b32 s2, s2, s26
	s_or_b32 s11, s11, s27
	s_and_not1_b32 s26, s35, exec_lo
	s_and_b32 s27, s55, exec_lo
	s_or_b32 s21, s21, s38
	s_or_b32 s35, s26, s27
	s_and_b32 s26, s57, exec_lo
	s_and_not1_b32 s27, s31, exec_lo
	s_and_b32 s31, s58, exec_lo
	s_or_b32 s1, s1, s26
	s_or_b32 s31, s27, s31
	s_and_b32 s26, s59, exec_lo
	s_and_not1_b32 s27, s36, exec_lo
	s_and_b32 s36, s60, exec_lo
	s_or_b32 s5, s5, s26
	s_or_b32 s36, s27, s36
	s_and_not1_b32 s26, s100, exec_lo
	s_and_b32 s27, s61, exec_lo
	s_and_b32 s38, s56, exec_lo
	s_or_b32 s100, s26, s27
	s_and_b32 s26, s63, exec_lo
	s_or_b32 s20, s20, s38
	s_and_not1_b32 s38, s104, exec_lo
	s_and_not1_b32 s27, s34, exec_lo
	s_and_b32 s34, s64, exec_lo
	s_or_b32 s17, s17, s26
	s_and_b32 s26, s37, exec_lo
	s_or_b32 s104, s38, s39
	s_or_b32 s34, s27, s34
	s_or_b32 s10, s10, s26
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v69, off, off offset:1408
	scratch_load_b32 v70, off, off offset:1412
	scratch_load_b32 v71, off, off offset:1416
	scratch_load_b32 v68, off, off offset:1420
	scratch_load_b32 v72, off, off offset:1424
	v_readlane_b32 s40, v253, 4
	v_readlane_b32 s41, v253, 5
	v_readlane_b32 s33, v253, 8
	v_readlane_b32 s42, v253, 6
	v_readlane_b32 s43, v253, 7
.LBB0_15:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, 0, v71
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v65, 0x80, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s41, s41, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[37:40] offset:16
	v_and_b32_e32 v33, 28, v70
	v_lshrrev_b32_e32 v34, 1, v71
	s_waitcnt vmcnt(0)
	v_add3_u32 v35, 0, v72, v65
	ds_store_b128 v0, v[49:52] offset:128
	ds_store_b128 v0, v[53:56] offset:144
	ds_store_b128 v0, v[45:48] offset:32
	ds_store_b128 v0, v[61:64] offset:48
	ds_store_b128 v0, v[41:44] offset:160
	ds_store_b128 v0, v[57:60] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v33, v35, v34, v33
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:184
	scratch_load_b32 v63, off, off offset:180
	scratch_load_b32 v62, off, off offset:176
	ds_load_b32 v0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v33
	v_rcp_f32_e32 v43, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v39
	v_rcp_f32_e32 v44, v37
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v49, -v33, v42, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v35, v43, 1.0
	v_fma_f32 v52, -v39, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v37, v44, 1.0
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_dual_fmac_f32 v42, v49, v42 :: v_dual_fmac_f32 v45, v52, v45
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v47, null, v0, v0, v30
	v_fmac_f32_e32 v44, v51, v44
	v_mul_f32_e32 v54, v40, v45
	v_dual_mul_f32 v50, v34, v42 :: v_dual_mul_f32 v51, v36, v43
	v_rcp_f32_e32 v53, v41
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v48, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v35, v51, v36
	v_mul_f32_e32 v52, v38, v44
	v_fma_f32 v56, -v33, v50, v34
	v_div_scale_f32 v46, s4, v29, v0, v29
	v_fmac_f32_e32 v51, v57, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v58, -v37, v52, v38
	v_fma_f32 v55, -v41, v53, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v47, v49, 1.0
	v_fmac_f32_e32 v50, v56, v42
	v_fma_f32 v59, -v39, v54, v40
	v_dual_fmac_f32 v52, v58, v44 :: v_dual_fmac_f32 v53, v55, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v60, v49
	v_fma_f32 v33, -v33, v50, v34
	v_fma_f32 v34, -v35, v51, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v35, -v37, v52, v38
	v_rcp_f32_e32 v38, v48
	v_mul_f32_e32 v37, v46, v53
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v43, v51
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, s1, v30, v0, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v48, v38, 1.0
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_scale_f32 v34, null, v0, v0, v32
	v_div_fmas_f32 v35, v35, v44, v52
	v_fmac_f32_e32 v38, v42, v38
	v_fmac_f32_e32 v54, v59, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v34
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v35, v0, v27
	v_fma_f32 v36, -v39, v54, v40
	v_fma_f32 v39, -v41, v37, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v45, v54
	v_fmac_f32_e32 v37, v39, v53
	v_div_scale_f32 v39, null, v0, v0, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v34, v43, 1.0
	v_mul_f32_e32 v40, v33, v49
	v_div_fixup_f32 v28, v36, v0, v28
	v_rcp_f32_e32 v44, v39
	v_div_scale_f32 v36, s3, v31, v0, v31
	v_fmac_f32_e32 v43, v42, v43
	v_fma_f32 v35, -v47, v40, v33
	v_fma_f32 v41, -v41, v37, v46
	v_div_scale_f32 v42, s5, v32, v0, v32
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v40, v35, v49 :: v_dual_mul_f32 v35, v36, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v39, v44, 1.0
	v_mul_f32_e32 v45, v42, v43
	v_fma_f32 v33, -v47, v40, v33
	v_div_scale_f32 v47, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v44, v46, v44
	v_div_fmas_f32 v37, v41, v53, v37
	v_fma_f32 v41, -v48, v35, v36
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s1, v17, v0, v17
	v_div_fmas_f32 v33, v33, v49, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v38
	v_fma_f32 v41, -v34, v45, v42
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v47
	v_div_fixup_f32 v30, v33, v0, v30
	v_fma_f32 v33, -v48, v35, v36
	v_dual_mul_f32 v36, v46, v44 :: v_dual_fmac_f32 v45, v41, v43
	v_div_fixup_f32 v29, v37, v0, v29
	v_div_scale_f32 v41, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v38, v35
	v_fma_f32 v35, -v39, v36, v46
	v_fma_f32 v34, -v34, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v47, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v33, v0, v31
	v_fmac_f32_e32 v36, v35, v44
	v_div_fmas_f32 v34, v34, v43, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, s3, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v39, v36, v46
	v_div_scale_f32 v46, null, v0, v0, v21
	v_div_scale_f32 v42, null, v0, v0, v20
	v_div_fmas_f32 v33, v33, v44, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v44, s1, v20, v0, v20
	v_fmac_f32_e32 v40, v37, v40
	v_rcp_f32_e32 v37, v41
	v_rcp_f32_e32 v35, v42
	v_div_scale_f32 v39, s4, v19, v0, v19
	v_div_fixup_f32 v32, v34, v0, v32
	v_div_fixup_f32 v17, v33, v0, v17
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v41, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v49, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v45, null, v0, v0, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v38, v37 :: v_dual_mul_f32 v47, v44, v35
	v_div_fmas_f32 v33, v33, v40, v43
	v_rcp_f32_e32 v48, v45
	v_div_scale_f32 v40, s3, v21, v0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v42, v47, v44
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v41, v34, v39
	v_div_scale_f32 v41, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v38, v35
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v40, v36
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v43, -v45, v48, 1.0
	v_fma_f32 v34, -v42, v47, v44
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v37, -v46, v38, v40
	v_div_scale_f32 v44, null, v0, v0, v24
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, s5, v22, v0, v22
	v_div_fmas_f32 v34, v34, v35, v47
	v_fmac_f32_e32 v38, v37, v36
	v_rcp_f32_e32 v35, v44
	v_fmac_f32_e32 v48, v43, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v41, v42, 1.0
	v_div_fixup_f32 v19, v33, v0, v19
	v_div_fixup_f32 v20, v34, v0, v20
	v_fma_f32 v33, -v46, v38, v40
	v_div_scale_f32 v34, s1, v23, v0, v23
	v_fmac_f32_e32 v42, v47, v42
	v_mul_f32_e32 v43, v39, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v36, v38
	v_mul_f32_e32 v38, v34, v42
	v_fma_f32 v37, -v45, v43, v39
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v37, v48
	v_fma_f32 v37, -v44, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v45, v43, v39
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v9
	v_div_scale_f32 v39, s3, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v48, v43
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v43, -v41, v38, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v33, -v44, v45, v39
	v_fmac_f32_e32 v38, v43, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v37, v40, 1.0
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_fixup_f32 v23, v34, v0, v23
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v35, v0, v24
	v_fma_f32 v35, -v48, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v44, v43
	v_mul_f32_e32 v39, v33, v40
	v_div_scale_f32 v44, s5, v11, v0, v11
	v_fmac_f32_e32 v36, v47, v36
	v_fmac_f32_e32 v50, v35, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v37, v39, v33
	v_mul_f32_e32 v45, v44, v43
	v_div_scale_f32 v35, s3, v12, v0, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	s_waitcnt vmcnt(1)
	v_cmp_gt_i32_e64 s6, s101, v63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s7, s101, v62
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v38, v36
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v33, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v41, v38, v49
	v_fma_f32 v34, -v34, v51, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	scratch_load_b32 v48, off, off offset:192 ; 4-byte Folded Reload
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v41, v52
	v_div_fixup_f32 v6, v35, v0, v6
	scratch_load_b32 v35, off, off offset:188 ; 4-byte Folded Reload
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fixup_f32 v7, v34, v0, v7
	scratch_load_b32 v34, off, off offset:172 ; 4-byte Folded Reload
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v5, v33, v0, v5
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s101, v64
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, v69, s101
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	s_waitcnt vmcnt(2)
	v_cmp_gt_i32_e64 s3, s101, v48
	s_waitcnt vmcnt(1)
	v_cmp_gt_i32_e64 s4, s101, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s1, s101, v34
	v_or_b32_e32 v61, 12, v34
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
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v34, 2
	v_add_lshl_u32 v34, v32, v48, 2
	scratch_load_b32 v48, off, off offset:1404 ; 4-byte Folded Reload
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s33, s1
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s101, v61
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s33, s3
	s_and_b32 s3, s33, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s33, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v8, v33, s[40:43], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_add_lshl_u32 v8, v32, v64, 2
	s_clause 0x1
	buffer_store_b32 v25, v34, s[40:43], 0 offen
	buffer_store_b32 v26, v35, s[40:43], 0 offen
	v_add_lshl_u32 v25, v32, v63, 2
	v_add_lshl_u32 v26, v32, v62, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v61, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s7
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s101, v57
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s8
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s101, v56
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[40:43], 0 offen
	buffer_store_b32 v28, v25, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v57, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s101, v54
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v32, v56, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s9
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s101, v53
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[40:43], 0 offen
	buffer_store_b32 v30, v33, s[40:43], 0 offen
	v_add_lshl_u32 v26, v32, v54, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v53, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s11
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s101, v50
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s12
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s101, v47
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[40:43], 0 offen
	buffer_store_b32 v17, v25, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v50, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s101, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v32, v47, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s13
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s101, v44
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[40:43], 0 offen
	buffer_store_b32 v19, v27, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v46, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s14
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v44, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s15
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s101, v42
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s16
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s101, v40
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[40:43], 0 offen
	buffer_store_b32 v21, v17, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v42, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s101, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v32, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s17
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s101, v43
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[40:43], 0 offen
	buffer_store_b32 v23, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v32, v45, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v43, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s19
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s101, v41
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s20
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s101, v39
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[40:43], 0 offen
	buffer_store_b32 v9, v17, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v41, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s101, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v39, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s21
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s101, v37
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[40:43], 0 offen
	buffer_store_b32 v11, v19, s[40:43], 0 offen
	v_add_lshl_u32 v10, v32, v38, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v37, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s23
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s101, v36
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s24
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s101, v60
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[40:43], 0 offen
	buffer_store_b32 v13, v9, s[40:43], 0 offen
	v_add_lshl_u32 v8, v32, v36, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s101, v59
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v60, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s101, v58
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[40:43], 0 offen
	buffer_store_b32 v15, v11, s[40:43], 0 offen
	v_add_lshl_u32 v10, v32, v59, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v58, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s27
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s101, v55
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s28
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s101, v52
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v16, v8, s[40:43], 0 offen
	buffer_store_b32 v1, v9, s[40:43], 0 offen
	v_add_lshl_u32 v1, v32, v55, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s101, v51
	v_cmp_gt_i32_e32 vcc_lo, s101, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[40:43], 0 offen
	buffer_store_b32 v3, v11, s[40:43], 0 offen
	v_add_lshl_u32 v2, v32, v52, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s29
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v3, v32, v51, 2
	v_add_lshl_u32 v8, v32, v49, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s33, s30
	s_and_b32 s0, s33, s0
	s_and_b32 vcc_lo, s33, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s1, s101, v48
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v48, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s33, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[40:43], 0 offen
	buffer_store_b32 v5, v2, s[40:43], 0 offen
	buffer_store_b32 v6, v3, s[40:43], 0 offen
	buffer_store_b32 v7, v8, s[40:43], 0 offen
	buffer_store_b32 v0, v9, s[40:43], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp725:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1432
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1432
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 44052
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1432
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
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
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
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
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
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
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
    .private_segment_fixed_size: 1432
    .sgpr_count:     107
    .sgpr_spill_count: 66
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 367
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
