	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[72:75], s[0:1], 0x4c
	s_load_b32 s70, s[0:1], 0x60
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v33, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_or_b32_e32 v2, 16, v17
	v_or_b32_e32 v4, 18, v17
	v_or_b32_e32 v6, 2, v17
	v_or_b32_e32 v8, 20, v17
	v_or_b32_e32 v9, 4, v17
	v_or_b32_e32 v10, 22, v17
	v_or_b32_e32 v11, 6, v17
	v_or_b32_e32 v12, 24, v17
	v_or_b32_e32 v13, 8, v17
	v_or_b32_e32 v14, 26, v17
	v_or_b32_e32 v15, 10, v17
	v_or_b32_e32 v16, 28, v17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[85:86], null, s70, v17, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s31, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s9, s72
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s28, s2, 5
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s9
	s_sub_i32 s5, 0, s9
	s_abs_i32 s2, s3
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[20:21], null, s70, 18, v[85:86]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s11, s3, s74
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v4, off offset:4
	scratch_store_b32 off, v6, off offset:8
	scratch_store_b32 off, v8, off offset:12
	scratch_store_b32 off, v9, off offset:16
	scratch_store_b32 off, v10, off offset:20
	scratch_store_b32 off, v11, off offset:24
	scratch_store_b32 off, v12, off offset:28
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s28, v2
	v_or_b32_e32 v7, s28, v6
	v_or_b32_e32 v6, s28, v8
	v_or_b32_e32 v8, s28, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s28, v11
	v_or_b32_e32 v11, s28, v12
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v13, off offset:32
	scratch_store_b32 off, v14, off offset:36
	scratch_store_b32 off, v15, off offset:40
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s28, v13
	v_or_b32_e32 v13, s28, v14
	v_or_b32_e32 v14, s28, v15
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v2, s70, 4, v85
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s5, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v15, s70, 1, v85
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[22:23], null, s70, 20, v[85:86]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 12, v17
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s4, s9
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v21, s70, 2, v85
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s9
	s_cmp_ge_u32 s2, s9
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v15, off offset:56
	scratch_store_b32 off, v16, off offset:44
	scratch_store_b32 off, v2, off offset:52
	scratch_store_b32 off, v18, off offset:48
	scratch_store_b32 off, v21, off offset:68
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[23:24], null, s70, 6, v[85:86]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s30, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s73
	s_xor_b32 s12, s72, s73
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s6, 0, s2
	s_ashr_i32 s29, s12, 31
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[24:25], null, s70, 22, v[85:86]
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v25, s70, 3, v85
	v_mad_u64_u32 v[26:27], null, s70, 24, v[85:86]
	v_mad_u64_u32 v[27:28], null, s70, 10, v[85:86]
	v_mad_u64_u32 v[28:29], null, s70, 26, v[85:86]
	v_mad_u64_u32 v[29:30], null, s70, 12, v[85:86]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s4, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[30:31], null, s70, 28, v[85:86]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v31, 14, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[34:35], null, s70, 14, v[85:86]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s28, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[35:36], null, s70, 30, v[85:86]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s8, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s28, v9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s74, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s28, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s6, s8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s74, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s10, s8, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s74, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s10, s8, s10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s74, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s10, s9, s10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s34, s74, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s13, s10, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s74, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s12, s9, s13
	s_add_i32 s13, s10, 1
	s_sub_i32 s14, s12, s2
	s_cmp_ge_u32 s12, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s74, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s13, s13, s10
	s_cselect_b32 s10, s14, s12
	s_add_i32 s12, s13, 1
	s_cmp_ge_u32 s10, s2
	scratch_store_b32 off, v31, off offset:160 ; 4-byte Folded Spill
	s_cselect_b32 s33, s12, s13
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s11, s28
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s74, v10
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s17, s2, s70
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s74, v12
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v2, s17, v2
	v_add_nc_u32_e32 v19, s17, v15
	v_dual_mov_b32 v15, v20 :: v_dual_add_nc_u32 v20, s17, v20
	v_add_nc_u32_e32 v1, s17, v85
	v_add_nc_u32_e32 v21, s17, v21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s74, v14
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[15:16], off offset:60 ; 8-byte Folded Spill
	v_dual_mov_b32 v15, v22 :: v_dual_add_nc_u32 v22, s17, v22
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s74, v11
	v_cmp_gt_i32_e64 s13, s74, v13
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[15:16], off offset:72 ; 8-byte Folded Spill
	v_mov_b32_e32 v15, v23
	v_add_nc_u32_e32 v23, s17, v23
	v_writelane_b32 v255, s4, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x198, v0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[15:16], off offset:80 ; 8-byte Folded Spill
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v24, s17, v24
	v_writelane_b32 v255, s6, 2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v175, 0, v36
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[15:16], off offset:88 ; 8-byte Folded Spill
	v_dual_mov_b32 v15, v26 :: v_dual_add_nc_u32 v26, s17, v26
	scratch_store_b32 off, v25, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v25, s17, v25
	v_writelane_b32 v255, s8, 3
	scratch_store_b64 off, v[15:16], off offset:100 ; 8-byte Folded Spill
	v_mov_b32_e32 v15, v27
	v_add_nc_u32_e32 v27, s17, v27
	s_mov_b32 s84, 0
	v_writelane_b32 v255, s10, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v172, 0, v0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[15:16], off offset:108 ; 8-byte Folded Spill
	v_dual_mov_b32 v15, v28 :: v_dual_add_nc_u32 v28, s17, v28
	v_writelane_b32 v255, s5, 5
	scratch_store_b64 off, v[15:16], off offset:116 ; 8-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s28, v16
	v_or_b32_e32 v16, s28, v18
	v_mov_b32_e32 v18, v29
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s18, s70, v33
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v29, s17, v29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s74, v15
	v_cmp_gt_i32_e64 s16, s74, v16
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[18:19], off offset:124 ; 8-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 30, v17
	v_mov_b32_e32 v17, v30
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s18
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v30, s17, v30
	v_writelane_b32 v255, s34, 6
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v18, off offset:140
	scratch_store_b64 off, v[17:18], off offset:132
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s28, v18
	v_or_b32_e32 v18, s28, v31
	v_mov_b32_e32 v31, v34
	v_writelane_b32 v255, s7, 7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s19, s74, v18
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[31:32], off offset:144 ; 8-byte Folded Spill
	v_dual_mov_b32 v32, v35 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s18
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v31, s17, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s18
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[32:33], off offset:152 ; 8-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s18
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v32, s17, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s74, v17
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s18
	v_writelane_b32 v255, s9, 8
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v33, v1, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x110, v0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s34, s18
	v_writelane_b32 v255, s11, 9
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v174, 0, v35
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s19, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v29, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v31, v2, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v26, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v28, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v30, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v32, v2, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v34, v1, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s24, s33, s29
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s35, s24, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v2, 0x88, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s29, s35
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s25, s75, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s24, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v173, 0, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, v37, v1
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v38, s24
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s24, s25, 31
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v172, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v172, v19 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v172, v31 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v172, v20 offset:576
	ds_store_b8 v173, v21
	ds_store_b8 v173, v23 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v173, v22 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v173, v24 offset:576
	ds_store_b8 v174, v25
	ds_store_b8 v174, v27 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v174, v32 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v174, v26 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v175, v34
	s_waitcnt vmcnt(2)
	ds_store_b8 v175, v29 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v175, v28 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v175, v30 offset:576
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s24, s24, 27
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s33, v38
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s24, s25, s24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s85, s24, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s20, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s20, s28, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s25, s28, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s20, s20, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s25, s25, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s20, s20, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s20, s75, s20
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s20, s20, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s24, s20, 31
	s_lshr_b32 s24, s24, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s20, s20, s24
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s24, s25, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s20, s20, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s84, s24, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s85, s85, s20
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v19, 0, 1, s31
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s4, 1, v19
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v19, s28, v2
	v_writelane_b32 v255, s4, 10
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s24, s28, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s24, s24, 32
	s_min_i32 s24, s75, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s24, s24, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s25, s24, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s25, s25, 27
	s_add_i32 s24, s24, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s24, s24, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s85, s85, s24
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_add_nc_u32_e32 v64, s2, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s2, s74, v19
	s_clause 0x1
	s_load_b64 s[68:69], s[0:1], 0x38
	s_load_b32 s74, s[0:1], 0x64
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v147, v0, 4, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s84, s85
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[52:59], s[0:1], 0x8
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v2, 1, v64
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v19, 5, v1
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v20, 24, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v45, s23, v7
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v48, s23, v6
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v50, s23, v8
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v56, s23, v15
	v_and_b32_e32 v6, 14, v0
	v_and_b32_e32 v7, 60, v34
	v_cndmask_b32_e64 v8, 0x104, 0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s57, 0xffff
	s_mov_b32 s24, s56
	v_or_b32_e32 v193, v19, v20
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x7c
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[24:27], s[0:1], 0x6c
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v47, s23, v9
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v49, s23, v10
	v_and_b32_e32 v9, 1, v0
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v10, 2, v0
	v_mul_u32_u24_e32 v6, 0x44, v6
	v_mov_b32_e32 v32, v25
	v_xor_b32_e32 v7, v8, v7
	v_xor_b32_e32 v40, 8, v193
	v_dual_mov_b32 v35, 0x5410 :: v_dual_and_b32 v22, 16, v0
	v_mov_b16_e32 v33.l, 0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v43, s23, v5
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v57, s23, v18
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v58, s23, v17
	v_mul_u32_u24_e32 v5, 0x88, v1
	v_lshl_add_u32 v192, v1, 1, 0
	v_mov_b32_e32 v17, v25
	v_lshl_or_b32 v194, v1, 8, v10
	v_mov_b32_e32 v18, v25
	v_lshl_or_b32 v1, v9, 1, v6
	v_lshl_or_b32 v198, v9, 6, v7
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v40, 0, v40
	.loc	1 844 25 is_stmt 1              ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s24, s24, 0x3fb8aa3b
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v46, s23, v4
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v52, s23, v11
	v_lshrrev_b32_e32 v4, 4, v39
	v_lshrrev_b32_e32 v11, 2, v22
	v_lshrrev_b32_e32 v41, 5, v0
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v42, 31, v0
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v44, s23, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v197, v4, v5, v11
	v_or3_b32 v199, v1, v11, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v3, 2, v42
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v54, s23, v13
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v51, s23, v12
	v_or_b32_e32 v195, v4, v3
	v_cndmask_b32_e64 v8, 0x88, 0, vcc_lo
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v53, s23, v14
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v55, s23, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v196, v8, v3
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v21, 4, v39
	v_cmp_eq_u32_e32 vcc_lo, 0, v22
	s_xor_b32 s34, s3, s72
	s_mul_f32 s33, s33, 0x4f7ffffe
	v_or3_b32 v34, v19, v21, v20
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v20, v25 :: v_dual_cndmask_b32 v35, 0x1054, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v36, 0, v34
	v_xad_u32 v37, v34, 8, 0
	v_xad_u32 v38, v34, 16, 0
	v_xad_u32 v39, v34, 24, 0
	v_dual_mov_b32 v34, 0x7632 :: v_dual_mov_b32 v23, v25
	v_lshl_or_b32 v35, v35, 8, v35
	v_mov_b32_e32 v22, v25
	s_ashr_i32 s23, s34, 31
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x3276, v34, vcc_lo
	s_xor_b32 s30, s30, s23
	v_and_b32_e32 v35, 0x540054, v35
	s_cvt_u32_f32 s33, s33
	s_sub_i32 s31, 0, s29
	v_lshl_or_b32 v34, v34, 8, v34
	s_sub_i32 s30, s30, s23
	v_lshl_or_b32 v35, v35, 4, v35
	s_mul_i32 s34, s30, s72
	s_mul_i32 s31, s31, s33
	v_and_b32_e32 v34, 0x760076, v34
	s_sub_i32 s3, s3, s34
	s_mul_hi_u32 s31, s33, s31
	s_abs_i32 s34, s3
	s_add_i32 s33, s33, s31
	s_ashr_i32 s1, s35, 31
	s_ashr_i32 s31, s3, 31
	s_mul_hi_u32 s33, s34, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s31, s1
	s_mul_i32 s31, s33, s29
	s_add_i32 s35, s33, 1
	s_sub_i32 s31, s34, s31
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s26
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s34, s31, s29
	s_cmp_ge_u32 s31, s29
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s23, s30, s73
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s26, s35, s33
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s25, s30, s25
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s30, s34, s31
	s_add_i32 s31, s26, 1
	s_cmp_ge_u32 s30, s29
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s28, s27, s28
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s26, s31, s26
	s_add_i32 s72, s25, s28
	s_xor_b32 s25, s26, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s74, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s25, s1
	v_and_b32_e32 v154, 0x5040504, v35
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_mov_b32 s60, 0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s73, s1, s23
	s_mov_b32 s87, 0x76543210
	s_mov_b32 s61, s60
	s_mov_b32 s62, s60
	s_mov_b32 s63, s60
	s_mov_b32 s64, s60
	s_mov_b32 s65, s60
	s_mov_b32 s66, s60
	s_mov_b32 s67, s60
	s_mov_b32 s76, s58
	s_mov_b32 s80, s54
	s_mov_b32 s54, s78
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s77, s59, 0xffff
	s_mov_b32 s11, s4
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s81, s55, 0xffff
	s_mov_b32 s55, s79
	s_add_i32 s72, s72, s3
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s73, s73, s75
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_mov_b32 v184, 0xff800000
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v170, 0xff800000
	v_mov_b32_e32 v188, 0xff800000
	v_mov_b32_e32 v134, 0xff800000
	v_mov_b32_e32 v136, 0xff800000
	v_mov_b32_e32 v86, 0xff800000
	v_mov_b32_e32 v166, 0xff800000
	v_mov_b32_e32 v150, 0xff800000
	v_mov_b32_e32 v148, 0xff800000
	v_mov_b32_e32 v146, 0xff800000
	v_mov_b32_e32 v144, 0xff800000
	v_mov_b32_e32 v142, 0xff800000
	v_mov_b32_e32 v140, 0xff800000
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_mov_b32 v183, 0xff800000
	v_mov_b32_e32 v185, 0xff800000
	v_mov_b32_e32 v163, 0xff800000
	v_mov_b32_e32 v169, 0xff800000
	v_mov_b32_e32 v187, 0xff800000
	v_mov_b32_e32 v133, 0xff800000
	v_mov_b32_e32 v135, 0xff800000
	v_mov_b32_e32 v167, 0xff800000
	v_mov_b32_e32 v165, 0xff800000
	v_mov_b32_e32 v145, 0xff800000
	v_mov_b32_e32 v143, 0xff800000
	v_mov_b32_e32 v141, 0xff800000
	v_mov_b32_e32 v139, 0xff800000
	v_dual_mov_b32 v137, 0xff800000 :: v_dual_mov_b32 v182, 0xff800000
	v_mov_b32_e32 v162, 0xff800000
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v2.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v156, s24, v33
	v_subrev_nc_u32_e32 v33, s21, v43
	scratch_store_b32 off, v40, off offset:164 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 16, v193
	v_mov_b32_e32 v11, v25
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v177, v156
	scratch_store_b32 off, v33, off offset:356 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v45
	v_dual_mov_b32 v191, v156 :: v_dual_add_nc_u32 v40, 0, v40
	v_mov_b32_e32 v157, v156
	v_mov_b32_e32 v179, v156
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:360
	scratch_store_b32 off, v40, off offset:168
	v_xor_b32_e32 v40, 24, v193
	v_mov_b32_e32 v13, v25
	v_subrev_nc_u32_e32 v33, s21, v47
	v_mov_b32_e32 v159, v156
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v181, v156 :: v_dual_add_nc_u32 v40, 0, v40
	scratch_store_b32 off, v33, off offset:364 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v49
	scratch_store_b32 off, v40, off offset:172 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x88, v195
	v_mov_b32_e32 v15, v25
	scratch_store_b32 off, v33, off offset:368 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v51
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v33, off offset:372 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v53
	scratch_store_b32 off, v40, off offset:176 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x110, v195
	v_mov_b32_e32 v1, v25
	scratch_store_b32 off, v33, off offset:376 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v55
	v_add_nc_u32_e32 v40, 0, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:380
	scratch_store_b32 off, v40, off offset:180
	v_xor_b32_e32 v40, 0x198, v195
	v_mov_b32_e32 v3, v25
	v_subrev_nc_u32_e32 v33, s21, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v33, off offset:384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v44
	scratch_store_b32 off, v40, off offset:184 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x220, v195
	v_mov_b32_e32 v5, v25
	scratch_store_b32 off, v33, off offset:388 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v46
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v33, off offset:392 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v48
	scratch_store_b32 off, v40, off offset:188 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x2a8, v195
	v_mov_b32_e32 v7, v25
	scratch_store_b32 off, v33, off offset:396 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v50
	v_add_nc_u32_e32 v40, 0, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:400
	scratch_store_b32 off, v40, off offset:192
	v_xor_b32_e32 v40, 0x330, v195
	v_subrev_nc_u32_e32 v33, s21, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v33, off offset:404 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v54
	scratch_store_b32 off, v40, off offset:196 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x3b8, v195
	scratch_store_b32 off, v33, off offset:408 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v56
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v33, off offset:412 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v58
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:416
	scratch_store_b32 off, v43, off offset:292
	scratch_store_b32 off, v40, off offset:200
	v_xor_b32_e32 v40, 4, v194
	v_add_nc_u32_e32 v33, s22, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:420
	scratch_store_b32 off, v45, off offset:300
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v33, s22, v45
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:424
	scratch_store_b32 off, v47, off offset:308
	scratch_store_b32 off, v40, off offset:204
	v_xor_b32_e32 v40, 8, v194
	v_add_nc_u32_e32 v33, s22, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:428
	scratch_store_b32 off, v49, off offset:316
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v33, s22, v49
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:432
	scratch_store_b32 off, v51, off offset:324
	scratch_store_b32 off, v40, off offset:208
	v_xor_b32_e32 v40, 12, v194
	v_add_nc_u32_e32 v33, s22, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:436
	scratch_store_b32 off, v53, off offset:332
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v33, s22, v53
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:440
	scratch_store_b32 off, v55, off offset:340
	scratch_store_b32 off, v40, off offset:212
	v_xor_b32_e32 v40, 16, v194
	v_add_nc_u32_e32 v33, s22, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:444
	scratch_store_b32 off, v57, off offset:348
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v33, s22, v57
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:448
	scratch_store_b32 off, v44, off offset:296
	scratch_store_b32 off, v40, off offset:216
	v_xor_b32_e32 v40, 20, v194
	v_add_nc_u32_e32 v33, s22, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:452
	scratch_store_b32 off, v46, off offset:304
	v_dual_mov_b32 v49, 0xff800000 :: v_dual_add_nc_u32 v40, 0, v40
	v_add_nc_u32_e32 v33, s22, v46
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:456
	scratch_store_b32 off, v48, off offset:312
	scratch_store_b32 off, v40, off offset:220
	v_add_nc_u32_e32 v33, s22, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:460
	scratch_store_b32 off, v50, off offset:320
	v_add_nc_u32_e32 v33, s22, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:464
	scratch_store_b32 off, v52, off offset:328
	v_add_nc_u32_e32 v33, s22, v52
	v_xor_b32_e32 v40, 24, v194
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:468
	scratch_store_b32 off, v54, off offset:336
	v_add_nc_u32_e32 v33, s22, v54
	v_add_nc_u32_e32 v40, 0, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:472
	scratch_store_b32 off, v56, off offset:344
	v_add_nc_u32_e32 v33, s22, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:476
	scratch_store_b32 off, v58, off offset:352
	v_add_nc_u32_e32 v33, s22, v58
	scratch_store_b32 off, v40, off offset:224 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 28, v194
	v_mov_b32_e32 v178, v156
	v_mov_b32_e32 v158, v156
	v_mov_b32_e32 v180, v156
	v_mov_b32_e32 v160, v156
	v_add_nc_u32_e32 v40, 0, v40
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v64, off offset:484
	scratch_store_b32 off, v33, off offset:480
	scratch_store_b32 off, v40, off offset:228
	v_xor_b32_e32 v40, 32, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:232 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 36, v194
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:236 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 40, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:240 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 44, v194
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:244 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 48, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:248 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 52, v194
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:252 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 56, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:256 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 60, v194
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:260 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x110, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:264 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x220, v196
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:268 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x330, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:272 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x440, v196
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:276 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x550, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:280 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x660, v196
	v_add_nc_u32_e32 v40, 0, v40
	scratch_store_b32 off, v40, off offset:284 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 0x770, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v40, 0, v40
	.loc	1 758 19                        ; attention.py:758:19
	scratch_store_b32 off, v40, off offset:288 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 8, v197
	v_add_nc_u32_e32 v232, 0, v40
	v_xor_b32_e32 v40, 16, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v233, 0, v40
	v_xor_b32_e32 v40, 24, v197
	v_add_nc_u32_e32 v234, 0, v40
	v_xor_b32_e32 v40, 32, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v235, 0, v40
	v_xor_b32_e32 v40, 40, v197
	v_add_nc_u32_e32 v236, 0, v40
	v_xor_b32_e32 v40, 48, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v237, 0, v40
	v_xor_b32_e32 v40, 56, v197
	v_add_nc_u32_e32 v238, 0, v40
	v_xor_b32_e32 v40, 64, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v239, 0, v40
	v_xor_b32_e32 v40, 0x48, v197
	v_add_nc_u32_e32 v240, 0, v40
	v_xor_b32_e32 v40, 0x50, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v241, 0, v40
	v_xor_b32_e32 v40, 0x58, v197
	v_add_nc_u32_e32 v242, 0, v40
	v_xor_b32_e32 v40, 0x60, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v243, 0, v40
	v_xor_b32_e32 v40, 0x68, v197
	v_add_nc_u32_e32 v244, 0, v40
	v_xor_b32_e32 v40, 0x70, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v245, 0, v40
	v_xor_b32_e32 v40, 0x78, v197
	v_add_nc_u32_e32 v246, 0, v40
	v_xor_b32_e32 v40, 0x208, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v247, 0, v40
	v_xor_b32_e32 v40, 0x410, v198
	v_add_nc_u32_e32 v248, 0, v40
	v_xor_b32_e32 v40, 0x618, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v249, 0, v40
	v_xor_b32_e32 v40, 0x820, v198
	v_add_nc_u32_e32 v250, 0, v40
	v_xor_b32_e32 v40, 0xa28, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v251, 0, v40
	v_xor_b32_e32 v40, 0xc30, v198
	v_add_nc_u32_e32 v252, 0, v40
	v_xor_b32_e32 v40, 0xe38, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v253, 0, v40
	v_lshl_or_b32 v40, v34, 4, v34
	v_xor_b32_e32 v34, 8, v199
	v_and_b32_e32 v155, 0x7060706, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v254, 0, v34
	v_xor_b32_e32 v34, 16, v199
	v_add_nc_u32_e32 v149, 0, v34
	v_xor_b32_e32 v34, 24, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v171, 0, v34
	v_xor_b32_e32 v34, 32, v199
	v_add_nc_u32_e32 v164, 0, v34
	v_xor_b32_e32 v34, 40, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v151, 0, v34
	v_xor_b32_e32 v34, 48, v199
	v_add_nc_u32_e32 v152, 0, v34
	v_xor_b32_e32 v34, 56, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v153, 0, v34
	v_mul_lo_u32 v34, s27, v41
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[97:98], null, s4, v42, v[34:35]
	ds_load_b64 v[98:99], v36
	ds_load_b64 v[100:101], v37
	ds_load_b64 v[102:103], v38
	ds_load_b64 v[104:105], v39
	v_lshl_add_u32 v84, s27, 1, v97
	v_lshl_add_u32 v189, s27, 2, v97
	v_lshl_add_u32 v176, s27, 3, v97
	v_lshl_add_u32 v190, s27, 4, v97
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[106:107], null, s27, 6, v[97:98]
	v_mad_u64_u32 v[107:108], null, s27, 10, v[97:98]
	v_mad_u64_u32 v[108:109], null, s27, 12, v[97:98]
	v_mad_u64_u32 v[109:110], null, s27, 14, v[97:98]
	v_mad_u64_u32 v[110:111], null, s27, 18, v[97:98]
	v_mad_u64_u32 v[111:112], null, s27, 20, v[97:98]
	v_mad_u64_u32 v[112:113], null, s27, 22, v[97:98]
	v_mad_u64_u32 v[113:114], null, s27, 24, v[97:98]
	v_mad_u64_u32 v[114:115], null, s27, 26, v[97:98]
	v_mad_u64_u32 v[115:116], null, s27, 28, v[97:98]
	v_mad_u64_u32 v[116:117], null, s27, 30, v[97:98]
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s84, s11
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v66, v44
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s72, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v39
	v_cvt_f32_i32_e32 v39, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s1, v97, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v89, v41
	v_cvt_f32_i32_e32 v41, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v48, s1, v84, 1
	v_add_lshl_u32 v90, s1, v189, 1
	v_add_lshl_u32 v92, s1, v106, 1
	v_add_lshl_u32 v94, s1, v176, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v43
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v38
	v_cvt_f32_i32_e32 v38, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v36, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s1, v190, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s101
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v88, v42
	v_cvt_f32_i32_e32 v42, v47
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v47, s1, v110, 1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s99
	v_add_lshl_u32 v87, s1, v111, 1
	v_cndmask_b32_e64 v90, 0x80000000, v90, s97
	s_mov_b32 s58, s78
	s_mov_b32 s59, s79
	v_add_lshl_u32 v91, s1, v112, 1
	v_cndmask_b32_e64 v92, 0x80000000, v92, s94
	v_add_lshl_u32 v93, s1, v113, 1
	v_cndmask_b32_e64 v94, 0x80000000, v94, s93
	v_cndmask_b32_e64 v37, 0x80000000, v37, s102
	s_clause 0x4
	buffer_load_u16 v40, v40, s[56:59], 0 offen
	buffer_load_u16 v48, v48, s[56:59], 0 offen
	buffer_load_u16 v90, v90, s[56:59], 0 offen
	buffer_load_u16 v95, v92, s[56:59], 0 offen
	buffer_load_u16 v94, v94, s[56:59], 0 offen
	v_add_lshl_u32 v92, s1, v114, 1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s100
	v_cndmask_b32_e64 v87, 0x80000000, v87, s98
	v_cndmask_b32_e64 v91, 0x80000000, v91, s96
	v_cndmask_b32_e64 v93, 0x80000000, v93, s95
	v_cndmask_b32_e64 v92, 0x80000000, v92, s92
	s_clause 0x5
	buffer_load_u16 v37, v37, s[56:59], 0 offen
	buffer_load_u16 v47, v47, s[56:59], 0 offen
	buffer_load_u16 v87, v87, s[56:59], 0 offen
	buffer_load_u16 v91, v91, s[56:59], 0 offen
	buffer_load_u16 v93, v93, s[56:59], 0 offen
	buffer_load_u16 v117, v92, s[56:59], 0 offen
	v_add_lshl_u32 v96, s1, v107, 1
	v_add_lshl_u32 v92, s1, v115, 1
	v_add_lshl_u32 v118, s1, v108, 1
	v_add_lshl_u32 v119, s1, v116, 1
	v_add_lshl_u32 v120, s1, v109, 1
	v_cndmask_b32_e64 v96, 0x80000000, v96, s90
	v_cndmask_b32_e64 v92, 0x80000000, v92, s91
	v_cndmask_b32_e64 v118, 0x80000000, v118, s88
	v_cndmask_b32_e64 v119, 0x80000000, v119, s89
	v_cndmask_b32_e64 v120, 0x80000000, v120, s83
	s_clause 0x4
	buffer_load_u16 v96, v96, s[56:59], 0 offen
	buffer_load_u16 v121, v92, s[56:59], 0 offen
	buffer_load_u16 v118, v118, s[56:59], 0 offen
	buffer_load_u16 v119, v119, s[56:59], 0 offen
	buffer_load_u16 v120, v120, s[56:59], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v65.h, v65.l
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v64.h, v64.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v63.h, v63.l
	v_mov_b16_e32 v59.h, v59.l
	v_mov_b16_e32 v61.h, v61.l
	v_mov_b16_e32 v62.h, v62.l
	v_mov_b16_e32 v58.h, v58.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v60.h, v60.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v159, v38
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v156, v33
	v_mul_f32_e32 v36, v156, v36
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v87.h, v50.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s58, s84, 3
	s_or_b32 s59, s84, 4
	s_or_b32 s103, s84, 22
	s_or_b32 s104, s84, 23
	s_or_b32 vcc_hi, s84, 24
	s_or_b32 s71, s84, 25
	s_or_b32 s20, s84, 26
	s_or_b32 s86, s84, 27
	s_or_b32 s47, s84, 28
	s_or_b32 s4, s84, 29
	s_or_b32 s5, s84, 30
	s_or_b32 s6, s84, 31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v205, v172, v0
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v156, v89
	v_dual_mul_f32 v43, v179, v43 :: v_dual_mul_f32 v44, v157, v44
	v_mul_f32_e32 v35, v181, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v122.l, 0xff80, v40.l, s101
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v40, 0, v196
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v123.l, 0xff80, v48.l, s99
	v_cndmask_b16 v92.l, 0xff80, v90.l, s97
	v_cndmask_b16 v90.l, 0xff80, v94.l, s93
	v_cndmask_b16 v122.h, 0xff80, v37.l, s102
	v_cndmask_b16 v123.h, 0xff80, v47.l, s100
	v_cndmask_b16 v92.h, 0xff80, v87.l, s98
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v91.h, 0xff80, v91.l, s96
	v_cndmask_b16 v91.l, 0xff80, v95.l, s94
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v40, v122
	scratch_load_b32 v40, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v90.h, 0xff80, v93.l, s95
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v48.h, 0xff80, v117.l, s92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v87.l, 0
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v48.l, 0xff80, v96.l, s90
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v47.h, 0xff80, v121.l, s91
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v47.l, 0xff80, v118.l, s88
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v37.h, 0xff80, v119.l, s89
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v37.l, 0xff80, v120.l, s83
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v65.l, v87.l
	v_mov_b16_e32 v64.l, v87.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v156, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v63.l, v87.l
	v_mov_b16_e32 v59.l, v87.l
	v_mov_b16_e32 v61.l, v87.l
	v_mov_b16_e32 v62.l, v87.l
	v_mov_b16_e32 v58.l, v87.l
	v_mov_b16_e32 v60.l, v87.l
	v_mov_b16_e32 v53.l, v87.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v123
	scratch_load_b32 v40, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v92
	scratch_load_b32 v40, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v91
	scratch_load_b32 v40, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v90
	scratch_load_b32 v40, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v48
	scratch_load_b32 v40, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v47
	scratch_load_b32 v40, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v40, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v40, v244
	ds_load_u16 v93, v245
	ds_load_u16 v94, v246
	ds_load_u16 v95, v243
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v40, v46, v65
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v46, 16, v93
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v156, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v46
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v45, v65, v64 :: v_dual_lshlrev_b32 v46, 16, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v64, v156, v39 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v46
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v64, v63 :: v_dual_add_nc_u32 v46, 0, v197
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_u16 v46, v46
	ds_load_u16 v63, v232
	ds_load_u16 v64, v233
	ds_load_u16 v65, v234
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	ds_load_u16 v93, v235
	ds_load_u16 v94, v236
	ds_load_u16 v96, v237
	ds_load_u16 v117, v238
	s_waitcnt lgkmcnt(7)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v118, 0x3fb8aa3b, v46
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(6)
	v_lshlrev_b32_e32 v46, 16, v63
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v118, v89, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v62, v177, v88 :: v_dual_mul_f32 v63, 0x3fb8aa3b, v46
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(5)
	v_dual_fmac_f32 v63, v62, v61 :: v_dual_lshlrev_b32 v46, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v61, v191, v67 :: v_dual_mul_f32 v62, 0x3fb8aa3b, v46
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v65
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v62, v61, v60
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v178, v66
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v61, 0x3fb8aa3b, v46 :: v_dual_lshlrev_b32 v46, 16, v93
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v46
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v46.h, v57.l
	v_mov_b16_e32 v46.l, v87.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v59, v44, v58
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v44, 16, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v44.h, v55.l
	v_mov_b16_e32 v44.l, v87.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v57, v43, v46
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v46, v158, v42 :: v_dual_lshlrev_b32 v43, 16, v96
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v42, 0x3fb8aa3b, v43 :: v_dual_lshlrev_b32 v43, 16, v117
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v42, v46, v44
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v44.h, v56.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v46, v180, v41 :: v_dual_mul_f32 v41, 0x3fb8aa3b, v43
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v41, v46, v44
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v43, v240
	ds_load_u16 v46, v241
	ds_load_u16 v55, v242
	ds_load_u16 v56, v239
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v44.h, v54.l
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v43, v38, v44 :: v_dual_lshlrev_b32 v38, 16, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v38
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v38.h, v52.l
	v_mov_b16_e32 v38.l, v87.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v36, v53
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v36, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v36.h, v51.l
	v_mov_b16_e32 v36.l, v87.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, v35, v38 :: v_dual_lshlrev_b32 v35, 16, v55
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v160, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v35.h, v122.l
	v_mov_b16_e32 v122.l, v87.l
	v_mov_b16_e32 v35.l, v87.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v38, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v122
	v_cmp_neq_f32_e64 s1, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v35.h, v123.l
	v_mov_b16_e32 v123.l, v87.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 vcc_lo, s102, vcc_lo
	s_and_b32 s27, s101, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v123
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s27
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s101, s84, 20
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s99, s21
	v_lshlrev_b16 v35.l, 8, v35.l
	s_and_b32 s1, s100, s3
	v_cndmask_b32_e64 v38, 0, 1, s28
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s99, s84, 18
	s_or_b32 s100, s84, 19
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v35.l, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s1
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s102, s84, 21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.h, 8, v36.l
	v_add_nc_u32_e32 v36, 0, v195
	v_or_b16 v35.h, v38.l, v35.h
	ds_store_b16 v36, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v36.h, v92.l
	v_mov_b16_e32 v36.l, v87.l
	v_mov_b16_e32 v92.l, v87.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v36.h, v91.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v92
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v91.l, v87.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s97, s22
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v90.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s98, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v91
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v90.l, v87.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s33, s94, s24
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v48.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s96, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v90
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v48.l, v87.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s93, s26
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v47.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s23, s95, s25
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v48
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v47.l, v87.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s35
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v37.l
	v_mov_b16_e32 v37.l, v87.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s24, s92, s29
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v47
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s90, s30
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v37
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v37, 0, 1, s33
	s_and_b32 s25, s91, s31
	s_and_b32 s30, s88, s36
	v_mov_b16_e32 v35.l, v36.l
	v_cndmask_b32_e64 v36, 0, 1, s34
	s_and_b32 s26, s89, s37
	v_cndmask_b32_e64 v47, 0, 1, s30
	s_and_b32 s31, s83, s38
	v_lshlrev_b16 v35.l, 8, v35.l
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s83, s84, 6
	s_or_b32 s88, s84, 7
	s_or_b32 s89, s84, 8
	s_or_b32 s90, s84, 9
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v35.l, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s22
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s91, s84, 10
	s_or_b32 s92, s84, 11
	s_or_b32 s93, s84, 12
	s_or_b32 s94, s84, 13
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s95, s84, 14
	s_or_b32 s96, s84, 15
	s_or_b32 s97, s84, 16
	s_or_b32 s98, s84, 17
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v36.l, v37.l, v36.l
	v_cndmask_b32_e64 v37, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v36.h, 8, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s24
	v_or_b16 v36.h, v38.l, v36.h
	v_cndmask_b32_e64 v38, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v37.l, 8, v37.l
	v_or_b16 v37.l, v38.l, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v37.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s26
	v_or_b16 v37.h, v47.l, v37.h
	v_cndmask_b32_e64 v47, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v38.l, v47.l, v38.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v47, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v50, 0x3fb8aa3b, v47
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v33, v87
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	scratch_load_b32 v33, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v33, v35
	scratch_load_b32 v33, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v35
	scratch_load_b32 v33, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v36
	scratch_load_b32 v33, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v33, v36
	scratch_load_b32 v33, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v37
	scratch_load_b32 v33, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v33, v37
	scratch_load_b32 v33, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v152
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v153 offset:64
	ds_load_u8_d16 v35, v152 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v151 offset:64
	v_add_nc_u32_e32 v38, 0, v199
	ds_load_u8_d16_hi v37, v38 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s44, 1, v33.l
	ds_load_u8_d16 v33, v164
	ds_load_u8_d16 v48, v164 offset:64
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s45, 1, v33.l
	ds_load_u8_d16 v33, v171
	ds_load_u8_d16 v36, v171 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v149 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s48, 1, v33.l
	ds_load_u8_d16 v33, v149
	ds_load_u8_d16 v37, v254 offset:64
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s3, 1, v33.l
	ds_load_u8_d16 v33, v254
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s51, 1, v33.l
	ds_load_u8_d16 v33, v38
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v63, s51
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s50, 1, v33.l
	v_and_b16 v33.l, 1, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v118, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v50, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v61, s48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v93, 0xff800000, v34, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	v_and_b16 v33.l, 1, v37.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v59, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v92, 0xff800000, v46, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v33.l
	v_and_b16 v33.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v43, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	v_and_b16 v33.l, 1, v35.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v62, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v91, 0xff800000, v40, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v45, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v33.l
	ds_load_u8_d16 v33, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v39, s37
	v_cndmask_b32_e64 v39, 0xff800000, v42, s44
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s46, 1, v33.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v51, v47
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v57, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v36, v37, v38
	v_max3_f32 v52, v33, v35, v52
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v33.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v94, v92, v93
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v44, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v90, v91, v89
	v_max3_f32 v34, v33, v34, v168
