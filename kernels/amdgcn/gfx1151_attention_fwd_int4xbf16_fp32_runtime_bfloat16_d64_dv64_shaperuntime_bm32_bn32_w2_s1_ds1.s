	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[24:27], s[0:1], 0x80
	s_load_b128 s[76:79], s[0:1], 0x4c
	s_load_b32 s55, s[0:1], 0x60
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v33, 31, v0
	s_load_b64 s[36:37], s[0:1], 0x0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	v_or_b32_e32 v3, 2, v2
	v_or_b32_e32 v4, 4, v2
	v_or_b32_e32 v5, 6, v2
	v_or_b32_e32 v15, 18, v2
	v_or_b32_e32 v16, 20, v2
	v_or_b32_e32 v17, 22, v2
	v_or_b32_e32 v18, 24, v2
	v_or_b32_e32 v19, 26, v2
	v_or_b32_e32 v20, 28, v2
	v_or_b32_e32 v21, 30, v2
	v_or_b32_e32 v10, 8, v2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off
	scratch_store_b32 off, v4, off offset:4
	scratch_store_b32 off, v5, off offset:8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s24
	s_bitcmp1_b32 s24, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s55, v2, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s21, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s76
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[25:26], null, s55, 14, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[27:28], null, s55, 18, v[66:67]
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s78
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[28:29], null, s55, 20, v[66:67]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s22, v3
	v_or_b32_e32 v9, s22, v5
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v15, off offset:32
	scratch_store_b32 off, v16, off offset:36
	scratch_store_b32 off, v17, off offset:40
	scratch_store_b32 off, v18, off offset:44
	scratch_store_b32 off, v19, off offset:48
	scratch_store_b32 off, v20, off offset:52
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s22, v21
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v116, s55, 1, v66
	v_lshl_add_u32 v3, s55, 2, v66
	scratch_store_b32 off, v21, off offset:56 ; 4-byte Folded Spill
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v21, s55, 3, v66
	v_mov_b32_e32 v24, v25
	v_mad_u64_u32 v[29:30], null, s55, 22, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v11, 10, v2
	v_or_b32_e32 v12, 12, v2
	v_or_b32_e32 v13, 14, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v14, 16, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s22, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	scratch_store_b32 off, v21, off offset:64 ; 4-byte Folded Spill
	s_mul_hi_u32 s2, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[133:134], null, s55, 6, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[30:31], null, s55, 24, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s8, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[75:76], null, s55, 26, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s8, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	scratch_store_b32 off, v3, off offset:60 ; 4-byte Folded Spill
	s_cselect_b32 s33, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s77
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[134:135], null, s55, 10, v[66:67]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[76:77], null, s55, 28, v[66:67]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[135:136], null, s55, 12, v[66:67]
	v_mad_u64_u32 v[77:78], null, s55, 30, v[66:67]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s22, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v136, s55, 4, v66
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s19, s55, v33
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v10, off offset:12
	scratch_store_b32 off, v11, off offset:16
	scratch_store_b32 off, v12, off offset:20
	scratch_store_b32 off, v13, off offset:24
	scratch_store_b32 off, v14, off offset:28
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s22, v10
	v_or_b32_e32 v11, s22, v11
	v_or_b32_e32 v12, s22, v12
	v_or_b32_e32 v14, s22, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s78, v10
	v_cmp_gt_i32_e64 s11, s78, v11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s22, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s78, v12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s22, v16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s23, s78, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s22, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s28, s78, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s76, s77
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s2
	v_mov_b32_e32 v26, v27
	s_sub_i32 s4, s4, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 773 26                        ; attention.py:773:26
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[24:25], off offset:68
	scratch_store_b64 off, v[26:27], off offset:76
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s4, s9, s4
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s78, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s4, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s22
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s78, v7
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s5, s2, s55
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s78, v8
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s5, v66
	v_add_nc_u32_e32 v2, s5, v116
	v_add_nc_u32_e32 v26, s5, v27
	v_mov_b32_e32 v27, v28
	v_add_nc_u32_e32 v3, s5, v3
	v_add_nc_u32_e32 v4, s5, v133
	v_add_nc_u32_e32 v21, s5, v21
	v_add_nc_u32_e32 v22, s5, v134
	scratch_store_b64 off, v[27:28], off offset:84 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v27, s5, v28
	v_dual_mov_b32 v28, v29 :: v_dual_add_nc_u32 v23, s5, v135
	v_add_nc_u32_e32 v24, s5, v25
	v_add_nc_u32_e32 v25, s5, v136
	v_add_nc_u32_e32 v31, s5, v76
	scratch_store_b64 off, v[28:29], off offset:92 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v28, s5, v29
	v_dual_mov_b32 v29, v30 :: v_dual_add_nc_u32 v32, s5, v77
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s22, v13
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s78, v16
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[29:30], off offset:100 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v29, s5, v30
	v_add_nc_u32_e32 v30, s5, v75
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s78, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s22, v18
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s78, v17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s22, v19
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s78, v13
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s19
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v20, s22, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s78, v18
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s78, v19
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s78, v20
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s20, s78, v5
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x88, v0
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s19
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v33, v1, s[36:39], 0 offen
	buffer_load_u8 v34, v2, s[36:39], 0 offen
	buffer_load_u8 v3, v3, s[36:39], 0 offen
	buffer_load_u8 v4, v4, s[36:39], 0 offen
	buffer_load_u8 v21, v21, s[36:39], 0 offen
	buffer_load_u8 v22, v22, s[36:39], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s23, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v2, 0x80000000, v25 :: v_dual_add_nc_u32 v139, 0, v35
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s28, s19
	v_writelane_b32 v255, s5, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v23, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s19
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s19
	v_writelane_b32 v255, s7, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v26, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s19
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s4, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s19
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v27, v2, s[36:39], 0 offen
	buffer_load_u8 v23, v23, s[36:39], 0 offen
	buffer_load_u8 v25, v25, s[36:39], 0 offen
	buffer_load_u8 v26, v26, s[36:39], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s19
	v_writelane_b32 v255, s8, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v28, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s19
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s79, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v29, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s20, s19
	v_writelane_b32 v255, s9, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v30, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v31, v2, s[36:39], 0 offen
	buffer_load_u8 v28, v28, s[36:39], 0 offen
	buffer_load_u8 v32, v1, s[36:39], 0 offen
	buffer_load_u8 v24, v24, s[36:39], 0 offen
	buffer_load_u8 v29, v29, s[36:39], 0 offen
	buffer_load_u8 v30, v30, s[36:39], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x110, v0
	v_writelane_b32 v255, s10, 5
	v_xor_b32_e32 v37, 0x198, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v138, 0, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v39
	v_writelane_b32 v255, s11, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v140, 0, v36
	v_add_nc_u32_e32 v141, 0, v37
	s_mov_b32 s75, 0
	s_waitcnt vmcnt(15)
	ds_store_b8 v138, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v138, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v138, v27 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v138, v23 offset:576
	ds_store_b8 v139, v3
	ds_store_b8 v139, v4 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v139, v25 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v139, v26 offset:576
	ds_store_b8 v140, v21
	ds_store_b8 v140, v22 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v140, v31 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v140, v28 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v141, v32
	s_waitcnt vmcnt(2)
	ds_store_b8 v141, v24 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v141, v29 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v141, v30 offset:576
	v_writelane_b32 v255, s12, 7
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_writelane_b32 v255, s23, 8
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s23, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s23
	v_writelane_b32 v255, s28, 9
	v_rcp_iflag_f32_e32 v38, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 27
	v_writelane_b32 v255, s14, 10
	s_add_i32 s5, s6, s5
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s88, s5, 0xffffffe0
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s5, s24, 0x10008
	v_writelane_b32 v255, s13, 11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s5, v38
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s22, s26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s22, s25
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, s27
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s27
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s79, s6
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s7, s8, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s75, s7, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s88, s88, s6
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v3, 0, 1, s21
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v2, v2, v1
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s6, 1, v3
	.loc	1 0 0                           ; attention.py:0
	v_writelane_b32 v255, s6, 12
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s6, s22, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 32
	s_min_i32 s6, s79, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s7, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 27
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s6, s6, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s88, s88, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_or_b32_e32 v3, s22, v2
	v_lshlrev_b32_e32 v46, 6, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s75, s88
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v33, 6, v0
	s_mov_b32 s6, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow188
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x38
	s_load_b32 s54, s[0:1], 0x64
	v_and_b32_e32 v67, 16, v0
	v_lshlrev_b32_e32 v44, 1, v0
	v_add_nc_u32_e32 v65, s2, v2
	v_cmp_gt_i32_e64 s2, s78, v3
	s_and_not1_b32 vcc_lo, exec_lo, s6
	v_cmp_eq_u32_e64 s40, 0, v67
	s_cbranch_vccnz .LBB0_14
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[56:63], s[0:1], 0x8
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v21, 1, v65
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v45, s27, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:300
	scratch_store_b32 off, v67, off offset:304
	v_cndmask_b32_e64 v6, 0x80000000, v21, s2
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v47, s27, v7
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v65, s27, v9
	v_lshrrev_b32_e32 v9, 2, v67
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v159, 4, v67
	v_subrev_nc_u32_e32 v67, s25, v45
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v48, s27, v8
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_add_nc_u32 v82, s27, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v39, off offset:308
	scratch_store_b32 off, v67, off offset:172
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s61, 0xffff
	s_mov_b32 s36, s60
	v_subrev_nc_u32_e32 v67, s25, v47
	buffer_load_u16 v33, v6, s[36:39], 0 offen
	scratch_store_b32 off, v44, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v68, s27, v10
	scratch_store_b32 off, v67, off offset:176 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v48
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v69, s27, v11
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v70, s27, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:180
	scratch_store_b32 off, v46, off offset:316
	v_subrev_nc_u32_e32 v67, s25, v65
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v71, s27, v13
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v72, s27, v14
	scratch_store_b32 off, v67, off offset:184 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v68
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v73, s27, v15
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v74, s27, v16
	scratch_store_b32 off, v67, off offset:188 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v69
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v78, s27, v17
	v_dual_mov_b32 v14, 0x7632 :: v_dual_add_nc_u32 v79, s27, v18
	scratch_store_b32 off, v67, off offset:192 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v70
	v_dual_mov_b32 v13, 0x5410 :: v_dual_add_nc_u32 v80, s27, v19
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v81, s27, v20
	scratch_store_b32 off, v67, off offset:196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v71
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v6, 60, v44
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_lshlrev_b32 v10, 3, v0
	scratch_store_b32 off, v67, off offset:200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v72
	v_mov_b32_e32 v28, v17
	v_mov_b32_e32 v30, v17
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v3, 24, v44
	v_mov_b32_e32 v50, 0
	scratch_store_b32 off, v67, off offset:204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v73
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v4, 4, v39
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_bfe_i32 v12, v0, 3, 1
	scratch_store_b32 off, v67, off offset:208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v74
	v_lshrrev_b32_e32 v5, 4, v39
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v39, 48, v10
	v_xor_b32_e32 v44, v10, v44
	scratch_store_b32 off, v67, off offset:212 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v78
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v41, 0x210, v12
	v_mov_b32_e32 v24, v17
	v_mov_b32_e32 v12, v17
	scratch_store_b32 off, v67, off offset:216 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v79
	v_cndmask_b32_e64 v43, 0x3276, v14, s40
	v_mov_b32_e32 v14, v17
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v2, 5, v1
	scratch_store_b32 off, v67, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v80
	v_mov_b32_e32 v16, v17
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x7c
	s_load_b64 s[80:81], s[0:1], 0x30
	s_load_b128 s[28:31], s[0:1], 0x6c
	v_or3_b32 v36, v2, v4, v3
	v_or_b32_e32 v176, v2, v3
	scratch_store_b32 off, v67, off offset:224 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v81
	v_mov_b32_e32 v2, v17
	v_cndmask_b32_e64 v11, 0x104, 0, vcc_lo
	v_mov_b32_e32 v4, v17
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_and_b32 v8, 14, v0
	scratch_store_b32 off, v67, off offset:228 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v67, s25, v82
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:232
	scratch_store_b32 off, v45, off offset:108
	v_add_nc_u32_e32 v45, s26, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:236
	scratch_store_b32 off, v47, off offset:112
	v_add_nc_u32_e32 v45, s26, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:240
	scratch_store_b32 off, v48, off offset:116
	v_add_nc_u32_e32 v45, s26, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:244
	scratch_store_b32 off, v65, off offset:120
	v_add_nc_u32_e32 v45, s26, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:248
	scratch_store_b32 off, v68, off offset:124
	v_add_nc_u32_e32 v45, s26, v68
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:252
	scratch_store_b32 off, v69, off offset:128
	v_add_nc_u32_e32 v45, s26, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:256
	scratch_store_b32 off, v70, off offset:132
	v_add_nc_u32_e32 v45, s26, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:260
	scratch_store_b32 off, v71, off offset:136
	v_add_nc_u32_e32 v45, s26, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:264
	scratch_store_b32 off, v72, off offset:140
	v_add_nc_u32_e32 v45, s26, v72
	v_xor_b32_e32 v40, v11, v6
	v_mov_b32_e32 v6, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:268
	scratch_store_b32 off, v73, off offset:144
	v_add_nc_u32_e32 v45, s26, v73
	v_mul_u32_u24_e32 v38, 0x44, v8
	v_mov_b32_e32 v8, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:272
	scratch_store_b32 off, v74, off offset:148
	v_add_nc_u32_e32 v45, s26, v74
	v_mov_b16_e32 v35.l, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:276
	scratch_store_b32 off, v78, off offset:152
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s10, s28, 0x3fb8aa3b
	v_add_nc_u32_e32 v45, s26, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:280
	scratch_store_b32 off, v79, off offset:156
	v_add_nc_u32_e32 v45, s26, v79
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_lshlrev_b32 v7, 2, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v89, 31, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:284
	scratch_store_b32 off, v80, off offset:160
	v_add_nc_u32_e32 v45, s26, v80
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_and_b32 v34, 1, v0
	v_lshl_or_b32 v177, v1, 8, v7
	v_lshl_or_b32 v178, v89, 2, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:288
	scratch_store_b32 off, v81, off offset:164
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v45, s26, v81
	v_lshl_or_b32 v37, v34, 1, v9
	v_lshrrev_b32_e32 v88, 5, v0
	v_mov_b32_e32 v19, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v45, off offset:292
	scratch_store_b32 off, v82, off offset:168
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_add_nc_u32 v45, s26, v82
	v_lshl_or_b32 v212, v34, 6, v40
	v_add_nc_u32_e32 v34, 0, v36
	v_xor_b32_e32 v78, 52, v177
	v_xor_b32_e32 v79, 56, v177
	v_xor_b32_e32 v80, 60, v177
	v_xor_b32_e32 v81, 0x88, v178
	v_xor_b32_e32 v82, 0x110, v178
	v_xor_b32_e32 v83, 0x198, v178
	v_xor_b32_e32 v84, 0x220, v178
	v_xor_b32_e32 v85, 0x2a8, v178
	v_or3_b32 v211, v37, v38, v88
	v_xad_u32 v38, v36, 8, 0
	v_and_or_b32 v37, 0x1c0, v46, v39
	v_xad_u32 v39, v36, 16, 0
	v_xad_u32 v36, v36, 24, 0
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v232, 0, v78
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v234, 0, v80
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v236, 0, v81
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v238, 0, v83
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v240, 0, v85
	v_add_nc_u32_e32 v233, 0, v79
	v_add_nc_u32_e32 v237, 0, v82
	v_add_nc_u32_e32 v239, 0, v84
	ds_load_b64 v[78:79], v34
	ds_load_b64 v[80:81], v38
	ds_load_b64 v[82:83], v39
	ds_load_b64 v[84:85], v36
	v_mul_lo_u32 v34, s31, v88
	s_xor_b32 s35, s3, s76
	s_mul_f32 s34, s5, 0x4f7ffffe
	v_xor_b32_e32 v86, 0x330, v178
	v_xor_b32_e32 v87, 0x3b8, v178
	s_ashr_i32 s1, s4, 31
	s_ashr_i32 s4, s35, 31
	s_cvt_u32_f32 s6, s34
	s_xor_b32 s5, s33, s4
	v_add_nc_u32_e32 v241, 0, v86
	v_add_nc_u32_e32 v242, 0, v87
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[86:87], null, s12, v89, v[34:35]
	s_sub_i32 s24, 0, s23
	s_sub_i32 s4, s5, s4
	s_mul_i32 s24, s24, s6
	s_mul_i32 s5, s4, s76
	v_cndmask_b32_e64 v42, 0x1054, v13, s40
	s_sub_i32 s3, s3, s5
	s_mul_hi_u32 s5, s6, s24
	s_abs_i32 s8, s3
	s_add_i32 s6, s6, s5
	v_mad_u64_u32 v[87:88], null, s31, 6, v[86:87]
	s_ashr_i32 s5, s3, 31
	s_mul_hi_u32 s6, s8, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s5, s1
	s_mul_i32 s5, s6, s23
	v_lshl_or_b32 v40, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	v_xor_b32_e32 v43, 8, v176
	s_sub_i32 s5, s8, s5
	s_add_i32 s8, s6, 1
	s_sub_i32 s9, s5, s23
	s_cmp_ge_u32 s5, s23
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[88:89], null, s31, 10, v[86:87]
	v_mad_u64_u32 v[89:90], null, s31, 12, v[86:87]
	v_mov_b32_e32 v21, v17
	v_dual_mov_b32 v23, v17 :: v_dual_add_nc_u32 v216, 0, v43
	scratch_store_b32 off, v45, off offset:296 ; 4-byte Folded Spill
	v_and_or_b32 v213, v44, 48, v46
	v_xor_b32_e32 v44, 16, v176
	v_xor_b32_e32 v45, 24, v176
	v_xor_b32_e32 v46, 4, v177
	v_xor_b32_e32 v47, 8, v177
	v_xor_b32_e32 v48, 12, v177
	v_xor_b32_e32 v65, 16, v177
	v_xor_b32_e32 v67, 20, v177
	v_xor_b32_e32 v68, 24, v177
	v_xor_b32_e32 v69, 28, v177
	v_xor_b32_e32 v70, 32, v177
	v_xor_b32_e32 v71, 36, v177
	v_xor_b32_e32 v72, 40, v177
	v_xor_b32_e32 v73, 44, v177
	v_xor_b32_e32 v74, 48, v177
	v_xor_b32_e32 v215, v37, v41
	v_and_b32_e32 v37, 0x540054, v40
	v_and_b32_e32 v40, 0x760076, v42
	v_xor_b32_e32 v41, 8, v211
	v_xor_b32_e32 v42, 16, v211
	v_xor_b32_e32 v43, 24, v211
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s6, s8, s6
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s31, 14, v[86:87]
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s9, s5
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[91:92], null, s31, 18, v[86:87]
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s6, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[92:93], null, s31, 20, v[86:87]
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s5, s23
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[93:94], null, s31, 22, v[86:87]
	v_mad_u64_u32 v[94:95], null, s31, 24, v[86:87]
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v218, 0, v45
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v220, 0, v47
	v_dual_mov_b32 v29, v17 :: v_dual_add_nc_u32 v222, 0, v48
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v224, 0, v67
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v226, 0, v69
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v228, 0, v71
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v230, 0, v73
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s7, s4, s77
	v_add_nc_u32_e32 v217, 0, v44
	v_add_nc_u32_e32 v219, 0, v46
	v_add_nc_u32_e32 v223, 0, v65
	v_add_nc_u32_e32 v225, 0, v68
	v_add_nc_u32_e32 v227, 0, v70
	v_add_nc_u32_e32 v229, 0, v72
	v_add_nc_u32_e32 v231, 0, v74
	v_xor_b32_e32 v44, 32, v211
	v_xor_b32_e32 v45, 40, v211
	v_xor_b32_e32 v46, 48, v211
	v_xor_b32_e32 v47, 56, v211
	v_xor_b32_e32 v48, 16, v213
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v33.l
	v_xor_b32_e32 v65, 32, v213
	v_xor_b32_e32 v67, 48, v213
	v_xor_b32_e32 v68, 0x208, v212
	v_xor_b32_e32 v69, 0x410, v212
	v_xor_b32_e32 v70, 0x618, v212
	v_xor_b32_e32 v71, 0x820, v212
	v_xor_b32_e32 v72, 0xa28, v212
	v_xor_b32_e32 v73, 0xc30, v212
	v_xor_b32_e32 v74, 0xe38, v212
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s11, s31, s22
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s4, s4, s29
	v_lshl_or_b32 v36, v37, 4, v37
	v_lshl_or_b32 v37, v40, 4, v40
	v_add_nc_u32_e32 v247, 0, v41
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v248, 0, v42
	v_add_nc_u32_e32 v249, 0, v43
	v_xor_b32_e32 v38, 16, v215
	v_xor_b32_e32 v39, 32, v215
	v_xor_b32_e32 v40, 48, v215
	v_xor_b32_e32 v41, 0x420, v215
	v_xor_b32_e32 v42, 0x430, v215
	v_xor_b32_e32 v43, 0x410, v215
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s8, s6
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v182, s10, v35
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[95:96], null, s31, 26, v[86:87]
	v_mad_u64_u32 v[96:97], null, s31, 28, v[86:87]
	s_add_i32 s76, s4, s11
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s4, s5, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[97:98], null, s31, 30, v[86:87]
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s54, v0
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_mov_b32 v165, 0xff800000
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_mov_b32 v169, 0xff800000
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_mov_b32 v171, 0xff800000
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_mov_b32 v173, 0xff800000
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_mov_b32 v175, 0xff800000
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_mov_b32 v189, 0xff800000
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_mov_b32 v179, 0xff800000
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_mov_b32 v122, 0xff800000
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_mov_b32 v246, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v244, 0xff800000
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_mov_b32 v214, 0xff800000
	v_dual_mov_b32 v235, 0xff800000 :: v_dual_mov_b32 v18, v17
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_mov_b32 v20, v17
	v_add_nc_u32_e32 v250, 0, v44
	v_add_nc_u32_e32 v251, 0, v45
	v_add_nc_u32_e32 v252, 0, v46
	v_add_nc_u32_e32 v253, 0, v47
	v_add_nc_u32_e32 v254, 0, v48
	v_add_nc_u32_e32 v114, 0, v65
	v_add_nc_u32_e32 v142, 0, v67
	v_add_nc_u32_e32 v137, 0, v68
	v_add_nc_u32_e32 v115, 0, v69
	v_add_nc_u32_e32 v132, 0, v70
	v_add_nc_u32_e32 v118, 0, v71
	v_add_nc_u32_e32 v119, 0, v72
	v_add_nc_u32_e32 v120, 0, v73
	v_add_nc_u32_e32 v121, 0, v74
	v_and_b32_e32 v123, 0x5040504, v36
	v_and_b32_e32 v124, 0x7060706, v37
	v_add_nc_u32_e32 v125, 0, v38
	v_add_nc_u32_e32 v126, 0, v39
	v_add_nc_u32_e32 v127, 0, v40
	v_add_nc_u32_e32 v128, 0, v41
	v_add_nc_u32_e32 v129, 0, v42
	v_add_nc_u32_e32 v130, 0, v43
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v180, s31, 1, v86
	v_lshl_add_u32 v181, s31, 2, v86
	v_lshl_add_u32 v183, s31, 3, v86
	v_lshl_add_u32 v185, s31, 4, v86
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v186, v182
	v_mov_b32_e32 v187, v182
	v_mov_b32_e32 v188, v182
	v_mov_b16_e64 v194.l, 0
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	s_mov_b32 s64, 0
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s30
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s77, s1, s7
	s_mov_b32 s89, 0x76543210
	s_mov_b32 s65, s64
	s_mov_b32 s66, s64
	s_mov_b32 s67, s64
	s_mov_b32 s68, s64
	s_mov_b32 s69, s64
	s_mov_b32 s70, s64
	s_mov_b32 s71, s64
	s_mov_b32 s84, s62
	s_mov_b32 s60, s58
	s_mov_b32 s58, s86
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s85, s63, 0xffff
	s_mov_b32 s14, s12
	s_and_b32 s81, s81, 0xffff
	s_and_b32 s61, s59, 0xffff
	s_mov_b32 s59, s87
	s_add_i32 s76, s76, s3
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s77, s77, s79
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	s_mul_i32 s1, s75, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v206, v34
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s76, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v205, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s1, v86, 2
	v_add_lshl_u32 v35, s1, v180, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v204, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, s1, v181, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v203, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s1, v87, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v144, v42
	v_cvt_f32_i32_e32 v202, v33
	v_cvt_f32_i32_e32 v201, v38
	v_cvt_f32_i32_e32 v200, v39
	v_cvt_f32_i32_e32 v33, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v38, s1, v183, 2
	v_add_lshl_u32 v39, s1, v88, 2
	v_add_lshl_u32 v40, s1, v89, 2
	v_add_lshl_u32 v42, s1, v90, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s101
	v_cndmask_b32_e64 v35, 0x80000000, v35, s100
	v_cndmask_b32_e64 v36, 0x80000000, v36, s96
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	v_cndmask_b32_e64 v37, 0x80000000, v37, s93
	v_cndmask_b32_e64 v38, 0x80000000, v38, s92
	v_cndmask_b32_e64 v39, 0x80000000, v39, s90
	v_cndmask_b32_e64 v40, 0x80000000, v40, s63
	v_cndmask_b32_e64 v42, 0x80000000, v42, s62
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v208, v47
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_b32 v34, v34, s[80:83], 0 offen
	buffer_load_b32 v35, v35, s[80:83], 0 offen
	buffer_load_b32 v36, v36, s[80:83], 0 offen
	buffer_load_b32 v37, v37, s[80:83], 0 offen
	buffer_load_b32 v38, v38, s[80:83], 0 offen
	buffer_load_b32 v39, v39, s[80:83], 0 offen
	buffer_load_b32 v40, v40, s[80:83], 0 offen
	buffer_load_b32 v47, v42, s[80:83], 0 offen
	v_add_lshl_u32 v42, s1, v185, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v143, v43
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v43, s1, v91, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v41, v44
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v44, s1, v92, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v210, v45
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v45, s1, v93, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v209, v46
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v46, s1, v94, 2
	v_add_lshl_u32 v68, s1, v96, 2
	v_add_lshl_u32 v69, s1, v97, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v207, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s103
	v_add_lshl_u32 v48, s1, v95, 2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s102
	v_cndmask_b32_e64 v44, 0x80000000, v44, s99
	v_cndmask_b32_e64 v45, 0x80000000, v45, s98
	v_cndmask_b32_e64 v46, 0x80000000, v46, s97
	v_cndmask_b32_e64 v68, 0x80000000, v68, s94
	v_cndmask_b32_e64 v69, 0x80000000, v69, s91
	v_cndmask_b32_e64 v48, 0x80000000, v48, s95
	s_clause 0x7
	buffer_load_b32 v70, v42, s[80:83], 0 offen
	buffer_load_b32 v71, v43, s[80:83], 0 offen
	buffer_load_b32 v72, v44, s[80:83], 0 offen
	buffer_load_b32 v73, v45, s[80:83], 0 offen
	buffer_load_b32 v74, v46, s[80:83], 0 offen
	buffer_load_b32 v102, v48, s[80:83], 0 offen
	buffer_load_b32 v68, v68, s[80:83], 0 offen
	buffer_load_b32 v69, v69, s[80:83], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v149.h, v98.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v67, v182, v67 :: v_dual_add_nc_u32 v98, 0, v212
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v149.l, v194.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v65.h, v65.l
	v_mov_b16_e64 v65.l, v194.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v188, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v194.h, v99.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s8, s75, 1
	s_or_b32 s10, s75, 2
	s_or_b32 s83, s75, 3
	s_or_b32 s104, s75, 7
	s_or_b32 s6, s75, 8
	s_or_b32 s12, s75, 9
	s_or_b32 s9, s75, 12
	s_or_b32 s7, s75, 14
	s_or_b32 s5, s75, 16
	s_or_b32 s4, s75, 18
	s_or_b32 s53, s75, 20
	s_or_b32 s78, s75, 22
	s_or_b32 s21, s75, 24
	s_or_b32 s74, s75, 26
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v145, 0xff800000, v34, s101
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v146, 0xff800000, v35, s100
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v35, 0, v177
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v42, 0xff800000, v36, s96
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v43, 0xff800000, v37, s93
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v44, 0xff800000, v38, s92
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v45, 0xff800000, v39, s90
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v46, 0xff800000, v40, s63
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v47, 0xff800000, v47, s62
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v145
	v_cmp_neq_f32_e64 s22, 0xff800000, v146
	v_cmp_neq_f32_e64 s25, 0xff800000, v44
	v_cmp_neq_f32_e64 s31, 0xff800000, v46
	v_cmp_neq_f32_e64 s30, 0xff800000, v45
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s23, s101, s3
	s_and_b32 s22, s100, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v42
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s92, s25
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v47
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s63, s31
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s101, s75, 23
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s36, s96, s3
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s96, s75, 19
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v148, 0xff800000, v70, s103
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v147, 0xff800000, v71, s102
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v48, 0xff800000, v72, s99
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v100, 0xff800000, v73, s98
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v101, 0xff800000, v74, s97
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v102, 0xff800000, v102, s95
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v103, 0xff800000, v68, s94
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v104, 0xff800000, v69, s91
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v98, v145, v148 offset1:32
	ds_store_2addr_b32 v137, v146, v147 offset1:32
	ds_store_2addr_b32 v115, v42, v48 offset1:32
	ds_store_2addr_b32 v132, v43, v100 offset1:32
	ds_store_2addr_b32 v118, v44, v101 offset1:32
	ds_store_2addr_b32 v119, v45, v102 offset1:32
	ds_store_2addr_b32 v120, v46, v103 offset1:32
	ds_store_2addr_b32 v121, v47, v104 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v34, v35
	ds_load_b32 v36, v219
	ds_load_b32 v37, v220
	ds_load_b32 v39, v224
	ds_load_b32 v40, v225
	ds_load_b32 v68, v226
	ds_load_b32 v193, v222
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v186, v144
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v148
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_add_nc_u32_e32 v46, 0, v211
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v147
	v_cmp_neq_f32_e64 s26, 0xff800000, v48
	v_cmp_neq_f32_e64 s27, 0xff800000, v100
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s103, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v101
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 vcc_lo, s102, s24
	s_and_b32 s29, s99, s26
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v43
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v42, 0, 1, s29
	s_and_b32 s28, s98, s27
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v38, 0x3fb8aa3b, v34
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v34, 0x3fb8aa3b, v36
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v43, 0, 1, s36
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v40
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v67, v149
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v67.l, v194.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v37
	ds_load_b32 v37, v223
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v67.h, v199.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s93, s24
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v102
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s27, s97, s33
	v_cndmask_b32_e64 v44, 0, 1, s34
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v34, v69, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v67.h, v197.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v187, v143
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s26, s95, s38
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v103
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s33, s90, s30
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s40, 0xff800000, v104
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v36, v69, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v67.h, v196.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v182, v210
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s94, s39
	s_and_b32 s24, s91, s40
	v_cndmask_b32_e64 v45, 0, 1, s31
	s_and_b32 s30, s62, s37
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v37, 0x3fb8aa3b, v37
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s90, s75, 4
	s_or_b32 s91, s75, 5
	s_or_b32 s103, s75, 6
	s_or_b32 s102, s75, 10
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v69, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v113.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v186, v209
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s93, s75, 11
	s_or_b32 s95, s75, 13
	s_or_b32 s99, s75, 15
	s_or_b32 s94, s75, 17
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v39, v69, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v106.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v187, v208
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s98, s75, 21
	s_or_b32 s92, s75, 25
	s_or_b32 s100, s75, 27
	s_or_b32 s97, s75, 28
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v40, v69, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v105.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v188, v207
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v105, 0x3fb8aa3b, v68 :: v_dual_mul_f32 v68, v182, v206
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s63, s75, 29
	s_or_b32 s62, s75, 30
	s_or_b32 s3, s75, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v105, v69, v67
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b32 v69, v228
	ds_load_b32 v70, v229
	ds_load_b32 v71, v230
	ds_load_b32 v72, v231
	ds_load_b32 v73, v232
	ds_load_b32 v74, v233
	ds_load_b32 v113, v234
	ds_load_b32 v143, v227
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v67.h, v198.l
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s75, s79
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v147, 0, v213
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s8, s79
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s10, s79
	s_cselect_b32 s11, -1, 0
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v106, 0x3fb8aa3b, v69
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s83, s79
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s90, s79
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v106, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v107.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v68, v186, v205 :: v_dual_mul_f32 v107, 0x3fb8aa3b, v70
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v113, 0x3fb8aa3b, v113
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s91, s79
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v107, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v108.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v187, v204
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v108, 0x3fb8aa3b, v71 :: v_dual_fmac_f32 v113, v33, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s1
	v_cndmask_b32_e64 v65, 0, 1, s23
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s90, -1, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v108, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v188, v203
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v110, 0x3fb8aa3b, v72
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s103, s79
	s_cselect_b32 s10, -1, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v110, v68, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v68, v182, v202 :: v_dual_mul_f32 v109, 0x3fb8aa3b, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.h, v65.l, v33.l
	v_cndmask_b32_e64 v65, 0, 1, vcc_lo
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s104, s79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v109, v68, v67 :: v_dual_mul_f32 v68, v186, v201
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v111.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v111, 0x3fb8aa3b, v73
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v33.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s22
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s6, s79
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v111, v68, v67 :: v_dual_mul_f32 v68, v187, v200
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v112.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v112, 0x3fb8aa3b, v74
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s12, s79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v112, v68, v67
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.l, v65.l, v33.l
	v_add_nc_u32_e32 v65, 0, v178
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[67:68], null, s52, s54, v[0:1]
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s102, s79
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16_d16_hi v65, v33
	v_lshlrev_b16 v33.h, 8, v42.l
	v_cndmask_b32_e64 v42, 0, 1, s28
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s12, -1, 0
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v99, s54, v67
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s93, s79
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v33.h, v43.l, v33.h
	v_cndmask_b32_e64 v43, 0, 1, s35
	v_lshlrev_b16 v42.l, 8, v42.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s9, s79
	s_cselect_b32 s9, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v42.l, v43.l, v42.l
	v_cndmask_b32_e64 v43, 0, 1, s27
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s95, s79
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s7, s79
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v42.h, 8, v43.l
	v_cndmask_b32_e64 v43, 0, 1, s26
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s99, s79
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v42.h, v44.l, v42.h
	v_cndmask_b32_e64 v44, 0, 1, s33
	v_lshlrev_b16 v43.l, 8, v43.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s5, s79
	s_cselect_b32 s5, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v43.l, v44.l, v43.l
	v_cndmask_b32_e64 v44, 0, 1, s25
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s94, s79
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s4, s79
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v43.h, 8, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s24
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s96, s79
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v43.h, v45.l, v43.h
	v_cndmask_b32_e64 v45, 0, 1, s30
	v_lshlrev_b16 v44.l, 8, v44.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s53, s79
	s_cselect_b32 s53, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v44.l, v45.l, v44.l
	ds_store_b16 v236, v33
	ds_store_b16_d16_hi v237, v33
	ds_store_b16 v238, v42
	ds_store_b16_d16_hi v239, v42
	ds_store_b16 v240, v43
	ds_store_b16_d16_hi v241, v43
	ds_store_b16 v242, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v249
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v249 offset:64
	ds_load_u8_d16 v42, v248 offset:64
	ds_load_u8_d16 v43, v46 offset:64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v188, v41
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v41, 0x3fb8aa3b, v193
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s98, s79
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s78, s79
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v41, v45, v194
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s101, s79
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s21, s79
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s92, s79
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b16 v33.l, 1, v33.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s74, s79
	s_cselect_b32 s74, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s46, 1, v33.l
	ds_load_u8_d16 v33, v248
	s_waitcnt lgkmcnt(2)
	ds_load_u8_d16_hi v42, v247 offset:64
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s100, s79
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s97, s79
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s63, s79
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s63, s87
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s62, s79
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s62, s86
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s3, s79
	s_cselect_b32 s101, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s13
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s75, s75, 32
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v33.l
	ds_load_u8_d16 v33, v247
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, 0xff800000, v36, s45
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s51, 1, v33.l
	ds_load_u8_d16 v33, v253
	ds_load_u8_d16_hi v43, v253 offset:64
	ds_load_u8_d16 v44, v252 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v34, s51
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s48, 1, v33.l
	ds_load_u8_d16 v33, v252
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v44, v251 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v206, 0xff800000, v105, s48
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v33.l
	ds_load_u8_d16 v33, v251
	ds_load_u8_d16 v45, v250 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v205, 0xff800000, v40, s47
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s50, 1, v33.l
	ds_load_u8_d16 v33, v250
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v208, 0xff800000, v39, s50
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s49, 1, v33.l
	v_and_b16 v33.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v207, 0xff800000, v37, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v198, 0xff800000, v110, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v33.l
	v_and_b16 v33.l, 1, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v201, 0xff800000, v108, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v33.l
	v_and_b16 v33.l, 1, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v200, 0xff800000, v107, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v33.l
	v_and_b16 v33.l, 1, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v203, 0xff800000, v106, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	v_and_b16 v33.l, 1, v44.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v197, 0xff800000, v113, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v33.l
	v_and_b16 v33.l, 1, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v196, 0xff800000, v112, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v43.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v199, 0xff800000, v111, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v33.l
	ds_load_u8_d16 v33, v46
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v202, 0xff800000, v109, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s52, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v204, 0xff800000, v38, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v143, 1, v67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v35, v204
	v_add_nc_u32_e32 v35, s54, v99
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v143, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s11
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v219, v65
	ds_store_b32 v220, v209
	v_add_nc_u32_e32 v100, s54, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v34, 1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v36, s54, v100
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v210, 0xff800000, v41, s46
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v102, s54, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v35, 1, v36
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v222, v210
	ds_store_b32 v223, v207
	ds_store_b32 v224, v208
	v_add_nc_u32_e32 v37, s54, v102
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v69, 1, v102
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v225, v205
	v_add_nc_u32_e32 v67, s54, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v36, 1, v37
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v226, v206
	ds_store_b32 v227, v202
	ds_store_b32 v228, v203
	v_add_nc_u32_e32 v37, s54, v67
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v229, v200
	v_add_nc_u32_e32 v101, s54, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v38, 1, v37
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v230, v201
	ds_store_b32 v231, v198
	ds_store_b32 v232, v199
	v_add_nc_u32_e32 v39, s54, v101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v38, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s12
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v233, v196
	ds_store_b32 v234, v197
	v_add_nc_u32_e32 v103, s54, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v38, 1, v39
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v35, v35, s[60:63], 0 offen
	buffer_load_u16 v36, v36, s[60:63], 0 offen
	v_add_nc_u32_e32 v40, s54, v103
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s9
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v33, v33, s[60:63], 0 offen
	buffer_load_u16 v34, v34, s[60:63], 0 offen
	buffer_load_u16 v37, v37, s[60:63], 0 offen
	buffer_load_u16 v38, v38, s[60:63], 0 offen
	v_add_nc_u32_e32 v104, s54, v40
	v_lshlrev_b32_e32 v39, 1, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v41, s54, v104
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v70, 1, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v105, s54, v41
	v_lshlrev_b32_e32 v40, 1, v41
	buffer_load_u16 v39, v39, s[60:63], 0 offen
	v_add_nc_u32_e32 v41, s54, v105
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v71, 1, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v106, s54, v41
	v_lshlrev_b32_e32 v42, 1, v41
	buffer_load_u16 v40, v40, s[60:63], 0 offen
	v_add_nc_u32_e32 v43, s54, v106
	v_cndmask_b32_e64 v41, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v72, 1, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v107, s54, v43
	v_lshlrev_b32_e32 v42, 1, v43
	v_add_nc_u32_e32 v44, s54, v107
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s53
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v73, 1, v107
	s_clause 0x1
	buffer_load_u16 v41, v41, s[60:63], 0 offen
	buffer_load_u16 v42, v42, s[60:63], 0 offen
	v_add_nc_u32_e32 v108, s54, v44
	v_lshlrev_b32_e32 v43, 1, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v45, s54, v108
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s78
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v74, 1, v108
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v109, s54, v45
	v_lshlrev_b32_e32 v44, 1, v45
	buffer_load_u16 v43, v43, s[60:63], 0 offen
	v_add_nc_u32_e32 v45, s54, v109
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s21
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v110, s54, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v45
	buffer_load_u16 v44, v44, s[60:63], 0 offen
	v_add_nc_u32_e32 v47, s54, v110
	v_cndmask_b32_e64 v45, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v111, s54, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v47
	v_add_nc_u32_e32 v48, s54, v111
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v45, v45, s[60:63], 0 offen
	buffer_load_u16 v46, v46, s[60:63], 0 offen
	v_add_nc_u32_e32 v112, s54, v48
	v_lshlrev_b32_e32 v47, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v68, s54, v112
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v102, 1, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v48, 1, v68
	buffer_load_u16 v47, v47, s[60:63], 0 offen
	v_add_lshl_u32 v68, v68, s54, 1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v48, v48, s[60:63], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s83
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v67, v67, s[60:63], 0 offen
	buffer_load_u16 v69, v69, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v67.l
	v_lshlrev_b32_e32 v67, 1, v100
	v_lshlrev_b32_e32 v100, 1, v110
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v69.l
	v_lshlrev_b32_e32 v69, 1, v99
	v_lshlrev_b32_e32 v99, 1, v109
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s82
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s99
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v67, v67, s[60:63], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s95
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v69, v69, s[60:63], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s93
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v34.h, v67.l
	v_lshlrev_b32_e32 v67, 1, v101
	v_lshlrev_b32_e32 v101, 1, v111
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v69.l
	v_lshlrev_b32_e32 v69, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	s_clause 0x3
	buffer_load_u16 v71, v71, s[60:63], 0 offen
	buffer_load_u16 v70, v70, s[60:63], 0 offen
	buffer_load_u16 v69, v69, s[60:63], 0 offen
	buffer_load_u16 v67, v67, s[60:63], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v99, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v74, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	s_clause 0x3
	buffer_load_u16 v143, v99, s[60:63], 0 offen
	buffer_load_u16 v74, v74, s[60:63], 0 offen
	buffer_load_u16 v73, v73, s[60:63], 0 offen
	buffer_load_u16 v72, v72, s[60:63], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v101, 0x80000000, v101, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s97
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v102, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s75, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v100, s3
	s_clause 0x3
	buffer_load_u16 v68, v68, s[60:63], 0 offen
	buffer_load_u16 v144, v99, s[60:63], 0 offen
	buffer_load_u16 v145, v101, s[60:63], 0 offen
	buffer_load_u16 v146, v100, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[112:113], v98 offset1:32
	ds_load_2addr_b32 v[110:111], v137 offset1:32
	ds_load_2addr_b32 v[108:109], v115 offset1:32
	ds_load_2addr_b32 v[106:107], v132 offset1:32
	ds_load_2addr_b32 v[104:105], v118 offset1:32
	ds_load_2addr_b32 v[102:103], v119 offset1:32
	ds_load_2addr_b32 v[100:101], v120 offset1:32
	ds_load_2addr_b32 v[98:99], v121 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v147, v[33:36]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v204, v65
	v_max3_f32 v34, v210, v207, v208
	v_max3_f32 v35, v198, v199, v196
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v194.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v209, v34
	v_max3_f32 v34, v203, v200, v201
	v_max3_f32 v34, v34, v35, v197
	v_max3_f32 v35, v205, v206, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v33, v33, v35, v34
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v194.l
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s89, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp6:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v193, v195, v33, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v194.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v65, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v204, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s51, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v33.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s51
	v_permlanex16_b32 v34, v35, s89, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v35, v123
	v_perm_b32 v34, v34, v35, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v210, v193
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v209, v193
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s45, v36, v36
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v40.h, v71.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v39.h, v70.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v38.h, v69.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v37.h, v67.l
	ds_store_b128 v254, v[37:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v194.l
	v_mov_b16_e32 v37.l, v36.h
	v_mov_b16_e64 v38.h, v194.l
	v_mov_b16_e64 v39.h, v194.l
	v_mov_b16_e64 v40.h, v194.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v44.h, v143.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v43.h, v74.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v42.h, v73.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v41.h, v72.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v36, v37, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v35.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v114, v[41:44]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v194.l
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s45
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v48.h, v68.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v47.h, v144.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v37, s89, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v46.h, v145.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v45.h, v146.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v36, v37, v123
	v_perm_b32 v36, v36, v37, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v208, v193
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v142, v[45:48]
	v_add_nc_u32_e32 v45, 0, v215
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v45
	ds_load_b128 v[147:150], v125
	ds_load_b128 v[67:70], v128 offset:2048
	ds_load_b128 v[71:74], v129 offset:2048
	ds_load_b128 v[151:154], v45 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v37, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v207, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v38.h
	v_cmp_o_f32_e64 s45, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v38, v38, v39, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v37.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s45
	v_permlanex16_b32 v38, v39, s89, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v39, v123
	v_perm_b32 v38, v38, v39, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v206, v193
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v205, v193
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v40, v40
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v40, v41, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v39.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v195
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s89, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v123
	v_perm_b32 v40, v41, v40, v124
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v195, v193
	v_mov_b32_e32 v195, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v46, 0, v41, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[155:158], v125 offset:2048
	ds_load_b128 v[41:44], v45 offset:1024
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v46
	v_mul_f32_e32 v18, v18, v46
	v_mul_f32_e32 v19, v19, v46
	v_mul_f32_e32 v20, v20, v46
	v_mul_f32_e32 v21, v21, v46
	v_mul_f32_e32 v22, v22, v46
	v_mul_f32_e32 v23, v23, v46
	v_mul_f32_e32 v24, v24, v46
	v_mul_f32_e32 v25, v25, v46
	v_mul_f32_e32 v26, v26, v46
	v_mul_f32_e32 v27, v27, v46
	v_mul_f32_e32 v28, v28, v46
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[143:150], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v128
	ds_load_b128 v[147:150], v129
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v46
	v_mul_f32_e32 v30, v30, v46
	v_mul_f32_e32 v31, v31, v46
	v_mul_f32_e32 v32, v32, v46
	v_mul_f32_e32 v9, v9, v46
	v_mul_f32_e32 v10, v10, v46
	v_mul_f32_e32 v11, v11, v46
	v_mul_f32_e32 v12, v12, v46
	v_mul_f32_e32 v13, v13, v46
	v_mul_f32_e32 v14, v14, v46
	v_mul_f32_e32 v15, v15, v46
	v_mul_f32_e32 v16, v16, v46
	v_mul_f32_e32 v1, v1, v46
	v_mul_f32_e32 v2, v2, v46
	v_mul_f32_e32 v3, v3, v46
	v_mul_f32_e32 v4, v4, v46
	v_mul_f32_e32 v5, v5, v46
	v_mul_f32_e32 v6, v6, v46
	v_mul_f32_e32 v7, v7, v46
	v_mul_f32_e32 v8, v8, v46
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[143:150], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[143:146], v45 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[151:158], v[33:40], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v45.h, v194.l
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[67:74], v[33:40], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v33, v203, v193
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v194.l
	v_mov_b16_e64 v35.h, v194.l
	v_mov_b16_e64 v36.h, v194.l
	v_mov_b16_e64 v37.h, v194.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v38.h, v194.l
	v_mov_b16_e64 v39.h, v194.l
	v_mov_b16_e64 v40.h, v194.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[71:74], v127
	ds_load_b128 v[67:70], v126
	ds_load_b128 v[151:154], v126 offset:2048
	ds_load_b128 v[155:158], v127 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v202, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s43, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s89, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v123
	v_perm_b32 v34, v35, v34, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v201, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v200, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s89, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v123
	v_perm_b32 v36, v37, v36, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v199, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v198, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s89, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v123
	v_perm_b32 v38, v39, v38, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v197, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v196, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v39, v39
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v39, v45, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v45.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v40, s89, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v45, v40, v123
	v_perm_b32 v40, v45, v40, v124
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v130
	ds_load_b128 v[147:150], v130 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[67:74], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[151:158], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[143:150], v[33:40], v[1:8]
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v112, v112 :: v_dual_max_f32 v35, v110, v110
	v_dual_max_f32 v36, v108, v108 :: v_dual_max_f32 v37, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v104, v104
	v_max_f32_e32 v39, v102, v102
	v_max_f32_e32 v33, v34, v33
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v38, v39, v38
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s3, v33, 31
	v_mov_b32_dpp v33, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v39
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v37, v33
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v36, v36, v39
	v_max_f32_e32 v34, v34, v37
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s40, v34, 31
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v37
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s38, v35, 31
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v36, v36, v37
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s37, v36, 31
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v36, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v37
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v113, v113
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s21, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	v_max_f32_e32 v38, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v111, v111
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v33, 31
	v_mov_b32_dpp v33, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s39, s39
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s8, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v38
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s6, v35, 31
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v107, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s6, s6
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v38
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
.Ltmp125:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s5, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s4, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v105, v105
.Ltmp129:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s4, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v35, v36, v35
	v_max_f32_e32 v36, v103, v103
	v_max_f32_e32 v38, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v101, v101
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v33, 31
	v_mov_b32_dpp v33, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s7, s7
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s9, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp172:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s3, s3
	v_max_f32_e64 v45, s9, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v38
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s10, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp176:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s40, s40
	v_max_f32_e64 v46, s10, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s11, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v33, v160, v160
.Ltmp182:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v47, s11, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp185:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v160, v33, v34
	v_max_f32_e32 v33, v189, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s12, v36, 31
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s38, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e64 v48, s12, s12
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp190:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v38, s21, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s13, v37, 31
.Ltmp192:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s37, s37
	v_max_f32_e64 v65, s13, s13
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v34, v161, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v161, v34, v35 :: v_dual_max_f32 v34, v184, v184
	v_max_f32_e32 v34, v34, v35
	v_max_f32_e32 v35, v162, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v162, v35, v36
	v_dual_max_f32 v35, v179, v179 :: v_dual_sub_f32 v70, v108, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
	v_max_f32_e32 v36, v163, v163
	v_dual_max_f32 v163, v36, v37 :: v_dual_max_f32 v36, v131, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v167, v167
	v_max_f32_e32 v167, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v122, v122 :: v_dual_sub_f32 v74, v104, v167
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v164, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v164, v38, v39
	v_max_f32_e32 v38, v117, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v102, v102, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v38, v38, v39 :: v_dual_max_f32 v39, v165, v165
	v_max_f32_e32 v165, v39, v40
	v_max_f32_e32 v39, v246, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v166, v166
	v_max_f32_e32 v166, v40, v41
	v_max_f32_e32 v40, v245, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v166
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v40, v41
	v_max_f32_e32 v41, v168, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v168, v41, v42 :: v_dual_max_f32 v41, v244, v244
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v113, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v41, v41, v42 :: v_dual_max_f32 v42, v172, v172
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v172, v42, v43
	v_max_f32_e32 v42, v243, v243
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v69, v111, v172 :: v_dual_max_f32 v42, v42, v43
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v169, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s1
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v169, v43, v44
	v_max_f32_e32 v43, v235, v235
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp194:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v109, v169
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v43, v43, v44 :: v_dual_max_f32 v44, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v170, v44, v45
	v_max_f32_e32 v44, v221, v221
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp198:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v73, v107, v170 :: v_dual_max_f32 v44, v44, v45
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v171, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp200:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v171, v45, v46
	v_max_f32_e32 v45, v214, v214
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp202:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v105, v171
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v45, v46
	v_max_f32_e32 v46, v173, v173
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v110, v161
	v_sub_f32_e32 v72, v106, v163
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp204:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v173, v46, v47 :: v_dual_max_f32 v46, v192, v192
	v_max_f32_e32 v46, v46, v47
	v_max_f32_e32 v47, v174, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v174, v47, v48
	v_max_f32_e32 v47, v191, v191
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v101, v101, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v47, v47, v48
	v_max_f32_e32 v48, v175, v175
	v_dual_max_f32 v175, v48, v65 :: v_dual_max_f32 v48, v190, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v99, v99, v175 :: v_dual_max_f32 v48, v48, v65
	v_sub_f32_e32 v65, v112, v160
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s23
.Ltmp205:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v105, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v105
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v65, 31
.Ltmp209:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s22
.Ltmp210:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v68
.Ltmp213:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v70
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v65, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s36
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp219:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v165
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v72
.Ltmp220:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v68, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp221:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v100
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0, v65, s31
.Ltmp222:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v72, v70, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v68, v65, -1, -1 op_sel:[1,0]
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v72
.Ltmp225:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v68
.Ltmp227:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v98
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v70, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_readlane_b32 s21, v65, 31
.Ltmp229:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s30
.Ltmp230:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp231:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v72, v72, v72 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v72, v72, v72 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v72, v72, v72 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v74, v72, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v72, v72, v74
.Ltmp235:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v102
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v72, 31
	v_readlane_b32 s11, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
.Ltmp240:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s10, v67, 31
	v_permlanex16_b32 v67, v65, -1, -1 op_sel:[1,0]
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v69, v69, v70
.Ltmp243:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
	v_add_f32_dpp v74, v74, v74 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v69, 31
.Ltmp246:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v104
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s13, v65, 31
.Ltmp248:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v189, v33
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp250:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s29
	v_mov_b32_e32 v189, v33
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v74, v74, v74 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp252:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s27
.Ltmp253:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v102, v74, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp254:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp255:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v184
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v102
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp257:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v61, v61, v65, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v184, v34
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v74, 31
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v184, v34
.Ltmp260:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v70, v70, v71
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp264:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v179
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v70, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp267:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v62, v62, v65, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v179, v35
	v_mov_b32_e32 v179, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp268:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s22, v67, 31
.Ltmp269:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v131
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v63, v63, v65, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v131, v36
	v_mov_b32_e32 v131, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v64, v64, v65, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v122, v37 :: v_dual_mov_b32 v122, v37
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v117
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v57, v57, v65, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v117, v38
	v_mov_b32_e32 v117, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v58, v58, v65, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v246, v39 :: v_dual_mov_b32 v246, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v245
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v59, v59, v65, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v245, v40
	v_mov_b32_e32 v245, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v65, s11
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v244, v41 :: v_dual_mov_b32 v244, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v243
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v53, v53, v65, s10
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v243, v42
	v_mov_b32_e32 v243, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v54, v54, v65, s9
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v235, v43
	v_mov_b32_e32 v235, v43
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v221
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v55, v55, v65, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v221, v44
	v_mov_b32_e32 v221, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v56, v56, v65, s13
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v214, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v49, v49, v65, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v192, v46 :: v_dual_mov_b32 v192, v46
	v_dual_mov_b32 v214, v45 :: v_dual_sub_f32 v103, v103, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v68, v103
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v191
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp271:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp273:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v68, 31
.Ltmp275:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v50, v50, v65, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v191, v47
	v_mov_b32_e32 v191, v47
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp278:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp279:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp283:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v99
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp284:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s24, v69, 31
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp286:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v51, v51, v65, s24
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v190, v48 :: v_dual_mov_b32 v190, v48
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp290:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s12, v70, 31
.Ltmp294:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v52, v52, v65, s12
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_15
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_lshrrev_b32_e32 v33, 5, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s52, s75, s77
	.loc	1 819 31                        ; attention.py:819:31
	v_and_b32_e32 v65, 31, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s4, s52, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v105, s71 :: v_dual_add_nc_u32 v34, s4, v116
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s75, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v103, s69 :: v_dual_add_nc_u32 v36, s4, v133
	v_dual_mov_b32 v101, s67 :: v_dual_add_nc_u32 v38, s4, v134
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off
	scratch_load_b32 v35, off, off offset:60
	scratch_load_b64 v[41:42], off, off offset:76
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v98, s64 :: v_dual_add_nc_u32 v39, s4, v135
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v99, s65 :: v_dual_add_nc_u32 v40, s4, v136
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v47, s4, v76
	v_add_nc_u32_e32 v48, s4, v77
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v102, s68
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b32 v37, off, off offset:64
	scratch_load_b64 v[42:43], off, off offset:84
	scratch_load_b64 v[43:44], off, off offset:92
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v100, s66
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[44:45], off, off offset:68
	scratch_load_b64 v[45:46], off, off offset:100
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s4, v75
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v104, s70
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s75, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v35, s4, v35
	v_add_nc_u32_e32 v41, s4, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v37, s4, v37
	v_add_nc_u32_e32 v42, s4, v42
	v_add_nc_u32_e32 v43, s4, v43
	v_add_nc_u32_e32 v44, s4, v44
	v_add_nc_u32_e32 v45, s4, v45
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s79, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s75, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s35, s79, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s4, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s22
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s23
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s24
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s25
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
	s_and_b32 vcc_lo, s19, s27
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s28
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s29
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s30
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s26
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s31
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v40, v40, s[56:59], 0 offen
	buffer_load_u8 v41, v41, s[56:59], 0 offen
	buffer_load_u8 v42, v42, s[56:59], 0 offen
	buffer_load_u8 v43, v43, s[56:59], 0 offen
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s33
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s34
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, s35
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
	ds_store_b8 v138, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v138, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v138, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v138, v41 offset:576
	ds_store_b8 v139, v35
	ds_store_b8 v139, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v139, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v139, v43 offset:576
	ds_store_b8 v140, v37
	ds_store_b8 v140, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v140, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v140, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v141, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v141, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v141, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v141, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[78:79], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[78:79], v[98:105] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v100, s75, v65
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v216 offset1:1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s79, v100
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s101, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s98, s15, s1
	s_and_b32 s97, s16, s1
	s_and_b32 s95, s17, s1
	s_and_b32 s94, s18, s1
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s91, s20, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[80:81], v[41:48] neg_lo:[1,1,0]
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 4
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[80:81], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v217 offset1:1
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s92, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 7
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[82:83], v[41:48] neg_lo:[1,1,0]
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s63, s3, s1
	v_readlane_b32 s3, v255, 11
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[82:83], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v218 offset1:1
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s62, s3, s1
	v_readlane_b32 s3, v255, 8
	s_and_b32 s103, s3, s1
	v_readlane_b32 s3, v255, 9
	s_and_b32 s102, s3, s1
	v_readlane_b32 s3, v255, 10
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[84:85], v[41:48] neg_lo:[1,1,0]
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s99, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v255, 12
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[84:85], v[33:40] neg_lo:[1,1,0]
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v65, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v100, v65
	scratch_load_b32 v65, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s4, vcc_lo, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v100, v65
	scratch_load_b32 v65, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s100
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v100, v65
	scratch_load_b32 v65, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v100, v65
	scratch_load_b32 v65, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s22, s93
	s_and_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v100, v65
	scratch_load_b32 v65, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s23, s92
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v100, v65
	scratch_load_b32 v65, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s24, s90
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v100, v65
	scratch_load_b32 v65, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s25, s63
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v100, v65
	scratch_load_b32 v65, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s26, s62
	s_and_not1_b32 s26, s101, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_or_b32 s101, s26, s4
	s_and_not1_b32 s4, s93, exec_lo
	s_or_b32 s93, s4, s5
	s_and_not1_b32 s4, s90, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s90, s4, s5
	s_and_not1_b32 s4, s62, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_or_b32 s62, s4, s5
	s_and_not1_b32 s4, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v100, v65
	scratch_load_b32 v65, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s27, s103
	s_and_not1_b32 s27, s100, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_or_b32 s100, s27, s1
	s_and_not1_b32 s1, s96, exec_lo
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s63, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_or_b32 s63, s1, s3
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s103, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v100, v65
	scratch_load_b32 v65, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s28, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s11, exec_lo
	s_or_b32 s102, s4, s5
	s_and_not1_b32 s4, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v100, v65
	scratch_load_b32 v65, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s29, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s12, exec_lo
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v100, v65
	scratch_load_b32 v65, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s30, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s21, exec_lo
	s_or_b32 s98, s4, s5
	s_and_not1_b32 s4, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v100, v65
	scratch_load_b32 v65, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s31, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s22, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v100, v65
	scratch_load_b32 v65, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s33, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s23, exec_lo
	s_or_b32 s95, s4, s5
	s_and_not1_b32 s4, s91, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v100, v65
	scratch_load_b32 v65, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s34, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s24, exec_lo
	s_or_b32 s94, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v100, v65
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s35, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s25, exec_lo
	s_or_b32 s91, s4, s5
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v98, 18, v159
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v65, s75, v159
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v67, 2, v159
	v_or_b32_e32 v68, 4, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v103, s52, v159, 1
	v_or_b32_e32 v101, s75, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 20, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v67, s75, v67
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v105, 30, v159
	.loc	1 0 0                           ; attention.py:0
	v_cmp_gt_i32_e32 vcc_lo, s79, v65
	v_or_b32_e32 v68, s75, v68
	v_or_b32_e32 v102, s75, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 22, v159
	v_or_b32_e32 v69, 6, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v110, s75, v105
	v_cndmask_b32_e32 v65, 0x80000000, v103, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v67
	v_or_b32_e32 v104, s75, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 24, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v105, 20, v103
	v_or_b32_e32 v69, s75, v69
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v70, 8, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v112, 36, v103
	v_or_b32_e32 v107, s75, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 26, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v106, 24, v103
	v_add_nc_u32_e32 v99, 8, v103
	v_or_b32_e32 v70, s75, v70
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 10, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v108, s75, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 28, v159
	v_or_b32_e32 v72, 12, v159
	v_or_b32_e32 v73, 14, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v71, s75, v71
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v74, 16, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v109, s75, v98
	v_add_nc_u32_e32 v98, 4, v103
	v_or_b32_e32 v72, s75, v72
	v_or_b32_e32 v73, s75, v73
	v_or_b32_e32 v74, s75, v74
	v_add_nc_u32_e32 v111, 28, v103
	v_dual_cndmask_b32 v67, 0x80000000, v98 :: v_dual_add_nc_u32 v98, 12, v103
	v_cmp_gt_i32_e32 vcc_lo, s79, v68
	v_add_nc_u32_e32 v143, 40, v103
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cndmask_b32_e32 v68, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v69
	v_add_nc_u32_e32 v99, 16, v103
	v_cndmask_b32_e32 v69, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v70, 0x80000000, v99, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v71
	v_cndmask_b32_e32 v71, 0x80000000, v105, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v72
	v_cndmask_b32_e32 v72, 0x80000000, v106, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v73
	v_cndmask_b32_e32 v73, 0x80000000, v111, vcc_lo
	v_add_nc_u32_e32 v111, 32, v103
	v_cmp_gt_i32_e32 vcc_lo, s79, v74
	s_clause 0x7
	buffer_load_u16 v98, v65, s[84:87], 0 offen
	buffer_load_u16 v199, v67, s[84:87], 0 offen
	buffer_load_u16 v197, v68, s[84:87], 0 offen
	buffer_load_u16 v99, v69, s[84:87], 0 offen
	buffer_load_u16 v196, v70, s[84:87], 0 offen
	buffer_load_u16 v113, v71, s[84:87], 0 offen
	buffer_load_u16 v106, v72, s[84:87], 0 offen
	buffer_load_u16 v105, v73, s[84:87], 0 offen
	v_add_nc_u32_e32 v68, 44, v103
	v_add_nc_u32_e32 v70, 48, v103
	v_add_nc_u32_e32 v71, 52, v103
	v_cndmask_b32_e32 v65, 0x80000000, v111, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v101
	v_add_nc_u32_e32 v72, 56, v103
	v_add_nc_u32_e32 v73, 60, v103
	v_cndmask_b32_e32 v67, 0x80000000, v112, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v102
	v_cndmask_b32_e32 v69, 0x80000000, v143, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v104
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v107
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v108
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v109
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s79, v110
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_clause 0x7
	buffer_load_u16 v109, v65, s[84:87], 0 offen
	buffer_load_u16 v198, v67, s[84:87], 0 offen
	buffer_load_u16 v107, v69, s[84:87], 0 offen
	buffer_load_u16 v108, v68, s[84:87], 0 offen
	buffer_load_u16 v110, v70, s[84:87], 0 offen
	buffer_load_u16 v111, v71, s[84:87], 0 offen
	buffer_load_u16 v112, v72, s[84:87], 0 offen
	buffer_load_u16 v65, v73, s[84:87], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v67, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v100, v67
	scratch_load_b32 v67, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v100, v67
	scratch_load_b32 v67, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v100, v67
	scratch_load_b32 v67, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v100, v67
	scratch_load_b32 v67, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v100, v67
	scratch_load_b32 v67, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v100, v67
	scratch_load_b32 v67, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v100, v67
	scratch_load_b32 v67, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v100, v67
	scratch_load_b32 v67, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v100, v67
	scratch_load_b32 v67, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v100, v67
	scratch_load_b32 v67, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v100, v67
	scratch_load_b32 v67, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v100, v67
	scratch_load_b32 v67, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v100, v67
	scratch_load_b32 v67, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v100, v67
	scratch_load_b32 v67, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v100, v67
	scratch_load_b32 v67, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s35, v100, v67
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v67, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v100, v67
	scratch_load_b32 v67, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, vcc_lo, s36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, s101
	s_and_b32 s4, s4, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v100, v67
	scratch_load_b32 v67, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, s100
	s_and_b32 s1, s1, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v100, v67
	scratch_load_b32 v67, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s96
	s_and_b32 s3, s3, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v100, v67
	scratch_load_b32 v67, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s5, s93
	s_and_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v100, v67
	scratch_load_b32 v67, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s6, s92
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v100, v67
	scratch_load_b32 v67, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s24, s41
	s_and_b32 s7, s7, s90
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v100, v67
	scratch_load_b32 v67, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s8, s8, s63
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v100, v67
	scratch_load_b32 v67, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s26, s43
	s_and_not1_b32 s26, s101, exec_lo
	s_and_b32 s9, s9, s62
	s_or_b32 s101, s26, s4
	s_and_not1_b32 s4, s93, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s93, s4, s5
	s_and_not1_b32 s4, s90, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_or_b32 s90, s4, s5
	s_and_not1_b32 s4, s62, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s62, s4, s5
	s_and_not1_b32 s4, s102, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v100, v67
	scratch_load_b32 v67, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s27, s44
	s_and_not1_b32 s27, s100, exec_lo
	s_and_b32 s10, s10, s103
	s_or_b32 s100, s27, s1
	s_and_not1_b32 s1, s96, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s63, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s63, s1, s3
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_or_b32 s103, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v100, v67
	scratch_load_b32 v67, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s11, s102
	s_and_b32 s5, s11, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s102, s4, s5
	s_and_not1_b32 s4, s98, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v100, v67
	scratch_load_b32 v67, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s12, s99
	s_and_b32 s3, s12, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v100, v67
	scratch_load_b32 v67, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s98
	s_and_b32 s5, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s98, s4, s5
	s_and_not1_b32 s4, s95, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v100, v67
	scratch_load_b32 v67, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s97
	s_and_b32 s3, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v100, v67
	scratch_load_b32 v67, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s33, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s95
	s_and_b32 s5, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s4, s5
	s_and_not1_b32 s4, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v100, v67
	scratch_load_b32 v67, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s34, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s94
	s_and_b32 s3, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s94, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v100, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s35, s51
	s_and_b32 s25, s25, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s25, exec_lo
	s_or_b32 s91, s4, s5
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
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
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
	s_branch .LBB0_16
.LBB0_15:                               ; %Flow
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v33, off, off offset:316
	scratch_load_b32 v67, off, off offset:304
	scratch_load_b32 v65, off, off offset:300
	scratch_load_b32 v39, off, off offset:308
	scratch_load_b32 v44, off, off offset:312
	s_waitcnt vmcnt(3)
	v_cmp_eq_u32_e64 s40, 0, v67
.LBB0_16:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_and_b32_e32 v0, 64, v33
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v34, 28, v44
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_load_b32 v0, v0
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v20
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v47, v37
	v_rcp_f32_e32 v48, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fma_f32 v54, -v33, v45, 1.0
	v_div_scale_f32 v43, null, v0, v0, v22
	v_div_scale_f32 v36, s0, v18, v0, v18
	v_fma_f32 v55, -v35, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v56, -v37, v47, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v57, -v39, v48, 1.0
	v_fma_f32 v58, -v41, v49, 1.0
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_fmac_f32 v46, v55, v46
	v_mul_f32_e32 v55, v34, v45
	v_div_scale_f32 v40, s3, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_fmac_f32 v49, v58, v49
	v_mul_f32_e32 v57, v38, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v58, -v33, v55, v34
	v_mul_f32_e32 v56, v36, v46
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_div_scale_f32 v44, null, v0, v0, v23
	v_fma_f32 v54, -v43, v52, 1.0
	v_mul_f32_e32 v59, v40, v48
	v_fma_f32 v61, -v37, v57, v38
	v_fmac_f32_e32 v55, v58, v45
	v_fma_f32 v60, -v35, v56, v36
	v_div_scale_f32 v51, null, v0, v0, v24
	v_rcp_f32_e32 v53, v44
	v_dual_fmac_f32 v52, v54, v52 :: v_dual_fmac_f32 v57, v61, v47
	v_mul_f32_e32 v54, v42, v49
	v_fma_f32 v62, -v39, v59, v40
	v_fmac_f32_e32 v56, v60, v46
	v_fma_f32 v33, -v33, v55, v34
	v_div_scale_f32 v50, s5, v22, v0, v22
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
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v35, v35, v47, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v34, v0, v18
	v_div_fmas_f32 v33, v36, v48, v59
	v_fma_f32 v34, -v41, v54, v42
	v_dual_mul_f32 v36, v50, v52 :: v_dual_fmac_f32 v53, v37, v53
	v_fma_f32 v37, -v51, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v33, v0, v20
	v_div_fixup_f32 v19, v35, v0, v19
	v_fma_f32 v33, -v43, v36, v50
	v_div_scale_f32 v35, null, v0, v0, v25
	v_fmac_f32_e32 v38, v37, v38
	v_div_scale_f32 v37, s3, v24, v0, v24
	v_fmac_f32_e32 v54, v34, v49
	v_div_scale_f32 v34, s1, v23, v0, v23
	v_fmac_f32_e32 v36, v33, v52
	v_rcp_f32_e32 v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v54, v42
	v_mul_f32_e32 v33, v34, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v41, -v43, v36, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v44, v33, v34
	v_div_scale_f32 v47, null, v0, v0, v28
	v_fma_f32 v45, -v35, v40, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v42, v53
	v_mul_f32_e32 v43, v37, v38
	v_div_fmas_f32 v39, v39, v49, v54
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v36, v41, v52, v36
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v51, v43, v37
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_div_fixup_f32 v21, v39, v0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v42, v38
	v_div_scale_f32 v42, null, v0, v0, v27
	v_div_fixup_f32 v22, v36, v0, v22
	v_fma_f32 v39, -v46, v41, 1.0
	v_fma_f32 v34, -v44, v33, v34
	v_mul_f32_e32 v36, v45, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v51, v43, v37
	v_fma_f32 v37, -v35, v36, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fmas_f32 v34, v34, v38, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fmac_f32_e32 v36, v37, v40
	v_rcp_f32_e32 v37, v47
	v_div_fixup_f32 v24, v34, v0, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v43, v39
	v_fma_f32 v33, -v35, v36, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_scale_f32 v35, s3, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v40, v36
	v_rcp_f32_e32 v36, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_div_fixup_f32 v25, v33, v0, v25
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v45, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v49, v36
	v_mul_f32_e32 v38, v44, v41
	v_fma_f32 v34, -v46, v38, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v35, v39
	v_fma_f32 v33, -v46, v38, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v42, v34, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_div_fmas_f32 v33, v33, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v44, v39
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v43
	v_div_scale_f32 v41, s1, v29, v0, v29
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v33, -v42, v34, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v35, v41, v36
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v30, v0, v30
	v_div_fmas_f32 v33, v33, v39, v34
	v_fmac_f32_e32 v48, v44, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v45, v35, v41
	v_rcp_f32_e32 v40, v42
	v_mul_f32_e32 v44, v38, v48
	v_div_fmas_f32 v34, v34, v37, v46
	v_rcp_f32_e32 v37, v47
	v_fmac_f32_e32 v35, v39, v36
	v_div_fixup_f32 v27, v33, v0, v27
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v33, -v45, v35, v41
	v_fma_f32 v46, -v42, v40, 1.0
	v_fmac_f32_e32 v44, v39, v48
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v45, null, v0, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v39, v37
	v_div_fmas_f32 v33, v33, v36, v35
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_mul_f32_e32 v36, v34, v40
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, s1, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_fma_f32 v43, -v42, v36, v34
	v_div_fixup_f32 v29, v33, v0, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
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
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_fmas_f32 v34, v34, v40, v36
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v31, v34, v0, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
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
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
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
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v36, s1, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v35, -v40, v39, v35
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v45, 1.0
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_dual_mul_f32 v51, v48, v37 :: v_dual_fmac_f32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v35, v35, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v33, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v41
	v_rcp_f32_e32 v50, v46
	v_div_fixup_f32 v14, v35, v0, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_fixup_f32 v1, v34, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v37, null, v0, v0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_fma_f32 v50, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v33, v0, v3
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v43, v38, v42
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v46, v50, v46
	v_fma_f32 v33, -v34, v36, 1.0
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_fmac_f32 v36, v33, v36
	v_mul_f32_e32 v53, v50, v46
	v_div_scale_f32 v33, s1, v5, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v47, v42
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_mul_f32_e32 v49, v33, v36
	v_mul_f32_e32 v51, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v47, -v34, v49, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v42, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v47, v36
	v_fmac_f32_e32 v51, v40, v39
	v_div_fixup_f32 v4, v38, v0, v4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v22, s0
	v_cndmask_b32_e64 v40, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_mul_f32_e32 v52, v48, v41
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v47, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v45, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v5, v33, v0, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v0, v6
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	v_cndmask_b32_e64 v47, 0, v1, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v1, v65, s54
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v65, v33, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_lshrrev_b32_e32 v51, 1, v67
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v18, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v65, v33, v65, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v67, v35, 16, 1
	v_bfe_u32 v66, v34, 16, 1
	v_cmp_o_f32_e64 s33, v33, v33
	v_cmp_o_f32_e64 s34, v34, v34
	v_cmp_o_f32_e64 s35, v35, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v9, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v33, v34, v66, 0x7fff
	v_add3_u32 v34, v35, v67, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v65.h, s33
	v_bfe_u32 v35, v36, 16, 1
	v_bfe_u32 v65, v37, 16, 1
	v_bfe_u32 v66, v38, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s34
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s35
	v_add3_u32 v35, v36, v35, 0x7fff
	v_cmp_o_f32_e64 s33, v36, v36
	v_add3_u32 v36, v37, v65, 0x7fff
	v_cmp_o_f32_e64 s34, v37, v37
	v_add3_u32 v37, v38, v66, 0x7fff
	v_cmp_o_f32_e64 s35, v38, v38
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s33
	v_bfe_u32 v35, v23, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s34
	v_bfe_u32 v38, v24, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s35
	v_bfe_u32 v37, v25, 16, 1
	v_add3_u32 v35, v23, v35, 0x7fff
	v_cmp_o_f32_e64 s33, v23, v23
	v_add3_u32 v23, v24, v38, 0x7fff
	v_cmp_o_f32_e64 s34, v24, v24
	v_add3_u32 v24, v25, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v25, v25
	v_bfe_u32 v25, v26, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v35.h, s33
	v_bfe_u32 v35, v27, 16, 1
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s33, v26, v26
	v_add3_u32 v25, v26, v25, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s34
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s35
	v_add3_u32 v26, v27, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v27, v27
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v28, v28
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s33
	v_bfe_u32 v25, v29, 16, 1
	v_bfe_u32 v28, v30, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s34
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s35
	v_bfe_u32 v27, v31, 16, 1
	v_add3_u32 v25, v29, v25, 0x7fff
	v_cmp_o_f32_e64 s33, v29, v29
	v_add3_u32 v28, v30, v28, 0x7fff
	v_cmp_o_f32_e64 s34, v30, v30
	v_bfe_u32 v29, v32, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v11, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s33
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s34
	v_bfe_u32 v28, v39, 16, 1
	v_bfe_u32 v30, v40, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s33, v32, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s35
	v_add3_u32 v28, v39, v28, 0x7fff
	v_cmp_o_f32_e64 s34, v39, v39
	v_add3_u32 v30, v40, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v40, v40
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s33
	v_bfe_u32 v29, v41, 16, 1
	v_bfe_u32 v31, v42, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s34
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v43, 16, 1
	v_add3_u32 v29, v41, v29, 0x7fff
	v_cmp_o_f32_e64 s33, v41, v41
	v_add3_u32 v31, v42, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v42, v42
	v_bfe_u32 v32, v44, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v48, 0, v2, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v43, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v43, v43
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s33
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v45, 16, 1
	v_bfe_u32 v35, v46, 16, 1
	v_add3_u32 v32, v44, v32, 0x7fff
	v_cmp_o_f32_e64 s33, v44, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v3, s0
	v_cndmask_b32_e64 v54, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s35
	v_add3_u32 v31, v45, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v45, v45
	v_add3_u32 v35, v46, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v46, v46
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s33
	v_bfe_u32 v32, v47, 16, 1
	v_bfe_u32 v37, v48, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v4, s0
	v_cndmask_b32_e64 v52, 0, v5, s0
	v_cndmask_b32_e64 v53, 0, v6, s0
	v_cndmask_b32_e64 v55, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v35.h, s35
	v_bfe_u32 v35, v49, 16, 1
	v_add3_u32 v32, v47, v32, 0x7fff
	v_cmp_o_f32_e64 s33, v47, v47
	v_add3_u32 v37, v48, v37, 0x7fff
	v_cmp_o_f32_e64 s34, v48, v48
	v_bfe_u32 v40, v54, 16, 1
	v_bfe_u32 v38, v50, 16, 1
	v_add3_u32 v35, v49, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v49, v49
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s33
	v_cndmask_b16 v32.h, 0x7fff, v37.h, s34
	v_bfe_u32 v37, v52, 16, 1
	v_bfe_u32 v39, v53, 16, 1
	v_bfe_u32 v41, v55, 16, 1
	v_add3_u32 v40, v54, v40, 0x7fff
	v_cmp_o_f32_e64 s36, v54, v54
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s35
	v_cmp_o_f32_e64 s33, v50, v50
	v_add3_u32 v37, v52, v37, 0x7fff
	v_cmp_o_f32_e64 s34, v52, v52
	v_add3_u32 v39, v53, v39, 0x7fff
	v_cmp_o_f32_e64 s35, v53, v53
	v_add3_u32 v41, v55, v41, 0x7fff
	v_cmp_o_f32_e64 s37, v55, v55
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s36
	v_mov_b32_e32 v40, 0x5410
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s33
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s34
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s35
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s37
	v_cndmask_b32_e64 v39, v36, v33, s40
	v_cndmask_b32_e64 v33, v33, v36, s40
	v_cndmask_b32_e64 v36, v23, v34, s40
	v_cndmask_b32_e64 v23, v34, v23, s40
	v_cndmask_b32_e64 v34, v25, v24, s40
	v_cndmask_b32_e64 v24, v24, v25, s40
	v_cndmask_b32_e64 v25, v27, v26, s40
	v_mov_b32_e32 v41, 0x7632
	v_cndmask_b32_e64 v26, v26, v27, s40
	v_cndmask_b32_e64 v27, v30, v28, s40
	v_cndmask_b32_e64 v28, v28, v30, s40
	v_cndmask_b32_e64 v30, 0x1054, v40, s40
	v_cndmask_b32_e64 v40, 0x3276, v41, s40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v56, 1, v51
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s54, v51
	s_mov_b32 s33, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v57, 2, v51
	v_or_b32_e32 v58, 3, v51
	v_or_b32_e32 v59, 4, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v40, 0x760076, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v60, 5, v51
	v_or_b32_e32 v61, 6, v51
	v_or_b32_e32 v62, 7, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v30, v30, 4, v30
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v63, 16, v51
	v_or_b32_e32 v64, 17, v51
	v_or_b32_e32 v22, 18, v51
	v_or_b32_e32 v21, 19, v51
	v_or_b32_e32 v20, 20, v51
	v_or_b32_e32 v19, 21, v51
	v_or_b32_e32 v18, 22, v51
	v_or_b32_e32 v17, 23, v51
	v_or_b32_e32 v16, 32, v51
	v_or_b32_e32 v15, 33, v51
	v_or_b32_e32 v14, 34, v51
	v_or_b32_e32 v13, 35, v51
	v_or_b32_e32 v12, 36, v51
	v_or_b32_e32 v11, 37, v51
	v_or_b32_e32 v10, 38, v51
	v_or_b32_e32 v9, 39, v51
	v_or_b32_e32 v8, 48, v51
	v_or_b32_e32 v7, 49, v51
	v_or_b32_e32 v6, 50, v51
	v_or_b32_e32 v5, 51, v51
	v_or_b32_e32 v4, 52, v51
	v_or_b32_e32 v3, 53, v51
	v_or_b32_e32 v2, 54, v51
	v_or_b32_e32 v0, 55, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v41, v31, v29, s40
	v_cndmask_b32_e64 v29, v29, v31, s40
	v_cndmask_b32_e64 v31, v37, v32, s40
	v_cndmask_b32_e64 v32, v32, v37, s40
	v_cndmask_b32_e64 v37, v38, v35, s40
	v_cndmask_b32_e64 v35, v35, v38, s40
	v_permlanex16_b32 v33, v33, s33, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v38, v40, 4, v40
	v_and_b32_e32 v30, 0x5040504, v30
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v51, v1, v51, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s54, v56
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s31, s2, s31
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s54, v57
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_permlanex16_b32 v23, v23, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x7060706, v38
	v_permlanex16_b32 v29, v29, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v33, v39, v30
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v55, v1, v56, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s31
	v_add_lshl_u32 v56, v1, v57, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s54, v58
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s30, s2, s30
	s_and_b32 s29, s2, s29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_perm_b32 v33, v33, v39, v38
	v_perm_b32 v39, v23, v36, v30
	v_perm_b32 v23, v23, v36, v38
	v_perm_b32 v36, v24, v34, v30
	v_perm_b32 v24, v24, v34, v38
	v_perm_b32 v34, v26, v25, v30
	v_perm_b32 v25, v26, v25, v38
	v_perm_b32 v26, v28, v27, v30
	v_perm_b32 v27, v28, v27, v38
	v_perm_b32 v28, v29, v41, v30
	v_perm_b32 v29, v29, v41, v38
	v_perm_b32 v41, v32, v31, v30
	v_perm_b32 v31, v32, v31, v38
	v_perm_b32 v30, v35, v37, v30
	v_perm_b32 v32, v35, v37, v38
	v_mov_b16_e32 v35.l, v40.h
	v_mov_b16_e32 v35.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s30
	buffer_store_b16 v40, v51, s[72:75], 0 offen
	v_add_lshl_u32 v40, v1, v58, 1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s29
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s54, v59
	v_cmp_gt_i32_e64 s26, s54, v60
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s28, s2, s28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s54, v61
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v33.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v35, v55, s[72:75], 0 offen
	buffer_store_b16 v33, v56, s[72:75], 0 offen
	v_add_lshl_u32 v33, v1, v59, 1
	v_cndmask_b32_e64 v35, 0x80000000, v40, s28
	v_add_lshl_u32 v40, v1, v60, 1
	v_add_lshl_u32 v51, v1, v61, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s27, s2, s27
	s_and_b32 s26, s2, s26
	s_and_b32 s25, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s54, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v39.h
	v_mov_b16_e32 v38.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s27
	v_cndmask_b32_e64 v40, 0x80000000, v40, s26
	v_cndmask_b32_e64 v51, 0x80000000, v51, s25
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s54, v62
	v_cmp_gt_i32_e64 s22, s54, v64
	v_cmp_gt_i32_e64 s20, s54, v21
	v_cmp_gt_i32_e64 s18, s54, v19
	v_cmp_gt_i32_e64 s16, s54, v17
	v_cmp_gt_i32_e64 s14, s54, v15
	v_cmp_gt_i32_e64 s12, s54, v13
	v_cmp_gt_i32_e64 s10, s54, v11
	v_cmp_gt_i32_e64 s5, s54, v9
	v_cmp_gt_i32_e64 s3, s54, v7
	v_cmp_gt_i32_e64 s0, s54, v5
	v_cmp_gt_i32_e64 s8, s54, v3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v1, v4, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s54, v63
	v_cmp_gt_i32_e64 s21, s54, v22
	v_cmp_gt_i32_e64 s19, s54, v20
	v_cmp_gt_i32_e64 s17, s54, v18
	v_cmp_gt_i32_e64 s15, s54, v16
	v_cmp_gt_i32_e64 s13, s54, v14
	v_cmp_gt_i32_e64 s11, s54, v12
	v_cmp_gt_i32_e64 s9, s54, v10
	v_cmp_gt_i32_e64 s4, s54, v8
	v_cmp_gt_i32_e64 s1, s54, v6
	v_cmp_gt_i32_e64 s7, s54, v2
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v68, v35, s[72:75], 0 offen
	buffer_store_b16 v39, v33, s[72:75], 0 offen
	v_add_lshl_u32 v33, v1, v62, 1
	v_add_lshl_u32 v35, v1, v64, 1
	v_add_lshl_u32 v21, v1, v21, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_add_lshl_u32 v17, v1, v17, 1
	v_add_lshl_u32 v15, v1, v15, 1
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v3, v1, v3, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v23.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v38, v40, s[72:75], 0 offen
	buffer_store_b16 v23, v51, s[72:75], 0 offen
	v_add_lshl_u32 v23, v1, v63, 1
	v_add_lshl_u32 v22, v1, v22, 1
	v_add_lshl_u32 v20, v1, v20, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_add_lshl_u32 v16, v1, v16, 1
	v_add_lshl_u32 v14, v1, v14, 1
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s54, v0
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s24, s2, s24
	s_and_b32 s22, s2, s22
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s8
	s_and_b32 s23, s2, s23
	s_and_b32 s21, s2, s21
	s_and_b32 s19, s2, s19
	s_and_b32 s17, s2, s17
	s_and_b32 s15, s2, s15
	s_and_b32 s13, s2, s13
	s_and_b32 s11, s2, s11
	s_and_b32 s9, s2, s9
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v37.h, v68.h
	v_mov_b16_e32 v42.l, v24.h
	v_mov_b16_e32 v42.h, v68.h
	v_mov_b16_e32 v43.l, v36.h
	v_mov_b16_e32 v43.h, v68.h
	v_mov_b16_e32 v44.l, v25.h
	v_mov_b16_e32 v44.h, v68.h
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v45.h, v68.h
	v_mov_b16_e32 v46.l, v27.h
	v_mov_b16_e32 v46.h, v68.h
	v_mov_b16_e32 v47.l, v26.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v29.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v28.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v50.l, v31.h
	v_mov_b16_e32 v50.h, v68.h
	v_mov_b16_e32 v52.l, v41.h
	v_mov_b16_e32 v52.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s24
	v_cndmask_b32_e64 v35, 0x80000000, v35, s22
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s23
	v_cndmask_b32_e64 v22, 0x80000000, v22, s21
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v54.l, v30.h
	v_mov_b16_e32 v54.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v53.l, v32.h
	v_mov_b16_e32 v53.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v37, v33, s[72:75], 0 offen
	buffer_store_b16 v36, v23, s[72:75], 0 offen
	buffer_store_b16 v43, v35, s[72:75], 0 offen
	buffer_store_b16 v24, v22, s[72:75], 0 offen
	buffer_store_b16 v42, v21, s[72:75], 0 offen
	buffer_store_b16 v34, v20, s[72:75], 0 offen
	buffer_store_b16 v45, v19, s[72:75], 0 offen
	buffer_store_b16 v25, v18, s[72:75], 0 offen
	buffer_store_b16 v44, v17, s[72:75], 0 offen
	buffer_store_b16 v26, v16, s[72:75], 0 offen
	buffer_store_b16 v47, v15, s[72:75], 0 offen
	buffer_store_b16 v27, v14, s[72:75], 0 offen
	buffer_store_b16 v46, v13, s[72:75], 0 offen
	buffer_store_b16 v28, v12, s[72:75], 0 offen
	buffer_store_b16 v49, v11, s[72:75], 0 offen
	buffer_store_b16 v29, v10, s[72:75], 0 offen
	buffer_store_b16 v48, v9, s[72:75], 0 offen
	buffer_store_b16 v41, v8, s[72:75], 0 offen
	buffer_store_b16 v52, v7, s[72:75], 0 offen
	buffer_store_b16 v31, v6, s[72:75], 0 offen
	buffer_store_b16 v50, v5, s[72:75], 0 offen
	buffer_store_b16 v30, v4, s[72:75], 0 offen
	buffer_store_b16 v54, v1, s[72:75], 0 offen
	buffer_store_b16 v32, v2, s[72:75], 0 offen
	buffer_store_b16 v53, v0, s[72:75], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp295:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 324
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 324
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25460
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 324
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
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
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
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
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
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 324
    .sgpr_count:     107
    .sgpr_spill_count: 13
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 80
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
