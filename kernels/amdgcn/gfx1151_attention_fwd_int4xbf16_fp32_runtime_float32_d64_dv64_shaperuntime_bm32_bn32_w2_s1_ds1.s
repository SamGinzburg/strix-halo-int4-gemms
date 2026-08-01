	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[76:79], s[0:1], 0x4c
	s_load_b32 s54, s[0:1], 0x60
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v33, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_or_b32_e32 v11, 18, v2
	v_or_b32_e32 v12, 20, v2
	v_or_b32_e32 v13, 22, v2
	v_or_b32_e32 v14, 24, v2
	v_or_b32_e32 v15, 26, v2
	v_or_b32_e32 v16, 28, v2
	v_or_b32_e32 v17, 30, v2
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v11, off offset:32
	scratch_store_b32 off, v12, off offset:36
	scratch_store_b32 off, v13, off offset:40
	scratch_store_b32 off, v14, off offset:44
	scratch_store_b32 off, v15, off offset:48
	scratch_store_b32 off, v16, off offset:52
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s54, v2, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s31, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s76
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s28, s2, 5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[21:22], null, s54, 6, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[23:24], null, s54, 10, v[66:67]
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s78
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v19, s54, 2, v66
	v_lshl_add_u32 v22, s54, 3, v66
	v_mov_b32_e32 v20, v21
	v_mad_u64_u32 v[24:25], null, s54, 12, v[66:67]
	v_mad_u64_u32 v[25:26], null, s54, 14, v[66:67]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v18, s54, 1, v66
	v_lshl_add_u32 v26, s54, 4, v66
	v_mad_u64_u32 v[27:28], null, s54, 18, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v19, off offset:64
	scratch_store_b64 off, v[20:21], off offset:68
	scratch_store_b32 off, v22, off offset:76
	scratch_store_b32 off, v26, off offset:104
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:56
	scratch_store_b32 off, v18, off offset:60
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[75:76], null, s54, 26, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[249:250], null, s54, 22, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[76:77], null, s54, 28, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 2, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[253:254], null, s54, 20, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[250:251], null, s54, 24, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s8, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[77:78], null, s54, 30, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s8, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, 4, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s30, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s77
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v5, 6, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v6, 8, v2
	v_or_b32_e32 v7, 10, v2
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v8, 12, v2
	v_or_b32_e32 v9, 14, v2
	v_or_b32_e32 v10, 16, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s28, v2
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v3, off
	scratch_store_b32 off, v4, off offset:4
	scratch_store_b32 off, v5, off offset:8
	scratch_store_b32 off, v6, off offset:12
	scratch_store_b32 off, v7, off offset:16
	scratch_store_b32 off, v8, off offset:20
	scratch_store_b32 off, v9, off offset:24
	scratch_store_b32 off, v10, off offset:28
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s28, v3
	v_or_b32_e32 v4, s28, v4
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s18, s54, v33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s28, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s28, v6
	v_or_b32_e32 v7, s28, v7
	v_or_b32_e32 v8, s28, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s28, v10
	v_or_b32_e32 v11, s28, v11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s34, s78, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s78, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s28, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s76, s77
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s29, s6, 31
	s_mul_i32 s8, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s78, v10
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s28, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s78, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s33, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s28
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s78, v3
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s4, s2, s54
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s78, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s4, v66
	v_add_nc_u32_e32 v20, s4, v21
	v_add_nc_u32_e32 v21, s4, v22
	v_mov_b32_e32 v22, v23
	v_add_nc_u32_e32 v18, s4, v18
	v_add_nc_u32_e32 v19, s4, v19
	v_add_nc_u32_e32 v28, s4, v249
	v_add_nc_u32_e32 v29, s4, v250
	scratch_store_b64 off, v[22:23], off offset:80 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v22, s4, v23
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v30, s4, v75
	v_add_nc_u32_e32 v31, s4, v76
	v_add_nc_u32_e32 v32, s4, v77
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s78, v5
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[23:24], off offset:88 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v23, s4, v24
	v_mov_b32_e32 v24, v25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s78, v11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s28, v9
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s78, v12
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[24:25], off offset:96 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v24, s4, v25
	v_add_nc_u32_e32 v25, s4, v26
	v_mov_b32_e32 v26, v27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s28, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s78, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s28, v15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s78, v9
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[26:27], off offset:108 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v26, s4, v27
	v_add_nc_u32_e32 v27, s4, v253
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s78, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s28, v16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s78, v14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s28, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s78, v15
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s18
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s78, v16
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s19, s78, v17
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x110, v0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s18
	v_writelane_b32 v255, s4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v147, 0, v35
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s34, s18
	v_writelane_b32 v255, s5, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v33, v1, s[24:27], 0 offen
	buffer_load_u8 v34, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s18
	v_writelane_b32 v255, s6, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v23, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s18
	v_writelane_b32 v255, s7, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x198, v0
	v_cndmask_b32_e32 v26, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s18
	v_writelane_b32 v255, s8, 5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v27, v18, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s18
	v_writelane_b32 v255, s34, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v28, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v29, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s19, s18
	v_writelane_b32 v255, s9, 7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v30, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v31, v18, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v32, v1, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s24, s33, s29
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s35, s24, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x88, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s29, s35
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s25, s79, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s24, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v145, 0, v0
	v_add_nc_u32_e32 v146, 0, v18
	v_add_nc_u32_e32 v148, 0, v36
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v38, s24
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s24, s25, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, v37, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s24, s24, 27
	s_mov_b32 s74, 0
	s_add_i32 s24, s25, s24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v145, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v145, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v145, v27 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v145, v23 offset:576
	ds_store_b8 v146, v19
	ds_store_b8 v146, v20 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v146, v25 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v146, v26 offset:576
	ds_store_b8 v147, v21
	ds_store_b8 v147, v22 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v147, v31 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v147, v28 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v148, v32
	s_waitcnt vmcnt(2)
	ds_store_b8 v148, v24 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v148, v29 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v148, v30 offset:576
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s33, v38
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s75, s24, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s20, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
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
	s_min_i32 s20, s79, s20
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
	s_and_b32 s74, s24, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s75, s75, s20
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v19, 0, 1, s31
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s4, 1, v19
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v19, s28, v18
	v_writelane_b32 v255, s4, 8
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s24, s28, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s24, s24, 32
	s_min_i32 s24, s79, s24
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
	s_min_i32 s75, s75, s24
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x38
	s_load_b32 s53, s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v120, v0, 4, 1
	v_lshlrev_b32_e32 v34, 1, v0
	v_add_nc_u32_e32 v65, s2, v18
	v_cmp_gt_i32_e64 s2, s78, v19
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s74, s75
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v161, 28, v120
	v_or_b32_e32 v142, 30, v120
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[56:63], s[0:1], 0x8
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v18, 1, v65
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v19, 5, v1
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v20, 24, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v21, 4, v39
	v_or_b32_e32 v164, v19, v20
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v74, s23, v15
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v22, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v40, 8, v164
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v43, s23, v2
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v45, s23, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s61, 0xffff
	s_mov_b32 s24, s60
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v47, s23, v6
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v2, 60, v34
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v4, 2, v0
	v_cndmask_b32_e64 v6, 0x104, 0, vcc_lo
	v_or3_b32 v34, v19, v21, v20
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v163, 0, v40
	v_xor_b32_e32 v40, 16, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v2, v6, v2
	v_lshrrev_b32_e32 v6, 2, v22
	v_lshl_or_b32 v144, v1, 8, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v22
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v143, 0, v40
	v_xor_b32_e32 v40, 24, v164
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v68, s23, v9
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v70, s23, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v252, 0, v40
	v_xor_b32_e32 v40, 4, v144
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v72, s23, v13
	v_mov_b32_e32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v69, s23, v10
	v_add_nc_u32_e32 v174, 0, v40
	v_xor_b32_e32 v40, 8, v144
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v71, s23, v12
	v_mov_b32_e32 v62, 0
	v_lshl_add_u32 v165, v1, 1, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v175, 0, v40
	v_xor_b32_e32 v40, 12, v144
	v_mov_b32_e32 v13, v25
	v_lshrrev_b32_e32 v1, 4, v39
	v_and_b32_e32 v42, 31, v0
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v81, s23, v17
	v_add_nc_u32_e32 v176, 0, v40
	v_xor_b32_e32 v40, 16, v144
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v17, v25
	v_lshl_or_b32 v162, v42, 2, v1
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v44, s23, v3
	v_add_nc_u32_e32 v177, 0, v40
	v_xor_b32_e32 v40, 20, v144
	v_mov_b32_e32 v15, v25
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v73, s23, v14
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v3, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v178, 0, v40
	v_xor_b32_e32 v40, 24, v144
	v_mov_b32_e32 v12, v25
	v_dual_mov_b32 v35, 0x5410 :: v_dual_add_nc_u32 v46, s23, v5
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v5, 14, v0
	v_add_nc_u32_e32 v179, 0, v40
	v_xor_b32_e32 v40, 28, v144
	v_mov_b32_e32 v1, v25
	v_lshl_or_b32 v6, v3, 1, v6
	v_lshl_or_b32 v254, v3, 6, v2
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v80, s23, v16
	v_add_nc_u32_e32 v180, 0, v40
	v_xor_b32_e32 v40, 32, v144
	v_mov_b32_e32 v14, v25
	v_mul_u32_u24_e32 v5, 0x44, v5
	v_lshrrev_b32_e32 v41, 5, v0
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v48, s23, v7
	v_add_nc_u32_e32 v181, 0, v40
	v_xor_b32_e32 v40, 36, v144
	v_mov_b32_e32 v3, v25
	v_or3_b32 v251, v6, v5, v41
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x7c
	s_load_b64 s[60:61], s[0:1], 0x30
	s_load_b128 s[24:27], s[0:1], 0x6c
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v67, s23, v8
	v_add_nc_u32_e32 v182, 0, v40
	v_xor_b32_e32 v40, 40, v144
	v_mov_b32_e32 v16, v25
	v_mov_b16_e32 v33.l, 0
	v_mov_b32_e32 v136, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v134, 0xff800000 :: v_dual_add_nc_u32 v183, 0, v40
	v_xor_b32_e32 v40, 44, v144
	v_mov_b32_e32 v5, v25
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v36, 0, v34
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v184, 0, v40
	v_xor_b32_e32 v40, 48, v144
	v_mov_b32_e32 v2, v25
	v_xad_u32 v37, v34, 8, 0
	v_xad_u32 v38, v34, 16, 0
	.loc	1 844 25 is_stmt 1              ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s24, s24, 0x3fb8aa3b
	v_add_nc_u32_e32 v185, 0, v40
	v_xor_b32_e32 v40, 52, v144
	v_mov_b32_e32 v7, v25
	v_xad_u32 v39, v34, 24, 0
	v_dual_mov_b32 v34, 0x7632 :: v_dual_mov_b32 v23, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v186, 0, v40
	v_xor_b32_e32 v40, 56, v144
	v_mov_b32_e32 v4, v25
	v_cndmask_b32_e32 v34, 0x3276, v34, vcc_lo
	s_xor_b32 s34, s3, s76
	s_mul_f32 s33, s33, 0x4f7ffffe
	v_add_nc_u32_e32 v187, 0, v40
	v_xor_b32_e32 v40, 60, v144
	v_lshl_or_b32 v34, v34, 8, v34
	s_ashr_i32 s23, s34, 31
	s_cvt_u32_f32 s33, s33
	s_xor_b32 s30, s30, s23
	v_dual_mov_b32 v241, 0xff800000 :: v_dual_add_nc_u32 v188, 0, v40
	v_xor_b32_e32 v40, 0x88, v162
	v_mov_b32_e32 v6, v25
	s_sub_i32 s31, 0, s29
	s_sub_i32 s23, s30, s23
	s_mul_i32 s31, s31, s33
	v_add_nc_u32_e32 v189, 0, v40
	v_xor_b32_e32 v40, 0x110, v162
	s_mul_i32 s30, s23, s76
	s_ashr_i32 s1, s35, 31
	s_sub_i32 s3, s3, s30
	s_mul_hi_u32 s30, s33, s31
	v_dual_mov_b32 v213, 0xff800000 :: v_dual_add_nc_u32 v190, 0, v40
	v_xor_b32_e32 v40, 0x198, v162
	v_mov_b32_e32 v8, v25
	s_abs_i32 s31, s3
	s_add_i32 s33, s33, s30
	s_ashr_i32 s30, s3, 31
	v_add_nc_u32_e32 v191, 0, v40
	v_xor_b32_e32 v40, 0x220, v162
	s_mul_hi_u32 s33, s31, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s30, s1
	s_mul_i32 s30, s33, s29
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s34, s23, s77
	v_dual_mov_b32 v215, 0xff800000 :: v_dual_add_nc_u32 v192, 0, v40
	v_xor_b32_e32 v40, 0x2a8, v162
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s30, s31, s30
	s_add_i32 s31, s33, 1
	s_sub_i32 s35, s30, s29
	s_cmp_ge_u32 s30, s29
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s23, s23, s25
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s25, s31, s33
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s26
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s26, s35, s30
	s_add_i32 s30, s25, 1
	s_cmp_ge_u32 s26, s29
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s28, s27, s28
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s25, s30, s25
	s_add_i32 s76, s23, s28
	s_xor_b32 s23, s25, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s53, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s23, s1
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_mov_b32 v233, 0xff800000
	v_dual_mov_b32 v236, 0xff800000 :: v_dual_mov_b32 v231, 0xff800000
	v_dual_mov_b32 v234, 0xff800000 :: v_dual_mov_b32 v229, 0xff800000
	v_mov_b32_e32 v232, 0xff800000
	v_dual_mov_b32 v230, 0xff800000 :: v_dual_mov_b32 v137, 0xff800000
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_mov_b32 v135, 0xff800000
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_mov_b32 s64, 0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s77, s1, s34
	s_mov_b32 s88, 0x76543210
	s_mov_b32 s65, s64
	s_mov_b32 s66, s64
	s_mov_b32 s67, s64
	s_mov_b32 s68, s64
	s_mov_b32 s69, s64
	s_mov_b32 s70, s64
	s_mov_b32 s71, s64
	s_mov_b32 s80, s62
	s_mov_b32 s84, s58
	s_mov_b32 s58, s82
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s81, s63, 0xffff
	s_mov_b32 s9, s4
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s85, s59, 0xffff
	s_mov_b32 s59, s83
	s_add_i32 s76, s76, s3
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s77, s77, s79
	v_cndmask_b32_e32 v35, 0x1054, v35, vcc_lo
	v_dual_mov_b32 v217, 0xff800000 :: v_dual_mov_b32 v214, 0xff800000
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_mov_b32 v216, 0xff800000
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v35, v35, 8, v35
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_mov_b32 v218, 0xff800000
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_mov_b32 v220, 0xff800000
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_mov_b32 v222, 0xff800000
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_mov_b32 v224, 0xff800000
	v_dual_mov_b32 v237, 0xff800000 :: v_dual_mov_b32 v226, 0xff800000
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_mov_b32 v228, 0xff800000
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v18.l
	v_add_nc_u32_e32 v193, 0, v40
	v_xor_b32_e32 v40, 0x330, v162
	v_mov_b32_e32 v18, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v212, s24, v33
	v_subrev_nc_u32_e32 v33, s21, v43
	scratch_store_b32 off, v65, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v194, 0, v40
	v_xor_b32_e32 v40, 0x3b8, v162
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v131, v212 :: v_dual_and_b32 v34, 0x760076, v34
	scratch_store_b32 off, v33, off offset:180 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v44
	v_add_nc_u32_e32 v195, 0, v40
	v_xor_b32_e32 v40, 0x208, v254
	v_dual_mov_b32 v132, v212 :: v_dual_and_b32 v35, 0x540054, v35
	scratch_store_b32 off, v33, off offset:184 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v45
	v_add_nc_u32_e32 v196, 0, v40
	v_xor_b32_e32 v40, 0x410, v254
	v_lshl_or_b32 v35, v35, 4, v35
	v_mov_b32_e32 v65, 0xff800000
	scratch_store_b32 off, v33, off offset:188 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v46
	v_add_nc_u32_e32 v197, 0, v40
	v_xor_b32_e32 v40, 0x618, v254
	v_dual_mov_b32 v133, v212 :: v_dual_and_b32 v210, 0x5040504, v35
	scratch_store_b32 off, v33, off offset:192 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v47
	v_add_nc_u32_e32 v198, 0, v40
	v_xor_b32_e32 v40, 0x820, v254
	scratch_store_b32 off, v33, off offset:196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v48
	v_add_nc_u32_e32 v199, 0, v40
	v_xor_b32_e32 v40, 0xa28, v254
	scratch_store_b32 off, v33, off offset:200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v67
	v_add_nc_u32_e32 v200, 0, v40
	v_xor_b32_e32 v40, 0xc30, v254
	scratch_store_b32 off, v33, off offset:204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v68
	v_add_nc_u32_e32 v201, 0, v40
	v_xor_b32_e32 v40, 0xe38, v254
	scratch_store_b32 off, v33, off offset:208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v69
	v_add_nc_u32_e32 v202, 0, v40
	v_lshl_or_b32 v40, v34, 4, v34
	v_xor_b32_e32 v34, 8, v251
	scratch_store_b32 off, v33, off offset:212 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v70
	v_add_nc_u32_e32 v203, 0, v34
	v_xor_b32_e32 v34, 16, v251
	scratch_store_b32 off, v33, off offset:216 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v71
	v_add_nc_u32_e32 v204, 0, v34
	v_xor_b32_e32 v34, 24, v251
	scratch_store_b32 off, v33, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v72
	v_add_nc_u32_e32 v205, 0, v34
	v_xor_b32_e32 v34, 32, v251
	scratch_store_b32 off, v33, off offset:224 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v73
	v_add_nc_u32_e32 v206, 0, v34
	v_xor_b32_e32 v34, 40, v251
	scratch_store_b32 off, v33, off offset:228 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v74
	v_add_nc_u32_e32 v207, 0, v34
	v_xor_b32_e32 v34, 48, v251
	scratch_store_b32 off, v33, off offset:232 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v80
	v_add_nc_u32_e32 v208, 0, v34
	v_xor_b32_e32 v34, 56, v251
	scratch_store_b32 off, v33, off offset:236 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v81
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:240
	scratch_store_b32 off, v43, off offset:116
	v_add_nc_u32_e32 v33, s22, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:244
	scratch_store_b32 off, v44, off offset:120
	v_add_nc_u32_e32 v33, s22, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:248
	scratch_store_b32 off, v45, off offset:124
	v_add_nc_u32_e32 v33, s22, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:252
	scratch_store_b32 off, v46, off offset:128
	v_add_nc_u32_e32 v33, s22, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:256
	scratch_store_b32 off, v47, off offset:132
	v_add_nc_u32_e32 v33, s22, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:260
	scratch_store_b32 off, v48, off offset:136
	v_add_nc_u32_e32 v33, s22, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:264
	scratch_store_b32 off, v67, off offset:140
	v_add_nc_u32_e32 v33, s22, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:268
	scratch_store_b32 off, v68, off offset:144
	v_add_nc_u32_e32 v33, s22, v68
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:272
	scratch_store_b32 off, v69, off offset:148
	v_add_nc_u32_e32 v33, s22, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:276
	scratch_store_b32 off, v70, off offset:152
	v_add_nc_u32_e32 v33, s22, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:280
	scratch_store_b32 off, v71, off offset:156
	v_add_nc_u32_e32 v33, s22, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:284
	scratch_store_b32 off, v72, off offset:160
	v_add_nc_u32_e32 v33, s22, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:288
	scratch_store_b32 off, v73, off offset:164
	v_add_nc_u32_e32 v33, s22, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:292
	scratch_store_b32 off, v74, off offset:168
	v_add_nc_u32_e32 v33, s22, v74
	v_add_nc_u32_e32 v209, 0, v34
	v_mul_lo_u32 v34, s27, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:296
	scratch_store_b32 off, v80, off offset:172
	v_add_nc_u32_e32 v33, s22, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:300
	scratch_store_b32 off, v81, off offset:176
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[78:79], null, s4, v42, v[34:35]
	v_add_nc_u32_e32 v33, s22, v81
	ds_load_b64 v[79:80], v36
	ds_load_b64 v[81:82], v37
	ds_load_b64 v[83:84], v38
	ds_load_b64 v[85:86], v39
	scratch_store_b32 off, v33, off offset:304 ; 4-byte Folded Spill
	v_mov_b32_e32 v33, v142
	v_and_b32_e32 v211, 0x7060706, v40
	v_lshl_add_u32 v114, s27, 1, v78
	v_lshl_add_u32 v115, s27, 2, v78
	v_lshl_add_u32 v129, s27, 3, v78
	v_lshl_add_u32 v130, s27, 4, v78
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[139:140], null, s27, 14, v[78:79]
	v_mad_u64_u32 v[140:141], null, s27, 18, v[78:79]
	v_mad_u64_u32 v[141:142], null, s27, 22, v[78:79]
	v_mad_u64_u32 v[116:117], null, s27, 6, v[78:79]
	v_mov_b32_e32 v142, v33
	v_mov_b32_e32 v33, v161
	v_mad_u64_u32 v[95:96], null, s27, 26, v[78:79]
	v_mad_u64_u32 v[117:118], null, s27, 10, v[78:79]
	v_mad_u64_u32 v[159:160], null, s27, 20, v[78:79]
	v_mad_u64_u32 v[96:97], null, s27, 28, v[78:79]
	v_mad_u64_u32 v[118:119], null, s27, 12, v[78:79]
	v_mad_u64_u32 v[160:161], null, s27, 24, v[78:79]
	v_mad_u64_u32 v[97:98], null, s27, 30, v[78:79]
	v_mov_b32_e32 v161, v33
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s74, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v245, v47
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s76, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s1, v78, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v41, v44
	v_cvt_f32_i32_e32 v44, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s1, v114, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v246, v46
	v_cvt_f32_i32_e32 v46, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s1, v115, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v248, v45
	v_cvt_f32_i32_e32 v45, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s1, v116, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v152, v42
	v_cvt_f32_i32_e32 v247, v43
	v_cvt_f32_i32_e32 v43, v48
	v_cvt_f32_i32_e32 v48, v33
	v_cvt_f32_i32_e32 v42, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v33, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v39, s1, v129, 2
	v_add_lshl_u32 v40, s1, v117, 2
	v_add_lshl_u32 v68, s1, v118, 2
	v_add_lshl_u32 v69, s1, v139, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s101
	v_cndmask_b32_e64 v35, 0x80000000, v35, s99
	v_cndmask_b32_e64 v36, 0x80000000, v36, s97
	s_mov_b32 s62, s82
	s_mov_b32 s63, s83
	v_cndmask_b32_e64 v37, 0x80000000, v37, s94
	v_cndmask_b32_e64 v39, 0x80000000, v39, s93
	v_cndmask_b32_e64 v40, 0x80000000, v40, s90
	v_cndmask_b32_e64 v68, 0x80000000, v68, s87
	v_cndmask_b32_e64 v69, 0x80000000, v69, s51
	s_clause 0x7
	buffer_load_b32 v34, v34, s[60:63], 0 offen
	buffer_load_b32 v70, v35, s[60:63], 0 offen
	buffer_load_b32 v36, v36, s[60:63], 0 offen
	buffer_load_b32 v37, v37, s[60:63], 0 offen
	buffer_load_b32 v39, v39, s[60:63], 0 offen
	buffer_load_b32 v40, v40, s[60:63], 0 offen
	buffer_load_b32 v68, v68, s[60:63], 0 offen
	buffer_load_b32 v69, v69, s[60:63], 0 offen
	v_add_lshl_u32 v35, s1, v130, 2
	v_add_lshl_u32 v71, s1, v140, 2
	v_add_lshl_u32 v72, s1, v159, 2
	v_add_lshl_u32 v73, s1, v141, 2
	v_add_lshl_u32 v74, s1, v160, 2
	v_add_lshl_u32 v87, s1, v95, 2
	v_add_lshl_u32 v88, s1, v96, 2
	v_add_lshl_u32 v89, s1, v97, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s102
	v_cndmask_b32_e64 v71, 0x80000000, v71, s100
	v_cndmask_b32_e64 v72, 0x80000000, v72, s98
	v_cndmask_b32_e64 v73, 0x80000000, v73, s96
	v_cndmask_b32_e64 v74, 0x80000000, v74, s95
	v_cndmask_b32_e64 v87, 0x80000000, v87, s92
	v_cndmask_b32_e64 v88, 0x80000000, v88, s91
	v_cndmask_b32_e64 v89, 0x80000000, v89, s89
	s_clause 0x7
	buffer_load_b32 v90, v35, s[60:63], 0 offen
	buffer_load_b32 v71, v71, s[60:63], 0 offen
	buffer_load_b32 v72, v72, s[60:63], 0 offen
	buffer_load_b32 v73, v73, s[60:63], 0 offen
	buffer_load_b32 v74, v74, s[60:63], 0 offen
	buffer_load_b32 v87, v87, s[60:63], 0 offen
	buffer_load_b32 v88, v88, s[60:63], 0 offen
	buffer_load_b32 v89, v89, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v67, v212, v67
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v35.h, v240.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v240.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v240.h, v98.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s62, s74, 6
	s_or_b32 s63, s74, 7
	s_or_b32 s103, s74, 24
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v35.l, v240.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s104, s74, 25
	s_or_b32 vcc_hi, s74, 26
	s_or_b32 s55, s74, 27
	s_or_b32 s20, s74, 28
	s_or_b32 s78, s74, 29
	s_or_b32 s52, s74, 30
	s_or_b32 s4, s74, 31
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v133, v43
	v_dual_mul_f32 v45, v133, v45 :: v_dual_mul_f32 v48, v212, v48
	v_dual_mul_f32 v33, v133, v33 :: v_dual_mul_f32 v42, v131, v42
	v_dual_mul_f32 v38, v132, v38 :: v_dual_mul_f32 v41, v133, v41
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v91, 0xff800000, v34, s101
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v34, 0, v144
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v70, 0xff800000, v70, s99
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v93, 0xff800000, v37, s94
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v94, 0xff800000, v39, s93
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v37, 0, v254
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v92, 0xff800000, v36, s97
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v40, 0xff800000, v40, s90
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v68, 0xff800000, v68, s87
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v69, 0xff800000, v69, s51
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v91
	v_cmp_neq_f32_e64 s3, 0xff800000, v70
	v_cmp_neq_f32_e64 s22, 0xff800000, v93
	v_cmp_neq_f32_e64 s23, 0xff800000, v94
	v_cmp_neq_f32_e64 s24, 0xff800000, v40
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s27, s101, s1
	s_and_b32 s28, s99, s3
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v39, 0xff800000, v90, s102
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v71, 0xff800000, v71, s100
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v72, 0xff800000, v72, s98
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v73, 0xff800000, v73, s96
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v74, 0xff800000, v74, s95
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v87, 0xff800000, v87, s92
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v88, 0xff800000, v88, s91
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v89, 0xff800000, v89, s89
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v37, v91, v39 offset1:32
	ds_store_2addr_b32 v196, v70, v71 offset1:32
	ds_store_2addr_b32 v197, v92, v72 offset1:32
	ds_store_2addr_b32 v198, v93, v73 offset1:32
	ds_store_2addr_b32 v199, v94, v74 offset1:32
	ds_store_2addr_b32 v200, v40, v87 offset1:32
	ds_store_2addr_b32 v201, v68, v88 offset1:32
	ds_store_2addr_b32 v202, v69, v89 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v36, v34
	ds_load_b32 v90, v174
	ds_load_b32 v106, v175
	ds_load_b32 v107, v178
	ds_load_b32 v108, v179
	ds_load_b32 v109, v180
	ds_load_b32 v110, v176
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v39
	v_cmp_neq_f32_e64 s21, 0xff800000, v71
	v_cmp_neq_f32_e64 s3, 0xff800000, v92
	v_cmp_neq_f32_e64 s29, 0xff800000, v73
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v39, 0, 1, s28
	s_and_b32 vcc_lo, s102, vcc_lo
	s_and_b32 s1, s100, s21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v72
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s97, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v74
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s33, s94, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v87
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s98, s21
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v111, 0x3fb8aa3b, v36 :: v_dual_mul_f32 v90, 0x3fb8aa3b, v90
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v131, v152
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v106, 0x3fb8aa3b, v106
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s96, s29
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v111, v67, v35
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b32 v67, v177
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v35.h, v151.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s95, s34
	s_and_b32 s34, s93, s23
	s_and_b32 s23, s92, s35
	v_cndmask_b32_e64 v40, 0, 1, s34
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v90, v36, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v35.h, v150.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v132, v247
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v88
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s35, s90, s24
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v68
	v_cmp_neq_f32_e64 s37, 0xff800000, v89
	v_cmp_neq_f32_e64 s31, 0xff800000, v69
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s24, s91, s36
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s90, s74, 11
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s87, s26
	s_and_b32 s26, s89, s37
	s_and_b32 s31, s51, s31
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s87, s74, 9
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v112, 0x3fb8aa3b, v67 :: v_dual_mul_f32 v67, v132, v245
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v106, v36, v35
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v35.h, v149.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v212, v248
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s89, s74, 10
	s_or_b32 s91, s74, 12
	s_or_b32 s92, s74, 13
	s_or_b32 s93, s74, 14
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v112, v36, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v35.h, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v36, v131, v246 :: v_dual_mul_f32 v103, 0x3fb8aa3b, v107
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s94, s74, 15
	s_or_b32 s95, s74, 16
	s_or_b32 s96, s74, 17
	s_or_b32 s97, s74, 18
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v103, v36, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v36.h, v100.l
	v_mov_b16_e64 v36.l, v240.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v108
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s98, s74, 19
	s_or_b32 s99, s74, 20
	s_or_b32 s100, s74, 21
	s_or_b32 s101, s74, 22
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v67, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v101.l
	v_mov_b16_e64 v67.l, v240.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v109
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s102, s74, 23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v43, v67
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b32 v43, v182
	ds_load_b32 v100, v183
	ds_load_b32 v101, v184
	ds_load_b32 v107, v185
	ds_load_b32 v108, v186
	ds_load_b32 v109, v187
	ds_load_b32 v113, v188
	ds_load_b32 v119, v181
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v67.h, v244.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v212, v47
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v43, v47, v67
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v47.h, v243.l
	v_mov_b16_e64 v47.l, v240.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v67, v131, v44
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v100
	v_mul_f32_e32 v100, 0x3fb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v44, v67, v47
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v47.h, v242.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v67, v132, v46 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v101
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v46, v67, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v67.h, v239.l
	v_mov_b16_e64 v67.l, v240.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v47, v45, v67
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v67.h, v104.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v119
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v45, v48, v67
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v67.h, v105.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v48, 0x3fb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v48, v42, v67
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v42.h, v102.l
	v_mov_b16_e64 v42.l, v240.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v100, v38, v42
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v99.l
	v_mov_b16_e64 v38.l, v240.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v99, 0x3fb8aa3b, v113
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v42, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v99, v33, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, vcc_lo
	v_cndmask_b32_e64 v38, 0, 1, s27
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.l, v38.l, v33.l
	v_cndmask_b32_e64 v38, 0, 1, s1
	v_lshlrev_b16 v33.h, 8, v38.l
	v_add_nc_u32_e32 v38, 0, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v33.h, v39.l, v33.h
	ds_store_b16 v38, v33
	v_cndmask_b32_e64 v38, 0, 1, s25
	v_cndmask_b32_e64 v39, 0, 1, s33
	v_mov_b16_e32 v33.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.l, v38.l, v33.l
	v_cndmask_b32_e64 v38, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v38.l, 8, v38.l
	v_or_b16 v38.l, v39.l, v38.l
	v_cndmask_b32_e64 v39, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v38.h, 8, v39.l
	v_cndmask_b32_e64 v39, 0, 1, s23
	v_or_b16 v38.h, v40.l, v38.h
	v_cndmask_b32_e64 v40, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v39.l, 8, v39.l
	v_or_b16 v39.l, v40.l, v39.l
	v_cndmask_b32_e64 v40, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v39.h, 8, v40.l
	v_cndmask_b32_e64 v40, 0, 1, s26
	v_or_b16 v39.h, v42.l, v39.h
	v_cndmask_b32_e64 v42, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v40.l, 8, v40.l
	v_or_b16 v40.l, v42.l, v40.l
	ds_store_b16_d16_hi v189, v33
	ds_store_b16 v190, v33
	ds_store_b16 v191, v38
	ds_store_b16_d16_hi v192, v38
	ds_store_b16 v193, v39
	ds_store_b16_d16_hi v194, v39
	ds_store_b16 v195, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v204
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v205 offset:64
	ds_load_u8_d16 v38, v204 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v38, v203 offset:64
	v_add_nc_u32_e32 v40, 0, v251
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v42, 0x3fb8aa3b, v110
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v39, v40 offset:64
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v42, v41, v240
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v33.l
	ds_load_u8_d16 v33, v203
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s51, 1, v33.l
	ds_load_u8_d16 v33, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v90, s51
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s50, 1, v33.l
	ds_load_u8_d16 v33, v208
	ds_load_u8_d16_hi v39, v209 offset:64
	ds_load_u8_d16 v40, v208 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v40, v207 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s44, 1, v33.l
	ds_load_u8_d16 v33, v207
	ds_load_u8_d16 v67, v206 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v35, s44
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v67.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v33.l
	ds_load_u8_d16 v33, v206
	v_cmp_eq_u16_e64 s43, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v244, 0xff800000, v47, s43
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v46, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	v_and_b16 v33.l, 1, v38.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v112, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v246, 0xff800000, v44, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v33.l
	v_and_b16 v33.l, 1, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v247, 0xff800000, v43, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v33.l
	v_and_b16 v33.l, 1, v40.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v247, v246, v149
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v243, 0xff800000, v99, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v33.l
	v_and_b16 v33.l, 1, v40.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v242, 0xff800000, v100, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	v_and_b16 v33.l, 1, v39.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v103, s46
	v_cndmask_b32_e64 v245, 0xff800000, v48, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v33.l
	ds_load_u8_d16 v33, v205
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v244, v245, v242
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v45, s42
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v43, v44, v243
.Ltmp6:
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v43, v209
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v240.l
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s48, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v111, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v43.l, 1, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v42, s48
	v_cndmask_b32_e64 v42, 0xff800000, v106, s47
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v33, v41
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v34, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s49, 1, v43.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v40, v38, v39
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v174, v41
	ds_store_b32 v175, v42
	ds_store_b32 v176, v40
	ds_store_b32 v177, v38
	ds_store_b32 v178, v39
	v_cndmask_b32_e64 v248, 0xff800000, v36, s49
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v68, v68, v42, v69
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v179, v151
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v151, v248, v150
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v180, v248
	ds_store_b32 v181, v150
	ds_store_b32 v182, v247
	ds_store_b32 v183, v246
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v68, v35, v44
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v184, v149
	ds_store_b32 v185, v244
	ds_store_b32 v186, v245
	ds_store_b32 v187, v242
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, s88, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v188, v243
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v239, v241, v35, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v240.l
	v_mov_b16_e64 v36.h, v240.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v41, v239
	v_sub_f32_e32 v33, v33, v239
	v_sub_f32_e32 v38, v38, v239
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s51
	v_cndmask_b32_e64 v33, 0, v33, s50
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s51, s74, 5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s50, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s45, v38, v38
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_mov_b16_e64 v35.h, v240.l
	v_mov_b16_e32 v35.l, v33.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v33, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s50
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s50, s74, 4
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v34, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v210
	v_perm_b32 v34, v35, v34, v211
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v40, v239
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s48
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s48, s74, 3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v42, v239
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.l, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s47, v36, v36
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v36, v43, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v35.h, s3
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s3, s74, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v36.h, s47
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s47, s74, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v43, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v43, v210
	v_perm_b32 v36, v36, v43, v211
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[43:44], null, s86, s53, v[0:1]
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s86, s74, 8
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s74, s79
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s3, s79
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s47, s79
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v44, s53, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s48, s79
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s50, s79
	v_add_nc_u32_e32 v41, s53, v44
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s51, s79
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v44
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s62, s79
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s63, s79
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s86, s79
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s86, s82
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s87, s79
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s87, s83
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s89, s79
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s90, s79
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s91, s79
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s92, s79
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s93, s79
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s94, s79
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s95, s79
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s96, s79
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s97, s79
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s98, s79
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s99, s79
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s100, s79
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s101, s79
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s102, s79
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s103, s79
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s104, s79
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 vcc_hi, s79
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s55, s79
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s20, s79
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s78, s79
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s52, s79
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s4, s79
	s_cselect_b32 s4, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s5
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s74, s74, 32
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v43, s3
	v_add_nc_u32_e32 v43, s53, v41
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	v_add_nc_u32_e32 v44, s53, v43
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_add_nc_u32_e32 v45, s53, v44
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	v_add_nc_u32_e32 v46, s53, v45
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_add_nc_u32_e32 v47, s53, v46
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	v_add_nc_u32_e32 v48, s53, v47
	v_lshlrev_b32_e32 v47, 1, v47
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	v_add_nc_u32_e32 v67, s53, v48
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s63
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v48
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	s_clause 0x7
	buffer_load_u16 v40, v40, s[84:87], 0 offen
	buffer_load_u16 v68, v42, s[84:87], 0 offen
	buffer_load_u16 v69, v41, s[84:87], 0 offen
	buffer_load_u16 v70, v43, s[84:87], 0 offen
	buffer_load_u16 v71, v44, s[84:87], 0 offen
	buffer_load_u16 v72, v45, s[84:87], 0 offen
	buffer_load_u16 v73, v46, s[84:87], 0 offen
	buffer_load_u16 v74, v47, s[84:87], 0 offen
	v_add_nc_u32_e32 v41, s53, v67
	v_lshlrev_b32_e32 v42, 1, v67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v48, s3
	v_add_nc_u32_e32 v44, s53, v41
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	v_add_nc_u32_e32 v45, s53, v44
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_add_nc_u32_e32 v46, s53, v45
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_add_nc_u32_e32 v47, s53, v46
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	v_add_nc_u32_e32 v48, s53, v47
	v_lshlrev_b32_e32 v47, 1, v47
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	v_add_nc_u32_e32 v67, s53, v48
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	v_add_nc_u32_e32 v87, s53, v67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v67
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	s_clause 0x7
	buffer_load_u16 v88, v43, s[84:87], 0 offen
	buffer_load_u16 v89, v42, s[84:87], 0 offen
	buffer_load_u16 v90, v41, s[84:87], 0 offen
	buffer_load_u16 v91, v44, s[84:87], 0 offen
	buffer_load_u16 v92, v45, s[84:87], 0 offen
	buffer_load_u16 v93, v46, s[84:87], 0 offen
	buffer_load_u16 v94, v47, s[84:87], 0 offen
	buffer_load_u16 v106, v48, s[84:87], 0 offen
	v_add_nc_u32_e32 v41, s53, v87
	v_lshlrev_b32_e32 v42, 1, v87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v67, s3
	v_add_nc_u32_e32 v44, s53, v41
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	v_add_nc_u32_e32 v45, s53, v44
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_add_nc_u32_e32 v46, s53, v45
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_add_nc_u32_e32 v47, s53, v46
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	v_add_nc_u32_e32 v48, s53, v47
	v_lshlrev_b32_e32 v47, 1, v47
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	v_add_nc_u32_e32 v67, s53, v48
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	v_add_nc_u32_e32 v87, s53, v67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v67
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	s_clause 0x7
	buffer_load_u16 v107, v43, s[84:87], 0 offen
	buffer_load_u16 v108, v42, s[84:87], 0 offen
	buffer_load_u16 v109, v41, s[84:87], 0 offen
	buffer_load_u16 v110, v44, s[84:87], 0 offen
	buffer_load_u16 v111, v45, s[84:87], 0 offen
	buffer_load_u16 v112, v46, s[84:87], 0 offen
	buffer_load_u16 v113, v47, s[84:87], 0 offen
	buffer_load_u16 v119, v48, s[84:87], 0 offen
	v_add_nc_u32_e32 v41, s53, v87
	v_lshlrev_b32_e32 v42, 1, v87
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v67, s3
	v_add_nc_u32_e32 v44, s53, v41
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	v_add_nc_u32_e32 v45, s53, v44
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_add_nc_u32_e32 v46, s53, v45
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_add_nc_u32_e32 v47, s53, v46
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	v_lshlrev_b32_e32 v48, 1, v47
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s78
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v47, v47, s53, 1
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s52
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s4
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s74, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	s_clause 0x7
	buffer_load_u16 v67, v43, s[84:87], 0 offen
	buffer_load_u16 v87, v42, s[84:87], 0 offen
	buffer_load_u16 v121, v41, s[84:87], 0 offen
	buffer_load_u16 v122, v44, s[84:87], 0 offen
	buffer_load_u16 v123, v45, s[84:87], 0 offen
	buffer_load_u16 v124, v46, s[84:87], 0 offen
	buffer_load_u16 v125, v48, s[84:87], 0 offen
	buffer_load_u16 v126, v47, s[84:87], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[104:105], v37 offset1:32
	ds_load_2addr_b32 v[102:103], v196 offset1:32
	ds_load_2addr_b32 v[100:101], v197 offset1:32
	ds_load_2addr_b32 v[98:99], v198 offset1:32
	ds_load_2addr_b32 v[47:48], v199 offset1:32
	ds_load_2addr_b32 v[45:46], v200 offset1:32
	ds_load_2addr_b32 v[43:44], v201 offset1:32
	ds_load_2addr_b32 v[41:42], v202 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v37, v145, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v37, v40
	s_waitcnt vmcnt(30)
	ds_store_b16 v37, v68 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b16 v37, v69 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b16 v37, v70 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b16 v37, v71 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b16 v37, v72 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b16 v37, v73 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b16 v37, v74 offset:896
	s_waitcnt vmcnt(23)
	ds_store_b16 v37, v88 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v37, v89 offset:1152
	s_waitcnt vmcnt(21)
	ds_store_b16 v37, v90 offset:1280
	s_waitcnt vmcnt(20)
	ds_store_b16 v37, v91 offset:1408
	s_waitcnt vmcnt(19)
	ds_store_b16 v37, v92 offset:1536
	s_waitcnt vmcnt(18)
	ds_store_b16 v37, v93 offset:1664
	s_waitcnt vmcnt(17)
	ds_store_b16 v37, v94 offset:1792
	s_waitcnt vmcnt(16)
	ds_store_b16 v37, v106 offset:1920
	s_waitcnt vmcnt(15)
	ds_store_b16 v37, v107 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v37, v108 offset:2176
	s_waitcnt vmcnt(13)
	ds_store_b16 v37, v109 offset:2304
	s_waitcnt vmcnt(12)
	ds_store_b16 v37, v110 offset:2432
	s_waitcnt vmcnt(11)
	ds_store_b16 v37, v111 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v37, v112 offset:2688
	s_waitcnt vmcnt(9)
	ds_store_b16 v37, v113 offset:2816
	s_waitcnt vmcnt(8)
	ds_store_b16 v37, v119 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v37, v67 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v37, v87 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v37, v121 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v37, v122 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v37, v123 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v37, v124 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v37, v125 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v37, v126 offset:3968
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v39, v239
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v240.l
	v_mov_b16_e64 v40.h, v240.l
	v_mov_b16_e64 v67.h, v240.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v39, 0x7fff
	v_mov_b16_e64 v39.h, v240.l
	v_mov_b16_e32 v39.l, v38.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v38, v39, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v37.h, s3
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v210
	v_perm_b32 v38, v39, v38, v211
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v248, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v151, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v241
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s44, v39, v39
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v39, v67, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v67.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v40, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v67, v40, v210
	v_perm_b32 v40, v67, v40, v211
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v241, v239
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v67
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v153, v165 offset:608
	ds_load_u16_d16 v152, v165 offset:352
	ds_load_u16_d16 v106, v165
	ds_load_u16_d16 v108, v165 offset:512
	ds_load_u16_d16 v107, v165 offset:256
	ds_load_u16_d16 v109, v165 offset:768
	ds_load_u16_d16 v69, v165 offset:576
	ds_load_u16_d16 v70, v165 offset:832
	ds_load_u16_d16 v110, v165 offset:1024
	ds_load_u16_d16 v71, v165 offset:1088
	ds_load_u16_d16 v111, v165 offset:1280
	ds_load_u16_d16 v72, v165 offset:1344
	ds_load_u16_d16 v112, v165 offset:1536
	ds_load_u16_d16 v113, v165 offset:1792
	ds_load_u16_d16 v73, v165 offset:1600
	ds_load_u16_d16 v67, v165 offset:64
	ds_load_u16_d16 v68, v165 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v152, v165 offset:480
	ds_load_u16_d16 v151, v165 offset:96
	ds_load_u16_d16 v121, v165 offset:32
	ds_load_u16_d16 v122, v165 offset:288
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v106, v165 offset:128
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v89, 0, v74, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v107, v165 offset:384
	ds_load_u16_d16_hi v108, v165 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v69, v165 offset:704
	ds_load_u16_d16_hi v109, v165 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v70, v165 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v110, v165 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v71, v165 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v111, v165 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v72, v165 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v112, v165 offset:1664
	ds_load_u16_d16 v74, v165 offset:1856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v73, v165 offset:1728
	ds_load_u16_d16_hi v113, v165 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v121, v165 offset:160
	ds_load_u16_d16_hi v67, v165 offset:192
	ds_load_u16_d16_hi v151, v165 offset:224
	ds_load_u16_d16 v123, v165 offset:544
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v122, v165 offset:416
	ds_load_u16_d16_hi v68, v165 offset:448
	ds_load_u16_d16 v154, v165 offset:864
	ds_load_u16_d16 v155, v165 offset:1120
	ds_load_u16_d16 v156, v165 offset:1376
	ds_load_u16_d16 v157, v165 offset:1632
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v74, v165 offset:1984
	ds_load_u16_d16 v241, v165 offset:2048
	ds_load_u16_d16 v87, v165 offset:2112
	ds_load_u16_d16 v158, v165 offset:1888
	ds_load_u16_d16 v124, v165 offset:800
	ds_load_u16_d16 v125, v165 offset:1056
	ds_load_u16_d16 v126, v165 offset:1312
	ds_load_u16_d16 v127, v165 offset:1568
	ds_load_u16_d16 v128, v165 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v123, v165 offset:672
	ds_load_u16_d16_hi v153, v165 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v89
	v_mul_f32_e32 v26, v26, v89
	v_mul_f32_e32 v27, v27, v89
	v_mul_f32_e32 v28, v28, v89
	v_mul_f32_e32 v29, v29, v89
	v_mul_f32_e32 v30, v30, v89
	v_mul_f32_e32 v31, v31, v89
	v_mul_f32_e32 v32, v32, v89
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v124, v165 offset:928
	ds_load_u16_d16_hi v154, v165 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v125, v165 offset:1184
	ds_load_u16_d16_hi v155, v165 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v126, v165 offset:1440
	ds_load_u16_d16_hi v156, v165 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v127, v165 offset:1696
	ds_load_u16_d16_hi v157, v165 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v128, v165 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[106:113], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v158, v165 offset:2016
	ds_load_u16_d16 v88, v165 offset:2368
	ds_load_u16_d16_hi v87, v165 offset:2240
	ds_load_u16_d16 v106, v165 offset:2080
	ds_load_u16_d16 v166, v165 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v89
	v_mul_f32_e32 v18, v18, v89
	v_mul_f32_e32 v19, v19, v89
	v_mul_f32_e32 v20, v20, v89
	v_mul_f32_e32 v21, v21, v89
	v_mul_f32_e32 v22, v22, v89
	v_mul_f32_e32 v23, v23, v89
	v_mul_f32_e32 v24, v24, v89
	v_mul_f32_e32 v9, v9, v89
	v_mul_f32_e32 v10, v10, v89
	v_mul_f32_e32 v11, v11, v89
	v_mul_f32_e32 v12, v12, v89
	v_mul_f32_e32 v13, v13, v89
	v_mul_f32_e32 v14, v14, v89
	v_mul_f32_e32 v15, v15, v89
	v_mul_f32_e32 v16, v16, v89
	v_mul_f32_e32 v1, v1, v89
	v_mul_f32_e32 v2, v2, v89
	v_mul_f32_e32 v3, v3, v89
	v_mul_f32_e32 v4, v4, v89
	v_mul_f32_e32 v5, v5, v89
	v_mul_f32_e32 v6, v6, v89
	v_mul_f32_e32 v7, v7, v89
	v_mul_f32_e32 v8, v8, v89
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[121:128], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[67:74], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v107, v165 offset:2336
	ds_load_u16_d16 v108, v165 offset:2592
	ds_load_u16_d16 v109, v165 offset:2848
	ds_load_u16_d16 v110, v165 offset:3104
	ds_load_u16_d16 v111, v165 offset:3360
	ds_load_u16_d16 v112, v165 offset:3616
	ds_load_u16_d16 v113, v165 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v106, v165 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v166, v165 offset:2272
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v240.l
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[151:158], v[33:40], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v33, v247, v239
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v240.l
	v_mov_b16_e64 v35.h, v240.l
	v_mov_b16_e64 v36.h, v240.l
	v_mov_b16_e64 v37.h, v240.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v38.h, v240.l
	v_mov_b16_e64 v39.h, v240.l
	v_mov_b16_e64 v40.h, v240.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v150, v239
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s41, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s41
	v_permlanex16_b32 v35, v34, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v210
	v_perm_b32 v34, v35, v34, v211
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v149, v239
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v246, v239
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s39, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s39
	v_permlanex16_b32 v37, v36, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v210
	v_perm_b32 v36, v37, v36, v211
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v245, v239
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v244, v239
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s38, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s38
	v_permlanex16_b32 v39, v38, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v210
	v_perm_b32 v38, v39, v38, v211
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v243, v239
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v242, v239
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v243, v165 offset:2560
	ds_load_u16_d16 v89, v165 offset:2624
	ds_load_u16_d16 v244, v165 offset:2816
	ds_load_u16_d16 v90, v165 offset:2880
	ds_load_u16_d16 v245, v165 offset:3072
	ds_load_u16_d16 v91, v165 offset:3136
	ds_load_u16_d16 v246, v165 offset:3328
	ds_load_u16_d16 v92, v165 offset:3392
	ds_load_u16_d16 v247, v165 offset:3584
	ds_load_u16_d16 v93, v165 offset:3648
	ds_load_u16_d16 v248, v165 offset:3840
	ds_load_u16_d16 v242, v165 offset:2304
	ds_load_u16_d16_hi v241, v165 offset:2176
	ds_load_u16_d16_hi v88, v165 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v243, v165 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v89, v165 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v244, v165 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v90, v165 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v245, v165 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v91, v165 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v246, v165 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v92, v165 offset:3520
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v247, v165 offset:3712
	ds_load_u16_d16 v94, v165 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v93, v165 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v248, v165 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v242, v165 offset:2432
	ds_load_u16_d16 v167, v165 offset:2400
	ds_load_u16_d16 v168, v165 offset:2656
	ds_load_u16_d16 v169, v165 offset:2912
	ds_load_u16_d16 v170, v165 offset:3168
	ds_load_u16_d16 v171, v165 offset:3424
	ds_load_u16_d16 v172, v165 offset:3680
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v94, v165 offset:4032
	ds_load_u16_d16 v173, v165 offset:3936
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s36
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v107, v165 offset:2464
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v167, v165 offset:2528
	ds_load_u16_d16_hi v108, v165 offset:2720
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v168, v165 offset:2784
	ds_load_u16_d16_hi v109, v165 offset:2976
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v169, v165 offset:3040
	ds_load_u16_d16_hi v110, v165 offset:3232
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v170, v165 offset:3296
	ds_load_u16_d16_hi v111, v165 offset:3488
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v171, v165 offset:3552
	ds_load_u16_d16_hi v112, v165 offset:3744
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v172, v165 offset:3808
	ds_load_u16_d16_hi v113, v165 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v173, v165 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v39.h
	v_cmp_o_f32_e64 s36, v39, v39
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v39, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v67.h, s36
	v_permlanex16_b32 v67, v40, s88, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v67, v40, v210
	v_perm_b32 v40, v67, v40, v211
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[241:248], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[106:113], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[87:94], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[166:173], v[33:40], v[1:8]
.Ltmp19:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v104, v104 :: v_dual_max_f32 v35, v102, v102
	v_dual_max_f32 v36, v100, v100 :: v_dual_max_f32 v37, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v47, v47
	v_max_f32_e32 v39, v45, v45
	v_mov_b32_e32 v241, v239
	v_max_f32_e32 v33, v34, v33
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v38, v39, v38
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s3, v33, 31
	v_mov_b32_dpp v33, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v39
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v37, v33
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v36, v36, v39
	v_max_f32_e32 v34, v34, v37
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v34, 31
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v37
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v35, 31
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v35, v43, v43 :: v_dual_max_f32 v36, v36, v37
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s6, v36, 31
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v36, v41, v41 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v33, v33, v37
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v105, v105
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	v_max_f32_e32 v38, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v103, v103
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v33, 31
	v_mov_b32_dpp v33, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s8, s8
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s20, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp125:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s20, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v38
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s36, v35, 31
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v67, s36, s36
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v38
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s37, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
.Ltmp137:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v68, s37, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s38, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v48, v48
.Ltmp141:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v69, s38, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v46, v46
	v_max_f32_e32 v38, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v44, v44
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v33, 31
	v_mov_b32_dpp v33, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp146:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v70, s39, s39
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s40, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp184:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s3, s3
	v_max_f32_e64 v71, s40, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v38
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s41, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s4, s4
	v_max_f32_e64 v72, s41, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s42, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v33, v213, v213