.Ltmp8:
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v33, v153
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v43, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s49, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v41, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v87.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v39, v40, v95
	v_max3_f32 v33, v52, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s87, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v88, v49, v33, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v33, 0, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v87.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v33, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v47, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s51, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v51, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s50, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v33.h, s51
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s51, s84, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v34.h, s50
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s50, s84, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v41, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v33, v34, v41, v154
	v_perm_b32 v34, v34, v41, v155
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[41:42], null, s82, s74, v[0:1]
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s82, s84, 5
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s84, s75
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s50, s75
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v42, s74, v41
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s51, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s58, s75
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s59, s75
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s82, s75
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s82, s78
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s83, s75
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s83, s79
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s88, s75
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s89, s75
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s90, s75
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s91, s75
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s92, s75
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s93, s75
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s94, s75
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s95, s75
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s96, s75
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s97, s75
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s98, s75
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s99, s75
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s100, s75
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s101, s75
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s102, s75
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s103, s75
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s104, s75
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 vcc_hi, s75
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s71, s75
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s20, s75
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s86, s75
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s47, s75
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s4, s75
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s5, s75
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s75
	s_cselect_b32 s6, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s50, s0, s7
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s84, s84, 32
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s8
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v47
	scratch_load_b32 v43, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v35
	scratch_load_b32 v43, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v36
	scratch_load_b32 v43, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v88
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v36, v36
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v37
	scratch_load_b32 v43, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s45, v37, v37
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v38
	scratch_load_b32 v43, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v88
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s46
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v39
	scratch_load_b32 v43, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v88
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s44, v39, v39
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v40
	scratch_load_b32 v43, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s49
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v95
	scratch_load_b32 v43, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v94
	scratch_load_b32 v43, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v92
	scratch_load_b32 v43, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v93
	scratch_load_b32 v43, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v90
	scratch_load_b32 v43, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v91
	scratch_load_b32 v43, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v89
	scratch_load_b32 v43, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v168
	v_add_nc_u32_e32 v43, s74, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v44, s74, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v43
	v_cndmask_b32_e64 v42, 0x80000000, v42, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s51
	v_add_nc_u32_e32 v45, s74, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v44, 1, v44
	v_cndmask_b32_e64 v43, 0x80000000, v43, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v46, s74, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v45, 1, v45
	v_cndmask_b32_e64 v44, 0x80000000, v44, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s59
	v_add_nc_u32_e32 v47, s74, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v46
	v_cndmask_b32_e64 v45, 0x80000000, v45, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v48, s74, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v47, 1, v47
	v_cndmask_b32_e64 v46, 0x80000000, v46, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s10
	v_add_nc_u32_e32 v50, s74, v48
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v48
	v_cndmask_b32_e64 v47, 0x80000000, v47, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s88
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v51, s74, v50
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v50, 1, v50
	v_cndmask_b32_e64 v48, 0x80000000, v48, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s89
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v41, v41, s[80:83], 0 offen
	buffer_load_u16 v42, v42, s[80:83], 0 offen
	buffer_load_u16 v43, v43, s[80:83], 0 offen
	buffer_load_u16 v44, v44, s[80:83], 0 offen
	buffer_load_u16 v45, v45, s[80:83], 0 offen
	buffer_load_u16 v46, v46, s[80:83], 0 offen
	buffer_load_u16 v47, v47, s[80:83], 0 offen
	buffer_load_u16 v48, v48, s[80:83], 0 offen
	v_add_nc_u32_e32 v52, s74, v51
	v_lshlrev_b32_e32 v51, 1, v51
	v_cndmask_b32_e64 v50, 0x80000000, v50, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v53, s74, v52
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v52, 1, v52
	v_cndmask_b32_e64 v51, 0x80000000, v51, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s91
	v_add_nc_u32_e32 v54, s74, v53
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v53, 1, v53
	v_cndmask_b32_e64 v52, 0x80000000, v52, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v55, s74, v54
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v54, 1, v54
	v_cndmask_b32_e64 v53, 0x80000000, v53, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s93
	v_add_nc_u32_e32 v56, s74, v55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v55, 1, v55
	v_cndmask_b32_e64 v54, 0x80000000, v54, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v57, s74, v56
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v56, 1, v56
	v_cndmask_b32_e64 v55, 0x80000000, v55, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s95
	v_add_nc_u32_e32 v58, s74, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v57, 1, v57
	v_cndmask_b32_e64 v56, 0x80000000, v56, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s96
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v59, s74, v58
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v58, 1, v58
	v_cndmask_b32_e64 v57, 0x80000000, v57, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s97
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v50, v50, s[80:83], 0 offen
	buffer_load_u16 v51, v51, s[80:83], 0 offen
	buffer_load_u16 v52, v52, s[80:83], 0 offen
	buffer_load_u16 v53, v53, s[80:83], 0 offen
	buffer_load_u16 v54, v54, s[80:83], 0 offen
	buffer_load_u16 v55, v55, s[80:83], 0 offen
	buffer_load_u16 v56, v56, s[80:83], 0 offen
	buffer_load_u16 v57, v57, s[80:83], 0 offen
	v_add_nc_u32_e32 v60, s74, v59
	v_lshlrev_b32_e32 v59, 1, v59
	v_cndmask_b32_e64 v58, 0x80000000, v58, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v61, s74, v60
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v60, 1, v60
	v_cndmask_b32_e64 v59, 0x80000000, v59, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s99
	v_add_nc_u32_e32 v62, s74, v61
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v61, 1, v61
	v_cndmask_b32_e64 v60, 0x80000000, v60, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v63, s74, v62
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v62, 1, v62
	v_cndmask_b32_e64 v61, 0x80000000, v61, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s101
	v_add_nc_u32_e32 v64, s74, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v63, 1, v63
	v_cndmask_b32_e64 v62, 0x80000000, v62, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v65, s74, v64
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v64, 1, v64
	v_cndmask_b32_e64 v63, 0x80000000, v63, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s103
	v_add_nc_u32_e32 v66, s74, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v65
	v_cndmask_b32_e64 v64, 0x80000000, v64, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s104
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v67, s74, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v66, 1, v66
	v_cndmask_b32_e64 v65, 0x80000000, v65, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, vcc_hi
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v58, v58, s[80:83], 0 offen
	buffer_load_u16 v59, v59, s[80:83], 0 offen
	buffer_load_u16 v60, v60, s[80:83], 0 offen
	buffer_load_u16 v61, v61, s[80:83], 0 offen
	buffer_load_u16 v62, v62, s[80:83], 0 offen
	buffer_load_u16 v63, v63, s[80:83], 0 offen
	buffer_load_u16 v64, v64, s[80:83], 0 offen
	buffer_load_u16 v65, v65, s[80:83], 0 offen
	v_add_nc_u32_e32 v96, s74, v67
	v_lshlrev_b32_e32 v67, 1, v67
	v_cndmask_b32_e64 v66, 0x80000000, v66, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v117, s74, v96
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v96, 1, v96
	v_cndmask_b32_e64 v67, 0x80000000, v67, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s20
	v_add_nc_u32_e32 v118, s74, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v117, 1, v117
	v_cndmask_b32_e64 v96, 0x80000000, v96, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v119, s74, v118
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v118, 1, v118
	v_cndmask_b32_e64 v117, 0x80000000, v117, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s47
	v_add_nc_u32_e32 v120, s74, v119
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v119, 1, v119
	v_cndmask_b32_e64 v118, 0x80000000, v118, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v121, 1, v120
	v_add_lshl_u32 v120, v120, s74, 1
	v_cndmask_b32_e64 v119, 0x80000000, v119, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s5
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v121, 0x80000000, v121, s50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s0, s6
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s84, s85
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v120, 0x80000000, v120, s50
	s_clause 0x7
	buffer_load_u16 v66, v66, s[80:83], 0 offen
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	buffer_load_u16 v96, v96, s[80:83], 0 offen
	buffer_load_u16 v200, v117, s[80:83], 0 offen
	buffer_load_u16 v201, v118, s[80:83], 0 offen
	buffer_load_u16 v202, v119, s[80:83], 0 offen
	buffer_load_u16 v203, v121, s[80:83], 0 offen
	buffer_load_u16 v204, v120, s[80:83], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v117, 0, v198
	ds_load_2addr_b32 v[131:132], v117 offset1:32
	ds_load_2addr_b32 v[129:130], v247 offset1:32
	ds_load_2addr_b32 v[125:126], v248 offset1:32
	ds_load_2addr_b32 v[121:122], v249 offset1:32
	ds_load_2addr_b32 v[127:128], v250 offset1:32
	ds_load_2addr_b32 v[123:124], v251 offset1:32
	ds_load_2addr_b32 v[119:120], v252 offset1:32
	ds_load_2addr_b32 v[117:118], v253 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v205, v41
	s_waitcnt vmcnt(30)
	ds_store_b16 v205, v42 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b16 v205, v43 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b16 v205, v44 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b16 v205, v45 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b16 v205, v46 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b16 v205, v47 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b16 v205, v48 offset:896
	s_waitcnt vmcnt(23)
	ds_store_b16 v205, v50 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v205, v51 offset:1152
	s_waitcnt vmcnt(21)
	ds_store_b16 v205, v52 offset:1280
	s_waitcnt vmcnt(20)
	ds_store_b16 v205, v53 offset:1408
	s_waitcnt vmcnt(19)
	ds_store_b16 v205, v54 offset:1536
	s_waitcnt vmcnt(18)
	ds_store_b16 v205, v55 offset:1664
	s_waitcnt vmcnt(17)
	ds_store_b16 v205, v56 offset:1792
	s_waitcnt vmcnt(16)
	ds_store_b16 v205, v57 offset:1920
	s_waitcnt vmcnt(15)
	ds_store_b16 v205, v58 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v205, v59 offset:2176
	s_waitcnt vmcnt(13)
	ds_store_b16 v205, v60 offset:2304
	s_waitcnt vmcnt(12)
	ds_store_b16 v205, v61 offset:2432
	s_waitcnt vmcnt(11)
	ds_store_b16 v205, v62 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v205, v63 offset:2688
	s_waitcnt vmcnt(9)
	ds_store_b16 v205, v64 offset:2816
	s_waitcnt vmcnt(8)
	ds_store_b16 v205, v65 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v205, v66 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v205, v67 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v205, v96 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v205, v200 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v205, v201 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v205, v202 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v205, v203 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v205, v204 offset:3968
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v87.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v36, v41, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v87.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s48
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v36.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v41, v154
	v_perm_b32 v36, v36, v41, v155
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v87.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v38, v41, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v87.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v38.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v41, v154
	v_perm_b32 v38, v38, v41, v155
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v87.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v87.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v41, v154
	v_perm_b32 v40, v40, v41, v155
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v49, v88
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v192 offset:608
	ds_load_u16_d16 v42, v192 offset:352
	ds_load_u16_d16 v60, v192
	ds_load_u16_d16 v62, v192 offset:512
	ds_load_u16_d16 v61, v192 offset:256
	ds_load_u16_d16 v63, v192 offset:768
	ds_load_u16_d16 v51, v192 offset:576
	ds_load_u16_d16 v52, v192 offset:832
	ds_load_u16_d16 v64, v192 offset:1024
	ds_load_u16_d16 v53, v192 offset:1088
	ds_load_u16_d16 v65, v192 offset:1280
	ds_load_u16_d16 v54, v192 offset:1344
	ds_load_u16_d16 v66, v192 offset:1536
	ds_load_u16_d16 v67, v192 offset:1792
	ds_load_u16_d16 v55, v192 offset:1600
	ds_load_u16_d16 v49, v192 offset:64
	ds_load_u16_d16 v50, v192 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v61, v192 offset:384
	ds_load_u16_d16_hi v62, v192 offset:640
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v51, v192 offset:704
	ds_load_u16_d16_hi v63, v192 offset:896
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v192 offset:960
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v192 offset:1152
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v53, v192 offset:1216
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v65, v192 offset:1408
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v54, v192 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v66, v192 offset:1664
	ds_load_u16_d16 v56, v192 offset:1856
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v55, v192 offset:1728
	ds_load_u16_d16_hi v67, v192 offset:1920
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v44, v41
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v42, v192 offset:480
	ds_load_u16_d16 v41, v192 offset:96
	ds_load_u16_d16 v57, v192 offset:32
	ds_load_u16_d16 v58, v192 offset:288
	ds_load_u16_d16_hi v60, v192 offset:128
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v96, 0, v44, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v57, v192 offset:160
	ds_load_u16_d16_hi v49, v192 offset:192
	ds_load_u16_d16_hi v41, v192 offset:224
	ds_load_u16_d16 v59, v192 offset:544
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v58, v192 offset:416
	ds_load_u16_d16_hi v50, v192 offset:448
	ds_load_u16_d16 v44, v192 offset:864
	ds_load_u16_d16 v45, v192 offset:1120
	ds_load_u16_d16 v46, v192 offset:1376
	ds_load_u16_d16 v47, v192 offset:1632
	ds_load_u16_d16_hi v56, v192 offset:1984
	ds_load_u16_d16 v200, v192 offset:2048
	ds_load_u16_d16 v208, v192 offset:2112
	ds_load_u16_d16 v48, v192 offset:1888
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v96
	v_mul_f32_e32 v26, v26, v96
	v_mul_f32_e32 v27, v27, v96
	v_mul_f32_e32 v28, v28, v96
	v_mul_f32_e32 v29, v29, v96
	v_mul_f32_e32 v30, v30, v96
	v_mul_f32_e32 v31, v31, v96
	v_mul_f32_e32 v32, v32, v96
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v48, v192 offset:2016
	ds_load_u16_d16 v209, v192 offset:2368
	ds_load_u16_d16_hi v208, v192 offset:2240
	ds_load_u16_d16 v216, v192 offset:2080
	ds_load_u16_d16 v224, v192 offset:2144
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[60:67], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v60, v192 offset:800
	ds_load_u16_d16 v61, v192 offset:1056
	ds_load_u16_d16 v62, v192 offset:1312
	ds_load_u16_d16 v63, v192 offset:1568
	ds_load_u16_d16 v64, v192 offset:1824
	ds_load_u16_d16_hi v59, v192 offset:672
	ds_load_u16_d16_hi v43, v192 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v60, v192 offset:928
	ds_load_u16_d16_hi v44, v192 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v192 offset:1184
	ds_load_u16_d16_hi v45, v192 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v62, v192 offset:1440
	ds_load_u16_d16_hi v46, v192 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v63, v192 offset:1696
	ds_load_u16_d16_hi v47, v192 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v64, v192 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v96
	v_mul_f32_e32 v18, v18, v96
	v_mul_f32_e32 v19, v19, v96
	v_mul_f32_e32 v20, v20, v96
	v_mul_f32_e32 v21, v21, v96
	v_mul_f32_e32 v22, v22, v96
	v_mul_f32_e32 v23, v23, v96
	v_mul_f32_e32 v24, v24, v96
	v_mul_f32_e32 v9, v9, v96
	v_mul_f32_e32 v10, v10, v96
	v_mul_f32_e32 v11, v11, v96
	v_mul_f32_e32 v12, v12, v96
	v_mul_f32_e32 v13, v13, v96
	v_mul_f32_e32 v14, v14, v96
	v_mul_f32_e32 v15, v15, v96
	v_mul_f32_e32 v16, v16, v96
	v_mul_f32_e32 v1, v1, v96
	v_mul_f32_e32 v2, v2, v96
	v_mul_f32_e32 v3, v3, v96
	v_mul_f32_e32 v4, v4, v96
	v_mul_f32_e32 v5, v5, v96
	v_mul_f32_e32 v6, v6, v96
	v_mul_f32_e32 v7, v7, v96
	v_mul_f32_e32 v8, v8, v96
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v202, v192 offset:2560
	ds_load_u16_d16 v210, v192 offset:2624
	ds_load_u16_d16 v203, v192 offset:2816
	ds_load_u16_d16 v211, v192 offset:2880
	ds_load_u16_d16 v204, v192 offset:3072
	ds_load_u16_d16 v212, v192 offset:3136
	ds_load_u16_d16 v205, v192 offset:3328
	ds_load_u16_d16 v213, v192 offset:3392
	ds_load_u16_d16 v206, v192 offset:3584
	ds_load_u16_d16 v214, v192 offset:3648
	ds_load_u16_d16 v207, v192 offset:3840
	ds_load_u16_d16 v201, v192 offset:2304
	ds_load_u16_d16_hi v200, v192 offset:2176
	ds_load_u16_d16_hi v209, v192 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v202, v192 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v210, v192 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v203, v192 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v211, v192 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v204, v192 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v212, v192 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v205, v192 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v213, v192 offset:3520
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v206, v192 offset:3712
	ds_load_u16_d16 v215, v192 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v214, v192 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v207, v192 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v201, v192 offset:2432
	ds_load_u16_d16 v225, v192 offset:2400
	ds_load_u16_d16 v226, v192 offset:2656
	ds_load_u16_d16 v227, v192 offset:2912
	ds_load_u16_d16 v228, v192 offset:3168
	ds_load_u16_d16 v229, v192 offset:3424
	ds_load_u16_d16 v230, v192 offset:3680
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v94, v88
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v87.l
	v_mov_b16_e32 v35.h, v87.l
	v_mov_b16_e32 v36.h, v87.l
	v_mov_b16_e32 v37.h, v87.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v87.l
	v_mov_b16_e32 v39.h, v87.l
	v_mov_b16_e32 v40.h, v87.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v215, v192 offset:4032
	ds_load_u16_d16 v231, v192 offset:3936
	ds_load_u16_d16 v217, v192 offset:2336
	ds_load_u16_d16 v218, v192 offset:2592
	ds_load_u16_d16 v219, v192 offset:2848
	ds_load_u16_d16 v220, v192 offset:3104
	ds_load_u16_d16 v221, v192 offset:3360
	ds_load_u16_d16 v222, v192 offset:3616
	ds_load_u16_d16 v223, v192 offset:3872
	ds_load_u16_d16_hi v216, v192 offset:2208
	ds_load_u16_d16_hi v224, v192 offset:2272
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v87.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v217, v192 offset:2464
	ds_load_u16_d16_hi v225, v192 offset:2528
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v218, v192 offset:2720
	ds_load_u16_d16_hi v226, v192 offset:2784
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v219, v192 offset:2976
	ds_load_u16_d16_hi v227, v192 offset:3040
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v220, v192 offset:3232
	ds_load_u16_d16_hi v228, v192 offset:3296
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v221, v192 offset:3488
	ds_load_u16_d16_hi v229, v192 offset:3552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v222, v192 offset:3744
	ds_load_u16_d16_hi v230, v192 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v223, v192 offset:4000
	ds_load_u16_d16_hi v231, v192 offset:4064
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v95, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v154
	v_perm_b32 v34, v35, v34, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v93, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v92, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v154
	v_perm_b32 v36, v37, v36, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v90, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v154
	v_perm_b32 v38, v39, v38, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v168, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v89, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v39, v39
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v39, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v154
	v_perm_b32 v40, v41, v40, v155
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[200:207], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[216:223], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[208:215], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[224:231], v[33:40], v[1:8]
.Ltmp12:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v131, v131 :: v_dual_max_f32 v35, v129, v129
	v_max_f32_e32 v36, v125, v125
	v_max_f32_e32 v38, v117, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v33, v34, v33
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v35
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s36, v34, 31
	v_mov_b32_dpp v34, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v121, v121 :: v_dual_max_f32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v35, 31
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v35, v127, v127 :: v_dual_max_f32 v36, v36, v37
	v_max_f32_e32 v34, v35, v34
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v119, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v36, -1, -1 op_sel:[1,0]
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v33
	v_dual_max_f32 v33, v36, v33 :: v_dual_max_f32 v36, v123, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, v34, v36
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v33, 31
	v_readlane_b32 s6, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v117 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v38, v37
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v35, 31
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v37, v37, v38
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s7, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v36, v36, v38
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v36, 31
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v130, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp97:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s8, s8
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v36
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v38, v122, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v36, v36, v36
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v126, v126
	v_max_f32_e32 v35, v35, v36
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s9, v33, 31
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s9, s9
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s20, v35, 31
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s20, s20
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s10, v34, 31
	v_mov_b32_dpp v34, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp137:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s10, s10
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v38
	v_max_f32_e32 v34, v35, v34
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s37, v36, 31
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v124, v124 :: v_dual_max_f32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s37, s37
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v36
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v37, v37, v38
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v34, v34, v36
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v37, v33
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v34, 31
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp161:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s4, s4
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v120, v120
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s38, v33, 31
.Ltmp164:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v182, v182
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v46, s39, s39
	v_max_f32_e64 v45, s38, s38
	v_dual_max_f32 v182, v33, v34 :: v_dual_max_f32 v33, v167, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s40, v35, 31
