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
	s_load_b128 s[52:55], s[0:1], 0x4c
	s_load_b32 s74, s[0:1], 0x60
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
	v_mad_u64_u32 v[66:67], null, s74, v2, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s31, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s52
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s28, s2, 5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[21:22], null, s74, 6, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[23:24], null, s74, 10, v[66:67]
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s54
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v19, s74, 2, v66
	v_lshl_add_u32 v22, s74, 3, v66
	v_mov_b32_e32 v20, v21
	v_mad_u64_u32 v[24:25], null, s74, 12, v[66:67]
	v_mad_u64_u32 v[25:26], null, s74, 14, v[66:67]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[27:28], null, s74, 18, v[66:67]
	v_lshl_add_u32 v18, s74, 1, v66
	v_lshl_add_u32 v26, s74, 4, v66
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[28:29], null, s74, 20, v[66:67]
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
	v_mad_u64_u32 v[29:30], null, s74, 22, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 2, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, 4, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v5, 6, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s8, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v6, 8, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s8, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v7, 10, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s8, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v8, 12, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s8, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v9, 14, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s30, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s53
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v10, 16, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 759 21                        ; attention.py:759:21
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
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s28, v3
	v_or_b32_e32 v4, s28, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[75:76], null, s74, 26, v[66:67]
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s54, v2
	.loc	1 776 61 is_stmt 0              ; attention.py:776:61
	v_cmp_gt_i32_e64 s18, s74, v33
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v5, s28, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[76:77], null, s74, 28, v[66:67]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[149:150], null, s74, 24, v[66:67]
	v_mad_u64_u32 v[77:78], null, s74, 30, v[66:67]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s68, s54, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s28, v6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s69, s54, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s28, v7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s70, s54, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s28, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s71, s54, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s28, v10
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s52, s53
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s29, s6, 31
	s_mul_i32 s8, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s28, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s28, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s28, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s33, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s28
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s18
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s4, s2, s74
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s54, v8
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s4, v66
	v_add_nc_u32_e32 v20, s4, v21
	v_add_nc_u32_e32 v21, s4, v22
	v_mov_b32_e32 v22, v23
	v_add_nc_u32_e32 v18, s4, v18
	v_add_nc_u32_e32 v19, s4, v19
	v_add_nc_u32_e32 v30, s4, v75
	v_add_nc_u32_e32 v31, s4, v76
	scratch_store_b64 off, v[22:23], off offset:80 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v22, s4, v23
	v_mov_b32_e32 v23, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s68, s18
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v32, s4, v77
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[23:24], off offset:88 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v23, s4, v24
	v_mov_b32_e32 v24, v25
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s69, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s54, v10
	v_cmp_gt_i32_e64 s8, s54, v11
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v9, s28, v9
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[24:25], off offset:96 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v24, s4, v25
	v_add_nc_u32_e32 v25, s4, v26
	v_mov_b32_e32 v26, v27
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s54, v12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s28, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s54, v13
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[26:27], off offset:108 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v26, s4, v27
	v_mov_b32_e32 v27, v28
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s70, s18
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s28, v15
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[27:28], off offset:116 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v27, s4, v28
	v_mov_b32_e32 v28, v29
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s71, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s54, v9
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s28, v16
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[28:29], off offset:124 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v28, s4, v29
	v_add_nc_u32_e32 v29, s4, v149
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s54, v7
	v_cmp_gt_i32_e64 s11, s54, v14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s28, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s54, v15
	v_cmp_gt_i32_e64 s13, s54, v16
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s18
	v_writelane_b32 v255, s15, 1
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s18
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
	s_and_b32 vcc_lo, s7, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s54, v17
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s18
	v_writelane_b32 v255, s4, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v23, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s18
	v_writelane_b32 v255, s5, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v26, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x88, v0
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v27, v18, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s18
	v_writelane_b32 v255, s7, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v28, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x110, v0
	v_cndmask_b32_e32 v29, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s18
	v_writelane_b32 v255, s8, 5
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
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s25, s55, 31
	v_writelane_b32 v255, s9, 6
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s35, s24, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v37, 0x198, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s29, s35
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	v_writelane_b32 v255, s10, 7
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s24, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v153, 0, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v18, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v154, 0, v35
	v_writelane_b32 v255, s6, 8
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v38, s24
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s24, s25, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v155, 0, v36
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s24, s24, 27
	v_writelane_b32 v255, s11, 9
	s_add_i32 s24, s25, s24
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v156, 0, v37
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s66, s24, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s20, s20, 0x10008
	v_writelane_b32 v255, s12, 10
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s20, v38
	s_mov_b32 s84, 0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v153, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v153, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v153, v27 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v153, v23 offset:576
	ds_store_b8 v154, v19
	ds_store_b8 v154, v20 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v154, v25 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v154, v26 offset:576
	ds_store_b8 v155, v21
	ds_store_b8 v155, v22 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v155, v31 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v155, v28 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v156, v32
	s_waitcnt vmcnt(2)
	ds_store_b8 v156, v24 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v156, v29 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v156, v30 offset:576
	v_writelane_b32 v255, s13, 11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_writelane_b32 v255, s14, 12
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s24, s28, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s33, s28, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s24, s24, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s33, s33, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s24, s24, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s24, s55, s24
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s24, s24, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s25, s24, 31
	s_lshr_b32 s25, s25, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s24, s24, s25
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s25, s33, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s24, s24, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s84, s25, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s66, s66, s24
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v19, 0, 1, s31
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v18, v18, v1
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v19
	.loc	1 0 0                           ; attention.py:0
	v_writelane_b32 v255, s4, 13
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s24, s28, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s24, s24, 32
	s_min_i32 s24, s55, s24
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
	s_min_i32 s66, s66, s24
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_or_b32_e32 v19, s28, v18
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v124, v0, 4, 1
	v_lshlrev_b32_e32 v43, 6, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s84, s66
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v33, 6, v0
	s_mov_b32 s24, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s24, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow188
	v_add_nc_u32_e32 v65, s2, v18
	v_cmp_gt_i32_e64 s2, s54, v19
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x38
	s_load_b32 s54, s[0:1], 0x64
	v_lshlrev_b32_e32 v36, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s24
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[56:63], s[0:1], 0x8
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v18, 1, v65
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v44, s23, v2
	v_mov_b16_e32 v33.l, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v22, 16, v0
	v_dual_mov_b32 v34, 0x5410 :: v_dual_add_nc_u32 v45, s23, v3
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v72, s23, v13
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v19, 5, v1
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v20, 24, v36
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v21, 4, v39
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s61, 0xffff
	s_mov_b32 s24, s60
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v46, s23, v4
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x7c
	s_load_b64 s[60:61], s[0:1], 0x30
	s_load_b128 s[24:27], s[0:1], 0x6c
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v48, s23, v6
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v70, s23, v11
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v6, 3, v0
	v_mov_b32_e32 v40, 0x7632
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v2, 60, v36
	v_or3_b32 v35, v19, v21, v20
	v_or_b32_e32 v174, v19, v20
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v4, 2, v0
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v74, s23, v15
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v81, s23, v17
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v3, 1, v0
	.loc	1 844 25 is_stmt 1              ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s24, s24, 0x3fb8aa3b
	v_mov_b32_e32 v17, v25
	v_lshl_or_b32 v175, v1, 8, v4
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v68, s23, v9
	v_lshrrev_b32_e32 v9, 2, v22
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v42, 31, v0
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v47, s23, v5
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v5, 14, v0
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v69, s23, v10
	v_lshrrev_b32_e32 v41, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_u32_u24_e32 v4, 0x44, v5
	v_lshl_or_b32 v5, v3, 1, v9
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v67, s23, v8
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v71, s23, v12
	v_or3_b32 v177, v5, v4, v41
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v73, s23, v14
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v80, s23, v16
	v_mov_b32_e32 v170, 0xff800000
	s_mov_b32 s8, 0
	v_xad_u32 v38, v35, 8, 0
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_writelane_b32 v255, s8, 14
	s_xor_b32 s34, s3, s52
	s_mul_f32 s33, s20, 0x4f7ffffe
	s_ashr_i32 s20, s34, 31
	s_sub_i32 s31, 0, s29
	v_writelane_b32 v255, s9, 15
	s_ashr_i32 s1, s35, 31
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s28, s27, s28
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s54, v0
	s_mov_b32 s79, 0x31027000
	v_writelane_b32 v255, s10, 16
	s_mov_b32 s78, 0x7ffffffe
	s_mov_b32 s87, 0x76543210
	s_mov_b32 s76, s62
	s_mov_b32 s80, s58
	v_writelane_b32 v255, s11, 17
	s_mov_b32 s58, s78
	s_mov_b32 s67, s4
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v37, 0, v35
	v_mov_b32_e32 v172, 0xff800000
	v_writelane_b32 v255, s12, 18
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v32, v25 :: v_dual_mov_b32 v133, 0xff800000
	v_mov_b32_e32 v130, 0xff800000
	v_writelane_b32 v255, s13, 19
	v_mov_b32_e32 v233, 0xff800000
	v_mov_b32_e32 v235, 0xff800000
	v_mov_b32_e32 v237, 0xff800000
	v_mov_b32_e32 v239, 0xff800000
	v_writelane_b32 v255, s14, 20
	v_dual_mov_b32 v232, 0xff800000 :: v_dual_mov_b32 v241, 0xff800000
	v_mov_b32_e32 v234, 0xff800000
	v_mov_b32_e32 v236, 0xff800000
	v_writelane_b32 v255, s15, 21
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v238, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v240, 0xff800000
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v242, 0xff800000
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_mov_b32 v244, 0xff800000
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v246, 0xff800000
	v_dual_mov_b32 v251, 0xff800000 :: v_dual_mov_b32 v132, 0xff800000
	v_dual_mov_b32 v249, 0xff800000 :: v_dual_mov_b32 v152, 0xff800000
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_mov_b32 v254, 0xff800000
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_mov_b32 v252, 0xff800000
	v_dual_mov_b32 v253, 0xff800000 :: v_dual_mov_b32 v250, 0xff800000
	v_mov_b32_e32 v248, 0xff800000
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v18.l
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v18, v25 :: v_dual_mul_f32 v231, s24, v33
	v_subrev_nc_u32_e32 v33, s21, v44
	scratch_store_b32 off, v65, off offset:324 ; 4-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v65, s23, v7
	v_cndmask_b32_e64 v7, 0x104, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v22
	scratch_store_b32 off, v33, off offset:196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v45
	scratch_store_b32 off, v39, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v13, v25 :: v_dual_cndmask_b32 v40, 0x3276, v40
	v_xor_b32_e32 v1, v7, v2
	scratch_store_b32 off, v33, off offset:200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v46
	scratch_store_b32 off, v36, off offset:332 ; 4-byte Folded Spill
	v_xor_b32_e32 v36, v6, v36
	v_lshl_or_b32 v176, v3, 6, v1
	v_lshrrev_b32_e32 v1, 4, v39
	v_and_b32_e32 v2, 48, v6
	v_and_b32_e32 v7, 0x210, v8
	v_and_or_b32 v180, v36, 48, v43
	v_lshl_or_b32 v36, v40, 8, v40
	v_xor_b32_e32 v40, 8, v174
	v_mov_b32_e32 v20, v25
	v_lshl_or_b32 v179, v42, 2, v1
	v_and_or_b32 v2, 0x1c0, v43, v2
	scratch_store_b32 off, v33, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v181, 0, v40
	v_xor_b32_e32 v40, 16, v174
	v_mov_b32_e32 v15, v25
	v_xor_b32_e32 v178, v2, v7
	v_subrev_nc_u32_e32 v33, s21, v47
	scratch_store_b32 off, v43, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v182, 0, v40
	v_xor_b32_e32 v40, 24, v174
	v_mov_b32_e32 v22, v25
	scratch_store_b32 off, v33, off offset:208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v48
	v_dual_mov_b32 v9, v25 :: v_dual_cndmask_b32 v34, 0x1054, v34
	v_add_nc_u32_e32 v183, 0, v40
	v_xor_b32_e32 v40, 4, v175
	v_mov_b32_e32 v1, v25
	scratch_store_b32 off, v33, off offset:212 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v65
	v_lshl_or_b32 v34, v34, 8, v34
	v_add_nc_u32_e32 v184, 0, v40
	v_xor_b32_e32 v40, 8, v175
	v_mov_b32_e32 v24, v25
	scratch_store_b32 off, v33, off offset:216 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v67
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v167, v231 :: v_dual_and_b32 v34, 0x540054, v34
	v_add_nc_u32_e32 v185, 0, v40
	v_xor_b32_e32 v40, 12, v175
	v_mov_b32_e32 v3, v25
	scratch_store_b32 off, v33, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v68
	v_lshl_or_b32 v34, v34, 4, v34
	v_add_nc_u32_e32 v186, 0, v40
	v_xor_b32_e32 v40, 16, v175
	v_mov_b32_e32 v10, v25
	scratch_store_b32 off, v33, off offset:224 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v69
	v_dual_mov_b32 v168, v231 :: v_dual_and_b32 v229, 0x5040504, v34
	v_add_nc_u32_e32 v187, 0, v40
	v_xor_b32_e32 v40, 20, v175
	v_mov_b32_e32 v5, v25
	scratch_store_b32 off, v33, off offset:228 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v70
	v_mul_lo_u32 v34, s27, v41
	v_add_nc_u32_e32 v188, 0, v40
	v_xor_b32_e32 v40, 24, v175
	v_mov_b32_e32 v12, v25
	scratch_store_b32 off, v33, off offset:232 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v71
	v_xad_u32 v39, v35, 16, 0
	v_add_nc_u32_e32 v189, 0, v40
	v_xor_b32_e32 v40, 28, v175
	v_mov_b32_e32 v7, v25
	scratch_store_b32 off, v33, off offset:236 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v72
	v_xad_u32 v35, v35, 24, 0
	v_add_nc_u32_e32 v190, 0, v40
	v_xor_b32_e32 v40, 32, v175
	v_mov_b32_e32 v14, v25
	scratch_store_b32 off, v33, off offset:240 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v73
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[78:79], null, s4, v42, v[34:35]
	v_add_nc_u32_e32 v191, 0, v40
	v_xor_b32_e32 v40, 36, v175
	scratch_store_b32 off, v33, off offset:244 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v74
	s_xor_b32 s23, s30, s20
	s_cvt_u32_f32 s30, s33
	v_add_nc_u32_e32 v192, 0, v40
	v_xor_b32_e32 v40, 40, v175
	v_mov_b32_e32 v16, v25
	scratch_store_b32 off, v33, off offset:248 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v80
	s_sub_i32 s20, s23, s20
	v_add_nc_u32_e32 v193, 0, v40
	v_xor_b32_e32 v40, 44, v175
	s_mul_i32 s23, s20, s52
	scratch_store_b32 off, v33, off offset:252 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v81
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:256
	scratch_store_b32 off, v44, off offset:132
	v_add_nc_u32_e32 v194, 0, v40
	v_xor_b32_e32 v40, 48, v175
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v33, s22, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:260
	scratch_store_b32 off, v45, off offset:136
	v_add_nc_u32_e32 v195, 0, v40
	v_xor_b32_e32 v40, 52, v175
	v_add_nc_u32_e32 v33, s22, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:264
	scratch_store_b32 off, v46, off offset:140
	v_add_nc_u32_e32 v196, 0, v40
	v_xor_b32_e32 v40, 56, v175
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v33, s22, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:268
	scratch_store_b32 off, v47, off offset:144
	v_add_nc_u32_e32 v197, 0, v40
	v_xor_b32_e32 v40, 60, v175
	v_add_nc_u32_e32 v33, s22, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:272
	scratch_store_b32 off, v48, off offset:148
	v_add_nc_u32_e32 v198, 0, v40
	v_xor_b32_e32 v40, 0x88, v179
	v_add_nc_u32_e32 v33, s22, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:276
	scratch_store_b32 off, v65, off offset:152
	v_add_nc_u32_e32 v150, 0, v40
	v_xor_b32_e32 v40, 0x110, v179
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v33, s22, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:280
	scratch_store_b32 off, v67, off offset:156
	v_add_nc_u32_e32 v151, 0, v40
	v_xor_b32_e32 v40, 0x198, v179
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v33, s22, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:284
	scratch_store_b32 off, v68, off offset:160
	v_add_nc_u32_e32 v129, 0, v40
	v_xor_b32_e32 v40, 0x220, v179
	v_add_nc_u32_e32 v33, s22, v68
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:288
	scratch_store_b32 off, v69, off offset:164
	v_add_nc_u32_e32 v131, 0, v40
	v_xor_b32_e32 v40, 0x2a8, v179
	v_add_nc_u32_e32 v33, s22, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:292
	scratch_store_b32 off, v70, off offset:168
	v_add_nc_u32_e32 v122, 0, v40
	v_xor_b32_e32 v40, 0x330, v179
	v_add_nc_u32_e32 v33, s22, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:296
	scratch_store_b32 off, v71, off offset:172
	v_add_nc_u32_e32 v123, 0, v40
	v_xor_b32_e32 v40, 0x3b8, v179
	v_add_nc_u32_e32 v33, s22, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:300
	scratch_store_b32 off, v72, off offset:176
	v_add_nc_u32_e32 v125, 0, v40
	v_xor_b32_e32 v40, 16, v180
	v_add_nc_u32_e32 v33, s22, v72
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:304
	scratch_store_b32 off, v73, off offset:180
	v_add_nc_u32_e32 v126, 0, v40
	v_xor_b32_e32 v40, 32, v180
	v_add_nc_u32_e32 v33, s22, v73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:308
	scratch_store_b32 off, v74, off offset:184
	v_add_nc_u32_e32 v207, 0, v40
	v_xor_b32_e32 v40, 48, v180
	v_add_nc_u32_e32 v33, s22, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:312
	scratch_store_b32 off, v80, off offset:188
	v_add_nc_u32_e32 v208, 0, v40
	v_xor_b32_e32 v40, 0x208, v176
	v_add_nc_u32_e32 v33, s22, v80
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:316
	scratch_store_b32 off, v81, off offset:192
	v_add_nc_u32_e32 v209, 0, v40
	v_xor_b32_e32 v40, 0x410, v176
	v_add_nc_u32_e32 v33, s22, v81
	ds_load_b64 v[79:80], v37
	ds_load_b64 v[81:82], v38
	ds_load_b64 v[83:84], v39
	ds_load_b64 v[85:86], v35
	s_mul_i32 s31, s31, s30
	s_sub_i32 s3, s3, s23
	v_add_nc_u32_e32 v210, 0, v40
	v_xor_b32_e32 v40, 0x618, v176
	s_mul_hi_u32 s23, s30, s31
	s_abs_i32 s31, s3
	s_add_i32 s30, s30, s23
	s_ashr_i32 s23, s3, 31
	v_add_nc_u32_e32 v211, 0, v40
	v_xor_b32_e32 v40, 0x820, v176
	s_mul_hi_u32 s30, s31, s30
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s23, s1
	s_mul_i32 s23, s30, s29
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s33, s20, s53
	v_add_nc_u32_e32 v212, 0, v40
	v_xor_b32_e32 v40, 0xa28, v176
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s23, s31, s23
	s_add_i32 s31, s30, 1
	s_sub_i32 s34, s23, s29
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[87:88], null, s27, 6, v[78:79]
	v_add_nc_u32_e32 v213, 0, v40
	v_xor_b32_e32 v40, 0xc30, v176
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s23, s29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[88:89], null, s27, 10, v[78:79]
	v_mad_u64_u32 v[89:90], null, s27, 12, v[78:79]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v214, 0, v40
	v_xor_b32_e32 v40, 0xe38, v176
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s20, s20, s25
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v169, v231 :: v_dual_and_b32 v36, 0x760076, v36
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s25, s31, s30
	v_add_nc_u32_e32 v215, 0, v40
	v_xor_b32_e32 v40, 8, v177
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s27, 14, v[78:79]
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s23, s34, s23
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[91:92], null, s27, 18, v[78:79]
	v_add_nc_u32_e32 v216, 0, v40
	v_xor_b32_e32 v40, 16, v177
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s26
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s26, s25, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[92:93], null, s27, 20, v[78:79]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v217, 0, v40
	v_xor_b32_e32 v40, 24, v177
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s23, s29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[93:94], null, s27, 22, v[78:79]
	v_mad_u64_u32 v[94:95], null, s27, 24, v[78:79]
	v_add_nc_u32_e32 v218, 0, v40
	v_xor_b32_e32 v40, 32, v177
	v_lshl_or_b32 v36, v36, 4, v36
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s23, s26, s25
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[95:96], null, s27, 26, v[78:79]
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v219, 0, v40
	v_xor_b32_e32 v40, 40, v177
	s_add_i32 s53, s20, s28
	v_mad_u64_u32 v[96:97], null, s27, 28, v[78:79]
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s20, s23, s1
	v_add_nc_u32_e32 v220, 0, v40
	v_xor_b32_e32 v40, 48, v177
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[97:98], null, s27, 30, v[78:79]
	s_add_i32 s3, s53, s3
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s20, s1
	v_add_nc_u32_e32 v221, 0, v40
	v_xor_b32_e32 v40, 56, v177
	.loc	1 821 33                        ; attention.py:821:33
	v_writelane_b32 v255, s3, 22
	v_and_b32_e32 v230, 0x7060706, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v127, s27, 1, v78
	v_lshl_add_u32 v128, s27, 2, v78
	v_add_nc_u32_e32 v222, 0, v40
	v_xor_b32_e32 v40, 16, v178
	v_lshl_add_u32 v148, s27, 3, v78
	v_lshl_add_u32 v166, s27, 4, v78
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s88, s1, s33
	s_and_b32 s57, s57, 0xffff
	v_add_nc_u32_e32 v223, 0, v40
	v_xor_b32_e32 v40, 32, v178
	s_and_b32 s77, s63, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s81, s59, 0xffff
	s_mov_b32 s59, s79
	v_add_nc_u32_e32 v224, 0, v40
	v_xor_b32_e32 v40, 48, v178
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s88, s88, s55
	scratch_store_b32 off, v33, off offset:320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v225, 0, v40
	v_xor_b32_e32 v40, 0x420, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v226, 0, v40
	v_xor_b32_e32 v40, 0x430, v178
	v_add_nc_u32_e32 v227, 0, v40
	v_xor_b32_e32 v40, 0x410, v178
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v228, 0, v40
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	v_readlane_b32 s3, v255, 22
	s_mul_i32 s1, s84, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v140, v33
	v_cvt_f32_i32_e32 v144, v34
	v_cvt_f32_i32_e32 v142, v35
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s3, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v160, v42
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s1, v78, 2
	v_add_lshl_u32 v34, s1, v127, 2
	v_add_lshl_u32 v35, s1, v128, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s1, v87, 2
	v_add_lshl_u32 v42, s1, v166, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v158, v43
	v_cvt_f32_i32_e32 v139, v37
	v_cvt_f32_i32_e32 v138, v38
	v_cvt_f32_i32_e32 v137, v39
	v_cvt_f32_i32_e32 v65, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s1, v148, 2
	v_add_lshl_u32 v38, s1, v88, 2
	v_add_lshl_u32 v39, s1, v89, 2
	v_add_lshl_u32 v40, s1, v90, 2
	v_add_lshl_u32 v43, s1, v91, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v41, v44
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s101
	v_add_lshl_u32 v44, s1, v92, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v159, v45
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s99
	v_add_lshl_u32 v45, s1, v93, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v146, v46
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s97
	v_add_lshl_u32 v46, s1, v94, 2
	v_add_lshl_u32 v68, s1, v97, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v145, v47
	v_cvt_f32_i32_e32 v143, v48
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s62, s78
	s_mov_b32 s63, s79
	v_cndmask_b32_e64 v36, 0x80000000, v36, s94
	v_cndmask_b32_e64 v42, 0x80000000, v42, s102
	v_add_lshl_u32 v47, s1, v95, 2
	v_add_lshl_u32 v48, s1, v96, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s93
	v_cndmask_b32_e64 v38, 0x80000000, v38, s90
	v_cndmask_b32_e64 v39, 0x80000000, v39, s83
	v_cndmask_b32_e64 v40, 0x80000000, v40, s82
	v_cndmask_b32_e64 v43, 0x80000000, v43, s100
	s_clause 0x7
	buffer_load_b32 v33, v33, s[60:63], 0 offen
	buffer_load_b32 v34, v34, s[60:63], 0 offen
	buffer_load_b32 v35, v35, s[60:63], 0 offen
	buffer_load_b32 v36, v36, s[60:63], 0 offen
	buffer_load_b32 v37, v37, s[60:63], 0 offen
	buffer_load_b32 v38, v38, s[60:63], 0 offen
	buffer_load_b32 v39, v39, s[60:63], 0 offen
	buffer_load_b32 v40, v40, s[60:63], 0 offen
	v_cndmask_b32_e64 v44, 0x80000000, v44, s98
	v_cndmask_b32_e64 v45, 0x80000000, v45, s96
	v_cndmask_b32_e64 v46, 0x80000000, v46, s95
	v_cndmask_b32_e64 v68, 0x80000000, v68, s89
	v_cndmask_b32_e64 v47, 0x80000000, v47, s92
	v_cndmask_b32_e64 v48, 0x80000000, v48, s91
	s_clause 0x7
	buffer_load_b32 v42, v42, s[60:63], 0 offen
	buffer_load_b32 v43, v43, s[60:63], 0 offen
	buffer_load_b32 v44, v44, s[60:63], 0 offen
	buffer_load_b32 v45, v45, s[60:63], 0 offen
	buffer_load_b32 v46, v46, s[60:63], 0 offen
	buffer_load_b32 v69, v47, s[60:63], 0 offen
	buffer_load_b32 v70, v48, s[60:63], 0 offen
	buffer_load_b32 v68, v68, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v161.h, v98.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v67, v231, v67 :: v_dual_add_nc_u32 v98, 0, v176
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v134.h, v99.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s20, s84, 1
	s_or_b32 s62, s84, 3
	s_or_b32 s63, s84, 4
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.l, v134.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s75, s84, 5
	s_or_b32 s86, s84, 8
	s_or_b32 s103, s84, 19
	s_or_b32 s104, s84, 20
	s_or_b32 vcc_hi, s84, 21
	s_or_b32 s50, s84, 22
	s_or_b32 s4, s84, 23
	s_or_b32 s5, s84, 24
	s_or_b32 s6, s84, 25
	s_or_b32 s7, s84, 26
	s_or_b32 s8, s84, 27
	s_or_b32 s9, s84, 28
	s_or_b32 s10, s84, 29
	s_or_b32 s11, s84, 30
	s_or_b32 s12, s84, 31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v118, 0, v180
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v169, v65
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v71, 0xff800000, v33, s101
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v33, 0, v175
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v47, 0xff800000, v34, s99
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v34, 0xff800000, v35, s97
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v35, 0xff800000, v36, s94
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v36, 0xff800000, v37, s93
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v37, 0xff800000, v38, s90
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v72, 0xff800000, v42, s102
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v48, 0xff800000, v43, s100
	v_cndmask_b32_e64 v38, 0xff800000, v39, s83
	v_cndmask_b32_e64 v39, 0xff800000, v40, s82
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v40, 0xff800000, v44, s98
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v42, 0xff800000, v45, s96
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v43, 0xff800000, v46, s95
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v44, 0xff800000, v69, s92
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v45, 0xff800000, v70, s91
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v46, 0xff800000, v68, s89
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v98, v71, v72 offset1:32
	ds_store_2addr_b32 v209, v47, v48 offset1:32
	ds_store_2addr_b32 v210, v34, v40 offset1:32
	ds_store_2addr_b32 v211, v35, v42 offset1:32
	ds_store_2addr_b32 v212, v36, v43 offset1:32
	ds_store_2addr_b32 v213, v37, v44 offset1:32
	ds_store_2addr_b32 v214, v38, v45 offset1:32
	ds_store_2addr_b32 v215, v39, v46 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v68, v33
	ds_load_b32 v69, v184
	ds_load_b32 v70, v185
	ds_load_b32 v73, v188
	ds_load_b32 v74, v189
	ds_load_b32 v114, v190
	ds_load_b32 v136, v186
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v71
	v_cmp_neq_f32_e64 s21, 0xff800000, v48
	v_cmp_neq_f32_e64 s3, 0xff800000, v47
	v_cmp_neq_f32_e64 s29, 0xff800000, v42
	v_cmp_neq_f32_e64 s22, 0xff800000, v35
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s27, s101, s1
	s_and_b32 s1, s100, s21
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v40
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s99, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v34
	v_cmp_neq_f32_e64 s34, 0xff800000, v43
	v_cmp_neq_f32_e64 s23, 0xff800000, v36
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s98, s21
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v113, 0x3fb8aa3b, v68
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v167, v160
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v34, 0, 1, s25
	s_and_b32 s30, s97, s3
	s_and_b32 s21, s96, s29
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v113, v67, v161
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v100.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v100, 0x3fb8aa3b, v69
	ds_load_b32 v69, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v67.l, v134.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s30
	v_lshlrev_b16 v34.l, 8, v34.l
	s_and_b32 s33, s94, s22
	s_and_b32 s22, s95, s34
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v100, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v101.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v168, v158
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v101, 0x3fb8aa3b, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s21
	v_cndmask_b32_e64 v36, 0, 1, s33
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v44
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v101, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v102.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v231, v159
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v34.h, 8, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s22
	s_and_b32 s34, s93, s23
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v102, 0x3fb8aa3b, v69
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v37
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_or_b16 v34.h, v36.l, v34.h
	v_cndmask_b32_e64 v36, 0, 1, s34
	v_lshlrev_b16 v35.l, 8, v35.l
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v102, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v103.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v68, v167, v146 :: v_dual_mul_f32 v103, 0x3fb8aa3b, v73
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v45
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s23, s92, s35
	v_or_b16 v35.l, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s23
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v103, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v104.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v168, v145
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v104, 0x3fb8aa3b, v74
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v38
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s35, s90, s24
	s_and_b32 s24, s91, s36
	v_cndmask_b32_e64 v37, 0, 1, s35
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v104, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v105.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v105, 0x3fb8aa3b, v114
	ds_load_b32 v69, v192
	ds_load_b32 v70, v193
	ds_load_b32 v73, v194
	ds_load_b32 v74, v195
	ds_load_b32 v114, v196
	ds_load_b32 v115, v197
	ds_load_b32 v116, v198
	ds_load_b32 v117, v191
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v169, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v35.h, 8, v36.l
	v_cndmask_b32_e64 v36, 0, 1, s24
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v72
	v_cmp_neq_f32_e64 s37, 0xff800000, v46
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v105, v68, v67 :: v_dual_mul_f32 v68, v231, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v106.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s83, s26
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v39
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v35.h, v37.l, v35.h
	v_cndmask_b32_e64 v37, 0, 1, s29
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(7)
	v_mul_f32_e32 v106, 0x3fb8aa3b, v69
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v39, 0x3fb8aa3b, v136
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 vcc_lo, s102, vcc_lo
	s_and_b32 s26, s89, s37
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v106, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v107.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v167, v142
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v107, 0x3fb8aa3b, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v47, 0, 1, vcc_lo
	v_or_b16 v36.l, v37.l, v36.l
	v_cndmask_b32_e64 v37, 0, 1, s26
	v_cndmask_b32_e64 v48, 0, 1, s27
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v107, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v168, v141
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v109, 0x3fb8aa3b, v73
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v47.l, 8, v47.l
	v_lshlrev_b16 v36.h, 8, v37.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v169, v41
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s82, s31
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v109, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v111.l
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v68, v169, v139 :: v_dual_mul_f32 v111, 0x3fb8aa3b, v74
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v47.l, v48.l, v47.l
	v_cndmask_b32_e64 v48, 0, 1, s1
	v_cndmask_b32_e64 v38, 0, 1, s31
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v111, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v108.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v231, v140
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v108, 0x3fb8aa3b, v117
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v47.h, 8, v48.l
	v_add_nc_u32_e32 v48, 0, v179
	s_barrier
	v_or_b16 v36.h, v38.l, v36.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v108, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v167, v138
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v110, 0x3fb8aa3b, v114
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16 v48, v47
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v37, v134 :: v_dual_add_nc_u32 v40, 0, v177
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s82, s84, 6
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v110, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v112.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v168, v137
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v112, 0x3fb8aa3b, v115
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s83, s84, 7
	s_or_b32 s90, s84, 9
	s_or_b32 s91, s84, 10
	s_or_b32 s92, s84, 11
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v112, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v67.h, v135.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v135, 0x3fb8aa3b, v116
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s93, s84, 12
	s_or_b32 s95, s84, 13
	s_or_b32 s96, s84, 14
	s_or_b32 s97, s84, 15
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v135, v65, v67
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v65, 0, 1, s28
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[67:68], null, s52, s54, v[0:1]
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s52, s84, 2
	s_or_b32 s99, s84, 16
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v47.h, v65.l, v47.h
	ds_store_b16_d16_hi v150, v47
	ds_store_b16 v151, v34
	ds_store_b16_d16_hi v129, v34
	ds_store_b16 v131, v35
	ds_store_b16_d16_hi v122, v35
	ds_store_b16 v123, v36
	ds_store_b16_d16_hi v125, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v218
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v218 offset:64
	ds_load_u8_d16 v35, v217 offset:64
	ds_load_u8_d16 v36, v40 offset:64
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v99, s54, v67
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s100, s84, 17
	s_or_b32 s101, s84, 18
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s84, s55
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s20, s55
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s52, s55
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s62, s55
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s63, s55
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b16 v34.l, 1, v34.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s75, s55
	s_cselect_b32 s98, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s47, 1, v34.l
	ds_load_u8_d16 v34, v217
	s_waitcnt lgkmcnt(2)
	ds_load_u8_d16_hi v35, v216 offset:64
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s82, s55
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s82, s78
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s83, s55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v39, s47
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s86, s55
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s83, s79
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s90, s55
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s91, s55
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s92, s55
	s_cselect_b32 s63, -1, 0
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v34.l, 1, v34.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s93, s55
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s95, s55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s46, 1, v34.l
	ds_load_u8_d16 v34, v216
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s96, s55
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s97, s55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v101, s46
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s99, s55
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s100, s55
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s101, s55
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s103, s55
	s_cselect_b32 s93, -1, 0
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v34.l, 1, v34.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s104, s55
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 vcc_hi, s55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s3, 1, v34.l
	ds_load_u8_d16 v34, v222
	ds_load_u8_d16_hi v36, v222 offset:64
	ds_load_u8_d16 v37, v221 offset:64
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s50, s55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v100, s3
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s4, s55
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s5, s55
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s6, s55
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s7, s55
	s_cselect_b32 s75, -1, 0
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b16 v34.l, 1, v34.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s8, s55
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s9, s55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s45, 1, v34.l
	ds_load_u8_d16 v34, v221
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v37, v220 offset:64
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s10, s55
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s11, s55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v105, s45
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s12, s55
	s_cselect_b32 s101, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s52, s0, s13
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s84, s84, 32
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s44, 1, v34.l
	ds_load_u8_d16 v34, v220
	ds_load_u8_d16 v38, v219 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v104, s44
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s49, 1, v34.l
	ds_load_u8_d16 v34, v219
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v103, s49
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v34.l, 1, v34.l
	v_cmp_eq_u16_e64 s48, 1, v34.l
	v_and_b16 v34.l, 1, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v102, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v34.l
	v_and_b16 v34.l, 1, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v111, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v34.l
	v_and_b16 v34.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, 0xff800000, v109, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v34.l
	v_and_b16 v34.l, 1, v35.h
	v_add_nc_u32_e32 v35, s54, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v107, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v34.l
	v_and_b16 v34.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v100, s54, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v106, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v34.l
	v_and_b16 v34.l, 1, v37.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v135, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v34.l
	v_and_b16 v34.l, 1, v37.h
	v_cmp_eq_u16_e64 s39, 1, v34.l
	v_and_b16 v34.l, 1, v36.l
	v_add_nc_u32_e32 v36, s54, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v110, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v34.l
	ds_load_u8_d16 v34, v40
	v_add_nc_u32_e32 v102, s54, v36
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v142, 0xff800000, v108, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v37, s54, v102
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v71, 1, v102
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v34.l, 1, v34.l
	v_cmp_eq_u16_e64 s51, 1, v34.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v34, 1, v35
	v_lshlrev_b32_e32 v35, 1, v36
	v_lshlrev_b32_e32 v36, 1, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v113, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v67
	v_add_nc_u32_e32 v67, s54, v37
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v33, v145
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v48, s52
	v_add_nc_u32_e32 v37, s54, v67
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v67
	v_cndmask_b32_e64 v34, 0x80000000, v34, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s15
	v_add_nc_u32_e32 v101, s54, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v38, 1, v37
	v_cndmask_b32_e64 v35, 0x80000000, v35, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s16
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v112, s36
	v_add_nc_u32_e32 v39, s54, v101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s17
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v184, v160
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v38, s52
	v_add_nc_u32_e32 v103, s54, v39
	v_lshlrev_b32_e32 v38, 1, v39
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s19
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v185, v158
	ds_store_b32 v186, v159
	v_add_nc_u32_e32 v40, s54, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s53
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v187, v146
	ds_store_b32 v188, v65
	v_add_nc_u32_e32 v104, s54, v40
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v39, 1, v40
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v189, v143
	ds_store_b32 v190, v144
	ds_store_b32 v191, v142
	v_add_nc_u32_e32 v41, s54, v104
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v39, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s85
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v192, v141
	ds_store_b32 v193, v139
	v_add_nc_u32_e32 v105, s54, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v40, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v194, v140
	ds_store_b32 v195, v137
	ds_store_b32 v196, v138
	v_add_nc_u32_e32 v41, s54, v105
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s64
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v197, v135
	ds_store_b32 v198, v136
	v_add_nc_u32_e32 v106, s54, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v35, v35, s[80:83], 0 offen
	buffer_load_u16 v36, v36, s[80:83], 0 offen
	buffer_load_u16 v39, v39, s[80:83], 0 offen
	buffer_load_u16 v40, v40, s[80:83], 0 offen
	v_add_nc_u32_e32 v43, s54, v106
	v_cndmask_b32_e64 v41, 0x80000000, v42, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s65
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v33, v33, s[80:83], 0 offen
	buffer_load_u16 v34, v34, s[80:83], 0 offen
	v_lshlrev_b32_e32 v73, 1, v105
	v_add_nc_u32_e32 v107, s54, v43
	v_lshlrev_b32_e32 v42, 1, v43
	v_lshlrev_b32_e32 v72, 1, v104
	s_clause 0x1
	buffer_load_u16 v37, v37, s[80:83], 0 offen
	buffer_load_u16 v38, v38, s[80:83], 0 offen
	v_lshlrev_b32_e32 v74, 1, v106
	v_add_nc_u32_e32 v44, s54, v107
	v_cndmask_b32_e64 v42, 0x80000000, v42, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s86
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v41, v41, s[80:83], 0 offen
	buffer_load_u16 v42, v42, s[80:83], 0 offen
	v_add_nc_u32_e32 v108, s54, v44
	v_lshlrev_b32_e32 v43, 1, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v45, s54, v108
	v_cndmask_b32_e64 v43, 0x80000000, v43, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s20
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v109, s54, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v44, 1, v45
	buffer_load_u16 v43, v43, s[80:83], 0 offen
	v_add_nc_u32_e32 v45, s54, v109
	v_cndmask_b32_e64 v44, 0x80000000, v44, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, vcc_hi
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v110, s54, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v45
	buffer_load_u16 v44, v44, s[80:83], 0 offen
	v_add_nc_u32_e32 v47, s54, v110
	v_cndmask_b32_e64 v45, 0x80000000, v46, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v102, 1, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v68, s54, v47
	v_lshlrev_b32_e32 v46, 1, v47
	v_add_nc_u32_e32 v48, s54, v68
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s104
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v68
	s_clause 0x1
	buffer_load_u16 v45, v45, s[80:83], 0 offen
	buffer_load_u16 v46, v46, s[80:83], 0 offen
	v_add_nc_u32_e32 v69, s54, v48
	v_lshlrev_b32_e32 v47, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v70, s54, v69
	v_cndmask_b32_e64 v47, 0x80000000, v47, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s103
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v48, 1, v70
	buffer_load_u16 v47, v47, s[80:83], 0 offen
	v_add_lshl_u32 v70, v70, s54, 1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s102
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s98
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v48, v48, s[80:83], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v71, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s94
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v67.l
	v_lshlrev_b32_e32 v67, 1, v100
	v_lshlrev_b32_e32 v100, 1, v108
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v71.l
	v_lshlrev_b32_e32 v71, 1, v99
	v_lshlrev_b32_e32 v99, 1, v107
	v_cndmask_b32_e64 v67, 0x80000000, v67, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s89
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s97
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	v_cndmask_b32_e64 v73, 0x80000000, v73, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s92
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	v_cndmask_b32_e64 v72, 0x80000000, v72, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s63
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v34.h, v67.l
	v_lshlrev_b32_e32 v67, 1, v101
	v_lshlrev_b32_e32 v101, 1, v109
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v71.l
	v_lshlrev_b32_e32 v71, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v71, 0x80000000, v71, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s62
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s52
	s_clause 0x3
	buffer_load_u16 v73, v73, s[80:83], 0 offen
	buffer_load_u16 v72, v72, s[80:83], 0 offen
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v101, 0x80000000, v101, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v100, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v99, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v74, s52
	s_clause 0x3
	buffer_load_u16 v114, v101, s[80:83], 0 offen
	buffer_load_u16 v115, v100, s[80:83], 0 offen
	buffer_load_u16 v116, v99, s[80:83], 0 offen
	buffer_load_u16 v74, v74, s[80:83], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s96
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s52
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s0, s91
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s84, s66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v102, s52
	s_clause 0x3
	buffer_load_u16 v70, v70, s[80:83], 0 offen
	buffer_load_u16 v69, v69, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	buffer_load_u16 v117, v99, s[80:83], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[112:113], v98 offset1:32
	ds_load_2addr_b32 v[110:111], v209 offset1:32
	ds_load_2addr_b32 v[108:109], v210 offset1:32
	ds_load_2addr_b32 v[106:107], v211 offset1:32
	ds_load_2addr_b32 v[104:105], v212 offset1:32
	ds_load_2addr_b32 v[102:103], v213 offset1:32
	ds_load_2addr_b32 v[100:101], v214 offset1:32
	ds_load_2addr_b32 v[98:99], v215 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v118, v[33:36]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v145, v160
	v_max3_f32 v34, v159, v146, v65
	v_max3_f32 v35, v137, v138, v135
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v134.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v158, v34
	v_max3_f32 v34, v141, v139, v140
	v_max3_f32 v34, v34, v35, v136
	v_max3_f32 v35, v143, v144, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v33, v33, v35, v34
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v134.l
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v33, v133, v33, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v160, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v145, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s51, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s51
	v_permlanex16_b32 v35, v36, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v34, v35, v36, v229
	v_perm_b32 v35, v35, v36, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v159, v33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v40.h, v73.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v39.h, v72.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v38.h, v71.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v37.h, v67.l
	ds_store_b128 v126, v[37:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v134.l
	v_mov_b16_e32 v37.l, v36.h
	v_mov_b16_e64 v38.h, v134.l
	v_mov_b16_e64 v39.h, v134.l
	v_mov_b16_e64 v40.h, v134.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v44.h, v114.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v43.h, v115.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v42.h, v116.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v41.h, v74.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v36, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v158, v33
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v207, v[41:44]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v134.l
	v_mov_b16_e64 v42.h, v134.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v43, 0, v178
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v48.h, v70.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v47.h, v69.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v46.h, v68.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v45.h, v117.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s46
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v208, v[45:48]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[114:117], v43
	ds_load_b128 v[118:121], v223
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s46, v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[158:161], v226 offset:2048
	ds_load_b128 v[162:165], v227 offset:2048
	ds_load_b128 v[67:70], v43 offset:2048
	ds_load_b128 v[71:74], v223 offset:2048
	ds_load_b128 v[199:202], v43 offset:1024
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v38, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v38, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v37, v38, v229
	v_perm_b32 v37, v37, v38, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v65, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v38.h
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v38, v38, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v146, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s46, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v39, v39, v40, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s46
	v_permlanex16_b32 v39, v40, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v38, v39, v40, v229
	v_perm_b32 v39, v39, v40, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v144, v33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v40, v40
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v40, v41, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v143, v33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s44, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v40.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v42, v41, v229
	v_perm_b32 v41, v42, v41, v230
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v133, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v42, 0, v42, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v42
	v_mul_f32_e32 v26, v26, v42
	v_mul_f32_e32 v27, v27, v42
	v_mul_f32_e32 v28, v28, v42
	v_mul_f32_e32 v29, v29, v42
	v_mul_f32_e32 v30, v30, v42
	v_mul_f32_e32 v31, v31, v42
	v_mul_f32_e32 v32, v32, v42
	v_mul_f32_e32 v17, v17, v42
	v_mul_f32_e32 v18, v18, v42
	v_mul_f32_e32 v19, v19, v42
	v_mul_f32_e32 v20, v20, v42
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[114:121], v[34:41], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[114:117], v226
	ds_load_b128 v[118:121], v227
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v42
	v_mul_f32_e32 v22, v22, v42
	v_mul_f32_e32 v23, v23, v42
	v_mul_f32_e32 v24, v24, v42
	v_mul_f32_e32 v9, v9, v42
	v_mul_f32_e32 v10, v10, v42
	v_mul_f32_e32 v11, v11, v42
	v_mul_f32_e32 v12, v12, v42
	v_mul_f32_e32 v13, v13, v42
	v_mul_f32_e32 v14, v14, v42
	v_mul_f32_e32 v15, v15, v42
	v_mul_f32_e32 v16, v16, v42
	v_mul_f32_e32 v1, v1, v42
	v_mul_f32_e32 v2, v2, v42
	v_mul_f32_e32 v3, v3, v42
	v_mul_f32_e32 v4, v4, v42
	v_mul_f32_e32 v5, v5, v42
	v_mul_f32_e32 v6, v6, v42
	v_mul_f32_e32 v7, v7, v42
	v_mul_f32_e32 v8, v8, v42
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[114:121], v[34:41], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[114:117], v43 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[67:74], v[34:41], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v42.h, v134.l
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[158:165], v[34:41], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v34, v141, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v134.l
	v_mov_b16_e64 v36.h, v134.l
	v_mov_b16_e64 v37.h, v134.l
	v_mov_b16_e64 v38.h, v134.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v134.l
	v_mov_b16_e64 v40.h, v134.l
	v_mov_b16_e64 v41.h, v134.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[203:206], v228
	ds_load_b128 v[118:121], v228 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v142, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v34, v36, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v35, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v36, v35, v229
	v_perm_b32 v35, v36, v35, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v140, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v36, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v139, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v36, v36
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v36, v38, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v37, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v38, v37, v229
	v_perm_b32 v37, v38, v37, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v138, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v38.h
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v38, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v137, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v38, v38
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v38, v40, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v39, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v38, v40, v39, v229
	v_perm_b32 v39, v40, v39, v230
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v136, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v40.h
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v135, v33
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[71:74], v225
	ds_load_b128 v[67:70], v224
	ds_load_b128 v[133:136], v224 offset:2048
	ds_load_b128 v[137:140], v225 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v40, v40
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v40, v42, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v42, v41, v229
	v_perm_b32 v41, v42, v41, v230
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[67:74], v[34:41], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[199:206], v[34:41], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[133:140], v[34:41], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[114:121], v[34:41], v[1:8]
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v112, v112 :: v_dual_max_f32 v36, v110, v110
	v_dual_max_f32 v37, v108, v108 :: v_dual_max_f32 v38, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v39, v104, v104
	v_dual_max_f32 v40, v102, v102 :: v_dual_mov_b32 v133, v33
	v_max_f32_e32 v34, v35, v34
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v38, v39, v38
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v39, v40, v39
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v34, v34, v40
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v35, v35, v40
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v36, v36, v40
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v37, v37, v40
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v38, v38, v40
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v34, v34, v40
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v35, v35, v40
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v34, v34, v40
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v36, v36, v40
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v37, v37, v40
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v38, v38, v40
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v39, v39, v40
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v35, v35, v40
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v40, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v34, v34, v40
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s3, v34, 31
	v_mov_b32_dpp v34, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v36, v36, v40
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v38, v34
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v37, v37, v40
	v_max_f32_e32 v35, v35, v38
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v35, 31
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v36, 31
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v36, v100, v100 :: v_dual_max_f32 v37, v37, v38
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s6, v37, 31
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v37, v98, v98 :: v_dual_max_f32 v36, v36, v36
	v_max_f32_e32 v34, v34, v38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
	v_max_f32_e32 v37, v113, v113
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v34, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_dual_max_f32 v38, v39, v38 :: v_dual_max_f32 v39, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v38, -1, -1 op_sel:[1,0]
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v38, v34
	v_max_f32_e32 v38, v111, v111
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v34, 31
	v_mov_b32_dpp v34, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s8, s8
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v37, v34
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v39, v38
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v35, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v39
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s9, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s9, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v39
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s10, v36, 31
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s10, s10
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v39
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s11, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v36, v36, v36
.Ltmp125:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s11, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v39
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s12, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v105, v105
.Ltmp129:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s12, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
	v_dual_max_f32 v36, v37, v36 :: v_dual_max_f32 v37, v103, v103
	v_max_f32_e32 v39, v99, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v38, -1, -1 op_sel:[1,0]
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v38, v34
	v_max_f32_e32 v38, v101, v101
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s13, v34, 31
	v_mov_b32_dpp v34, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v45, s13, s13
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v37, v34
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v39, v38
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v35, -1, -1 op_sel:[1,0]
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v39
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s14, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp172:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s3, s3
	v_max_f32_e64 v46, s14, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v39
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s15, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp176:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s4, s4
	v_max_f32_e64 v47, s15, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v39
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s16, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v34, v232, v232
.Ltmp182:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v48, s16, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v39
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
.Ltmp185:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v232, v34, v35
	v_max_f32_e32 v34, v132, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s17, v37, 31
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s5, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v34, v34, v35 :: v_dual_max_f32 v35, v233, v233
	v_max_f32_e64 v65, s17, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
.Ltmp190:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s7, s7
	v_max_f32_e32 v233, v35, v36
	v_max_f32_e32 v35, v147, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s19, v38, 31
.Ltmp192:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v38, s6, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v110, v233
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v35, v35, v36 :: v_dual_max_f32 v36, v234, v234
	v_max_f32_e64 v67, s19, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v234, v36, v37
	v_max_f32_e32 v36, v152, v152
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v235, v235
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v108, v234
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v235, v37, v38
	v_max_f32_e32 v37, v157, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v106, v235
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v236, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v236, v38, v39
	v_max_f32_e32 v38, v254, v254
	v_dual_max_f32 v38, v38, v39 :: v_dual_max_f32 v39, v237, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v237, v39, v40
	v_max_f32_e32 v39, v252, v252
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v238, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v238, v40, v41
	v_max_f32_e32 v40, v251, v251
	v_dual_max_f32 v40, v40, v41 :: v_dual_max_f32 v41, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v239, v41, v42
	v_max_f32_e32 v41, v250, v250
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v98, v98, v239 :: v_dual_max_f32 v41, v41, v42
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v240, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v240, v42, v43
	v_max_f32_e32 v42, v249, v249
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v241, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v241, v43, v44
	v_dual_max_f32 v43, v248, v248 :: v_dual_sub_f32 v70, v111, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v43, v43, v44 :: v_dual_max_f32 v44, v242, v242
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v242, v44, v45
	v_max_f32_e32 v44, v173, v173
	v_dual_max_f32 v44, v44, v45 :: v_dual_max_f32 v45, v243, v243
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v243, v45, v46
	v_max_f32_e32 v45, v172, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp194:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v74, v107, v243 :: v_dual_max_f32 v45, v45, v46
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v46, v244, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v244, v46, v47
	v_max_f32_e32 v46, v171, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp198:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v46, v46, v47 :: v_dual_max_f32 v47, v245, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp200:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v245, v47, v48
	v_max_f32_e32 v47, v170, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v245
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v47, v47, v48 :: v_dual_max_f32 v48, v246, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v246, v48, v65
	v_max_f32_e32 v48, v130, v130
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v101, v101, v246 :: v_dual_max_f32 v48, v48, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v247, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v247, v65, v67
	v_max_f32_e32 v65, v253, v253
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v99, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v65, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v112, v232
	v_sub_f32_e32 v100, v100, v238
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s27
.Ltmp201:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp202:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v106, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v106 :: v_dual_sub_f32 v68, v113, v240
.Ltmp204:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v67, 31
.Ltmp205:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v68, v68
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp206:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp209:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp210:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v67, 31
.Ltmp211:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v100
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp212:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp213:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v69, -1, -1 op_sel:[1,0]
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_f32_e32 v69, v69, v71
.Ltmp217:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v73
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v72, v109, v242
.Ltmp218:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v69, 31
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp219:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s33
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp221:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v98
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v105, v105, v244
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
.Ltmp222:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v67, 31
.Ltmp224:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v132
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp226:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s31
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp228:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s21
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v73, v71, -1, -1 op_sel:[1,0]
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v71, v71, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v71, 31
	v_permlanex16_b32 v71, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v69, v69, v71
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s9, v69, 31
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v71
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s10, v68, 31
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v70, v70, v71 :: v_dual_add_f32 v67, v67, v68
.Ltmp238:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s13, v67, 31
.Ltmp240:
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v132, v34 :: v_dual_mov_b32 v132, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s22
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp242:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v147
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp244:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v61, v61, v67, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v147, v35
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v147, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp246:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp249:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v62, v62, v67, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v152, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v72
	v_mov_b32_e32 v152, v36
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v236
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s25
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v104
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v157
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp251:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v63, v63, v67, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v157, v37
	v_mov_b32_e32 v157, v37
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp253:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v102, v102, v237
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp254:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp255:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp257:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v254
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v72, v71, -1, -1 op_sel:[1,0]
.Ltmp259:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v64, v64, v67, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v254, v38
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v254, v38 :: v_dual_add_f32 v71, v71, v72
.Ltmp261:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp263:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp264:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s12, v71, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp266:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v73, v73, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp268:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v252
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v73, 31
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp272:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v57, v57, v67, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v252, v39 :: v_dual_mov_b32 v252, v39
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v102, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp274:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp276:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v103
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v102, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v102, 31
.Ltmp279:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v251
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s23
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s14, v68, 31
.Ltmp281:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v58, v58, v67, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v251, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v251, v40
.Ltmp283:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp284:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp285:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v250
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v59, v59, v67, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v250, v41 :: v_dual_mov_b32 v250, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v249
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v67, s9
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v249, v42
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s11, v70, 31
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v249, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp289:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp291:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s15, v69, 31
.Ltmp293:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v248
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s24
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v53, v53, v67, s10
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v248, v43 :: v_dual_mov_b32 v248, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp295:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp297:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v173
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp299:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v54, v54, v67, s11
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v173, v44
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v173, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp301:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp303:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp304:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s16, v70, 31
.Ltmp305:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v172
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s26
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v55, v55, v67, s12
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v172, v45 :: v_dual_mov_b32 v172, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp307:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp309:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v171
.Ltmp310:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp311:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v56, v56, v67, s13
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v171, v46
.Ltmp312:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v72, v71, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v171, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp313:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp314:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp315:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s17, v71, 31
.Ltmp316:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v49, v49, v67, s14
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v170, v47 :: v_dual_mov_b32 v170, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v130
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v50, v50, v67, s15
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v130, v48 :: v_dual_mov_b32 v130, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v253
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v51, v51, v67, s16
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v253, v65
	v_mov_b32_e32 v253, v65
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v52, v52, v67, s17
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_lshrrev_b32_e32 v33, 5, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s52, s84, s88
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s4, v255, 14
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s20, s52, s74
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s11, v255, 21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s84, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s5, v255, 15
	v_readlane_b32 s6, v255, 16
	v_readlane_b32 s7, v255, 17
	v_readlane_b32 s8, v255, 18
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off
	scratch_load_b32 v34, off, off offset:60
	scratch_load_b64 v[41:42], off, off offset:108
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s9, v255, 19
	v_readlane_b32 s10, v255, 20
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v46, s20, v75
	v_add_nc_u32_e32 v47, s20, v76
	v_add_nc_u32_e32 v48, s20, v77
	.loc	1 819 31                        ; attention.py:819:31
	v_and_b32_e32 v65, 31, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v105, s11
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v35, off, off offset:64
	scratch_load_b64 v[42:43], off, off offset:116
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v102, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s84, v65
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[36:37], off, off offset:68
	scratch_load_b64 v[43:44], off, off offset:124
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v103, s9
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v37, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v100, s6
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[38:39], off, off offset:80 ; 8-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v101, s7
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[39:40], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v98, s4
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[44:45], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s20, v149
	scratch_load_b32 v40, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v99, s5 :: v_dual_mov_b32 v104, s10
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s84, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s20, v34
	v_add_nc_u32_e32 v41, s20, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v35, s20, v35
	v_add_nc_u32_e32 v42, s20, v42
	v_add_nc_u32_e32 v36, s20, v36
	v_add_nc_u32_e32 v43, s20, v43
	v_add_nc_u32_e32 v37, s20, v37
	v_add_nc_u32_e32 v38, s20, v38
	v_add_nc_u32_e32 v39, s20, v39
	v_add_nc_u32_e32 v44, s20, v44
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s20, v40
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s84, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s55, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s20, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s1
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s55, v65
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s21
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s99, s68, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s22
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s101, s3, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s23
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 2
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
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s90, s3, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s27
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 3
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s28
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s97, s69, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s29
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s83, s3, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s25
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 8
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
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s82, s3, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s33
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 4
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s34
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s94, s70, s1
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
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s102, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s93, s71, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v153, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v153, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v153, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v153, v41 offset:576
	ds_store_b8 v154, v35
	ds_store_b8 v154, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v154, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v154, v43 offset:576
	ds_store_b8 v155, v37
	ds_store_b8 v155, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v155, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v155, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v156, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v156, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v156, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v156, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v174
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 6
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v33 offset1:1
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s98, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 9
	s_and_b32 s95, s3, s1
	v_readlane_b32 s3, v255, 10
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[79:80], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[79:80], v[98:105] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v181 offset1:1
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s92, s3, s1
	v_readlane_b32 s3, v255, 11
	s_and_b32 s91, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v255, 13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 12
	s_and_b32 s89, s3, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[81:82], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v182 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[83:84], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v183 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[85:86], v[33:40] neg_lo:[1,1,0]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v67, off, off offset:132 ; 4-byte Folded Reload
	s_and_not1_b32 s35, s101, exec_lo
	s_and_not1_b32 s36, s99, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v65, v67
	scratch_load_b32 v67, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s20, vcc_lo, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s101, s35, s20
	s_and_not1_b32 s20, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v65, v67
	scratch_load_b32 v67, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s99, s36, s1
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v65, v67
	scratch_load_b32 v67, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s93, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v65, v67
	scratch_load_b32 v67, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s94, s20, s21
	s_and_not1_b32 s20, s90, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v65, v67
	scratch_load_b32 v67, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s22, exec_lo
	s_or_b32 s93, s1, s3
	s_and_not1_b32 s1, s83, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v65, v67
	scratch_load_b32 v67, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s23, exec_lo
	s_or_b32 s90, s20, s21
	s_and_not1_b32 s20, s82, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v65, v67
	scratch_load_b32 v67, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s24, exec_lo
	s_or_b32 s83, s1, s3
	s_and_not1_b32 s1, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v65, v67
	scratch_load_b32 v67, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s82
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s25, exec_lo
	s_or_b32 s82, s20, s21
	s_and_not1_b32 s20, s100, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v65, v67
	scratch_load_b32 v67, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s26, exec_lo
	s_or_b32 s102, s1, s3
	s_and_not1_b32 s1, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v65, v67
	scratch_load_b32 v67, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s27, exec_lo
	s_or_b32 s100, s20, s21
	s_and_not1_b32 s20, s96, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v65, v67
	scratch_load_b32 v67, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s28, exec_lo
	s_or_b32 s98, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v65, v67
	scratch_load_b32 v67, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s29, exec_lo
	s_or_b32 s96, s20, s21
	s_and_not1_b32 s20, s92, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v65, v67
	scratch_load_b32 v67, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s30, exec_lo
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v65, v67
	scratch_load_b32 v67, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s31, exec_lo
	s_or_b32 s92, s20, s21
	s_and_not1_b32 s20, s89, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v65, v67
	scratch_load_b32 v67, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s33, exec_lo
	s_or_b32 s91, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v65, v67
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s34, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s34, exec_lo
	s_or_b32 s89, s20, s21
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v98, 16, v124
	v_or_b32_e32 v67, s84, v124
	v_or_b32_e32 v68, 2, v124
	v_or_b32_e32 v69, 4, v124
	v_add_lshl_u32 v109, s52, v124, 1
	v_or_b32_e32 v106, s84, v98
	v_or_b32_e32 v98, 18, v124
	v_or_b32_e32 v68, s84, v68
	v_cmp_gt_i32_e32 vcc_lo, s55, v67
	v_or_b32_e32 v69, s84, v69
	v_or_b32_e32 v70, 6, v124
	v_or_b32_e32 v107, s84, v98
	v_or_b32_e32 v98, 20, v124
	v_cndmask_b32_e32 v67, 0x80000000, v109, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v68
	v_add_nc_u32_e32 v99, 8, v109
	v_or_b32_e32 v70, s84, v70
	v_or_b32_e32 v108, s84, v98
	v_or_b32_e32 v98, 22, v124
	v_or_b32_e32 v71, 8, v124
	v_or_b32_e32 v100, 30, v124
	v_or_b32_e32 v72, 10, v124
	v_add_nc_u32_e32 v115, 32, v109
	v_or_b32_e32 v110, s84, v98
	v_or_b32_e32 v98, 24, v124
	v_or_b32_e32 v71, s84, v71
	v_or_b32_e32 v114, s84, v100
	v_add_nc_u32_e32 v100, 20, v109
	v_or_b32_e32 v72, s84, v72
	v_or_b32_e32 v111, s84, v98
	v_or_b32_e32 v98, 26, v124
	v_or_b32_e32 v73, 12, v124
	v_or_b32_e32 v74, 14, v124
	v_add_nc_u32_e32 v102, 28, v109
	v_add_nc_u32_e32 v101, 24, v109
	v_or_b32_e32 v112, s84, v98
	v_or_b32_e32 v98, 28, v124
	v_or_b32_e32 v73, s84, v73
	v_or_b32_e32 v74, s84, v74
	v_add_nc_u32_e32 v116, 36, v109
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v113, s84, v98
	v_add_nc_u32_e32 v98, 4, v109
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v68, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v69
	v_cndmask_b32_e32 v69, 0x80000000, v99, vcc_lo
	v_add_nc_u32_e32 v99, 16, v109
	v_add_nc_u32_e32 v98, 12, v109
	v_cmp_gt_i32_e32 vcc_lo, s55, v70
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v70, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v71
	v_cndmask_b32_e32 v71, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v72
	v_cndmask_b32_e32 v72, 0x80000000, v100, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v73
	v_cndmask_b32_e32 v73, 0x80000000, v101, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v74
	v_cndmask_b32_e32 v74, 0x80000000, v102, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v106
	s_clause 0x7
	buffer_load_u16 v98, v67, s[76:79], 0 offen
	buffer_load_u16 v100, v68, s[76:79], 0 offen
	buffer_load_u16 v101, v69, s[76:79], 0 offen
	buffer_load_u16 v99, v70, s[76:79], 0 offen
	buffer_load_u16 v102, v71, s[76:79], 0 offen
	buffer_load_u16 v103, v72, s[76:79], 0 offen
	buffer_load_u16 v104, v73, s[76:79], 0 offen
	buffer_load_u16 v105, v74, s[76:79], 0 offen
	v_add_nc_u32_e32 v74, 60, v109
	v_add_nc_u32_e32 v117, 40, v109
	v_add_nc_u32_e32 v69, 44, v109
	v_cndmask_b32_e32 v67, 0x80000000, v115, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v107
	v_add_nc_u32_e32 v71, 48, v109
	v_add_nc_u32_e32 v72, 52, v109
	v_dual_cndmask_b32 v68, 0x80000000, v116 :: v_dual_add_nc_u32 v73, 56, v109
	v_cmp_gt_i32_e32 vcc_lo, s55, v108
	v_cndmask_b32_e32 v70, 0x80000000, v117, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v110
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v111
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v112
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v113
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v114
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	s_clause 0x7
	buffer_load_u16 v108, v67, s[76:79], 0 offen
	buffer_load_u16 v106, v68, s[76:79], 0 offen
	buffer_load_u16 v107, v70, s[76:79], 0 offen
	buffer_load_u16 v109, v69, s[76:79], 0 offen
	buffer_load_u16 v111, v71, s[76:79], 0 offen
	buffer_load_u16 v110, v72, s[76:79], 0 offen
	buffer_load_u16 v112, v73, s[76:79], 0 offen
	buffer_load_u16 v135, v74, s[76:79], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v67, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v65, v67
	scratch_load_b32 v67, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v65, v67
	scratch_load_b32 v67, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v65, v67
	scratch_load_b32 v67, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v65, v67
	scratch_load_b32 v67, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v65, v67
	scratch_load_b32 v67, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v65, v67
	scratch_load_b32 v67, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v65, v67
	scratch_load_b32 v67, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v65, v67
	scratch_load_b32 v67, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v65, v67
	scratch_load_b32 v67, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v65, v67
	scratch_load_b32 v67, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v65, v67
	scratch_load_b32 v67, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v65, v67
	scratch_load_b32 v67, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v65, v67
	scratch_load_b32 v67, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v65, v67
	scratch_load_b32 v67, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v65, v67
	scratch_load_b32 v67, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v65, v67
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v67, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v65, v67
	scratch_load_b32 v67, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s35
	s_and_not1_b32 s35, s101, exec_lo
	s_and_b32 s20, s20, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s101, s35, s20
	s_and_not1_b32 s20, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v65, v67
	scratch_load_b32 v67, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s36
	s_and_not1_b32 s36, s99, exec_lo
	s_and_b32 s1, s1, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s99, s36, s1
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v65, v67
	scratch_load_b32 v67, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s97
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s93, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v65, v67
	scratch_load_b32 v67, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s94
	s_and_b32 s21, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s20, s21
	s_and_not1_b32 s20, s90, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v65, v67
	scratch_load_b32 v67, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s93
	s_and_b32 s3, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s93, s1, s3
	s_and_not1_b32 s1, s83, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v65, v67
	scratch_load_b32 v67, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s90
	s_and_b32 s21, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s90, s20, s21
	s_and_not1_b32 s20, s82, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v65, v67
	scratch_load_b32 v67, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s83
	s_and_b32 s3, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s83, s1, s3
	s_and_not1_b32 s1, s102, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v65, v67
	scratch_load_b32 v67, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s82
	s_and_b32 s21, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s82, s20, s21
	s_and_not1_b32 s20, s100, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v65, v67
	scratch_load_b32 v67, off, off offset:296 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s44, v65, v67
	scratch_load_b32 v67, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s100
	s_and_b32 s21, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s100, s20, s21
	s_and_not1_b32 s20, s96, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v65, v67
	scratch_load_b32 v67, off, off offset:304 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s46, v65, v67
	scratch_load_b32 v67, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s96
	s_and_b32 s21, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s96, s20, s21
	s_and_not1_b32 s20, s92, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v65, v67
	scratch_load_b32 v67, off, off offset:312 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s48, v65, v67
	scratch_load_b32 v67, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s92
	s_and_b32 s21, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s92, s20, s21
	s_and_not1_b32 s20, s89, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v65, v67
	scratch_load_b32 v67, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s33, s91
	s_and_b32 s3, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s91, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v65, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s34, s51
	s_and_b32 s34, s34, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s34, exec_lo
	s_or_b32 s89, s20, s21
	s_branch .LBB0_9
.LBB0_14:
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
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off offset:336
	scratch_load_b32 v65, off, off offset:324
	scratch_load_b32 v39, off, off offset:328
	scratch_load_b32 v36, off, off offset:332
.LBB0_16:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v0, 64, v33
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v34, 28, v36
	v_lshl_add_u32 v33, v39, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b128 v33, v[61:64]
	ds_store_b128 v33, v[57:60] offset:16
	ds_store_b128 v33, v[53:56] offset:32
	ds_store_b128 v33, v[49:52] offset:48
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v0, v34, v39
	s_barrier
	v_or_b32_e32 v64, 6, v124
	v_or_b32_e32 v63, 8, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s73, s73, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v0, v0
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s54, v63
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v48, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	v_div_scale_f32 v43, null, v0, v0, v30
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_fma_f32 v55, -v35, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v56, -v37, v47, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v57, -v39, v48, 1.0
	v_fma_f32 v58, -v41, v49, 1.0
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_fmac_f32 v46, v55, v46
	v_mul_f32_e32 v55, v34, v45
	v_div_scale_f32 v40, s3, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_fmac_f32 v49, v58, v49
	v_mul_f32_e32 v57, v38, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v58, -v33, v55, v34
	v_mul_f32_e32 v56, v36, v46
	v_div_scale_f32 v42, s4, v29, v0, v29
	v_div_scale_f32 v44, null, v0, v0, v31
	v_fma_f32 v54, -v43, v52, 1.0
	v_mul_f32_e32 v59, v40, v48
	v_fma_f32 v61, -v37, v57, v38
	v_fmac_f32_e32 v55, v58, v45
	v_fma_f32 v60, -v35, v56, v36
	v_div_scale_f32 v51, null, v0, v0, v32
	v_rcp_f32_e32 v53, v44
	v_dual_fmac_f32 v52, v54, v52 :: v_dual_fmac_f32 v57, v61, v47
	v_mul_f32_e32 v54, v42, v49
	v_fma_f32 v62, -v39, v59, v40
	v_fmac_f32_e32 v56, v60, v46
	v_fma_f32 v33, -v33, v55, v34
	v_div_scale_f32 v50, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v62, v48
	v_fma_f32 v34, -v35, v56, v36
	v_fma_f32 v35, -v37, v57, v38
	v_rcp_f32_e32 v38, v51
	v_div_fmas_f32 v33, v33, v45, v55
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v59, v40
	v_div_fmas_f32 v34, v34, v46, v56
	v_fma_f32 v37, -v44, v53, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v35, v35, v47, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_fmas_f32 v33, v36, v48, v59
	v_fma_f32 v34, -v41, v54, v42
	v_dual_mul_f32 v36, v50, v52 :: v_dual_fmac_f32 v53, v37, v53
	v_fma_f32 v37, -v51, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v33, v0, v28
	v_div_fixup_f32 v27, v35, v0, v27
	v_fma_f32 v33, -v43, v36, v50
	v_div_scale_f32 v35, null, v0, v0, v17
	v_fmac_f32_e32 v38, v37, v38
	v_div_scale_f32 v37, s3, v32, v0, v32
	v_fmac_f32_e32 v54, v34, v49
	v_div_scale_f32 v34, s1, v31, v0, v31
	v_fmac_f32_e32 v36, v33, v52
	v_rcp_f32_e32 v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v54, v42
	v_mul_f32_e32 v33, v34, v53
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fma_f32 v41, -v43, v36, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v44, v33, v34
	v_div_scale_f32 v47, null, v0, v0, v20
	v_fma_f32 v45, -v35, v40, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v42, v53
	v_mul_f32_e32 v43, v37, v38
	v_div_fmas_f32 v39, v39, v49, v54
	s_mov_b32 vcc_lo, s5
	v_or_b32_e32 v62, 10, v124
	v_div_fmas_f32 v36, v41, v52, v36
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v51, v43, v37
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_div_fixup_f32 v29, v39, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v42, v38
	v_div_scale_f32 v42, null, v0, v0, v19
	v_div_fixup_f32 v30, v36, v0, v30
	v_fma_f32 v39, -v46, v41, 1.0
	v_fma_f32 v34, -v44, v33, v34
	v_mul_f32_e32 v36, v45, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v51, v43, v37
	v_fma_f32 v37, -v35, v36, v45
	s_mov_b32 vcc_lo, s3
	v_or_b32_e32 v61, 12, v124
	v_div_fixup_f32 v31, v33, v0, v31
	v_div_fmas_f32 v34, v34, v38, v43
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s54, v62
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v39, 1.0
	v_fmac_f32_e32 v36, v37, v40
	v_rcp_f32_e32 v37, v47
	v_div_fixup_f32 v32, v34, v0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s54, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v43, v39
	v_fma_f32 v33, -v35, v36, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	v_div_scale_f32 v35, s3, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v40, v36
	v_rcp_f32_e32 v36, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s1
	v_or_b32_e32 v59, 14, v124
	v_or_b32_e32 v57, 16, v124
	v_or_b32_e32 v60, 18, v124
	v_or_b32_e32 v58, 20, v124
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v45, v36, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s54, v59
	v_cmp_gt_i32_e64 s10, s54, v57
	v_cmp_gt_i32_e64 s11, s54, v60
	v_cmp_gt_i32_e64 s12, s54, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v49, v36
	v_mul_f32_e32 v38, v44, v41
	v_or_b32_e32 v56, 22, v124
	v_or_b32_e32 v55, 24, v124
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_or_b32_e32 v54, 26, v124
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v46, v38, v44
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s54, v56
	v_cmp_gt_i32_e64 s14, s54, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s15, s54, v54
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v35, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v41, v38
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v40, v37
	v_rcp_f32_e32 v48, v43
	v_div_scale_f32 v41, s1, v21, v0, v21
	v_div_fixup_f32 v18, v33, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v33, -v42, v34, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v35, v41, v36
	v_div_scale_f32 v42, null, v0, v0, v23
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v22, v0, v22
	v_div_fmas_f32 v33, v33, v39, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v44, v48
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v45, v35, v41
	v_rcp_f32_e32 v40, v42
	v_mul_f32_e32 v44, v38, v48
	v_div_fmas_f32 v34, v34, v37, v46
	v_rcp_f32_e32 v37, v47
	v_fmac_f32_e32 v35, v39, v36
	v_div_fixup_f32 v19, v33, v0, v19
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v34, v0, v20
	v_fma_f32 v33, -v45, v35, v41
	v_fma_f32 v46, -v42, v40, 1.0
	v_fmac_f32_e32 v44, v39, v48
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fma_f32 v39, -v47, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v45, null, v0, v0, v10
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v39, v37
	v_div_fmas_f32 v33, v33, v36, v35
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_mul_f32_e32 v36, v34, v40
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_fma_f32 v43, -v42, v36, v34
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v43, v42
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_div_fmas_f32 v34, v34, v40, v36
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v23, v34, v0, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v46, v35
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_mul_f32 v49, v40, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v47, -v38, v39, v33
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v36, v0, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v45, v49, v40
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v42, v44, v46
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_div_fixup_f32 v9, v33, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v0, v10
	v_mul_f32_e32 v33, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v0, v11
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	v_div_fmas_f32 v36, v36, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v38, null, v0, v0, v15
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v35
	v_rcp_f32_e32 v44, v38
	v_div_scale_f32 v43, null, v0, v0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v39, v37, v42
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v36, s1, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v35, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v34, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v51, v48, v37 :: v_dual_fmac_f32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v35, v35, v42, v39
	v_mul_f32_e32 v42, v33, v45
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v41
	v_rcp_f32_e32 v50, v46
	v_div_fixup_f32 v14, v35, v0, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v41, v47, 1.0
	v_dual_mul_f32 v40, v36, v44 :: v_dual_fmac_f32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v38, v40, v36
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fixup_f32 v15, v35, v0, v15
	v_fma_f32 v34, -v34, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_scale_f32 v44, null, v0, v0, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_fixup_f32 v1, v34, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v37, null, v0, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v35, v39, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v44, v46, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v37, v41, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v46, v50, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fma_f32 v47, -v40, v43, v38
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_fmac_f32 v36, v33, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fmac_f32_e32 v43, v47, v42
	v_div_scale_f32 v48, s4, v7, v0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v33, v36
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v38, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v34, v49, v33
	v_fma_f32 v40, -v35, v51, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s54, v124
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v47, v36
	v_fmac_f32_e32 v51, v40, v39
	v_div_fixup_f32 v4, v38, v0, v4
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 44, v124
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_mul_f32_e32 v52, v48, v41
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s54, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v47, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 48, v124
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	v_or_b32_e32 v50, 2, v124
	s_mov_b32 vcc_lo, s4
	v_or_b32_e32 v51, 4, v124
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v48, v65, s54
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s54, v50
	v_cmp_gt_i32_e64 s4, s54, v51
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s54, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v124, 2
	v_add_lshl_u32 v50, v48, v50, 2
	v_add_lshl_u32 v51, v48, v51, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	buffer_store_b32 v8, v49, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v64, 2
	s_clause 0x1
	buffer_store_b32 v25, v50, s[72:75], 0 offen
	buffer_store_b32 v26, v51, s[72:75], 0 offen
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
	buffer_store_b32 v27, v8, s[72:75], 0 offen
	buffer_store_b32 v28, v25, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v59, 2
	v_add_lshl_u32 v25, v48, v57, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[72:75], 0 offen
	buffer_store_b32 v30, v49, s[72:75], 0 offen
	v_add_lshl_u32 v26, v48, v60, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v48, v58, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	v_or_b32_e32 v53, 28, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v31, v8, s[72:75], 0 offen
	buffer_store_b32 v17, v25, s[72:75], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_add_lshl_u32 v8, v48, v56, 2
	v_add_lshl_u32 v17, v48, v55, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s54, v53
	v_or_b32_e32 v52, 30, v124
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[72:75], 0 offen
	buffer_store_b32 v19, v27, s[72:75], 0 offen
	v_add_lshl_u32 v18, v48, v54, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v32, 32, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v53, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 34, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s54, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 36, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s54, v32
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[72:75], 0 offen
	buffer_store_b32 v21, v17, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v52, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s54, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 38, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s54, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[72:75], 0 offen
	buffer_store_b32 v23, v19, s[72:75], 0 offen
	v_add_lshl_u32 v18, v48, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 40, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 42, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s54, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s54, v36
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[72:75], 0 offen
	buffer_store_b32 v9, v17, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s54, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 46, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[72:75], 0 offen
	buffer_store_b32 v11, v19, s[72:75], 0 offen
	v_add_lshl_u32 v10, v48, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 50, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s54, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 52, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s54, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[72:75], 0 offen
	buffer_store_b32 v13, v9, s[72:75], 0 offen
	v_add_lshl_u32 v8, v48, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s54, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v48, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s54, v42
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[72:75], 0 offen
	buffer_store_b32 v15, v11, s[72:75], 0 offen
	v_add_lshl_u32 v10, v48, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 54, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 56, v124
	v_or_b32_e32 v45, 58, v124
	v_or_b32_e32 v46, 60, v124
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v47, 62, v124
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s54, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s54, v44
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
	v_cmp_gt_i32_e64 s0, s54, v45
	v_cmp_gt_i32_e32 vcc_lo, s54, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[72:75], 0 offen
	buffer_store_b32 v3, v11, s[72:75], 0 offen
	v_add_lshl_u32 v2, v48, v44, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s54, v47
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
.Ltmp317:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 344
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 344
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23772
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 344
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
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
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
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
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
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
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
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
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
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
    .private_segment_fixed_size: 344
    .sgpr_count:     107
    .sgpr_spill_count: 23
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 85
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