.Ltmp194:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v73, s42, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp195:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp196:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp197:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v213, v33, v34
	v_max_f32_e32 v33, v238, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp198:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s43, v36, 31
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp200:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s5, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e64 v74, s43, s43
.Ltmp201:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp202:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v38, s7, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s44, v37, 31
.Ltmp204:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s6, s6
	v_max_f32_e64 v87, s44, s44
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v34, v214, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v214, v34, v35
	v_dual_max_f32 v34, v237, v237 :: v_dual_sub_f32 v89, v102, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
	v_max_f32_e32 v35, v215, v215
	v_max_f32_e32 v215, v35, v36
	v_max_f32_e32 v35, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
	v_max_f32_e32 v36, v216, v216
	v_max_f32_e32 v216, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v235, v235 :: v_dual_sub_f32 v93, v98, v216
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v217, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v217, v37, v38
	v_max_f32_e32 v37, v234, v234
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v38, v218, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v218, v38, v39
	v_max_f32_e32 v38, v233, v233
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v45, v45, v218 :: v_dual_max_f32 v38, v38, v39
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v219, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v219, v39, v40
	v_max_f32_e32 v39, v232, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v39, v39, v40
	v_max_f32_e32 v40, v220, v220
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v220, v40, v67
	v_max_f32_e32 v40, v231, v231
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp206:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v41, v41, v220 :: v_dual_max_f32 v40, v40, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v221, v221
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp208:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v221, v67, v68
	v_max_f32_e32 v67, v230, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v88, v105, v221 :: v_dual_max_f32 v67, v67, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v222, v222
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s31
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp212:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v222, v68, v69
	v_max_f32_e32 v68, v229, v229
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp214:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v103, v222
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v68, v68, v69 :: v_dual_max_f32 v69, v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp216:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v223, v69, v70
	v_max_f32_e32 v69, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v101, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v69, v69, v70 :: v_dual_max_f32 v70, v224, v224
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v219
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp220:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v224, v70, v71
	v_max_f32_e32 v70, v138, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v94, v99, v224
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v70, v70, v71 :: v_dual_max_f32 v71, v225, v225
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v225, v71, v72
	v_max_f32_e32 v71, v137, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s29
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v48, v48, v225 :: v_dual_max_f32 v71, v71, v72
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v72, v226, v226 :: v_dual_sub_f32 v91, v100, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp222:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v226, v72, v73
	v_max_f32_e32 v72, v136, v136
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s34
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp224:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v226
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v72, v72, v73 :: v_dual_max_f32 v73, v227, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp226:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v227, v73, v74
	v_max_f32_e32 v73, v135, v135
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp228:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v227 :: v_dual_max_f32 v73, v73, v74
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v228, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp230:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v228, v74, v87
	v_max_f32_e32 v74, v134, v134
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp232:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v228
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v74, v74, v87 :: v_dual_sub_f32 v87, v104, v213
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v87, v87
.Ltmp233:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp234:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v87, 0, v87, s27
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v87, v87, v87 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v87, v87, v87 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v87, v87, v87 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v98, v87, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v87, v98
.Ltmp238:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v87, 31
.Ltmp239:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s28
.Ltmp240:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v87, v87, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v87, v87, v87 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v87, v87, v87 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v89, v87, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v87, v89
.Ltmp243:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v91
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v87, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s30
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v89, v89, v89 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v89, v89, v89 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v89, v89, v89 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v89, v89, v89 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v91, v89, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v91
.Ltmp249:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v93
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v89, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s33
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v91, v91, v91 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v91, v91, v91 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v91, v91, v91 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v91, v91, v91 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v93, v91, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v91, v93
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v93, v47, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v91, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v47, v47, v93
.Ltmp257:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v93, v45, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v47, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v93
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v45, 31
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v45
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v41, -1, -1 op_sel:[1,0]
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp263:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp264:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v41, 31
.Ltmp265:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v94
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v45, 0, v45, vcc_lo
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp267:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp268:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp269:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v47, v45, -1, -1 op_sel:[1,0]
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v45, v45, v47
.Ltmp271:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v90
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s1
.Ltmp272:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v43, 31
	v_permlanex16_b32 v43, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v41, v41, v43