.Ltmp170:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s36, s36
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v34, v161, v161
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v118 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp173:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v47, s40, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v161, v34, v35
	v_dual_max_f32 v34, v86, v86 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v51, v129, v161 :: v_dual_max_f32 v34, v34, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v35, v183, v183 :: v_dual_max_f32 v38, v118, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v38, v37
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp177:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s28
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp182:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s41, v36, 31
.Ltmp198:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s3, s3
	v_max_f32_e64 v48, s41, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v183, v35, v36
.Ltmp200:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v166, v166
.Ltmp201:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp202:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v125, v183
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v35, v35, v36 :: v_dual_max_f32 v36, v162, v162
	v_max_f32_e64 v38, s6, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s42, v37, 31
.Ltmp204:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s5, s5
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v49, s42, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v36, v37
	v_max_f32_e32 v36, v165, v165
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v184, v184
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v184, v37, v38
	v_max_f32_e32 v37, v150, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v38, v185, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp208:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v185, v38, v39 :: v_dual_max_f32 v38, v148, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v59, v123, v185 :: v_dual_max_f32 v38, v38, v39
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v163, v163
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v127, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp212:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v163, v39, v40
	v_max_f32_e32 v39, v146, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v61, v119, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v186, v186
	v_max_f32_e32 v186, v40, v41
	v_max_f32_e32 v40, v145, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v40, v41
	v_max_f32_e32 v41, v169, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v169, v41, v42
	v_max_f32_e32 v41, v144, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp216:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v50, v132, v169 :: v_dual_max_f32 v41, v41, v42
	v_dual_sub_f32 v55, v121, v162 :: v_dual_max_f32 v42, v187, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v55, v55
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v187, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp220:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v50, 0, v50, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v167
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s33
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v55, v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v55, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v65, v55, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp223:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v52, v130, v187 :: v_dual_add_f32 v55, v55, v65
.Ltmp224:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v65, v57, -1, -1 op_sel:[1,0]
.Ltmp225:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v143, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v55, 31
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v65 :: v_dual_max_f32 v42, v42, v43
.Ltmp228:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v170, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp229:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v57, 31
.Ltmp230:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v170, v43, v44 :: v_dual_max_f32 v43, v142, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v43, v44
	v_max_f32_e32 v44, v188, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp232:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v188, v44, v45
	v_max_f32_e32 v44, v141, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp234:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v44, v45
	v_max_f32_e32 v45, v133, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp236:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v133, v45, v46
	v_max_f32_e32 v45, v140, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp238:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v45, v46
	v_max_f32_e32 v46, v134, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v134, v46, v47
	v_max_f32_e32 v46, v139, v139
	v_max_f32_e32 v46, v46, v47
	v_max_f32_e32 v47, v135, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v135, v47, v48
	v_dual_max_f32 v47, v138, v138 :: v_dual_sub_f32 v62, v120, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v47, v47, v48
	v_max_f32_e32 v48, v136, v136
	v_max_f32_e32 v136, v48, v49
	v_max_f32_e32 v48, v137, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v48, v48, v49 :: v_dual_sub_f32 v49, v131, v182
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s27
.Ltmp239:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v63, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v63
.Ltmp242:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v63, v51, -1, -1 op_sel:[1,0]
.Ltmp243:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v128, v133
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v49, 31
.Ltmp245:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v63
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v63, v53, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v51, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v63
.Ltmp249:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v117, v186
	v_sub_f32_e32 v54, v126, v170
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp250:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v53, 31
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v51
.Ltmp254:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v61
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v56, v122, v188
.Ltmp255:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v49, 31
.Ltmp256:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s30
.Ltmp257:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp258:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s21
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v51, v51, v53
.Ltmp262:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v51, 31
.Ltmp264:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v53, -1, -1 op_sel:[1,0]
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v55
.Ltmp268:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s9, v53, 31
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v55
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v52, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s10, v50, 31
	v_permlanex16_b32 v50, v49, -1, -1 op_sel:[1,0]
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v50
.Ltmp272:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v49, 31
.Ltmp274:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v58
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp275:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp276:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v50, -1, -1 op_sel:[1,0]
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v50, v50, v51
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v51
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v49, 31
.Ltmp283:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v167, v33
	v_mov_b32_e32 v167, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v80, v80, v49, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v86, v34
	v_mov_b32_e32 v86, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v166
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v81, v81, v49, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v166, v35 :: v_dual_mov_b32 v166, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v82, v82, v49, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v165, v36
	v_mov_b32_e32 v165, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v60, v124, v134 :: v_dual_cndmask_b32 v49, 0, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v83, v83, v49, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v150, v37 :: v_dual_mov_b32 v150, v37
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v64, v118, v136
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s24
.Ltmp284:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp285:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v148
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp287:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v76, v76, v49, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v148, v38
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v148, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp289:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp291:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v146
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v77, v77, v49, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v146, v39 :: v_dual_mov_b32 v146, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp292:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v55 :: v_dual_cndmask_b32 v49, 0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v52, 31
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
.Ltmp294:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v145
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v78, v78, v49, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v145, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp296:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v62
	v_mov_b32_e32 v145, v40
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp297:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s24, v51, 31
.Ltmp298:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s22, v50, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp301:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v79, v79, v49, s9
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v144, v41
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v144, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp303:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp305:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp306:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, -1, -1 op_sel:[1,0]
.Ltmp307:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v143
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v72, v72, v49, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_sub_f32 v49, v143, v42
.Ltmp309:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v64
	v_mov_b32_e32 v143, v42
.Ltmp310:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s25, v52, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp311:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v142
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp313:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v73, v73, v49, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v142, v43 :: v_dual_mov_b32 v142, v43
.Ltmp314:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp315:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp316:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp317:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp318:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v54, v53, -1, -1 op_sel:[1,0]
.Ltmp319:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v74, v74, v49, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v141, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp320:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
	v_mov_b32_e32 v141, v44
.Ltmp321:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp322:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v53, 31
.Ltmp323:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v75, v75, v49, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v140, v45 :: v_dual_mov_b32 v140, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v139
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v68, v68, v49, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v139, v46
	v_mov_b32_e32 v139, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v69, v69, v49, s24
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v138, v47 :: v_dual_mov_b32 v138, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v137
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v70, v70, v49, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v137, v48
	v_mov_b32_e32 v137, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v71, v71, v49, s26
	v_mov_b32_e32 v49, v88
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_lshrrev_b32_e32 v33, 5, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s82, s84, s73
	scratch_load_b64 v[41:42], off, off offset:60 ; 8-byte Folded Reload
	s_mul_i32 s35, s82, s70
	scratch_load_b64 v[42:43], off, off offset:72 ; 8-byte Folded Reload
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s84, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[43:44], off, off offset:88
	scratch_load_b64 v[44:45], off, off offset:144
	scratch_load_b64 v[45:46], off, off offset:100
	scratch_load_b64 v[38:39], off, off offset:108
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x3                            ; 24-byte Folded Reload
	scratch_load_b32 v33, off, off offset:8
	scratch_load_b64 v[39:40], off, off offset:124
	scratch_load_b32 v40, off, off offset:52
	scratch_load_b64 v[50:51], off, off offset:152
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x5                            ; 36-byte Folded Reload
	scratch_load_b32 v34, off, off offset:56
	scratch_load_b32 v35, off, off offset:68
	scratch_load_b64 v[36:37], off, off offset:80
	scratch_load_b32 v37, off, off offset:96
	scratch_load_b64 v[46:47], off, off offset:116
	scratch_load_b64 v[47:48], off, off offset:132
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v41, s35, v41
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v42, s35, v42
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v43, s35, v43
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v44, s35, v44
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v45, s35, v45
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v38, s35, v38
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v33, s84, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v39, s35, v39
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v40, s35, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s35, v50
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v50, s60
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v51, s61 :: v_dual_add_nc_u32 v34, s35, v34
	v_dual_mov_b32 v52, s62 :: v_dual_add_nc_u32 v35, s35, v35
	v_dual_mov_b32 v53, s63 :: v_dual_add_nc_u32 v36, s35, v36
	v_dual_mov_b32 v54, s64 :: v_dual_add_nc_u32 v37, s35, v37
	v_dual_mov_b32 v55, s65 :: v_dual_mov_b32 v56, s66
	v_dual_mov_b32 v57, s67 :: v_dual_add_nc_u32 v46, s35, v46
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v47, s35, v47
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s75, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s75, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s35, v85
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s21
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s22
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s23
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s24
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v33, v33, s[52:55], 0 offen
	buffer_load_u8 v34, v34, s[52:55], 0 offen
	buffer_load_u8 v35, v35, s[52:55], 0 offen
	buffer_load_u8 v36, v36, s[52:55], 0 offen
	buffer_load_u8 v37, v37, s[52:55], 0 offen
	buffer_load_u8 v38, v38, s[52:55], 0 offen
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s26
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s27
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s28
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s29
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s25
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s30
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	buffer_load_u8 v41, v41, s[52:55], 0 offen
	buffer_load_u8 v42, v42, s[52:55], 0 offen
	buffer_load_u8 v43, v43, s[52:55], 0 offen
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s31
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s33
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s34
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	buffer_load_u8 v46, v46, s[52:55], 0 offen
	buffer_load_u8 v39, v39, s[52:55], 0 offen
	buffer_load_u8 v44, v44, s[52:55], 0 offen
	buffer_load_u8 v47, v47, s[52:55], 0 offen
	buffer_load_u8 v48, v48, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v172, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v172, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v172, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v172, v41 offset:576
	ds_store_b8 v173, v35
	ds_store_b8 v173, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v173, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v173, v43 offset:576
	ds_store_b8 v174, v37
	ds_store_b8 v174, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v174, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v174, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v175, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v175, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v175, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v175, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v193
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[58:61], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[58:59], v[98:99], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[60:61], v[98:99], v[50:57] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v50, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[100:101], v[41:48] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v50, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[52:53], v[100:101], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[102:103], v[41:48] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v50, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[52:53], v[102:103], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[104:105], v[41:48] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_and_b32_e32 v50, 31, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[52:53], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s84, v50
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s75, v66
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s101, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s93, s12, s1
	s_and_b32 s90, s14, s1
	s_and_b32 s88, s16, s1
	s_and_b32 s83, s19, s1
	s_and_b32 s99, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s92, s13, s1
	s_and_b32 s91, s15, s1
	s_and_b32 s89, s17, s1
	s_and_b32 s97, s3, s1
	v_readlane_b32 s3, v255, 4
	s_and_b32 s94, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s102, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s98, s3, s1
	v_readlane_b32 s3, v255, 8
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 9
	s_and_b32 s95, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v255, 10
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v50, off, off offset:292 ; 4-byte Folded Reload
	s_and_not1_b32 s36, s101, exec_lo
	s_and_not1_b32 s37, s99, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v66, v50
	scratch_load_b32 v50, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s35, vcc_lo, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, exec_lo
	s_or_b32 s101, s36, s35
	s_and_not1_b32 s35, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v66, v50
	scratch_load_b32 v50, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s99, s37, s1
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v66, v50
	scratch_load_b32 v50, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s93, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v66, v50
	scratch_load_b32 v50, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s94, s35, s21
	s_and_not1_b32 s21, s90, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v66, v50
	scratch_load_b32 v50, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s22, exec_lo
	s_or_b32 s93, s1, s3
	s_and_not1_b32 s1, s88, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v66, v50
	scratch_load_b32 v50, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s23, exec_lo
	s_or_b32 s90, s21, s22
	s_and_not1_b32 s21, s83, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v66, v50
	scratch_load_b32 v50, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s24, exec_lo
	s_or_b32 s88, s1, s3
	s_and_not1_b32 s1, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v66, v50
	scratch_load_b32 v50, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s25, exec_lo
	s_or_b32 s83, s21, s22
	s_and_not1_b32 s21, s100, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v66, v50
	scratch_load_b32 v50, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s26, exec_lo
	s_or_b32 s102, s1, s3
	s_and_not1_b32 s1, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v66, v50
	scratch_load_b32 v50, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s27, exec_lo
	s_or_b32 s100, s21, s22
	s_and_not1_b32 s21, s96, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v66, v50
	scratch_load_b32 v50, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s28, exec_lo
	s_or_b32 s98, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v66, v50
	scratch_load_b32 v50, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s29, exec_lo
	s_or_b32 s96, s21, s22
	s_and_not1_b32 s21, s92, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v66, v50
	scratch_load_b32 v50, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s30, exec_lo
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v66, v50
	scratch_load_b32 v50, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s31, exec_lo
	s_or_b32 s92, s21, s22
	s_and_not1_b32 s21, s89, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v66, v50
	scratch_load_b32 v50, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s33, exec_lo
	s_or_b32 s91, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v66, v50
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s34, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s34, exec_lo
	s_or_b32 s89, s21, s22
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v58, 16, v147
	v_or_b32_e32 v50, s84, v147
	v_or_b32_e32 v51, 2, v147
	v_or_b32_e32 v52, 4, v147
	v_add_lshl_u32 v67, s82, v147, 1
	v_or_b32_e32 v63, s84, v58
	v_or_b32_e32 v58, 18, v147
	v_or_b32_e32 v51, s84, v51
	v_or_b32_e32 v60, 30, v147
	v_cmp_gt_i32_e32 vcc_lo, s75, v50
	v_or_b32_e32 v52, s84, v52
	v_or_b32_e32 v64, s84, v58
	v_or_b32_e32 v58, 20, v147
	v_or_b32_e32 v53, 6, v147
	v_or_b32_e32 v91, s84, v60
	v_add_nc_u32_e32 v60, 20, v67
	v_or_b32_e32 v54, 8, v147
	v_or_b32_e32 v65, s84, v58
	v_or_b32_e32 v58, 22, v147
	v_or_b32_e32 v53, s84, v53
	v_add_nc_u32_e32 v93, 32, v67
	v_add_nc_u32_e32 v61, 24, v67
	v_add_nc_u32_e32 v59, 8, v67
	v_or_b32_e32 v87, s84, v58
	v_or_b32_e32 v58, 24, v147
	v_or_b32_e32 v54, s84, v54
	v_or_b32_e32 v55, 10, v147
	v_add_nc_u32_e32 v94, 36, v67
	v_or_b32_e32 v56, 12, v147
	v_or_b32_e32 v88, s84, v58
	v_or_b32_e32 v58, 26, v147
	v_or_b32_e32 v55, s84, v55
	v_add_nc_u32_e32 v62, 28, v67
	v_or_b32_e32 v56, s84, v56
	v_or_b32_e32 v57, 14, v147
	v_or_b32_e32 v89, s84, v58
	v_or_b32_e32 v58, 28, v147
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v57, s84, v57
	v_or_b32_e32 v90, s84, v58
	v_add_nc_u32_e32 v58, 4, v67
	v_cndmask_b32_e32 v50, 0x80000000, v67, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v51, 0x80000000, v58, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v52
	v_add_nc_u32_e32 v58, 12, v67
	v_cndmask_b32_e32 v52, 0x80000000, v59, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v53
	v_add_nc_u32_e32 v59, 16, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v53, 0x80000000, v58, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v54
	v_cndmask_b32_e32 v54, 0x80000000, v59, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v55
	v_cndmask_b32_e32 v55, 0x80000000, v60, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v56
	v_cndmask_b32_e32 v56, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v57
	v_cndmask_b32_e32 v92, 0x80000000, v62, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v63
	s_clause 0x7
	buffer_load_u16 v62, v50, s[76:79], 0 offen
	buffer_load_u16 v61, v51, s[76:79], 0 offen
	buffer_load_u16 v60, v52, s[76:79], 0 offen
	buffer_load_u16 v59, v53, s[76:79], 0 offen
	buffer_load_u16 v58, v54, s[76:79], 0 offen
	buffer_load_u16 v57, v55, s[76:79], 0 offen
	buffer_load_u16 v55, v56, s[76:79], 0 offen
	buffer_load_u16 v56, v92, s[76:79], 0 offen
	v_add_nc_u32_e32 v52, 44, v67
	v_add_nc_u32_e32 v54, 48, v67
	v_dual_cndmask_b32 v50, 0x80000000, v93 :: v_dual_add_nc_u32 v63, 52, v67
	v_cmp_gt_i32_e32 vcc_lo, s75, v64
	v_dual_cndmask_b32 v51, 0x80000000, v94 :: v_dual_add_nc_u32 v64, 56, v67
	v_cmp_gt_i32_e32 vcc_lo, s75, v65
	v_add_nc_u32_e32 v65, 60, v67
	v_add_nc_u32_e32 v95, 40, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v53, 0x80000000, v95, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v87
	v_cndmask_b32_e32 v67, 0x80000000, v52, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v88
	v_cndmask_b32_e32 v87, 0x80000000, v54, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v89
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v90
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s75, v91
	v_cndmask_b32_e32 v88, 0x80000000, v65, vcc_lo
	s_clause 0x7
	buffer_load_u16 v50, v50, s[76:79], 0 offen
	buffer_load_u16 v54, v51, s[76:79], 0 offen
	buffer_load_u16 v52, v53, s[76:79], 0 offen
	buffer_load_u16 v51, v67, s[76:79], 0 offen
	buffer_load_u16 v53, v87, s[76:79], 0 offen
	buffer_load_u16 v65, v63, s[76:79], 0 offen
	buffer_load_u16 v64, v64, s[76:79], 0 offen
	buffer_load_u16 v63, v88, s[76:79], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v67, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v66, v67
	scratch_load_b32 v67, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v66, v67
	scratch_load_b32 v67, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v66, v67
	scratch_load_b32 v67, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v66, v67
	scratch_load_b32 v67, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v66, v67
	scratch_load_b32 v67, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v66, v67
	scratch_load_b32 v67, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v66, v67
	scratch_load_b32 v67, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v66, v67
	scratch_load_b32 v67, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v66, v67
	scratch_load_b32 v67, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v66, v67
	scratch_load_b32 v67, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v66, v67
	scratch_load_b32 v67, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v66, v67
	scratch_load_b32 v67, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v66, v67
	scratch_load_b32 v67, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v66, v67
	scratch_load_b32 v67, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v66, v67
	scratch_load_b32 v67, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v66, v67
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v67, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v66, v67
	scratch_load_b32 v67, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s35, vcc_lo, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, s101
	s_and_b32 s35, s35, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v66, v67
	scratch_load_b32 v67, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s36
	s_and_not1_b32 s36, s101, exec_lo
	s_and_b32 s1, s1, s99
	s_or_b32 s101, s36, s35
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s35, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v66, v67
	scratch_load_b32 v67, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s37
	s_and_not1_b32 s37, s99, exec_lo
	s_and_b32 s3, s3, s97
	s_or_b32 s99, s37, s1
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s93, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v66, v67
	scratch_load_b32 v67, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s94
	s_and_b32 s21, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s35, s21
	s_and_not1_b32 s21, s90, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v66, v67
	scratch_load_b32 v67, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s93
	s_and_b32 s3, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s93, s1, s3
	s_and_not1_b32 s1, s88, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v66, v67
	scratch_load_b32 v67, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s90
	s_and_b32 s22, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s90, s21, s22
	s_and_not1_b32 s21, s83, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v66, v67
	scratch_load_b32 v67, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s88
	s_and_b32 s3, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s88, s1, s3
	s_and_not1_b32 s1, s102, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v66, v67
	scratch_load_b32 v67, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s83
	s_and_b32 s22, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s83, s21, s22
	s_and_not1_b32 s21, s100, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v66, v67
	scratch_load_b32 v67, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s102
	s_and_b32 s3, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s102, s1, s3
	s_and_not1_b32 s1, s98, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v66, v67
	scratch_load_b32 v67, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s100
	s_and_b32 s22, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s100, s21, s22
	s_and_not1_b32 s21, s96, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v66, v67
	scratch_load_b32 v67, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s98
	s_and_b32 s3, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s98, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v66, v67
	scratch_load_b32 v67, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s96
	s_and_b32 s22, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s96, s21, s22
	s_and_not1_b32 s21, s92, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v66, v67
	scratch_load_b32 v67, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s95
	s_and_b32 s3, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v66, v67
	scratch_load_b32 v67, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s92
	s_and_b32 s22, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s92, s21, s22
	s_and_not1_b32 s21, s89, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v66, v67
	scratch_load_b32 v67, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s33, s91
	s_and_b32 s3, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s91, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v66, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s34, s51
	s_and_b32 s34, s34, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s34, exec_lo
	s_or_b32 s89, s21, s22
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v7, v8
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
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	scratch_load_b32 v64, off, off offset:484 ; 4-byte Folded Reload
	v_and_b32_e32 v39, 32, v0
	v_lshlrev_b32_e32 v34, 1, v0