.Ltmp274:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v41, 31
.Ltmp277:
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v41, v238, v33 :: v_dual_mov_b32 v238, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp279:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s22
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v87, v47, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp282:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v237
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v47, v47, v87
.Ltmp284:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v92
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v61, v61, v41, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v237, v34
.Ltmp287:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s27, v47, 31
	v_mov_b32_e32 v237, v34
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp289:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s25
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s25, v45, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v87, v87, v87 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
.Ltmp293:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v87, v87, v87 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v43, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp295:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v62, v62, v41, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v236, v35
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v87, v87, v87 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp297:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v46
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s22, v43, 31
	v_mov_b32_e32 v236, v35
.Ltmp299:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
.Ltmp300:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v87, v87, v87 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v88, v87, -1, -1 op_sel:[1,0]
.Ltmp302:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v235
.Ltmp303:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp304:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v63, v63, v41, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v235, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp305:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s28, v87, 31
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v235, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp307:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp309:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v234
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp310:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v45, -1, -1 op_sel:[1,0]
.Ltmp311:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v64, v64, v41, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v41, v234, v37 :: v_dual_mov_b32 v234, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v46
.Ltmp313:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v44, -1, -1 op_sel:[1,0]
.Ltmp314:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp315:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v45, 31
.Ltmp316:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v46
.Ltmp317:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_readlane_b32 s24, v44, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
.Ltmp318:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v42, v42, v46 :: v_dual_cndmask_b32 v41, 0, v41
.Ltmp319:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp320:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v42, 31
.Ltmp321:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v57, v57, v41, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v233, v38
	v_mov_b32_e32 v233, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v58, v58, v41, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v41, v232, v39 :: v_dual_mov_b32 v232, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v231
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v59, v59, v41, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v231, v40
	v_mov_b32_e32 v231, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v41, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v41, v230, v67 :: v_dual_mov_b32 v230, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v229
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v53, v53, v41, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v229, v68
	v_mov_b32_e32 v229, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v54, v54, v41, s27
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v65, v69
	v_mov_b32_e32 v65, v69
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v138
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v55, v55, v41, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v138, v70
	v_mov_b32_e32 v138, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v56, v56, v41, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v137, v71
	v_mov_b32_e32 v137, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v136
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v49, v49, v41, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v136, v72
	v_mov_b32_e32 v136, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v50, v50, v41, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v135, v73
	v_mov_b32_e32 v135, v73
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v134
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v51, v51, v41, s24
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v134, v74
	v_mov_b32_e32 v134, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v41, 0, v41, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v52, v52, v41, s26
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_lshrrev_b32_e32 v33, 5, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s86, s74, s77
	scratch_load_b32 v34, off, off offset:60 ; 4-byte Folded Reload
	s_mul_i32 s35, s86, s54
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v105, s71
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s74, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v43, s35, v249
	v_add_nc_u32_e32 v46, s35, v75
	v_add_nc_u32_e32 v47, s35, v76
	v_add_nc_u32_e32 v48, s35, v77
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off
	scratch_load_b32 v35, off, off offset:64
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v102, s68
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[36:37], off, off offset:68 ; 8-byte Folded Reload
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v103, s69
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v37, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v100, s66
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[38:39], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v101, s67
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[39:40], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v98, s64
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[44:45], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s35, v250
	scratch_load_b32 v40, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v99, s65
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[41:42], off, off offset:108 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s35, v253
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v104, s70
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s35, v34
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s74, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v35, s35, v35
	v_add_nc_u32_e32 v36, s35, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v37, s35, v37
	v_add_nc_u32_e32 v38, s35, v38
	v_add_nc_u32_e32 v39, s35, v39
	v_add_nc_u32_e32 v44, s35, v44
	v_add_nc_u32_e32 v40, s35, v40
	v_add_nc_u32_e32 v41, s35, v41
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s74, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s79, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s35, v66
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
	buffer_load_u8 v33, v33, s[56:59], 0 offen
	buffer_load_u8 v34, v34, s[56:59], 0 offen
	buffer_load_u8 v35, v35, s[56:59], 0 offen
	buffer_load_u8 v36, v36, s[56:59], 0 offen
	buffer_load_u8 v37, v37, s[56:59], 0 offen
	buffer_load_u8 v38, v38, s[56:59], 0 offen
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
	buffer_load_u8 v40, v40, s[56:59], 0 offen
	buffer_load_u8 v41, v41, s[56:59], 0 offen
	buffer_load_u8 v42, v42, s[56:59], 0 offen
	buffer_load_u8 v43, v43, s[56:59], 0 offen
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
	buffer_load_u8 v45, v45, s[56:59], 0 offen
	buffer_load_u8 v46, v46, s[56:59], 0 offen
	buffer_load_u8 v39, v39, s[56:59], 0 offen
	buffer_load_u8 v44, v44, s[56:59], 0 offen
	buffer_load_u8 v47, v47, s[56:59], 0 offen
	buffer_load_u8 v48, v48, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v145, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v145, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v145, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v145, v41 offset:576
	ds_store_b8 v146, v35
	ds_store_b8 v146, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v146, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v146, v43 offset:576
	ds_store_b8 v147, v37
	ds_store_b8 v147, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v147, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v147, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v148, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v148, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v148, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v148, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v164
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[79:80], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[79:80], v[98:105] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v163 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[81:82], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v143 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[83:84], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v252 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_and_b32_e32 v67, 31, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[85:86], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v152, s74, v67
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s79, v152
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s101, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s51, s10, s1
	s_and_b32 s102, s11, s1
	s_and_b32 s100, s12, s1
	s_and_b32 s98, s13, s1
	s_and_b32 s99, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s96, s14, s1
	s_and_b32 s95, s15, s1
	s_and_b32 s92, s16, s1
	s_and_b32 s91, s17, s1
	s_and_b32 s97, s3, s1
	v_readlane_b32 s3, v255, 4
	s_and_b32 s89, s19, s1
	s_and_b32 s94, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s87, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v255, 8
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v67, off, off offset:116 ; 4-byte Folded Reload
	s_and_not1_b32 s36, s101, exec_lo
	s_and_not1_b32 s37, s99, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v152, v67
	scratch_load_b32 v67, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s35, vcc_lo, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, exec_lo
	s_or_b32 s101, s36, s35
	s_and_not1_b32 s35, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v152, v67
	scratch_load_b32 v67, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s99, s37, s1
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v152, v67
	scratch_load_b32 v67, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s93, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v152, v67
	scratch_load_b32 v67, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s94, s35, s21
	s_and_not1_b32 s21, s90, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v152, v67
	scratch_load_b32 v67, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s22, exec_lo
	s_or_b32 s93, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v152, v67
	scratch_load_b32 v67, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s23, exec_lo
	s_or_b32 s90, s21, s22
	s_and_not1_b32 s21, s51, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v152, v67
	scratch_load_b32 v67, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s24, exec_lo
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v152, v67
	scratch_load_b32 v67, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s25, exec_lo
	s_or_b32 s51, s21, s22
	s_and_not1_b32 s21, s100, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v152, v67
	scratch_load_b32 v67, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s26, exec_lo
	s_or_b32 s102, s1, s3
	s_and_not1_b32 s1, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v152, v67
	scratch_load_b32 v67, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s27, exec_lo
	s_or_b32 s100, s21, s22
	s_and_not1_b32 s21, s96, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v152, v67
	scratch_load_b32 v67, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s28, exec_lo
	s_or_b32 s98, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v152, v67
	scratch_load_b32 v67, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s29, exec_lo
	s_or_b32 s96, s21, s22
	s_and_not1_b32 s21, s92, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v152, v67
	scratch_load_b32 v67, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s30, exec_lo
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v152, v67
	scratch_load_b32 v67, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s31, exec_lo
	s_or_b32 s92, s21, s22
	s_and_not1_b32 s21, s89, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v152, v67
	scratch_load_b32 v67, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s33, exec_lo
	s_or_b32 s91, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v152, v67
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s34, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s34, exec_lo
	s_or_b32 s89, s21, s22
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v67, s74, v120
	v_or_b32_e32 v68, 2, v120
	v_or_b32_e32 v69, 4, v120
	v_add_lshl_u32 v90, s86, v120, 1
	v_or_b32_e32 v70, 6, v120
	v_cmp_gt_i32_e32 vcc_lo, s79, v67
	v_or_b32_e32 v68, s74, v68
	v_or_b32_e32 v69, s74, v69
	v_add_nc_u32_e32 v100, 20, v90
	v_add_nc_u32_e32 v99, 8, v90
	v_add_nc_u32_e32 v98, 4, v90
	v_add_nc_u32_e32 v103, 28, v90
	v_cndmask_b32_e32 v67, 0x80000000, v90, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v68
	v_or_b32_e32 v70, s74, v70
	v_or_b32_e32 v71, 8, v120
	v_or_b32_e32 v72, 10, v120
	v_add_nc_u32_e32 v105, 40, v90
	v_cndmask_b32_e32 v68, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v69
	v_or_b32_e32 v71, s74, v71
	v_add_nc_u32_e32 v101, 24, v90
	v_add_nc_u32_e32 v98, 12, v90
	v_or_b32_e32 v72, s74, v72
	v_cndmask_b32_e32 v69, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v70
	v_or_b32_e32 v73, 12, v120
	v_add_nc_u32_e32 v104, 36, v90
	v_add_nc_u32_e32 v99, 16, v90
	v_or_b32_e32 v74, 14, v120
	v_cndmask_b32_e32 v70, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v71
	v_or_b32_e32 v73, s74, v73
	v_or_b32_e32 v87, 16, v120
	v_or_b32_e32 v74, s74, v74
	v_or_b32_e32 v88, 18, v120
	v_cndmask_b32_e32 v71, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v72
	v_or_b32_e32 v87, s74, v87
	v_or_b32_e32 v89, 20, v120
	v_or_b32_e32 v88, s74, v88
	v_dual_cndmask_b32 v72, 0x80000000, v100 :: v_dual_add_nc_u32 v99, 32, v90
	v_cmp_gt_i32_e32 vcc_lo, s79, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v89, s74, v89
	v_or_b32_e32 v91, 22, v120
	v_or_b32_e32 v92, 24, v120
	v_or_b32_e32 v93, 26, v120
	v_cndmask_b32_e32 v73, 0x80000000, v101, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v74
	v_or_b32_e32 v91, s74, v91
	v_or_b32_e32 v92, s74, v92
	v_or_b32_e32 v93, s74, v93
	v_or_b32_e32 v94, s74, v161
	v_cndmask_b32_e32 v74, 0x80000000, v103, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v87
	s_clause 0x7
	buffer_load_u16 v240, v67, s[80:83], 0 offen
	buffer_load_u16 v151, v68, s[80:83], 0 offen
	buffer_load_u16 v150, v69, s[80:83], 0 offen
	buffer_load_u16 v98, v70, s[80:83], 0 offen
	buffer_load_u16 v149, v71, s[80:83], 0 offen
	buffer_load_u16 v103, v72, s[80:83], 0 offen
	buffer_load_u16 v100, v73, s[80:83], 0 offen
	buffer_load_u16 v101, v74, s[80:83], 0 offen
	v_add_nc_u32_e32 v69, 44, v90
	v_add_nc_u32_e32 v71, 48, v90
	v_add_nc_u32_e32 v73, 56, v90
	v_cndmask_b32_e32 v67, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v88
	v_add_nc_u32_e32 v72, 52, v90
	v_or_b32_e32 v102, s74, v142
	v_add_nc_u32_e32 v74, 60, v90
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cndmask_b32_e32 v68, 0x80000000, v104, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v89
	v_cndmask_b32_e32 v70, 0x80000000, v105, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v91
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v92
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v93
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v94
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v102
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	s_clause 0x7
	buffer_load_u16 v104, v67, s[80:83], 0 offen
	buffer_load_u16 v244, v68, s[80:83], 0 offen
	buffer_load_u16 v243, v70, s[80:83], 0 offen
	buffer_load_u16 v242, v69, s[80:83], 0 offen
	buffer_load_u16 v239, v71, s[80:83], 0 offen
	buffer_load_u16 v105, v72, s[80:83], 0 offen
	buffer_load_u16 v102, v73, s[80:83], 0 offen
	buffer_load_u16 v99, v74, s[80:83], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v67, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v152, v67
	scratch_load_b32 v67, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v152, v67
	scratch_load_b32 v67, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v152, v67
	scratch_load_b32 v67, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v152, v67
	scratch_load_b32 v67, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v152, v67
	scratch_load_b32 v67, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v152, v67
	scratch_load_b32 v67, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v152, v67
	scratch_load_b32 v67, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v152, v67
	scratch_load_b32 v67, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v152, v67
	scratch_load_b32 v67, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v152, v67
	scratch_load_b32 v67, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v152, v67
	scratch_load_b32 v67, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v152, v67
	scratch_load_b32 v67, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v152, v67
	scratch_load_b32 v67, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v152, v67
	scratch_load_b32 v67, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v152, v67
	scratch_load_b32 v67, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v152, v67
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v67, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v152, v67
	scratch_load_b32 v67, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s35, vcc_lo, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s35, s101
	s_and_b32 s35, s35, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v152, v67
	scratch_load_b32 v67, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s36
	s_and_not1_b32 s36, s101, exec_lo
	s_and_b32 s1, s1, s99
	s_or_b32 s101, s36, s35
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s35, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v152, v67
	scratch_load_b32 v67, off, off offset:256 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s38, v152, v67
	scratch_load_b32 v67, off, off offset:260 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s39, v152, v67
	scratch_load_b32 v67, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s93
	s_and_b32 s3, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s93, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v152, v67
	scratch_load_b32 v67, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s90
	s_and_b32 s22, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s90, s21, s22
	s_and_not1_b32 s21, s51, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v152, v67
	scratch_load_b32 v67, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s87
	s_and_b32 s3, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s102, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v152, v67
	scratch_load_b32 v67, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s51
	s_and_b32 s22, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s51, s21, s22
	s_and_not1_b32 s21, s100, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v152, v67
	scratch_load_b32 v67, off, off offset:280 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s44, v152, v67
	scratch_load_b32 v67, off, off offset:284 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s45, v152, v67
	scratch_load_b32 v67, off, off offset:288 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s46, v152, v67
	scratch_load_b32 v67, off, off offset:292 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s47, v152, v67
	scratch_load_b32 v67, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s95
	s_and_b32 s3, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v152, v67
	scratch_load_b32 v67, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s92
	s_and_b32 s22, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s92, s21, s22
	s_and_not1_b32 s21, s89, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v152, v67
	scratch_load_b32 v67, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s33, s91
	s_and_b32 s3, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s91, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v152, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s34, s50
	s_and_b32 s34, s34, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s34, exec_lo
	s_or_b32 s89, s21, s22
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v7, v8
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
	scratch_load_b32 v65, off, off offset:308 ; 4-byte Folded Reload
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
	ds_store_b128 v33, v[61:64]
	ds_store_b128 v33, v[57:60] offset:16
	ds_store_b128 v33, v[53:56] offset:32
	ds_store_b128 v33, v[49:52] offset:48
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v34, v39
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s53, v161
	v_cmp_gt_i32_e64 s17, s53, v142
	.loc	1 818 13                        ; attention.py:818:13
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
	v_or_b32_e32 v62, 6, v120
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
	v_or_b32_e32 v61, 8, v120
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v46, v41, 1.0
	v_div_fmas_f32 v34, v34, v39, v43
	v_div_fixup_f32 v31, v33, v0, v31
	s_mov_b32 vcc_lo, s4
	v_or_b32_e32 v60, 10, v120
	v_fmac_f32_e32 v41, v38, v41
	v_rcp_f32_e32 v38, v42
	v_div_fixup_f32 v32, v34, v0, v32
	v_or_b32_e32 v59, 12, v120
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s53, v61
	v_cmp_gt_i32_e64 s7, s53, v60
	v_or_b32_e32 v58, 14, v120
	v_or_b32_e32 v57, 16, v120
	v_cmp_gt_i32_e64 s8, s53, v59
	v_or_b32_e32 v56, 18, v120
	v_or_b32_e32 v55, 20, v120
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v38, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s53, v58
	v_cmp_gt_i32_e64 s10, s53, v57
	v_cmp_gt_i32_e64 s11, s53, v56
	v_cmp_gt_i32_e64 s12, s53, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v38, v43, v38 :: v_dual_mul_f32 v37, v45, v40
	v_or_b32_e32 v54, 22, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v35, v37, v45
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s53, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v36, v40
	v_rcp_f32_e32 v36, v47
	v_fma_f32 v33, -v35, v37, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	v_div_scale_f32 v35, s3, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v33, v40, v37
	v_fma_f32 v43, -v47, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_div_fixup_f32 v17, v33, v0, v17
	s_delay_alu instid0(VALU_DEP_3)
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
	v_cmp_gt_i32_e64 s1, s53, v120
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v51, v40, v39
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v48, v65, s53
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v36, -v44, v53, v50
	v_or_b32_e32 v50, 2, v120
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_or_b32_e32 v51, 4, v120
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s53, v50
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v120, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s53, v51
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v50, v48, v50, 2
	v_add_lshl_u32 v51, v48, v51, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_cmp_gt_i32_e64 s5, s53, v62
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	buffer_store_b32 v8, v49, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v62, 2
	s_clause 0x1
	buffer_store_b32 v25, v50, s[72:75], 0 offen
	buffer_store_b32 v26, v51, s[72:75], 0 offen
	v_add_lshl_u32 v25, v48, v61, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v48, v60, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v28, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v59, 2
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
	buffer_store_b32 v27, v8, s[72:75], 0 offen
	buffer_store_b32 v28, v25, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v58, 2
	v_add_lshl_u32 v25, v48, v57, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[72:75], 0 offen
	buffer_store_b32 v30, v49, s[72:75], 0 offen
	v_add_lshl_u32 v26, v48, v56, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	v_or_b32_e32 v53, 24, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v48, v55, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	v_or_b32_e32 v52, 26, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s53, v53
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[72:75], 0 offen
	buffer_store_b32 v17, v25, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v54, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s53, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v53, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[72:75], 0 offen
	buffer_store_b32 v19, v27, s[72:75], 0 offen
	v_add_lshl_u32 v18, v48, v52, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v32, 32, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v161, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 34, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 36, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s53, v32
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[72:75], 0 offen
	buffer_store_b32 v21, v17, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v142, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s53, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 38, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s53, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[72:75], 0 offen
	buffer_store_b32 v23, v19, s[72:75], 0 offen
	v_add_lshl_u32 v18, v48, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 40, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 42, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s53, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 44, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s53, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[72:75], 0 offen
	buffer_store_b32 v9, v17, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s53, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 46, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s53, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[72:75], 0 offen
	buffer_store_b32 v11, v19, s[72:75], 0 offen
	v_add_lshl_u32 v10, v48, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 48, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 50, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s53, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 52, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s53, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[72:75], 0 offen
	buffer_store_b32 v13, v9, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s53, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s53, v42
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[72:75], 0 offen
	buffer_store_b32 v15, v11, s[72:75], 0 offen
	v_add_lshl_u32 v10, v48, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 54, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 56, v120
	v_or_b32_e32 v45, 58, v120
	v_or_b32_e32 v46, 60, v120
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v47, 62, v120
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s53, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s53, v44
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v8, s[72:75], 0 offen
	buffer_store_b32 v1, v9, s[72:75], 0 offen
	v_add_lshl_u32 v1, v48, v43, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s53, v45
	v_cmp_gt_i32_e32 vcc_lo, s53, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[72:75], 0 offen
	buffer_store_b32 v3, v11, s[72:75], 0 offen
	v_add_lshl_u32 v2, v48, v44, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s53, v47
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
	buffer_store_b32 v4, v1, s[72:75], 0 offen
	buffer_store_b32 v5, v2, s[72:75], 0 offen
	buffer_store_b32 v6, v3, s[72:75], 0 offen
	buffer_store_b32 v7, v8, s[72:75], 0 offen
	buffer_store_b32 v0, v9, s[72:75], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp322:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 316
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 316
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24744
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 316
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
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
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
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
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
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
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
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 316
    .sgpr_count:     107
    .sgpr_spill_count: 9
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 78
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