.LBB0_13:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 28, v34
	v_lshl_add_u32 v33, v39, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 64, v0
	ds_store_b128 v33, v[80:83]
	ds_store_b128 v33, v[76:79] offset:16
	ds_store_b128 v33, v[72:75] offset:32
	ds_store_b128 v33, v[68:71] offset:48
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v34, v39
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v33, null, v0, v0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v37, null, v0, v0, v27
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v45, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v57, v48
	v_fmac_f32_e32 v46, v55, v46
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_mul_f32_e32 v57, v40, v48
	v_mul_f32_e32 v55, v36, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v43, v50, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v62, -v39, v57, v40
	v_fma_f32 v60, -v35, v55, v36
	v_div_scale_f32 v51, s5, v30, v0, v30
	v_div_scale_f32 v44, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v55, v60, v46
	v_dual_fmac_f32 v50, v59, v50 :: v_dual_fmac_f32 v57, v62, v48
	v_mul_f32_e32 v54, v34, v45
	v_mul_f32_e32 v56, v38, v47
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v33, v54, v34
	v_fma_f32 v61, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v52, null, v0, v0, v32
	v_fmac_f32_e32 v54, v59, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v61, v47
	v_div_scale_f32 v42, s4, v29, v0, v29
	v_or_b32_e32 v62, 10, v147
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v38, -v44, v53, 1.0
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v52
	v_fmac_f32_e32 v53, v38, v53
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v49, v58, v49
	v_div_fmas_f32 v36, v36, v48, v57
	v_mul_f32_e32 v37, v51, v50
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, null, v0, v0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v36, v0, v28
	v_fma_f32 v36, -v52, v39, 1.0
	v_mul_f32_e32 v58, v42, v49
	v_rcp_f32_e32 v40, v35
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fixup_f32 v26, v34, v0, v26
	v_fma_f32 v33, -v43, v37, v51
	v_div_scale_f32 v34, s1, v31, v0, v31
	v_fmac_f32_e32 v39, v36, v39
	v_fma_f32 v63, -v41, v58, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, v33, v50
	v_div_scale_f32 v36, s3, v32, v0, v32
	v_fma_f32 v45, -v35, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v63, v49
	v_mul_f32_e32 v33, v34, v53
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fmac_f32_e32 v40, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v58, v42
	v_fma_f32 v41, -v43, v37, v51
	v_fma_f32 v42, -v44, v33, v34
	v_mul_f32_e32 v43, v36, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, s4, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_fma_f32 v42, -v52, v43, v36
	v_div_scale_f32 v47, null, v0, v0, v20
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v44, v33, v34
	v_fmac_f32_e32 v43, v42, v39
	v_div_fmas_f32 v38, v38, v49, v58
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v42, null, v0, v0, v19
	v_div_fmas_f32 v37, v41, v50, v37
	v_rcp_f32_e32 v41, v46
	v_div_fixup_f32 v29, v38, v0, v29
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v37, v0, v30
	v_or_b32_e32 v63, 8, v147
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v46, v41, 1.0
	v_div_fmas_f32 v34, v34, v39, v43
	v_div_fixup_f32 v31, v33, v0, v31
	s_mov_b32 vcc_lo, s4
	v_or_b32_e32 v61, 12, v147
	v_fmac_f32_e32 v41, v38, v41
	v_rcp_f32_e32 v38, v42
	v_div_fixup_f32 v32, v34, v0, v32
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s74, v63
	v_cmp_gt_i32_e64 s7, s74, v62
	v_cmp_gt_i32_e64 s8, s74, v61
	v_or_b32_e32 v60, 14, v147
	v_or_b32_e32 v59, 16, v147
	v_or_b32_e32 v58, 18, v147
	v_or_b32_e32 v57, 20, v147
	v_or_b32_e32 v56, 22, v147
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v38, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s74, v60
	v_cmp_gt_i32_e64 s10, s74, v59
	v_cmp_gt_i32_e64 s11, s74, v58
	v_cmp_gt_i32_e64 s12, s74, v57
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v38, v43, v38 :: v_dual_mul_f32 v37, v45, v40
	v_or_b32_e32 v55, 24, v147
	v_or_b32_e32 v54, 26, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s74, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v35, v37, v45
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s74, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s15, s74, v54
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v36, v40
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v35, v37, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	v_div_scale_f32 v35, s3, v19, v0, v19
	v_div_fmas_f32 v33, v33, v40, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v36, 1.0
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v40, s4, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v33, v0, v17
	v_dual_fmac_f32 v36, v43, v36 :: v_dual_mul_f32 v39, v44, v41
	v_div_scale_f32 v43, null, v0, v0, v22
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v46, v39, v44
	v_rcp_f32_e32 v48, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v45, v37, 1.0
	v_dual_fmac_f32 v39, v34, v41 :: v_dual_mul_f32 v34, v35, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v49, v37
	v_fma_f32 v33, -v46, v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v42, v34, v35
	v_mul_f32_e32 v46, v40, v36
	v_div_fmas_f32 v33, v33, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v38
	v_fma_f32 v39, -v47, v46, v40
	v_div_scale_f32 v41, s1, v21, v0, v21
	v_fma_f32 v44, -v43, v48, 1.0
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v46, v39, v36 :: v_dual_mul_f32 v35, v41, v37
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, s5, v22, v0, v22
	v_div_fmas_f32 v33, v33, v38, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v34, -v47, v46, v40
	v_fma_f32 v38, -v45, v35, v41
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v47, null, v0, v0, v24
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fmas_f32 v34, v34, v36, v46
	v_dual_fmac_f32 v35, v38, v37 :: v_dual_mul_f32 v44, v39, v48
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	v_div_fixup_f32 v19, v33, v0, v19
	v_fma_f32 v33, -v45, v35, v41
	v_fma_f32 v38, -v43, v44, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v44, v38, v48
	v_fma_f32 v38, -v47, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fmas_f32 v33, v33, v37, v35
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v44, v39
	v_fmac_f32_e32 v36, v38, v36
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_mul_f32_e32 v37, v34, v40
	v_div_scale_f32 v39, s1, v24, v0, v24
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fmac_f32_e32 v35, v46, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v36 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v36
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v38, v39, v33
	v_fmac_f32_e32 v39, v47, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v33, -v38, v39, v33
	v_div_fixup_f32 v24, v36, v0, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_div_fmas_f32 v33, v33, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v45, v49, v40
	v_fmac_f32_e32 v44, v34, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v50, 1.0
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_scale_f32 v40, null, v0, v0, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v41, -v37, v34, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v41, v34
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v42, v44, v46
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v43, v44
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v33, v41, v34
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v40, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v38
	v_mul_f32_e32 v39, v36, v50
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v43, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v48, v39, v36
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_div_fmas_f32 v35, v35, v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v34, v37, 1.0
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v46
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v39, v45
	v_mul_f32_e32 v38, v49, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v43, v42, v33
	v_div_scale_f32 v40, null, v0, v0, v4
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_scale_f32 v44, null, v0, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v50, v39, v50 :: v_dual_mul_f32 v51, v48, v37
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_fma_f32 v36, -v34, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v40, v42, 1.0
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v35, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v1, v34, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_scale_f32 v34, null, v0, v0, v5
	s_mov_b32 vcc_lo, s1
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
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v48, -v37, v41, 1.0
	v_dual_fmac_f32 v39, v45, v39 :: v_dual_fmac_f32 v46, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_mul_f32_e32 v49, v33, v36
	v_div_scale_f32 v45, s3, v6, v0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v47, v42 :: v_dual_mul_f32 v52, v48, v41
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v53, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s74, v147
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v51, v40, v39
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v48, v64, s74
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v36, -v44, v53, v50
	v_or_b32_e32 v50, 2, v147
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	v_or_b32_e32 v64, 6, v147
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_or_b32_e32 v51, 4, v147
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s74, v50
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v147, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s74, v51
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v50, v48, v50, 2
	v_add_lshl_u32 v51, v48, v51, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fixup_f32 v7, v34, v0, v7
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s74, v64
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	buffer_store_b32 v8, v49, s[68:71], 0 offen
	v_add_lshl_u32 v8, v48, v64, 2
	s_clause 0x1
	buffer_store_b32 v25, v50, s[68:71], 0 offen
	buffer_store_b32 v26, v51, s[68:71], 0 offen
	v_add_lshl_u32 v25, v48, v63, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v48, v62, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v28, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v61, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v29, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v30, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[68:71], 0 offen
	buffer_store_b32 v28, v25, s[68:71], 0 offen
	v_add_lshl_u32 v8, v48, v60, 2
	v_add_lshl_u32 v25, v48, v59, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[68:71], 0 offen
	buffer_store_b32 v30, v49, s[68:71], 0 offen
	v_add_lshl_u32 v26, v48, v58, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v48, v57, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	v_or_b32_e32 v53, 28, v147
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v31, v8, s[68:71], 0 offen
	buffer_store_b32 v17, v25, s[68:71], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_add_lshl_u32 v8, v48, v56, 2
	v_add_lshl_u32 v17, v48, v55, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s74, v53
	v_or_b32_e32 v52, 30, v147
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[68:71], 0 offen
	buffer_store_b32 v19, v27, s[68:71], 0 offen
	v_add_lshl_u32 v18, v48, v54, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v32, 32, v147
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v53, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 34, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s74, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 36, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s74, v32
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[68:71], 0 offen
	buffer_store_b32 v21, v17, s[68:71], 0 offen
	v_add_lshl_u32 v8, v48, v52, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s74, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 38, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s74, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[68:71], 0 offen
	buffer_store_b32 v23, v19, s[68:71], 0 offen
	v_add_lshl_u32 v18, v48, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 40, v147
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 42, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s74, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 44, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s74, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[68:71], 0 offen
	buffer_store_b32 v9, v17, s[68:71], 0 offen
	v_add_lshl_u32 v8, v48, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s74, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 46, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s74, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[68:71], 0 offen
	buffer_store_b32 v11, v19, s[68:71], 0 offen
	v_add_lshl_u32 v10, v48, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 48, v147
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 50, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s74, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 52, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s74, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[68:71], 0 offen
	buffer_store_b32 v13, v9, s[68:71], 0 offen
	v_add_lshl_u32 v8, v48, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s74, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s74, v42
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[68:71], 0 offen
	buffer_store_b32 v15, v11, s[68:71], 0 offen
	v_add_lshl_u32 v10, v48, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 54, v147
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 56, v147
	v_or_b32_e32 v45, 58, v147
	v_or_b32_e32 v46, 60, v147
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v47, 62, v147
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s74, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s74, v44
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v8, s[68:71], 0 offen
	buffer_store_b32 v1, v9, s[68:71], 0 offen
	v_add_lshl_u32 v1, v48, v43, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s74, v45
	v_cmp_gt_i32_e32 vcc_lo, s74, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[68:71], 0 offen
	buffer_store_b32 v3, v11, s[68:71], 0 offen
	v_add_lshl_u32 v2, v48, v44, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s74, v47
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s2, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v48, v45, 2
	v_add_lshl_u32 v8, v48, v46, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v47, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[68:71], 0 offen
	buffer_store_b32 v5, v2, s[68:71], 0 offen
	buffer_store_b32 v6, v3, s[68:71], 0 offen
	buffer_store_b32 v7, v8, s[68:71], 0 offen
	buffer_store_b32 v0, v9, s[68:71], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp324:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 492
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 492
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26132
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 492
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
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
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
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
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
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
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
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
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
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
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
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
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
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
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
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
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 492
    .sgpr_count:     107
    .sgpr_spill_count: 11
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 122
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
